uint64_t sub_216B8159C(uint64_t a1)
{
  v2 = type metadata accessor for MediaButtonType(0);
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AlbumDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for LinkComponentModel(0);
  MEMORY[0x28223BE20](v19);
  v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v38 = a1;
  sub_216DEA0E8();
  sub_216681B04(&v18[*(v13 + 64)], v12, &qword_27CAB7A30, &qword_217017F30);
  sub_216B81C4C(v18, type metadata accessor for AlbumDetailHeaderLockup);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    sub_216697664(v12, &qword_27CAB7A30, &qword_217017F30);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_216B81CA4(v12, v23, type metadata accessor for LinkComponentModel);
    sub_216B81BE8(v23, v6);
    swift_storeEnumTagMultiPayload();
    sub_216939060(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v25;
    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_216939060(v26 > 1, v27 + 1, 1, v25);
      v24 = v33;
    }

    sub_216B81C4C(v23, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v27 + 1;
    sub_216B81CA4(v6, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, type metadata accessor for MediaButtonType);
  }

  sub_216DEA0E8();
  sub_216681B04(&v15[*(v13 + 68)], v9, &qword_27CAB7A30, &qword_217017F30);
  sub_216B81C4C(v15, type metadata accessor for AlbumDetailHeaderLockup);
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    sub_216697664(v9, &qword_27CAB7A30, &qword_217017F30);
  }

  else
  {
    v28 = v36;
    sub_216B81CA4(v9, v36, type metadata accessor for LinkComponentModel);
    v29 = v37;
    sub_216B81BE8(v28, v37);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216939060(0, *(v24 + 16) + 1, 1, v24);
      v24 = v34;
    }

    v31 = *(v24 + 16);
    v30 = *(v24 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_216939060(v30 > 1, v31 + 1, 1, v24);
      v24 = v35;
    }

    sub_216B81C4C(v28, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v31 + 1;
    sub_216B81CA4(v29, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, type metadata accessor for MediaButtonType);
  }

  return v24;
}

unint64_t sub_216B81AFC(uint64_t a1)
{
  result = sub_216B81B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B81B24()
{
  result = qword_280E3AC78[0];
  if (!qword_280E3AC78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3AC78);
  }

  return result;
}

uint64_t sub_216B81B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4188, &qword_21705AC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B81BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B81C4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B81CA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_216B81D14()
{
  result = qword_27CAC41A8;
  if (!qword_27CAC41A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4188, &qword_21705AC00);
    sub_216B81DD0(&qword_27CAC41B0, type metadata accessor for ContainerDetailHeaderView, &unk_2170695C4);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC41A8);
  }

  return result;
}

uint64_t sub_216B81DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216B81E60(uint64_t a1)
{
  sub_216B81F04(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21680D428(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216B81F04(uint64_t a1)
{
  if (!qword_280E457E8)
  {
    v4[0] = type metadata accessor for HorizontalPosterLockup(255);
    v4[1] = sub_2166D4DA8(qword_280E39370, type metadata accessor for HorizontalPosterLockup, &unk_217062870);
    v4[2] = &off_28293B2E0;
    v4[3] = sub_2166D4DA8(&qword_280E39358, type metadata accessor for HorizontalPosterLockup, &unk_21702C1A4);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E457E8);
    }
  }
}

void sub_216B81FFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HorizontalPosterLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = type metadata accessor for LiveRadioPosterLockupView(0);
  v10 = *(v9 + 24);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + *(v9 + 28);
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  *a2 = a1;

  sub_216DE9648();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  v13 = (v8 + v4[10]);
  v14 = v13[1];
  *(inited + 32) = *v13;
  *(inited + 40) = v14;
  v15 = (v8 + v4[11]);
  v16 = v15[1];
  *(inited + 48) = *v15;
  *(inited + 56) = v16;
  v17 = v8 + v4[7];
  v18 = *(v17 + 16);
  if (v18 == 255)
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    sub_21700DF14();
    sub_21700DF14();
  }

  else
  {
    v19 = *v17;
    if (v18)
    {
      sub_21700DF14();
      sub_21700DF14();
      v19 = sub_216B6BEC8();
      v21 = v20;
    }

    else
    {
      v21 = *(v17 + 8);
      sub_21700DF14();
      sub_21700DF14();
      sub_216B87640(v19, v21, v18);
    }

    *(inited + 64) = v19;
    *(inited + 72) = v21;
  }

  v22 = (v8 + v4[8]);
  v23 = v22[1];
  *(inited + 80) = *v22;
  *(inited + 88) = v23;
  v24 = (v8 + v4[9]);
  v25 = v24[1];
  *(inited + 96) = *v24;
  *(inited + 104) = v25;
  sub_21700DF14();
  sub_21700DF14();
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
LABEL_8:
  v28 = v26 - 1;
  v29 = 16 * v26 + 40;
  while (1)
  {
    if (v28 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      OUTLINED_FUNCTION_5_89();
      sub_2166D9530(v37, v38, &unk_217017160, v39);
      v40 = sub_21700E454();
      v42 = v41;
      sub_216B87ACC(v8, type metadata accessor for HorizontalPosterLockup);

      a2[1] = v40;
      a2[2] = v42;
      return;
    }

    if (++v28 > 4)
    {
      break;
    }

    v30 = v29 + 16;
    v31 = *(inited + v29);
    v29 += 16;
    if (v31)
    {
      v32 = *(inited + v30 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v27 = v35;
      }

      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        sub_21693776C();
        v27 = v36;
      }

      v26 = v28 + 1;
      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v32;
      *(v34 + 40) = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_216B8233C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v154 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41E8, &qword_21704BF58);
  OUTLINED_FUNCTION_1();
  v151 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v149 = v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41F0, &qword_21704BF60);
  OUTLINED_FUNCTION_1();
  v150 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v148 = v8;
  v9 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v145 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(v115 - v14);
  v143 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70(v115 - v17);
  v137 = sub_2170098C4();
  OUTLINED_FUNCTION_1();
  v136 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v21 - v20);
  v134 = sub_217009314();
  OUTLINED_FUNCTION_1();
  v133 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v25 - v24);
  v130 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v129 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v29 - v28);
  v30 = type metadata accessor for LiveRadioPosterLockupView(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41F8, &qword_21704BF68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = v115 - v35;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4200, &qword_21704BF70);
  OUTLINED_FUNCTION_1();
  v119 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4208, &qword_21704BF78);
  OUTLINED_FUNCTION_1();
  v123 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4210, &qword_21704BF80);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  v158 = v115 - v48;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4218, &qword_21704BF88);
  OUTLINED_FUNCTION_1();
  v140 = v49;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  *v36 = sub_2170093C4();
  *(v36 + 1) = 0;
  v36[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4220, &qword_21704BF90);
  sub_216B83444(v1);
  v52 = *v1;
  v147 = v9;
  v164 = v9;
  v165 = sub_2166D4DA8(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v161);
  v126 = v52;
  sub_216CCBECC();
  v53 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4228, &qword_21704BF98) + 36)];
  sub_216681AA4(&v161, (v53 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4DA8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  *v53 = sub_217008CF4();
  v53[1] = v54;
  __swift_destroy_boxed_opaque_existential_1Tm(&v161);
  v118 = v33;
  v55 = *(v33 + 36);
  v116 = v36;
  v56 = &v36[v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v58 = sub_217008B34();
  __swift_project_value_buffer(v58, qword_280E73A88);
  v59 = sub_216B87668();
  v115[0] = v115;
  v56[*(v57 + 36)] = 0;
  MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v60);
  v155 = v2;
  v115[4] = type metadata accessor for LiveRadioPosterLockupView;
  sub_216B87668();
  v156 = *(v31 + 80);
  v115[2] = (v156 + 16) & ~v156;
  swift_allocObject();
  v115[3] = type metadata accessor for LiveRadioPosterLockupView;
  sub_216B87B90();
  v115[1] = v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  v157 = v32;
  v62 = v61;
  v63 = type metadata accessor for ContextMenuPreview(0);
  v64 = sub_216B876D8();
  v111 = sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
  v113 = sub_2166D4DA8(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
  v65 = v117;
  v66 = v118;
  v67 = v116;
  sub_21700A394();

  sub_2166997CC(v67, &qword_27CAC41F8, &qword_21704BF68);
  v68 = v128;
  sub_2170099A4();
  v161 = v66;
  v162 = v62;
  v163 = v63;
  v164 = v64;
  v165 = v111;
  v166 = v113;
  v69 = OUTLINED_FUNCTION_21_43();
  v70 = v120;
  v71 = v124;
  sub_21700A784();
  OUTLINED_FUNCTION_67();
  v72(v68, v130);
  OUTLINED_FUNCTION_67();
  v73(v65, v71);
  v74 = v155[2];
  v161 = v155[1];
  v162 = v74;
  v159 = v71;
  v160 = v69;
  OUTLINED_FUNCTION_5_5();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v75 = v121;
  v76 = v125;
  sub_21700A6B4();
  OUTLINED_FUNCTION_67();
  v77(v70, v76);
  v78 = v132;
  sub_2170092F4();
  v79 = v122;
  v80 = v138;
  sub_2170089A4();
  OUTLINED_FUNCTION_67();
  v81(v78, v134);
  sub_2166997CC(v75, &qword_27CAC4210, &qword_21704BF80);
  v82 = v127;
  sub_2170089D4();
  sub_2166997CC(v79, &qword_27CAC4210, &qword_21704BF80);
  v83 = v135;
  sub_2170098B4();
  sub_216B87668();
  swift_allocObject();
  sub_216B87B90();
  v84 = v131;
  sub_217008994();

  OUTLINED_FUNCTION_67();
  v85(v83, v137);
  sub_2166997CC(v82, &qword_27CAC4210, &qword_21704BF80);
  sub_216983738(219);
  sub_216B87668();
  swift_allocObject();
  sub_216B87B90();
  sub_217008984();

  sub_2166997CC(v84, &qword_27CAC4210, &qword_21704BF80);
  v86 = v146;
  v87 = sub_216CCBECC();
  v157 = v115;
  v88 = MEMORY[0x28223BE20](v87);
  v89 = v145;
  v90 = v145[2];
  v91 = v142;
  v92 = v147;
  v90(v142, v86, v147, v88);
  (v89[11])(v91, v92);
  v93 = v89[1];
  v155 = v89 + 1;
  v156 = v93;
  v93(v91, v92);
  v164 = v92;
  v94 = __swift_allocate_boxed_opaque_existential_1Tm(&v161);
  (v90)(v94, v86, v92);
  v95 = v144;
  (v90)(v144, v86, v92);
  v96 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v97 = swift_allocObject();
  v98 = (v89[4])(v97 + v96, v95, v92);
  v145 = v115;
  MEMORY[0x28223BE20](v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000, &unk_21701F600);
  v112 = sub_216B878E8();
  v114 = sub_21686AF54();
  v100 = v149;
  v101 = v158;
  sub_21700AA24();

  sub_2166997CC(&v161, &unk_27CABF7A0, &unk_217014D20);
  v161 = v80;
  v162 = v99;
  v163 = v112;
  v164 = v114;
  v102 = OUTLINED_FUNCTION_21_43();
  v103 = v148;
  v104 = v153;
  sub_21700A724();
  (*(v151 + 8))(v100, v104);
  v161 = v104;
  v162 = v102;
  OUTLINED_FUNCTION_21_43();
  v105 = v139;
  v106 = v152;
  sub_21700A8D4();
  (*(v150 + 8))(v103, v106);
  (v156)(v86, v92);
  sub_2166997CC(v101, &qword_27CAC4210, &qword_21704BF80);
  KeyPath = swift_getKeyPath();
  v108 = v154;
  (*(v140 + 32))(v154, v105, v141);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4258, &unk_21704BFD8);
  v110 = v108 + *(result + 36);
  *v110 = KeyPath;
  *(v110 + 8) = 0;
  return result;
}

uint64_t sub_216B83444(uint64_t a1)
{
  v1 = type metadata accessor for LiveRadioPosterLockupView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4268, &qword_21704C030);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v4, type metadata accessor for HorizontalPosterLockup);
  if (v17)
  {
    sub_2166A0F18(&v16, v18);
  }

  else
  {
    sub_216DE9648();
    sub_2166A6EA4();
    sub_216B87ACC(v4, type metadata accessor for HorizontalPosterLockup);
    if (v17)
    {
      sub_2166997CC(&v16, &qword_27CAB6DB0, &qword_217016C00);
    }
  }

  v8 = v5[11];
  v9 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  sub_216B87668();
  v10 = swift_allocObject();
  sub_216B87B90();
  v11 = v5[12];
  *&v7[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v12 = &v7[v5[13]];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  v13 = v19;
  v14 = v18[1];
  *v7 = v18[0];
  *(v7 + 1) = v14;
  *(v7 + 4) = v13;
  *(v7 + 5) = sub_216B87C4C;
  *(v7 + 6) = v10;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  sub_216E3177C();
  return sub_2166997CC(v7, &qword_27CAC4268, &qword_21704C030);
}

uint64_t sub_216B8378C()
{
  v0 = sub_217008B44();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  v19[1] = 0x405A000000000000;
  sub_216B87C98();
  sub_2170082B4();
  v8 = &v7[*(v5 + 32)];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = &v7[*(v5 + 36)];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = *(v1 + 28);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  __asm { FMOV            V0.2D, #14.0 }

  *v3 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E3006C();
  sub_216B87ACC(v3, MEMORY[0x277CDFC08]);
  return sub_216B87ACC(v7, type metadata accessor for LiveRadioPosterLockupView.CardView);
}

uint64_t sub_216B839A4@<X0>(uint64_t (**a1)()@<X8>)
{
  v26 = a1;
  v24 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v24);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v22 = sub_2170067A4();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_216CCBECC();
  sub_216DE9648();
  sub_216B83CF4();
  swift_storeEnumTagMultiPayload();
  sub_2168A8DCC();

  sub_216B87ACC(v2, type metadata accessor for MenuContext);
  sub_216B87ACC(v5, type metadata accessor for HorizontalPosterLockup);
  v15 = *(v9 + 32);
  v16 = v22;
  v15(v11, v14, v22);
  sub_216B87B90();
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v15((v18 + v17), v11, v16);
  result = sub_216B87B90();
  v20 = v26;
  *v26 = sub_21680CDC8;
  v20[1] = v18;
  return result;
}

uint64_t sub_216B83CF4()
{
  v0 = type metadata accessor for LiveRadioPosterLockupView(0);
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v3, type metadata accessor for HorizontalPosterLockup);
  if (!v17)
  {
    v9 = &qword_27CAB6DB0;
    v10 = &qword_217016C00;
    v11 = &v16;
LABEL_6:
    sub_2166997CC(v11, v9, v10);
    return MEMORY[0x277D84F90];
  }

  sub_2166A0F18(&v16, v18);
  sub_216C0C534(&v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v9 = &qword_27CAB7310;
    v10 = &unk_2170170F0;
    v11 = &v14;
    goto LABEL_6;
  }

  sub_2166A0F18(&v14, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38, &qword_217015320);
  v4 = (type metadata accessor for MenuAction(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013DA0;
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  sub_216681AA4(&v16, &v14);
  sub_216681AA4(v18, v13);
  sub_216B87668();
  v7 = swift_allocObject();
  sub_2166A0F18(&v14, v7 + 16);
  sub_2166A0F18(v13, v7 + 56);
  sub_216B87B90();
  v8 = (v6 + v5 + v4[7]);
  *v8 = sub_216B87BE8;
  v8[1] = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v6;
}

uint64_t sub_216B84028@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6 - 8];
  sub_216B841E0(&v16[-v6 - 8]);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v4, type metadata accessor for HorizontalPosterLockup);
  LOBYTE(v4) = v17 != 0;
  sub_2166997CC(v16, &qword_27CAB6DB0, &qword_217016C00);
  sub_216B87B20(v7, a1);
  v8 = type metadata accessor for ContextMenuPreview(0);
  *(a1 + v8[5]) = v4;
  v9 = a1 + v8[6];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = v8[7];
  v11 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v11);
  v12 = v8[8];
  v13 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(a1 + v12, 1, 1, v13);
}

uint64_t sub_216B841E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_2170067A4();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v13, type metadata accessor for HorizontalPosterLockup);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D60, &qword_217014E40);
    sub_216CCBECC();
    v17 = sub_21700C4B4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    sub_2167BF2A8(v4, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    sub_2166997CC(v4, &qword_27CABF770, &unk_21701A670);
    (*(v32 + 8))(v7, v33);
    v25 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  }

  else
  {
    sub_216B87B90();
    v26 = sub_21700C4B4();
    (*(*(v26 - 8) + 16))(a1, v16, v26);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v26);
    v27 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    sub_21700C404();
    sub_216B87ACC(v16, type metadata accessor for Artwork);
    *(a1 + v27[5]) = xmmword_217016F10;
    *(a1 + v27[6]) = 0x3FF0000000000000;
    *(a1 + v27[7]) = 0x4024000000000000;
    *(a1 + v27[8]) = 0;
    v25 = type metadata accessor for ContextMenuPreview.ViewModel(0);
    v28 = (a1 + v25[5]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (a1 + v25[6]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (a1 + v25[7]);
    *v30 = 0;
    v30[1] = 0;
    *(a1 + v25[8]) = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v25);
}

uint64_t sub_216B845D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v12, type metadata accessor for HorizontalPosterLockup);
  sub_216CCBECC();
  type metadata accessor for LiveRadioPosterLockupView(0);
  v13 = sub_216C0C534(v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(v29, v9, v28, v5, v2, v22, v23, v24, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29[0], v29[1], v29[2], v29[3], v29[4]);
  sub_2166997CC(v2, &qword_27CAB6DE8, "dP\r");
  (*(v3 + 8))(v5, v27);
  sub_2166997CC(v28, &qword_27CAB7310, &unk_2170170F0);
  (*(v7 + 8))(v9, v6);
  return sub_2166997CC(v29, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_216B848CC()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_2170090F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LiveRadioPosterLockupView(0);
  sub_2166A6EA4();
  if (v36 == 1)
  {
    v37 = v33;
    v38 = v34;
    v39 = v35;
  }

  else
  {
    v25 = v1;
    v26 = v5;
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    v1 = v25;
    v5 = v26;

    (*(v10 + 8))(v12, v9);
  }

  if (!*(&v38 + 1))
  {
    return sub_2166997CC(&v37, &qword_27CAB7310, &unk_2170170F0);
  }

  sub_2166A0F18(&v37, &v33);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v8, type metadata accessor for HorizontalPosterLockup);
  if (v31 || (sub_2166997CC(&v29, &qword_27CAB6DB0, &qword_217016C00), sub_216DE9648(), sub_2166A6EA4(), sub_216B87ACC(v5, type metadata accessor for HorizontalPosterLockup), v31))
  {
    sub_2166A0F18(&v29, &v37);
    v14 = __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v15 = v28;
    sub_216C0C548(v14, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, v31, v32, v33, *(&v33 + 1));
    sub_217007544();
    (*(v1 + 8))(v15, v0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  }

  else
  {
    sub_2166997CC(&v29, &qword_27CAB6DB0, &qword_217016C00);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_216B84CD8()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HorizontalPosterLockup(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v6, type metadata accessor for HorizontalPosterLockup);
  if (v26)
  {
    sub_2166A0F18(&v24, v28);
    type metadata accessor for LiveRadioPosterLockupView(0);
    sub_216C0C534(&v20);
    if (v22)
    {
      sub_2166A0F18(&v20, &v24);
      v7 = __swift_project_boxed_opaque_existential_1(&v24, v26);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, *(&v20 + 1), v21, v22, v23, v24, *(&v24 + 1), v25, v26, v27, v28[0]);
      sub_217007544();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v24);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v16 = &qword_27CAB7310;
    v17 = &unk_2170170F0;
    v18 = &v20;
  }

  else
  {
    v16 = &qword_27CAB6DB0;
    v17 = &qword_217016C00;
    v18 = &v24;
  }

  return sub_2166997CC(v18, v16, v17);
}

uint64_t sub_216B84F0C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020, &unk_21701F640);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v42 - v2;
  v45 = sub_217009D24();
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = sub_217007474();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680, &unk_21701F610);
  MEMORY[0x28223BE20](v44);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028, &qword_21703CC50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v49[3] = sub_2170067A4();
  v49[4] = sub_2166D4DA8(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  __swift_allocate_boxed_opaque_existential_1Tm(v49);
  sub_216CCBECC();
  sub_2167BB664(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  sub_2166A6EA4();
  v19 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_2166997CC(v18, &qword_27CABA028, &qword_21703CC50);
    sub_2166997CC(v15, &qword_27CABA028, &qword_21703CC50);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    v21 = v48;
    v22 = 1;
  }

  else
  {
    sub_2166A6EA4();
    sub_217007434();
    sub_2170073E4();
    v23 = *(v5 + 8);
    v42 = v12;
    v24 = v43;
    v23(v7, v43);
    v25 = &v15[*(v19 + 20)];
    v26 = *v25;
    v27 = v25[1];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    sub_2167B8890(v26, v27);
    sub_2167C505C();
    v29 = v42;
    sub_2170073F4();

    v23(v10, v24);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v30 = qword_280E73AA0;
    v31 = byte_280E73AA8;
    v32 = qword_280E73AB0;
    v33 = v47;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    sub_217009D04();
    sub_2166997CC(v33, &qword_27CABA020, &unk_21701F640);
    v34 = &v29[*(v44 + 36)];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0, &qword_21701F630);
    v36 = v29;
    v37 = &v34[*(v35 + 36)];
    sub_217009374();
    sub_2166997CC(v18, &qword_27CABA028, &qword_21703CC50);
    *&v37[*(type metadata accessor for InsettableConcentricRectangle(0) + 20)] = 0;
    v38 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0, &unk_21701F620) + 36)];
    sub_216B87668();
    *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8, &unk_217017550) + 36)] = 256;
    *v34 = v30;
    v34[8] = v31;
    *(v34 + 2) = v32;
    v39 = &v34[*(v35 + 40)];
    *v39 = swift_getKeyPath();
    v39[8] = 0;

    sub_216B87ACC(v15, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v40 = v48;
    sub_2167A4788();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010, &qword_21703CC10);
    *(v40 + *(v20 + 36)) = xmmword_21701F260;
    v21 = v40;
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
}

uint64_t sub_216B855A0(void *a1, uint64_t a2)
{
  v3 = sub_2170075A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for LiveRadioPosterLockupView(0);
  sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  sub_217007544();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_216B856C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = sub_217008B44();
  MEMORY[0x28223BE20](v91);
  v92 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42A0, &unk_21704C0F8);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v72 - v5;
  v6 = type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v83 = v7;
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v77 = sub_2170090F4();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2170071B4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42A8, &qword_21704C108);
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42B0, &qword_21704C110);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v72 - v19;
  v20 = type metadata accessor for HorizontalPosterLockup(0);
  v95 = v20;
  v96 = &off_2829380D0;
  v97 = &off_282938088;
  v98 = &off_2829380C0;
  __swift_allocate_boxed_opaque_existential_1Tm(&v94);
  sub_216B87668();
  v79 = v15;
  sub_217007194();
  v21 = *(v6 + 24);
  v78 = v2;
  v22 = v2 + v21;
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = *v22;
  }

  else
  {

    sub_21700ED94();
    v76 = a1;
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v75 = v6;
    v26 = *(v11 + 8);
    v74 = v20;
    v27 = v77;
    v26(v13, v77);
    v73 = *&v93;

    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    a1 = v76;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v26(v13, v27);
    v24 = v93;
    v23 = v73;
  }

  v29 = sub_216B860FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278, &qword_21704C088);
  sub_2170082C4();
  v30 = v93;
  sub_2166A6EA4();
  v31 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6A00, &unk_217016B60);
    v32 = 23;
  }

  else
  {
    v32 = *v10;
    sub_216B87ACC(v10, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v93) = v32;
  v33 = sub_216E41068(&v93, 0);
  v35 = v34;
  sub_216B87668();
  v36 = swift_allocObject();
  sub_216B87B90();
  v37 = v16[14];
  *&v18[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  sub_21686BC70(&v94, v18);
  (*(v80 + 32))(&v18[v16[9]], v79, v81);
  v38 = &v18[v16[10]];
  *v38 = v23;
  *(v38 + 1) = v24 / v29;
  v38[16] = 0;
  *&v18[v16[12]] = v30;
  v39 = &v18[v16[13]];
  *v39 = sub_216B88000;
  v39[1] = v36;
  v40 = &v18[v16[11]];
  *v40 = v33;
  v40[1] = v35;
  sub_2166D9530(&qword_27CAC42B8, &qword_27CAC42A8, &qword_21704C108, &unk_217053280);
  v41 = v86;
  sub_21700A2A4();
  sub_2166997CC(v18, &qword_27CAC42A8, &qword_21704C108);
  sub_216B862CC();
  v42 = v85;
  v43 = v90;
  sub_2170064C4();

  (*(v88 + 8))(v41, v43);
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  v44 = xmmword_280E73AF0;
  v45 = qword_280E73B00;
  v46 = qword_280E73B08;
  v47 = *(v91 + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_217009294();
  v50 = v92;
  (*(*(v49 - 8) + 104))(&v92[v47], v48, v49);
  __asm { FMOV            V0.2D, #14.0 }

  *v50 = _Q0;
  v56 = sub_21700B3B4();
  v58 = v57;
  v59 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42C0, &unk_21704C150) + 36);
  sub_216B87668();
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0, &unk_217016CE0) + 36);
  *v60 = v46;
  *(v60 + 8) = v45;
  *(v60 + 16) = v44;

  LOBYTE(v46) = sub_217009C84();
  sub_217007F24();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8, &unk_21701F5F0) + 36);
  *v69 = v46;
  *(v69 + 8) = v62;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  *(v69 + 32) = v68;
  *(v69 + 40) = 0;
  v70 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8, &qword_2170271D0) + 36));
  *v70 = v56;
  v70[1] = v58;
  (*(v87 + 32))(a1, v42, v89);
  return sub_216B87ACC(v50, MEMORY[0x277CDFC08]);
}

double sub_216B860FC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LiveRadioPosterLockupView.CardView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  result = 1.77777778;
  if (v7 < 2)
  {
    return 1.5;
  }

  return result;
}

uint64_t sub_216B8626C@<X0>(uint64_t a2@<X8>)
{
  sub_216B87668();
  v3 = a2 + *(type metadata accessor for LiveRadioPosterLockupView.CardView.ChinView(0) + 20);
  result = swift_getKeyPath();
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

void sub_216B862CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  v3 = type metadata accessor for HorizontalPosterLockup(0);
  v4 = (v0 + v3[10]);
  v5 = v4[1];
  *(inited + 32) = *v4;
  *(inited + 40) = v5;
  v6 = (v1 + v3[11]);
  v7 = v6[1];
  *(inited + 48) = *v6;
  *(inited + 56) = v7;
  v8 = v1 + v3[7];
  v9 = *(v8 + 16);
  if (v9 == 255)
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    sub_21700DF14();
    sub_21700DF14();
  }

  else
  {
    v10 = *v8;
    if (v9)
    {
      sub_21700DF14();
      sub_21700DF14();
      v10 = sub_216B6BEC8();
      v12 = v11;
    }

    else
    {
      v12 = *(v8 + 8);
      sub_21700DF14();
      sub_21700DF14();
      sub_216B87640(v10, v12, v9);
    }

    *(inited + 64) = v10;
    *(inited + 72) = v12;
  }

  v13 = (v1 + v3[8]);
  v14 = v13[1];
  *(inited + 80) = *v13;
  *(inited + 88) = v14;
  v15 = (v1 + v3[9]);
  v16 = v15[1];
  *(inited + 96) = *v15;
  *(inited + 104) = v16;
  sub_21700DF14();
  sub_21700DF14();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
LABEL_8:
  v19 = v17 - 1;
  v20 = 16 * v17 + 40;
  while (1)
  {
    if (v19 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
      OUTLINED_FUNCTION_5_89();
      sub_2166D9530(v28, v29, &unk_217017160, v30);
      v31 = sub_21700E454();
      v33 = v32;

      sub_21700F9C4();
      MEMORY[0x21CE9F490](8250, 0xE200000000000000);
      MEMORY[0x21CE9F490](v31, v33);

      return;
    }

    if (++v19 > 4)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *(inited + v20);
    v20 += 16;
    if (v22)
    {
      v23 = *(inited + v21 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v18 = v26;
      }

      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_21693776C();
        v18 = v27;
      }

      v17 = v19 + 1;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_216B86574()
{
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42E0, &qword_21704C1C0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42E8, &qword_21704C1C8);
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-v10];
  *v8 = sub_2170093C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42F0, &qword_21704C1D0);
  sub_216B86914(v0, &v8[*(v12 + 44)]);
  v13 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42F8, &qword_21704C208) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  LOBYTE(v13) = sub_217009C74();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4300, &qword_21704C210) + 36)];
  *v24 = v13;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v13) = sub_217009C94();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4308, &qword_21704C218) + 36)];
  *v33 = v13;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v13) = sub_217009CA4();
  sub_217007F24();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4310, &qword_21704C220) + 36)];
  *v42 = v13;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  *&v8[*(v6 + 44)] = 256;
  sub_21700B354();
  sub_217008BB4();
  sub_2167A4788();
  memcpy(&v11[*(v9 + 36)], __src, 0x70uLL);
  sub_2170099A4();
  sub_216B882CC();
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_2166997CC(v11, &qword_27CAC42E8, &qword_21704C1C8);
}

uint64_t sub_216B86914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v106 = sub_21700D864();
  v115 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21700D8E4();
  v4 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4358, &qword_21704C238);
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v94 - v9;
  MEMORY[0x28223BE20](v10);
  v108 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v107 = &v94 - v13;
  MEMORY[0x28223BE20](v14);
  v95 = &v94 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4360, &qword_21704C240);
  MEMORY[0x28223BE20](v94);
  v105 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v111 = &v94 - v21;
  v102 = type metadata accessor for HorizontalPosterLockup(0);
  v103 = a1;
  v22 = a1 + v102[7];
  v23 = *(v22 + 16);
  if (v23 == 255)
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v24 = *v22;
    if (v23)
    {
      v24 = sub_216B6BEC8();
      v26 = v25;
    }

    else
    {
      v26 = *(v22 + 8);
      sub_216777114(*v22, v26, 0);
    }

    v27 = MEMORY[0x277D84F90];
  }

  v113 = v4;
  if (qword_27CAB5E30 != -1)
  {
    swift_once();
  }

  v28 = qword_27CAC41B8;
  KeyPath = swift_getKeyPath();
  v30 = qword_27CAB5E38;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27CAC41C0;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v123 = 0;
  v121[0] = v24;
  v121[1] = v26;
  v121[2] = 0;
  v121[3] = v27;
  v121[4] = KeyPath;
  v121[5] = v28;
  v121[6] = v32;
  v121[7] = v31;
  v121[8] = v33;
  LOBYTE(v121[9]) = 0;
  v121[10] = v34;
  v121[11] = 1;
  LOBYTE(v121[12]) = 0;
  memset(__dst, 0, 32);
  memset(v119, 0, 32);

  v35 = v112;
  sub_21700D884();
  sub_2166997CC(v119, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(__dst, &unk_27CABF7A0, &unk_217014D20);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2F8, &qword_217023408);
  v37 = sub_216B8866C();
  v38 = v95;
  v100 = v37;
  v101 = v36;
  sub_21700A204();
  v39 = v113 + 8;
  v99 = *(v113 + 8);
  v99(v35, v114);
  memcpy(__dst, v121, 0x61uLL);
  sub_2166997CC(__dst, &qword_27CABB2F8, &qword_217023408);
  v40 = sub_217009CA4();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  (*(v109 + 32))(v19, v38, v110);
  v49 = &v19[*(v94 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_2167A4788();
  v50 = (v103 + v102[8]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v54 = qword_27CAB5E40;
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_27CAC41C8;
  v56 = swift_getKeyPath();
  v57 = qword_27CAB5E48;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = qword_27CAC41D0;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  v120 = 0;
  v119[0] = v52;
  v119[1] = v51;
  v119[2] = 0;
  v119[3] = v53;
  v119[4] = v56;
  v119[5] = v55;
  v119[6] = v59;
  v119[7] = v58;
  v119[8] = v60;
  LOBYTE(v119[9]) = 0;
  v119[10] = v61;
  v119[11] = 1;
  LOBYTE(v119[12]) = 0;
  v62 = *MEMORY[0x277D22050];
  v63 = v115;
  v64 = v104;
  v65 = v106;
  v95 = *(v115 + 104);
  (v95)(v104, v62, v106);
  memset(v121, 0, 32);
  memset(v117, 0, 32);

  v66 = v112;
  sub_21700D874();
  sub_2166997CC(v117, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v121, &unk_27CABF7A0, &unk_217014D20);
  v67 = *(v63 + 8);
  v115 = v63 + 8;
  v94 = v67;
  v67(v64, v65);
  sub_21700A204();
  v113 = v39;
  v99(v66, v114);
  memcpy(v121, v119, 0x61uLL);
  sub_2166997CC(v121, &qword_27CABB2F8, &qword_217023408);
  v68 = (v103 + v102[9]);
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;
    v71 = MEMORY[0x277D84F90];
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v72 = qword_27CAB5E50;
  sub_21700DF14();
  if (v72 != -1)
  {
    swift_once();
  }

  v73 = qword_27CAC41D8;
  v74 = swift_getKeyPath();
  v75 = qword_27CAB5E58;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = qword_27CAC41E0;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v118 = 0;
  v117[0] = v70;
  v117[1] = v69;
  v117[2] = 0;
  v117[3] = v71;
  v117[4] = v74;
  v117[5] = v73;
  v117[6] = v77;
  v117[7] = v76;
  v117[8] = v78;
  LOBYTE(v117[9]) = 0;
  v117[10] = v79;
  v117[11] = 2;
  LOBYTE(v117[12]) = 0;
  v80 = v104;
  v81 = v106;
  (v95)(v104, *MEMORY[0x277D22070], v106);
  memset(v119, 0, 32);
  memset(v116, 0, sizeof(v116));

  v82 = v112;
  sub_21700D874();
  sub_2166997CC(v116, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v119, &unk_27CABF7A0, &unk_217014D20);
  (v94)(v80, v81);
  v83 = v108;
  sub_21700A204();
  v99(v82, v114);
  memcpy(v119, v117, 0x61uLL);
  sub_2166997CC(v119, &qword_27CABB2F8, &qword_217023408);
  sub_216740C24();
  v85 = v109;
  v84 = v110;
  v86 = *(v109 + 16);
  v87 = v96;
  v88 = v107;
  v86(v96, v107, v110);
  v89 = v97;
  v86(v97, v83, v84);
  v90 = v98;
  sub_216740C24();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4370, &qword_21704C2D8);
  v86((v90 + *(v91 + 48)), v87, v84);
  v86((v90 + *(v91 + 64)), v89, v84);
  v92 = *(v85 + 8);
  v92(v108, v84);
  v92(v88, v84);
  sub_2166997CC(v111, &qword_27CAC4360, &qword_21704C240);
  v92(v89, v84);
  v92(v87, v84);
  return sub_2166997CC(v105, &qword_27CAC4360, &qword_21704C240);
}

uint64_t sub_216B87484(uint64_t a1)
{
  result = sub_2166D4DA8(qword_280E35708, type metadata accessor for LiveRadioPosterLockupView, &unk_21704BE78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B87510(uint64_t a1)
{
  sub_21700ACF4();
  v1 = sub_21700AD04();

  qword_27CAC41C0 = v1;
  return result;
}

uint64_t sub_216B87588(uint64_t a1, void (*a2)(uint64_t), void (*a3)(void), uint64_t *a4)
{
  a2(a1);
  a3();
  v6 = sub_217009E34();

  *a4 = v6;
  return result;
}

uint64_t sub_216B875E0(uint64_t a1)
{
  result = sub_21700ACF4();
  qword_27CAC41D0 = result;
  return result;
}

uint64_t sub_216B87600(uint64_t a1)
{
  result = sub_217009D44();
  qword_27CAC41D8 = result;
  return result;
}

uint64_t sub_216B87620(uint64_t a1)
{
  result = sub_21700ACF4();
  qword_27CAC41E0 = result;
  return result;
}

uint64_t sub_216B87640(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_216777114(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_216B87668()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216B876D8()
{
  result = qword_27CAC4230;
  if (!qword_27CAC4230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41F8, &qword_21704BF68);
    sub_216B87790();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4230);
  }

  return result;
}

unint64_t sub_216B87790()
{
  result = qword_27CAC4238;
  if (!qword_27CAC4238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4228, &qword_21704BF98);
    sub_2166D9530(&qword_27CAC4240, &qword_27CAC4248, &qword_21704BFA0, MEMORY[0x277CE1198]);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4238);
  }

  return result;
}

uint64_t sub_216B87860(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_36(v1);
  v3 = OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_216B878E8()
{
  result = qword_27CAC4250;
  if (!qword_27CAC4250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4210, &qword_21704BF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4200, &qword_21704BF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41F8, &qword_21704BF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216B876D8();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0, &unk_217037028);
    sub_2166D4DA8(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D4DA8(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4250);
  }

  return result;
}

uint64_t sub_216B87ACC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B87B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B87B90()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B87BE8()
{
  v1 = type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_36(v1);

  return sub_216B855A0((v0 + 16), v0 + 56);
}

unint64_t sub_216B87C98()
{
  result = qword_27CAC4270;
  if (!qword_27CAC4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4270);
  }

  return result;
}

void sub_216B87D14(uint64_t a1)
{
  type metadata accessor for HorizontalPosterLockup(319);
  if (v1 <= 0x3F)
  {
    sub_216B87DE8(319);
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216B87DE8(uint64_t a1)
{
  if (!qword_27CAC4290)
  {
    sub_216B87C98();
    v1 = sub_2170082D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC4290);
    }
  }
}

unint64_t sub_216B87E44()
{
  result = qword_27CAC4298;
  if (!qword_27CAC4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4258, &unk_21704BFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41F0, &qword_21704BF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41E8, &qword_21704BF58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4210, &qword_21704BF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000, &unk_21701F600);
    sub_216B878E8();
    sub_21686AF54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4298);
  }

  return result;
}

uint64_t sub_216B8802C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return a2(v4);
}

void sub_216B880F4(uint64_t a1)
{
  type metadata accessor for HorizontalPosterLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216B88188()
{
  result = qword_27CAC42D8;
  if (!qword_27CAC42D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42C0, &unk_21704C150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42A8, &qword_21704C108);
    sub_2166D9530(&qword_27CAC42B8, &qword_27CAC42A8, &qword_21704C108, &unk_217053280);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2AC00, &qword_27CAB9FF8, &qword_2170271D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC42D8);
  }

  return result;
}

unint64_t sub_216B882CC()
{
  result = qword_27CAC4318;
  if (!qword_27CAC4318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42E8, &qword_21704C1C8);
    sub_216B88358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4318);
  }

  return result;
}

unint64_t sub_216B88358()
{
  result = qword_27CAC4320;
  if (!qword_27CAC4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42E0, &qword_21704C1C0);
    sub_216B883E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4320);
  }

  return result;
}

unint64_t sub_216B883E4()
{
  result = qword_27CAC4328;
  if (!qword_27CAC4328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4310, &qword_21704C220);
    sub_216B88470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4328);
  }

  return result;
}

unint64_t sub_216B88470()
{
  result = qword_27CAC4330;
  if (!qword_27CAC4330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4308, &qword_21704C218);
    sub_216B884FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4330);
  }

  return result;
}

unint64_t sub_216B884FC()
{
  result = qword_27CAC4338;
  if (!qword_27CAC4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4300, &qword_21704C210);
    sub_216B88588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4338);
  }

  return result;
}

unint64_t sub_216B88588()
{
  result = qword_27CAC4340;
  if (!qword_27CAC4340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC42F8, &qword_21704C208);
    sub_2166D9530(&qword_27CAC4348, &qword_27CAC4350, &unk_21704C228, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4340);
  }

  return result;
}

unint64_t sub_216B8866C()
{
  result = qword_27CAC4368;
  if (!qword_27CAC4368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB2F8, &qword_217023408);
    sub_21686BE88();
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4368);
  }

  return result;
}

uint64_t sub_216B88724()
{
  v0 = sub_21700CBF4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CC04();
  v6 = sub_216B88808(v5);
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_216B88808(uint64_t a1)
{
  v3 = sub_21700CBF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = *(v1 + 40);
  v16[3] = sub_2166AF2EC();
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = v9;
  (*(v5 + 16))(&v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_21700CDF4();

  v12 = v9;
  v13 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

uint64_t sub_216B88994()
{
  v1 = type metadata accessor for SourceBundleLoader(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v15 - v6);
  v8 = *(v0 + 24);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);
  swift_unknownObjectRetain();
  sub_216A73FA4(v10, v8, v9, v7);
  sub_2166B1ED4(v7, v4);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_2166B1F48(v4, v12 + v11);
  v13 = sub_2166B22C4(&unk_217021330, v12);
  sub_2166B2500(v7);
  *(v0 + 16) = v13;
}

uint64_t sub_216B88AF8(uint64_t a1, uint64_t a2)
{
  result = sub_21700CAB4();
  if (!v2)
  {
    if (v4 >> 60 == 15)
    {
      sub_216B88D60();
      swift_allocError();
      *v5 = 0xD000000000000021;
      v5[1] = 0x8000000217089D30;
      return swift_willThrow();
    }

    else
    {
      return sub_21700CCF4();
    }
  }

  return result;
}

uint64_t sub_216B88B9C()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_216B88BD4()
{
  sub_216B88B9C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B88C08()
{
  type metadata accessor for SourceBundleLoader(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166DFAC0;

  return sub_2166B2F08();
}

unint64_t sub_216B88D60()
{
  result = qword_27CAC4378;
  if (!qword_27CAC4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4378);
  }

  return result;
}

uint64_t sub_216B88F54(uint64_t a1, uint64_t a2)
{
  v58 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v55 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v54 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4380, &qword_21704C410);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v57 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-v13];
  MEMORY[0x28223BE20](v15);
  v59 = &v52[-v16];
  v61 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v60 = v20;
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v23 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v52[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4388, &qword_21704C418);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v52[-v28];
  v31 = &v52[*(v30 + 56) - v28];
  sub_216B8965C(a1, &v52[-v28]);
  sub_216B8965C(a2, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216B8965C(v29, v23);
      if (OUTLINED_FUNCTION_1_155() != 1)
      {
        goto LABEL_20;
      }

      v33 = *v23 ^ *v31;
      sub_2168CD6E4(v29);
      v34 = v33 ^ 1;
      return v34 & 1;
    case 2u:
      if (OUTLINED_FUNCTION_1_155() == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    case 3u:
      if (OUTLINED_FUNCTION_1_155() != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 4u:
      if (OUTLINED_FUNCTION_1_155() != 4)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 5u:
      if (OUTLINED_FUNCTION_1_155() != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 6u:
      if (OUTLINED_FUNCTION_1_155() != 6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 7u:
      if (OUTLINED_FUNCTION_1_155() != 7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 8u:
      if (OUTLINED_FUNCTION_1_155() == 8)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    default:
      sub_216B8965C(v29, v26);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
      if (OUTLINED_FUNCTION_1_155())
      {
        sub_216697664(&v26[v32], &qword_27CAB74B8, &unk_217017110);
        (*(v18 + 8))(v26, v61);
LABEL_20:
        sub_216697664(v29, &qword_27CAC4388, &qword_21704C418);
        goto LABEL_21;
      }

      v36 = v18;
      v37 = v60;
      v38 = v61;
      (*(v18 + 32))(v60, v31, v61);
      v39 = v59;
      sub_216887070(&v26[v32], v59);
      v40 = &v31[v32];
      v41 = v37;
      sub_216887070(v40, v14);
      v42 = sub_21700C864();
      v43 = *(v36 + 8);
      v43(v26, v38);
      if ((v42 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_64(v14);
        OUTLINED_FUNCTION_9_64(v39);
        v43(v41, v38);
        goto LABEL_31;
      }

      v44 = *(v7 + 48);
      v45 = v57;
      sub_216A676B0(v39, v57);
      sub_216A676B0(v14, &v45[v44]);
      v46 = v58;
      if (__swift_getEnumTagSinglePayload(v45, 1, v58) == 1)
      {
        OUTLINED_FUNCTION_9_64(v14);
        OUTLINED_FUNCTION_9_64(v39);
        v43(v60, v61);
        if (__swift_getEnumTagSinglePayload(&v45[v44], 1, v46) == 1)
        {
          sub_216697664(v45, &qword_27CAB74B8, &unk_217017110);
LABEL_19:
          sub_2168CD6E4(v29);
          v34 = 1;
          return v34 & 1;
        }

        goto LABEL_30;
      }

      v47 = v56;
      sub_216A676B0(v45, v56);
      if (__swift_getEnumTagSinglePayload(&v45[v44], 1, v46) == 1)
      {
        OUTLINED_FUNCTION_9_64(v14);
        OUTLINED_FUNCTION_9_64(v59);
        v43(v60, v61);
        (*(v55 + 8))(v47, v46);
LABEL_30:
        sub_216697664(v45, &qword_27CAC4380, &qword_21704C410);
        goto LABEL_31;
      }

      v48 = v55;
      v49 = &v45[v44];
      v50 = v54;
      (*(v55 + 32))(v54, v49, v46);
      sub_216B896C0();
      v53 = sub_21700E494();
      v51 = *(v48 + 8);
      v51(v50, v46);
      sub_216697664(v14, &qword_27CAB74B8, &unk_217017110);
      sub_216697664(v59, &qword_27CAB74B8, &unk_217017110);
      v43(v60, v61);
      v51(v56, v46);
      sub_216697664(v45, &qword_27CAB74B8, &unk_217017110);
      if (v53)
      {
        goto LABEL_19;
      }

LABEL_31:
      sub_2168CD6E4(v29);
LABEL_21:
      v34 = 0;
      return v34 & 1;
  }
}

uint64_t sub_216B8965C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B896C0()
{
  result = qword_27CABB828;
  if (!qword_27CABB828)
  {
    sub_21700C924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB828);
  }

  return result;
}

void sub_216B89760(uint64_t a1)
{
  sub_2166D90EC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuContext(319);
    if (v2 <= 0x3F)
    {
      sub_216688154();
      if (v3 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E2A018, &qword_27CABD298, &unk_217033E90);
        if (v4 <= 0x3F)
        {
          sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216B89874()
{
  v0 = [swift_getObjCClassFromMetadata() currentDevice];
  v1 = [v0 systemVersion];

  v2 = sub_21700E514();
  v4 = v3;

  v21 = 46;
  v22 = 0xE100000000000000;
  v20[2] = &v21;
  v5 = sub_216B89A84(0x7FFFFFFFFFFFFFFFLL, 1, sub_216AF7E78, v20, v2, v4);
  v6 = *(v5 + 16);
  if (v6 >= 2)
  {
    sub_21700DF14();
    OUTLINED_FUNCTION_0_178();
    v12 = v11;
    v14 = v13;

    v21 = v12;
    v22 = v14;
    result = MEMORY[0x21CE9F490](46, 0xE100000000000000);
    if (*(v5 + 16) >= 2uLL)
    {
      sub_21700DF14();

      OUTLINED_FUNCTION_0_178();
      v17 = v16;
      v19 = v18;

      MEMORY[0x21CE9F490](v17, v19);

      return v21;
    }

    __break(1u);
  }

  else
  {
    if (v6 == 1)
    {
      sub_21700DF14();

      OUTLINED_FUNCTION_0_178();
      v8 = v7;
      v10 = v9;

      v21 = v8;
      v22 = v10;
      MEMORY[0x21CE9F490](12334, 0xE200000000000000);
      return v21;
    }

    return 3157552;
  }

  return result;
}

uint64_t sub_216B89A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_216B89A84(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_21700E734();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_216938598();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_216938598();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_21700E704();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_21700E634();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_21700E734();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938598();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_216938598();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_21700E634();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_21700E734();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_216938598();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t TabIdentifier.rawValue.getter()
{
  result = 0x6F4E6E657473696CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6573776F7262;
      break;
    case 2:
      result = 0x6F69646172;
      break;
    case 3:
      result = 0x614C686372616573;
      break;
    case 4:
      result = 0x6552686372616573;
      break;
    case 5:
      result = 0x736F65646976;
      break;
    default:
      return result;
  }

  return result;
}

MusicUI::TabIdentifier_optional __swiftcall TabIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_216B89F98@<X0>(uint64_t *a1@<X8>)
{
  result = TabIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TabItem.label.getter()
{
  v1 = *(v0 + 8);
  sub_21700DF14();
  return v1;
}

unint64_t sub_216B8A0B8()
{
  result = qword_27CAC4390;
  if (!qword_27CAC4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4390);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TabIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B8A248()
{
  result = qword_27CAC4398;
  if (!qword_27CAC4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4398);
  }

  return result;
}

void sub_216B8A3F4()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for FlowAction(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_46_24();
  sub_216B9143C(v8, v0, type metadata accessor for FlowAction);
  OUTLINED_FUNCTION_56_18();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;
  sub_216B914F8(v0, v15 + v12, type metadata accessor for FlowAction);
  *(v15 + v14) = v6;

  sub_216ECDBF4(&unk_21704C7A8, v15);
  OUTLINED_FUNCTION_65_2();
}

void sub_216B8A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_6();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28(0);
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &a9 - v35;
  sub_216B9143C(v27, &a9 - v35, v23);
  v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v38 = swift_allocObject();
  sub_216B914F8(v36, v38 + v37, v23);
  *(v38 + ((v34 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  sub_216ECDBF4(v21, v38);
  OUTLINED_FUNCTION_65_2();
}

void sub_216B8A92C()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SelectReplayYearAction(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_46_24();
  sub_216B9124C(v2, v14);
  sub_216B9143C(v6, v1, type metadata accessor for SelectReplayYearAction);
  OUTLINED_FUNCTION_56_18();
  v13 = swift_allocObject();
  sub_216B912A8(v14, v13 + 16);
  sub_216B914F8(v1, v13 + v10, type metadata accessor for SelectReplayYearAction);
  *(v13 + v12) = v4;

  sub_216ECDBF4(&unk_21704C9F8, v13);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_216B8AAA8()
{
  v4 = OUTLINED_FUNCTION_37_0();
  v5 = type metadata accessor for ReplaySelectYearAction(v4);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_40();
  sub_216B8F3F8(v1, __src);
  sub_216B9143C(v2, v3, type metadata accessor for ReplaySelectYearAction);
  OUTLINED_FUNCTION_27_40();
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x98uLL);
  OUTLINED_FUNCTION_49_24();
  *(v9 + v8) = v0;

  return sub_216ECDBF4(&unk_21704C790, v9);
}

uint64_t sub_216B8ABC4()
{
  v4 = OUTLINED_FUNCTION_37_0();
  v5 = type metadata accessor for ReplaySelectPeriodAction(v4);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_40();
  sub_216B91114(v1, __src);
  sub_216B9143C(v2, v3, type metadata accessor for ReplaySelectPeriodAction);
  OUTLINED_FUNCTION_27_40();
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0xA0uLL);
  OUTLINED_FUNCTION_49_24();
  *(v9 + v8) = v0;

  return sub_216ECDBF4(&unk_21704C9E8, v9);
}

uint64_t sub_216B8AF20(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SetSuggestionSearchTermAction(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *(v2 + 8);
  v15 = *(v2 + 32);
  v16 = v8;
  sub_216B9143C(a1, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for SetSuggestionSearchTermAction);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  sub_216B914F8(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v10 + v9, type metadata accessor for SetSuggestionSearchTermAction);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_216B8ED34(&v16, v14);

  sub_216B8ED90(&v15, v14);

  return sub_216ECDBF4(&unk_21704C700, v10);
}

void sub_216B8B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for DismissSearchFocusAction(0);
  v33 = OUTLINED_FUNCTION_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_216B9143C(v31, &a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DismissSearchFocusAction);
  v38 = (*(v35 + 80) + 33) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v27;
  *(v39 + 24) = v25;
  *(v39 + 32) = v23;
  sub_216B914F8(&a9 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for DismissSearchFocusAction);
  *(v39 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_216ECDBF4(&unk_21704C730, v39);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B8B3F8()
{
  v4 = OUTLINED_FUNCTION_37_0();
  v5 = type metadata accessor for SelectReplayPeriodAction(v4);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_40();
  sub_216B913E0(v1, v11);
  sub_216B9143C(v2, v3, type metadata accessor for SelectReplayPeriodAction);
  OUTLINED_FUNCTION_27_40();
  v9 = swift_allocObject();
  sub_216B9149C(v11, v9 + 16);
  OUTLINED_FUNCTION_49_24();
  *(v9 + v8) = v0;

  return sub_216ECDBF4(&unk_21704CA08, v9);
}

uint64_t sub_216B8B510()
{
  OUTLINED_FUNCTION_33();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  sub_21700EA34();
  v1[10] = sub_21700EA24();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v4 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216B8B59C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = type metadata accessor for SetSuggestionSearchTermAction(0);
  sub_216C98C74(*(v3 + *(v4 + 20)), *(v3 + *(v4 + 20) + 8));
  sub_216C98D10();

  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  LOBYTE(v1) = *(v1 + 24);
  *(v0 + 40) = v6;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v1;
  sub_216B8ED34(v0 + 40, v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43A8, &qword_21704C720);
  sub_217007F84();
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v1;
  *(v0 + 48) = 0;
  sub_217007F84();
  sub_216B8EE00(v0 + 40);

  v7 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 104))(v2, v7);
  OUTLINED_FUNCTION_23();

  return v9();
}

uint64_t sub_216B8B73C()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_216B91634;

  return sub_216B8B510();
}

unint64_t sub_216B8B7F8(uint64_t a1)
{
  result = sub_216B8B820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B8B820()
{
  result = qword_280E2CFD0;
  if (!qword_280E2CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2CFD0);
  }

  return result;
}

unint64_t sub_216B8B878()
{
  result = qword_280E31290[0];
  if (!qword_280E31290[0])
  {
    type metadata accessor for SetSuggestionSearchTermAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31290);
  }

  return result;
}

uint64_t sub_216B8B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_216B8B9E4;

  return sub_2167789D0(a1, a3, a4, a2);
}

uint64_t sub_216B8B9E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_65();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_21700E9B4();
  OUTLINED_FUNCTION_16_51();
  if (v0)
  {
    v9 = sub_216B91638;
  }

  else
  {
    v9 = sub_216B9163C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_216B8BB20()
{
  v0[2] = sub_21700EA34();
  v0[3] = sub_21700EA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_216B8B9E4;

  return sub_2167A913C();
}

uint64_t sub_216B8BBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21700EA34();
  v5[3] = sub_21700EA24();
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_216B8B9E4;

  return sub_2167AF21C(a1, a4, a5, a2, a3);
}

uint64_t sub_216B8BCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = sub_21700EA34();
  v3[4] = sub_21700EA24();
  v3[5] = sub_21700EA24();
  v5 = *(type metadata accessor for AddRecentSearchMusicItemAction(0) + 20);
  v8 = (*MEMORY[0x277D2A698] + MEMORY[0x277D2A698]);
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_216B8BDC4;

  return v8(a3 + v5);
}

uint64_t sub_216B8BDC4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_65();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_21700E9B4();
  OUTLINED_FUNCTION_16_51();
  if (v0)
  {
    v9 = sub_216B8C014;
  }

  else
  {
    v9 = sub_216B8BF00;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_216B8BF00()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);

  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v4 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216B8BFBC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216B8C014()
{
  OUTLINED_FUNCTION_33();

  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v0 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_216B8C088()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B8C0E4()
{
  v0[2] = sub_21700EA34();
  v0[3] = sub_21700EA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_216B8B9E4;

  return sub_2167EBC0C();
}

uint64_t sub_216B8C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_216B8B9E4;

  return sub_2168F6FE0(a1, a3, a4, a2);
}

uint64_t sub_216B8C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216914A64(a1, a2, a3);
}

uint64_t sub_216B8C34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216915840(a1, a2, a3);
}

uint64_t sub_216B8C414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_216B8B9E4;

  return sub_21691F474(a1, a3, a4, a2);
}

uint64_t sub_216B8C4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216942EC0(a1, a2, a3);
}

uint64_t sub_216B8C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_21696DDF8(a1, a2, a3);
}

uint64_t sub_216B8C67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_216B8B9E4;

  return sub_21696ED8C(a1, a3);
}

uint64_t sub_216B8C754()
{
  v0[2] = sub_21700EA34();
  v0[3] = sub_21700EA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_216B8B9E4;

  return sub_2169D0660();
}

uint64_t sub_216B8C81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_216B8B9E4;

  return sub_216A10854(a1, a3);
}

uint64_t sub_216B8C8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_216B8B9E4;

  return sub_216A11830(a1, a3);
}

uint64_t sub_216B8C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216A3E680(a1, a2, a3);
}

uint64_t sub_216B8CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216A4B8C4(a1, a2, a3);
}

uint64_t sub_216B8CB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8CC24;

  return sub_216AC0B30(a1, a2, a3);
}

uint64_t sub_216B8CC24()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_65();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_21700E9B4();
  OUTLINED_FUNCTION_16_51();
  if (v0)
  {
    v9 = sub_216B8CDB8;
  }

  else
  {
    v9 = sub_216B8CD60;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_216B8CD60()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216B8CDB8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B8CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_216B8B9E4;

  return sub_216B044E8(a1, a3, a4, a2);
}

uint64_t sub_216B8CEEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21700EA34();
  v2[5] = sub_21700EA24();
  v2[6] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B8CF94, v4, v3);
}

uint64_t sub_216B8CF94()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);

  sub_217006A04();
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v4 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216B8D05C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216B8D0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_21700EA34();
  v3[6] = sub_21700EA24();
  v3[7] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B8D160, v5, v4);
}

uint64_t sub_216B8D160()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 16);

  type metadata accessor for AddRecentSearchTermAction(0);
  sub_2170069B4();
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216B8D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216B510A0(a1, a2, a3);
}

uint64_t sub_216B8D304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216B6E2C0(a1, a2, a3);
}

uint64_t sub_216B8D3CC()
{
  v0[2] = sub_21700EA34();
  v0[3] = sub_21700EA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_216B8B9E4;

  return sub_216B8B510();
}

uint64_t sub_216B8D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216B9BD88(a1, a2, a3);
}

uint64_t sub_216B8D55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_216B8B9E4;

  return sub_216BF1D5C();
}

uint64_t sub_216B8D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v6[2] = sub_21700EA34();
  v6[3] = sub_21700EA24();
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_216B8B9E4;

  return sub_216C7BEE8(a1, a5, a6, a2, a3, v9);
}

uint64_t sub_216B8D724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_216B8B9E4;

  return sub_216C85C9C();
}

uint64_t sub_216B8D7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216CC0F48(a1, a2, a3);
}

uint64_t sub_216B8D8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_21700EA34();
  v3[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_216B8B9E4;

  return sub_216E2846C(a1, a2, a3);
}

uint64_t sub_216B8D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_216B8B9E4;

  return sub_216EAEBC8();
}

uint64_t sub_216B8DA54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21700EA34();
  v2[5] = sub_21700EA24();
  v2[6] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B8DAFC, v4, v3);
}

uint64_t sub_216B8DAFC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 16);

  MusicStackAuthority.pop()();
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v4 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216B8DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_21700EA34();
  v4[3] = sub_21700EA24();
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_216B8B9E4;

  return sub_216F20BC8(a1, a3);
}

uint64_t sub_216B8DC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8B90C(a1, v8, a3, a4);
}

uint64_t sub_216B8DD54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_216A523A8;

  return sub_216B8BB20();
}

uint64_t sub_216B8DE0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_216A523A8;

  return sub_216B8BBF8(a1, v8, v9, a3, a4);
}

uint64_t sub_216B8DED0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_216A523A8;

  return sub_216B8BCD8(a1, v6, a3);
}

uint64_t sub_216B8DF88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_216A523A8;

  return sub_216B8C0E4();
}

uint64_t sub_216B8E038(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8C1AC(a1, v8, a3, a4);
}

uint64_t sub_216B8E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8C284(a1, a3, a4);
}

uint64_t sub_216B8E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8C34C(a1, a3, a4);
}

uint64_t sub_216B8E250(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8C414(a1, v8, a3, a4);
}

uint64_t sub_216B8E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8C4EC(a1, a3, a4);
}

uint64_t sub_216B8E3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8C5B4(a1, a3, a4);
}

uint64_t sub_216B8E468()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_216A523A8;

  return sub_216B8C754();
}

uint64_t sub_216B8E518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8C9CC(a1, a3, a4);
}

uint64_t sub_216B8E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8CA94(a1, a3, a4);
}

uint64_t sub_216B8E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2169D1708;

  return sub_216B8CB5C(a1, a3, a4);
}

uint64_t sub_216B8E728(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8CE14(a1, v8, a3, a4);
}

uint64_t sub_216B8E7E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216A523A8;

  return sub_216B8CEEC(a1, v4);
}

uint64_t sub_216B8E898(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_216A523A8;

  return sub_216B8D0B4(a1, v6, a3);
}

uint64_t sub_216B8E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D23C(a1, a3, a4);
}

uint64_t sub_216B8EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D304(a1, a3, a4);
}

uint64_t sub_216B8EAB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v2;
  v4[1] = sub_216B8EB74;

  return sub_216B8D3CC();
}

uint64_t sub_216B8EB74()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216B8EC58()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for SetSuggestionSearchTermAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8ED90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43A0, &qword_21704C708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B8EE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D494(a1, a3, a4);
}

uint64_t sub_216B8EF04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8D55C(a1, v8, a3, a4);
}

uint64_t sub_216B8EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_216A523A8;

  return sub_216B8D634(a1, v8, v9, v10, a3, a4);
}

uint64_t sub_216B8F088()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for DismissSearchFocusAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8F164()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for AddRecentSearchMusicItemAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8F240()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for AddRecentSearchTermAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8F31C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ClearRecentSearchesAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8F454()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ReplaySelectYearAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A523A8;
  v5 = OUTLINED_FUNCTION_2_123();

  return sub_216B8C81C(v5, v6, v7);
}

uint64_t sub_216B8F530()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for FlowAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D724(a1, a3, a4);
}

uint64_t sub_216B8F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D7EC(a1, a3, a4);
}

uint64_t sub_216B8F76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216A523A8;

  return sub_216B8D8B4(a1, a3, a4);
}

uint64_t sub_216B8F81C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_216A523A8;

  return sub_216B8D97C(a1, v8, a3, a4);
}

uint64_t sub_216B8F8D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216A523A8;

  return sub_216B8DA54(a1, v4);
}

uint64_t sub_216B8F98C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PopAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_29Tm()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_39_25();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + ((v5 + 24) & ~v5));

  OUTLINED_FUNCTION_38_30();

  return swift_deallocObject();
}

uint64_t sub_216B8FB30()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PopToRootAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8FC0C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PushNowPlayingAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8FCE8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for RoutedAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8FDC4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for QueueGenericMusicItemsAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8FEA0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PlayGenericMusicItemAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B8FF7C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PausePlaybackAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90058()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PlayGenericMusicItemCollectionAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90134()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PlayLibraryArtistAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_15Tm()
{
  OUTLINED_FUNCTION_75_6();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_58_16();
  v7(v6);
  OUTLINED_FUNCTION_13_44();
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);

  v10 = v0 + v9;
  v5(0);
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v10);
  v12 = *(v1 + 28);
  v3(0);
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v10 + v12);

  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216B90334()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction(v0);
  OUTLINED_FUNCTION_2(GenericMusicItemStationAction);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_179(v3);
  OUTLINED_FUNCTION_47_8();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90410()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for OpenFinancePageAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B904EC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for OpenUnifiedMessagesSheetAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B905C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for SubscriptionPurchaseAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B906A4()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for OpenAddToPlaylistAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90780()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for OpenMoveToFolderAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B9085C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ViewLyricsAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90938()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ConnectSingDevicesAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90A14()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for PerformPlaylistCollaborationRequestAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90AF0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ModalFlowAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B90BCC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ProcessDeepLinkAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_95Tm()
{
  v1 = OUTLINED_FUNCTION_58_16();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_39_25();
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + ((v5 + 16) & ~v5));

  OUTLINED_FUNCTION_38_30();

  return swift_deallocObject();
}

uint64_t sub_216B90D68()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for AllowExplicitContentAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_159Tm()
{
  OUTLINED_FUNCTION_75_6();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_58_16();
  v7(v6);
  OUTLINED_FUNCTION_13_44();
  OUTLINED_FUNCTION_47_25();
  v9 = v0 + v8;
  v5(0);
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v9);
  v11 = *(v1 + 28);
  v3(0);
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v9 + v11);

  OUTLINED_FUNCTION_65_2();

  return swift_deallocObject();
}

uint64_t sub_216B90F5C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for OpenInClassicalExperienceAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B91038()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for CheckSocialHandleAvailabilityAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_156(v3);
  OUTLINED_FUNCTION_47_8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_216B91170()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for ReplaySelectPeriodAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A523A8;
  v5 = OUTLINED_FUNCTION_2_123();

  return sub_216B8C8F4(v5, v6, v7);
}

uint64_t sub_216B91304()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for SelectReplayYearAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A523A8;
  v5 = OUTLINED_FUNCTION_2_123();

  return sub_216B8C67C(v5, v6, v7);
}

uint64_t sub_216B9143C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B914F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B91558()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_31_0();
  v1 = type metadata accessor for SelectReplayPeriodAction(v0);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_4_100();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A523A8;
  v5 = OUTLINED_FUNCTION_2_123();

  return sub_216B8DBC4(v5, v6, v7, v8);
}

uint64_t sub_216B91654(char *a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v11, v3);
  if (v14)
  {
    v16 = v24;
    sub_21700CE04();
    sub_216B921BC();
    v17 = v23;
    sub_21700CCD4();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v16);
    v15(a1, v3);
    v15(v8, v3);
    if (v17)
    {
    }
  }

  else
  {
    v19 = sub_21700E2E4();
    sub_216B92174(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v20 = 1954047348;
    v20[1] = 0xE400000000000000;
    v20[2] = &type metadata for AccessoryBadge;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v21 + 8))(v24);
    v15(a1, v3);
  }

  return v12;
}

uint64_t sub_216B91974(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216B919C8(char a1)
{
  if (a1)
  {
    return 0x614D6D6574737973;
  }

  else
  {
    return 0x726F6C6F4379656BLL;
  }
}

uint64_t sub_216B91A0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 == a4 && a2 == a5;
  if (!v6 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  return sub_21688C8D4(a3 & 1);
}

uint64_t sub_216B91A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B91974(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216B91ACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B919C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216B91AF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216B91654(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

unint64_t sub_216B91B4C()
{
  result = qword_27CAC43B0;
  if (!qword_27CAC43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC43B0);
  }

  return result;
}

uint64_t sub_216B91BA0(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AccessoryBadge(0);
  v6 = (a1 + *(v5 + 20));
  if (!v6[1])
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43C0, &qword_21704CAF8);
    sub_2167880BC();
    swift_allocError();
    v10 = xmmword_21704CA20;
    goto LABEL_5;
  }

  v7 = a1 + *(v5 + 24);
  if (*(v7 + 9))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43C0, &qword_21704CAF8);
    sub_2167880BC();
    swift_allocError();
    v10 = xmmword_21704CA10;
LABEL_5:
    *v9 = v10;
    *(v9 + 16) = v8;
    swift_willThrow();
    goto LABEL_8;
  }

  v2 = *v6;
  v11 = *(v7 + 8);
  v12 = *v7;
  sub_21700DF14();
  sub_216B91CF0(v12, v11 & 1);
  if (v3)
  {
  }

LABEL_8:
  sub_216B92118(a1);
  return v2;
}

BOOL sub_216B91CF0(ValueMetadata *a1, char a2)
{
  v5 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (a2)
  {
    if (a1)
    {
      return a1 != 1;
    }

    OUTLINED_FUNCTION_86();
    sub_217007C94();
    v25 = sub_217007C84();
    v26 = sub_21700ED84();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v27 = 136315138;
      v32 = &type metadata for AccessoryBadge.BadgeColor;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43C8, &qword_21704CB00);
      v28 = sub_21700E594();
      v30 = sub_2166A85FC(v28, v29, &v33);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_216679000, v25, v26, "Unspecified value for type '%s'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v7 + 8))(v13, v5);
  }

  else
  {
    OUTLINED_FUNCTION_86();
    sub_217007C94();
    v15 = sub_217007C84();
    v16 = sub_21700ED84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v2;
      v32 = a1;
      v33 = v18;
      *v17 = 136315394;
      v19 = sub_21700F784();
      v21 = sub_2166A85FC(v19, v20, &v33);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v32 = &type metadata for AccessoryBadge.BadgeColor;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43C8, &qword_21704CB00);
      v22 = sub_21700E594();
      v24 = sub_2166A85FC(v22, v23, &v33);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_216679000, v15, v16, "Unrecognized value '%s' for type '%s'", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v7 + 8))(v10, v5);
  }

  return 0;
}

uint64_t sub_216B92064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216B91BA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_216B92098@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B91CF0(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216B92118(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B92174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216B921BC()
{
  result = qword_27CAC43D0;
  if (!qword_27CAC43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC43D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessoryBadge.Color(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216B922F0()
{
  result = qword_27CAC43D8;
  if (!qword_27CAC43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC43D8);
  }

  return result;
}

uint64_t sub_216B923F0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SuggestionItemView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43E0, &qword_21704CC40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = &v33[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43E8, &unk_21704CC48);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v33[-1] - v8;
  type metadata accessor for SuggestionItem(0);
  sub_2166A6EA4();
  v10 = v34;
  if (v34)
  {
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    sub_2168566FC(1, v10, v11, &v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    sub_216697664(v33, &qword_27CAB6DB0, &qword_217016C00);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  v12 = v2[11];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v5[v12], 1, 1, v13);
  sub_216B93544();
  v14 = swift_allocObject();
  sub_216B9359C();
  v15 = v2[12];
  *&v5[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v16 = &v5[v2[13]];
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  v17 = v38;
  v18 = v37;
  *v5 = v36;
  *(v5 + 1) = v18;
  *(v5 + 4) = v17;
  *(v5 + 5) = sub_216B935F4;
  *(v5 + 6) = v14;
  *(v5 + 7) = 0;
  *(v5 + 8) = 0;
  KeyPath = swift_getKeyPath();
  sub_2167A4788();
  v20 = &v9[*(v6 + 36)];
  *v20 = KeyPath;
  v20[8] = 0;
  LOBYTE(KeyPath) = sub_217009CE4();
  sub_217007F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v32;
  sub_2167A4788();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43F0, &qword_21704CCF0);
  v31 = v29 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = v22;
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_216B92788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43F8, &qword_21704CCF8);
  return sub_216B927E0(a1, a2 + *(v4 + 44));
}

uint64_t sub_216B927E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4400, &qword_21704CD00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  *v9 = sub_2170091A4();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4408, &qword_21704CD08);
  sub_216B929A0(&v9[*(v10 + 44)]);
  v11 = (a1 + *(type metadata accessor for SuggestionItem(0) + 32));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  sub_2166A6EA4();
  sub_2166A6EA4();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4410, &qword_21704CD10) + 48));
  *v15 = v13;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = v14;
  sub_21700DF14();
  sub_2167770D0(v13, v12, 0, v14);
  sub_216697664(v9, &qword_27CAC4400, &qword_21704CD00);
  sub_2167C4DF0(v13, v12, 0, v14);
  return sub_216697664(v6, &qword_27CAC4400, &qword_21704CD00);
}

uint64_t sub_216B929A0@<X0>(uint64_t a2@<X8>)
{
  v28[0] = a2;
  v2 = sub_217005C64();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SuggestionItemView.ArtworkView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  type metadata accessor for SuggestionItem(0);
  sub_216B93544();
  sub_216B92BF8(v4);
  v11 = sub_21700A164();
  v13 = v12;
  v15 = v14;
  sub_216B92E28();
  v16 = sub_217009FA4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_21678817C(v11, v13, v15 & 1);

  sub_216B93544();
  v23 = v28[0];
  sub_216B93544();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4418, &qword_21704CD18);
  v25 = v23 + *(v24 + 48);
  *v25 = v16;
  *(v25 + 8) = v18;
  v20 &= 1u;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  v26 = v23 + *(v24 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_216777114(v16, v18, v20);
  sub_21700DF14();
  sub_216B93684(v10, type metadata accessor for SuggestionItemView.ArtworkView);
  sub_21678817C(v16, v18, v20);

  return sub_216B93684(v7, type metadata accessor for SuggestionItemView.ArtworkView);
}

uint64_t sub_216B92BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SuggestionItem(0);
  v3 = (v1 + *(v2 + 28));
  v4 = *v3;
  v5 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2358, &qword_21704CD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v7 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v8 = *(v1 + *(v2 + 44));
  v9 = objc_opt_self();
  sub_21700DF14();
  v10 = v7;
  v11 = &selRef_tintColor;
  if (!v8)
  {
    v11 = &selRef_secondaryLabelColor;
  }

  v12 = [v9 *v11];
  *(inited + 64) = sub_216B936F0();
  *(inited + 40) = v12;
  type metadata accessor for Key(0);
  sub_216B934C8(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
  v13 = sub_21700E384();
  v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v15 = sub_216B93734(v4, v5, v13);
  v16 = sub_21700E4D4();
  v17 = sub_21700E4D4();
  v18 = [v16 rangeOfString:v17 options:1];
  v20 = v19;

  v21 = [objc_opt_self() labelColor];
  [v15 addAttribute:v10 value:v21 range:{v18, v20}];

  return sub_217005C94();
}

uint64_t sub_216B92E28()
{
  v0 = type metadata accessor for LockupArtwork(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SuggestionItem(0);
  sub_216B93544();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_216B93684(v2, type metadata accessor for LockupArtwork);
    return 0;
  }

  v3 = *(v2 + 1);
  if (v3)
  {
    if (v3 == 1)
    {
      sub_217009DE4();
      return v4;
    }

    sub_216B936DC(*v2, *(v2 + 1));
    return 0;
  }

  return v3;
}

uint64_t sub_216B92F34@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v25 - v2;
  v4 = sub_217007474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4448, &qword_21704CD98);
  MEMORY[0x28223BE20](v11);
  v13 = (v25 - v12);
  v14 = type metadata accessor for LockupArtwork(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216B93544();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v16[1];
    sub_2168EAE00(*v16, v18);
    v19 = sub_21700ADB4();
    if (v18 == 1)
    {
      v20 = sub_21700AC54();
      KeyPath = swift_getKeyPath();
      v18 = sub_217009E14();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      if (v18)
      {
        sub_216B936DC(v17, v18);
        v20 = 0;
        v18 = 0;
      }

      else
      {
        v20 = 0;
      }
    }

    v24 = swift_getKeyPath();
    *v13 = v19;
    v13[1] = KeyPath;
    v13[2] = v20;
    v13[3] = v24;
    v13[4] = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F40, &qword_21703C470);
    sub_216A6F550();
    sub_216B934C8(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    return sub_217009554();
  }

  else
  {
    sub_216B9359C();
    v22 = sub_21700C4B4();
    (*(*(v22 - 8) + 16))(v3, v10, v22);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v22);
    sub_217007464();
    (*(v5 + 16))(v13, v7, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0F40, &qword_21703C470);
    sub_216A6F550();
    sub_216B934C8(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    sub_217009554();
    (*(v5 + 8))(v7, v4);
    return sub_216B93684(v10, type metadata accessor for Artwork);
  }
}

uint64_t sub_216B93470(uint64_t a1)
{
  result = sub_216B934C8(qword_280E3E620, type metadata accessor for SuggestionItemView, &unk_21704CBD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B934C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B93544()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B9359C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216B935F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestionItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216B92788(v4, a1);
}

uint64_t sub_216B93684(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B936DC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_216B936F0()
{
  result = qword_280E29B48;
  if (!qword_280E29B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B48);
  }

  return result;
}

id sub_216B93734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700E4D4();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_216B934C8(&qword_27CAB6820, type metadata accessor for Key, &unk_2170139C8);
    v6 = sub_21700E344();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t sub_216B9384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216B938BC()
{
  result = qword_27CAC4430;
  if (!qword_27CAC4430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC43F0, &qword_21704CCF0);
    sub_216B93948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4430);
  }

  return result;
}

unint64_t sub_216B93948()
{
  result = qword_27CAC4438;
  if (!qword_27CAC4438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC43E8, &unk_21704CC48);
    sub_2166D9530(&qword_27CAC4440, &qword_27CAC43E0, &qword_21704CC40, &unk_21702C8E0);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4438);
  }

  return result;
}

unint64_t sub_216B93A48()
{
  result = qword_27CAC4450;
  if (!qword_27CAC4450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4458, &unk_21704CE00);
    sub_216A6F550();
    sub_216B934C8(&qword_280E4A3F0, MEMORY[0x277CE43D0], MEMORY[0x277CE43B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4450);
  }

  return result;
}

uint64_t type metadata accessor for SongAlbumDetailPageIntent(uint64_t a1)
{
  result = qword_27CAC4460;
  if (!qword_27CAC4460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B93BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v42 = type metadata accessor for SongAlbumDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216B93F50(JSContext a1)
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
    v8 = type metadata accessor for SongAlbumDetailPageIntent(0);
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

uint64_t sub_216B94124(uint64_t a1)
{
  result = sub_2166CE744(&qword_27CAC4470, type metadata accessor for SongAlbumDetailPageIntent, &unk_21704CE48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B941C4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE744(&qword_27CAC4470, type metadata accessor for SongAlbumDetailPageIntent, &unk_21704CE48);
  result = sub_2166CE744(&qword_27CAC4478, type metadata accessor for SongAlbumDetailPageIntent, &unk_21704CE2C);
  *(a1 + 16) = result;
  return result;
}

void sub_216B94248()
{
  v1 = v0;
  if ((sub_21669DAC4() & 1) == 0)
  {
    if (qword_27CAB5E60 != -1)
    {
      OUTLINED_FUNCTION_0_180();
      swift_once();
    }

    v20 = sub_217007CA4();
    __swift_project_value_buffer(v20, qword_27CAC4480);
    v37 = sub_217007C84();
    v21 = sub_21700ED84();
    if (!OUTLINED_FUNCTION_3_115(v21, v22, v23, v24, v25, v26, v27, v28, v33, v37))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_157();
    *swift_slowAlloc() = 0;
    v19 = "Acknowledgement not required.";
    goto LABEL_11;
  }

  v2 = *(v0 + 56);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  LOBYTE(v3) = *(v1 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (v3)
  {
    if (qword_27CAB5E60 != -1)
    {
      OUTLINED_FUNCTION_0_180();
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CAC4480);
    v35 = sub_217007C84();
    v5 = sub_21700EDA4();
    if (!OUTLINED_FUNCTION_3_115(v5, v6, v7, v8, v9, v10, v11, v12, v33, v35))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_157();
    *swift_slowAlloc() = 0;
    v19 = "Acknowledgement view already presenting.";
LABEL_11:
    OUTLINED_FUNCTION_4_101(&dword_216679000, v13, v14, v19, v15, v16, v17, v18, v34, v36);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
LABEL_12:

    return;
  }

  if (qword_27CAB5E60 != -1)
  {
    OUTLINED_FUNCTION_0_180();
    swift_once();
  }

  v29 = sub_217007CA4();
  __swift_project_value_buffer(v29, qword_27CAC4480);
  v30 = sub_217007C84();
  v31 = sub_21700EDA4();
  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_1_157();
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_216679000, v30, v31, "Presenting acknowledgement view...", v32, 2u);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  (*(v1 + 40))();
}

void sub_216B94470()
{
  if (sub_216B94690())
  {
    sub_216A50660();
  }

  else
  {
    if (qword_27CAB5E60 != -1)
    {
      OUTLINED_FUNCTION_0_180();
      swift_once();
    }

    v0 = sub_217007CA4();
    __swift_project_value_buffer(v0, qword_27CAC4480);
    v17 = sub_217007C84();
    v1 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_3_115(v1, v2, v3, v4, v5, v6, v7, v8, v15, v17))
    {
      OUTLINED_FUNCTION_1_157();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_101(&dword_216679000, v9, v10, "Nothing to acknowledge", v11, v12, v13, v14, v16, v18);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }
  }
}

uint64_t sub_216B9457C(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t))
{
  v3 = *v1;
  v4 = v1[7];

  return a1(v4, v1, v3);
}

uint64_t sub_216B945F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *(v5 + 56) = v11;
  *(v5 + 64) = 0;
  v13 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void sub_216B946DC(char a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  sub_216B94880(v2);
}

void sub_216B94710(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  if (qword_27CAB5E60 != -1)
  {
    OUTLINED_FUNCTION_0_180();
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_27CAC4480);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_1_157();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_216679000, v7, v8, a3, v9, 2u);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  sub_216B946DC(a4 & 1);
}

uint64_t sub_216B94800()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC4480);
  __swift_project_value_buffer(v0, qword_27CAC4480);
  return sub_217007C94();
}

void sub_216B94880(char a1)
{
  if (v1[8] & 1) == 0 && (a1)
  {
    v2 = *v1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v8[4] = sub_216B94D58;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2169443F0;
    v8[3] = &block_descriptor_27;
    v6 = _Block_copy(v8);

    v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:2.0];
    _Block_release(v6);
  }
}

uint64_t sub_216B949D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    sub_21700EA34();

    v10 = sub_21700EA24();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    v11[5] = a3;
    sub_21677BBA0();
  }

  return result;
}

uint64_t sub_216B94B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B94B9C, v6, v5);
}

uint64_t sub_216B94B9C()
{

  if ((sub_216A4FFB4() & 1) != 0 && (sub_216A50000() & 1) == 0)
  {
    if (qword_27CAB5E60 != -1)
    {
      OUTLINED_FUNCTION_0_180();
      swift_once();
    }

    v1 = sub_217007CA4();
    __swift_project_value_buffer(v1, qword_27CAC4480);
    v2 = sub_217007C84();
    v3 = sub_21700ED84();
    if (os_log_type_enabled(v2, v3))
    {
      OUTLINED_FUNCTION_1_157();
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_216679000, v2, v3, "Acknowledgement view was dismissed without acknowledging. Presenting again.", v4, 2u);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    sub_216B94248();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_216B94CC0()
{

  return v0;
}

uint64_t sub_216B94D00()
{
  sub_216B94CC0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B94D60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2166DFAC0;

  return sub_216B94B04(a1, v4, v5, v6);
}

uint64_t sub_216B94E64(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_216B94EA4(a1);
  return v2;
}

uint64_t sub_216B94EA4(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

uint64_t sub_216B94EE8()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_216B94F80, v5, v4);
}

uint64_t sub_216B94F80()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    type metadata accessor for RemoveSectionAction(0);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_216B950C8;

    return sub_216A44F70();
  }

  else
  {

    v4 = v0[2];
    v5 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v6 + 104))(v4, v5);
    OUTLINED_FUNCTION_3();

    return v7();
  }
}

uint64_t sub_216B950C8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_216B952AC;
  }

  else
  {
    v5 = sub_216B95204;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216B95204()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v3 + 104))(v1, v2);
  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216B952AC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B95334()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_216B95388()
{
  result = qword_280E3D438;
  if (!qword_280E3D438)
  {
    type metadata accessor for RemoveSectionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D438);
  }

  return result;
}

uint64_t sub_216B953E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216B94EE8();
}

uint64_t sub_216B9548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216B954F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B95534()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E465F0);
  __swift_project_value_buffer(v0, qword_280E465F0);
  return sub_217007C94();
}

void *sub_216B955B8()
{
  v1 = v0;
  v30 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v29 = v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1348, &qword_21704D140);
  OUTLINED_FUNCTION_1();
  v28 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4498, &qword_21704D148);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_2166AA548(0xD00000000000001CLL, 0x8000000217089580);
  if (result)
  {
    v0[2] = result;
    v27[2] = sub_21700C084();
    sub_21700B7E4();
    OUTLINED_FUNCTION_9_72();
    sub_21700B7A4();
    OUTLINED_FUNCTION_9_72();
    sub_21700B7C4();
    OUTLINED_FUNCTION_9_72();
    sub_21700B794();
    v17 = MEMORY[0x277D2AE40];
    sub_2166D9530(&qword_280E2A458, &qword_27CAC4498, &qword_21704D148, MEMORY[0x277D2AE40]);
    v18 = sub_217006944();
    v19 = *(v11 + 8);
    v27[1] = v11 + 8;
    v19(v14, v9);
    v1[3] = v18;
    v1[4] = 0;
    v1[5] = sub_216B973B4();
    v1[6] = 0;
    sub_21700C924();
    sub_21700B7E4();
    sub_21700B7A4();
    sub_21700BE44();
    sub_21700BE34();
    sub_21700B7B4();
    sub_2166D9530(&qword_280E2A448, &qword_27CAC1348, &qword_21704D140, v17);
    v20 = sub_217006944();
    (*(v28 + 8))(v8, v4);
    v1[7] = v20;
    v1[8] = 0;
    v1[9] = sub_216B97614();
    v1[10] = 0;
    sub_21700B7E4();
    OUTLINED_FUNCTION_9_72();
    sub_21700B7A4();
    sub_21700BE34();
    sub_21700B7B4();
    v21 = sub_217006944();
    v19(v14, v9);
    v1[11] = v21;
    v1[12] = 0;
    v22 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v22);
    sub_21700EA34();

    v23 = sub_21700EA24();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v26 = v30;
    v24[4] = v1;
    v24[5] = v26;
    sub_21677BBA0();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216B959C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1330, &qword_21703D680);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44A0, &qword_21704D168);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44A8, &qword_21704D170);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  sub_21700EA34();
  v5[13] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B95B98, v10, v9);
}

uint64_t sub_216B95B98()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v28 = v0[7];
  v29 = v0[6];
  v30 = v0[4];
  v31 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v27 = v7;

  v8 = v6[3];
  sub_217006974();
  OUTLINED_FUNCTION_143();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_2_124(v9);
  OUTLINED_FUNCTION_65_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = MEMORY[0x277CBCEC8];
  sub_2166D9530(&qword_280E484D0, &qword_27CAC44A8, &qword_21704D170, MEMORY[0x277CBCEC8]);
  OUTLINED_FUNCTION_103();
  sub_217007E84();
  OUTLINED_FUNCTION_70_0();

  v32 = *(v2 + 8);
  v32(v1, v3);
  v6[4] = v1;

  v12 = v6[5];
  sub_217006974();
  OUTLINED_FUNCTION_143();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_2_124(v13);
  OUTLINED_FUNCTION_65_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v27;
  sub_2166D9530(&qword_280E484C8, &qword_27CAC44A0, &qword_21704D168, v11);
  OUTLINED_FUNCTION_103();
  sub_217007E84();
  OUTLINED_FUNCTION_70_0();

  (*(v5 + 8))(v4, v28);
  v6[6] = v4;

  v15 = v6[7];
  sub_217006974();
  OUTLINED_FUNCTION_143();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_2_124(v16);
  OUTLINED_FUNCTION_65_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v27;
  sub_2166D9530(&qword_280E484C0, &qword_27CAC1330, &qword_21703D680, v11);
  OUTLINED_FUNCTION_103();
  sub_217007E84();
  OUTLINED_FUNCTION_70_0();

  v18 = *(v31 + 8);
  v18(v29, v30);
  v6[8] = v29;

  v19 = v6[9];
  sub_217006974();
  OUTLINED_FUNCTION_143();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_2_124(v20);
  OUTLINED_FUNCTION_65_0();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v27;
  OUTLINED_FUNCTION_103();
  sub_217007E84();
  OUTLINED_FUNCTION_70_0();

  v18(v29, v30);
  v6[10] = v29;

  v22 = v6[11];
  sub_217006974();
  OUTLINED_FUNCTION_143();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_2_124(v23);
  OUTLINED_FUNCTION_65_0();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v27;
  OUTLINED_FUNCTION_103();
  sub_217007E84();
  OUTLINED_FUNCTION_70_0();

  v32(v1, v3);
  v6[12] = v1;

  v25 = v0[1];

  return v25();
}

void sub_216B95FA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44C8, &qword_217050BA0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44D0, &qword_21704D190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44D8, &qword_21704D198);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  sub_216681B64(a1, v8, &qword_27CAC44D0, &qword_21704D190);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21669987C(v8, &qword_27CAC44D0, &qword_21704D190);
LABEL_10:
    if (qword_280E465E8 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E465F0);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
      _os_log_impl(&dword_216679000, v20, v21, "💬 %{public}s no response for favorite artist count in Library.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x21CEA1440](v23, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_21700B814();
  sub_2166D9530(&qword_280E2A468, &qword_27CAC44C8, &qword_217050BA0, MEMORY[0x277CD7CB8]);
  sub_21700EC54();
  sub_21700EC94();
  v13 = sub_21700EC84();
  (*(v24 + 8))(v5, v3);
  if (qword_280E465E8 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E465F0);
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
    *(v17 + 12) = 2050;
    *(v17 + 14) = v13;
    _os_log_impl(&dword_216679000, v15, v16, "💬 %{public}s: Found %{public}ld favorited artists in the Library.", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  sub_216784A9C();
  (*(v10 + 8))(v12, v9);
}

void sub_216B964CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1370, &unk_21703D6F0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1368, &qword_21703D6E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  sub_216681B64(a1, v8, &qword_27CAC1360, &qword_21703D6D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21669987C(v8, &qword_27CAC1360, &qword_21703D6D0);
LABEL_10:
    if (qword_280E465E8 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E465F0);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
      _os_log_impl(&dword_216679000, v20, v21, "💬 %{public}s no response for playlist count in Library.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x21CEA1440](v23, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_21700B814();
  sub_2166D9530(&qword_280E2A460, &qword_27CAC1370, &unk_21703D6F0, MEMORY[0x277CD7CB8]);
  sub_21700EC54();
  sub_21700EC94();
  v13 = sub_21700EC84();
  (*(v24 + 8))(v5, v3);
  if (qword_280E465E8 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E465F0);
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
    *(v17 + 12) = 2050;
    *(v17 + 14) = v13;
    _os_log_impl(&dword_216679000, v15, v16, "💬 %{public}s: Found %{public}ld playlists in the Library.", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  sub_216784B7C();
  (*(v10 + 8))(v12, v9);
}

void sub_216B969F0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1370, &unk_21703D6F0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1360, &qword_21703D6D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1368, &qword_21703D6E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  sub_216681B64(a1, v8, &qword_27CAC1360, &qword_21703D6D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21669987C(v8, &qword_27CAC1360, &qword_21703D6D0);
LABEL_10:
    if (qword_280E465E8 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E465F0);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
      _os_log_impl(&dword_216679000, v20, v21, "💬 %{public}s no response for user owned playlist count in Library.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x21CEA1440](v23, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_21700B814();
  sub_2166D9530(&qword_280E2A460, &qword_27CAC1370, &unk_21703D6F0, MEMORY[0x277CD7CB8]);
  sub_21700EC54();
  sub_21700EC94();
  v13 = sub_21700EC84();
  (*(v24 + 8))(v5, v3);
  if (qword_280E465E8 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E465F0);
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2166A85FC(0x292874696E69, 0xE600000000000000, &v25);
    *(v17 + 12) = 2050;
    *(v17 + 14) = v13;
    _os_log_impl(&dword_216679000, v15, v16, "💬 %{public}s: Found %{public}ld user owned playlists in the Library.", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  sub_216784BE0();
  (*(v10 + 8))(v12, v9);
}

void sub_216B96F14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t), const char *a6)
{
  v35 = a5;
  v36 = a6;
  v33 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44B0, &qword_21704D178);
  OUTLINED_FUNCTION_1();
  v34 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44B8, &qword_21704D180);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44C0, &qword_21704D188);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  sub_216681B64(a1, v14, &qword_27CAC44B8, &qword_21704D180);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_21669987C(v14, &qword_27CAC44B8, &qword_21704D180);
LABEL_10:
    if (qword_280E465E8 != -1)
    {
      OUTLINED_FUNCTION_1_158(&qword_280E465E8);
    }

    v27 = sub_217007CA4();
    __swift_project_value_buffer(v27, qword_280E465F0);
    v28 = sub_217007C84();
    v29 = sub_21700EDA4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136446210;
      *(v30 + 4) = OUTLINED_FUNCTION_8_79();
      _os_log_impl(&dword_216679000, v28, v29, v36, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    return;
  }

  (*(v17 + 32))(v20, v14, v15);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v17 + 8))(v20, v15);
    goto LABEL_10;
  }

  sub_21700B814();
  sub_2166D9530(&qword_280E2A470, &qword_27CAC44B0, &qword_21704D178, MEMORY[0x277CD7CB8]);
  sub_21700EC54();
  sub_21700EC94();
  v21 = sub_21700EC84();
  (*(v34 + 8))(v11, v7);
  if (qword_280E465E8 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_280E465E8);
  }

  v22 = sub_217007CA4();
  __swift_project_value_buffer(v22, qword_280E465F0);
  v23 = sub_217007C84();
  v24 = sub_21700EDA4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136446466;
    *(v25 + 4) = OUTLINED_FUNCTION_8_79();
    *(v25 + 12) = 2050;
    *(v25 + 14) = v21;
    _os_log_impl(&dword_216679000, v23, v24, v33, v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v35(v21);
  (*(v17 + 8))(v20, v15);
}

uint64_t sub_216B973B4()
{
  v0 = sub_217006864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC44E0, &qword_21704D1C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_21700C384();
  sub_21700B7E4();
  sub_21700B7A4();
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277D2A4B0], v0);
  sub_216B97AE0(&qword_280E4A470, MEMORY[0x277D2A4B8], MEMORY[0x277D2A4A8]);
  sub_21700B784();

  (*(v1 + 8))(v3, v0);
  sub_2166D9530(&qword_280E2A450, &qword_27CAC44E0, &qword_21704D1C8, MEMORY[0x277D2AE40]);
  v8 = sub_217006944();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_216B97614()
{
  v0 = sub_21700C744();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1348, &qword_21704D140);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_21700C924();
  sub_21700B7E4();
  sub_21700B7A4();
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277D2B3E8], v0);
  sub_216B97AE0(&qword_280E2A378, MEMORY[0x277D2B3F8], MEMORY[0x277D2B3F0]);
  sub_21700B784();

  (*(v1 + 8))(v3, v0);
  sub_2166D9530(&qword_280E2A448, &qword_27CAC1348, &qword_21704D140, MEMORY[0x277D2AE40]);
  v8 = sub_217006944();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_216B97874(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = OUTLINED_FUNCTION_70_0();
  return a4(v6, v5);
}

uint64_t sub_216B978C0()
{

  return v0;
}

uint64_t sub_216B97930()
{
  sub_216B978C0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B97988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2166DFAC0;

  return sub_216B959C8(a1, v4, v5, v7, v6);
}

uint64_t sub_216B97AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B97B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AnimatedTextListItemView.AnimationSchedule(0);
  v4 = sub_2170061E4();
  sub_216B9916C(&qword_27CAC1B08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_21700E464())
  {
    (*(*(v4 - 8) + 16))(a1, v2, v4);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);

    return sub_217006194();
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

void *sub_216B97C8C()
{
  v1 = sub_216B9AF40(v0);
  sub_216B991B4(v0);
  return v1;
}

uint64_t sub_216B97CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AnimatedTextListItemView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4530, &qword_21704D2D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4538, &qword_21704D2D8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  *v9 = sub_21700B3B4();
  v9[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4540, &unk_21704D2E0);
  sub_216B97FA4(v1, v9 + *(v15 + 44));
  v16 = *(v1 + *(v4 + 40));
  if (v16)
  {
    v17 = *(v16 + 16);
    sub_216B9910C(v1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnimatedTextListItemView);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    sub_216B9B354(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AnimatedTextListItemView);
    sub_2167A6724(v9, v13, &qword_27CAC4530, &qword_21704D2D0);
    *&v13[*(v10 + 52)] = v17;
    v20 = &v13[*(v10 + 56)];
    *v20 = sub_216B9907C;
    v20[1] = v19;
    sub_2167A6724(v13, a1, &qword_27CAC4538, &qword_21704D2D8);
  }

  else
  {
    type metadata accessor for AnimatedTextListItemViewCoordinator();
    sub_216B9916C(qword_280E2E8D0, v22, type metadata accessor for AnimatedTextListItemViewCoordinator, &unk_21704D294);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216B97FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for AnimatedTextListItemView(0);
  v32 = *(v3 - 8);
  v31 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2170061E4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatedTextListItemView.AnimationSchedule(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4550, &qword_21704D300);
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);
  sub_21700AEB4();
  sub_21700AEB4();
  sub_217006124();
  (*(v5 + 8))(v7, v26);
  sub_216B9910C(v13, v10, type metadata accessor for AnimatedTextListItemView.AnimationSchedule);
  sub_216B9916C(&qword_27CAC4558, 255, type metadata accessor for AnimatedTextListItemView.AnimationSchedule, &unk_21704D5FC);
  sub_217009964();
  sub_216B991B4(v13);
  v19 = v30;
  sub_216B9910C(a1, v30, type metadata accessor for AnimatedTextListItemView);
  v20 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v21 = swift_allocObject();
  sub_216B9B354(v19, v21 + v20, type metadata accessor for AnimatedTextListItemView);
  v22 = v28;
  v23 = v29;
  (*(v28 + 16))(v27, v18, v29);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_216B99210;
  *(v24 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4560, &qword_21704D308);
  sub_2166D9530(&qword_27CAC4568, &qword_27CAC4550, &qword_21704D300, MEMORY[0x277CE06D8]);
  sub_216B9A760();
  sub_217008324();
  return (*(v22 + 8))(v18, v23);
}

uint64_t sub_216B98430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v62 = a3;
  v61 = sub_2170061E4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170080D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v57 = sub_21700B434();
  v12 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4590, &qword_21704D318);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4580, &qword_21704D310);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v55 = &v49 - v20;
  type metadata accessor for AnimatedTextListItem(0);
  v54 = a2;
  v21 = sub_21700DF14();
  sub_216B988A8(v21);
  v52 = v23;
  v53 = v22;
  v50 = v25;
  v51 = v24;
  v26 = type metadata accessor for AnimatedTextListItemView(0);
  sub_216C0C924(v26, v27, v28, v29, v30, v31, v32, v33, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
  LOBYTE(a2) = sub_2170080C4();
  v34 = *(v6 + 8);
  v34(v8, v5);
  v34(v11, v5);
  v35 = MEMORY[0x277CE13B8];
  if ((a2 & 1) == 0)
  {
    v35 = MEMORY[0x277CE13B0];
  }

  v37 = v56;
  v36 = v57;
  (*(v12 + 104))(v56, *v35, v57);
  (*(v12 + 32))(&v17[*(v15 + 44)], v37, v36);
  v38 = v52;
  *v17 = v53;
  *(v17 + 1) = v38;
  v39 = v50;
  *(v17 + 2) = v51;
  *(v17 + 3) = v39;
  KeyPath = swift_getKeyPath();
  v41 = v55;
  sub_2167A6724(v17, v55, &qword_27CAC4590, &qword_21704D318);
  v42 = v41 + *(v19 + 44);
  v43 = v41;
  *v42 = KeyPath;
  *(v42 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88, qword_217030B30);
  v44 = v58;
  sub_217008304();
  v45 = sub_216B98CF0();
  (*(v59 + 8))(v44, v61);
  LOBYTE(v44) = !UIAccessibilityIsReduceMotionEnabled();
  v46 = v62;
  sub_2167A6724(v43, v62, &qword_27CAC4580, &qword_21704D310);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4560, &qword_21704D308);
  v48 = v46 + *(result + 36);
  *v48 = v45;
  *(v48 + 8) = v44;
  return result;
}

void sub_216B988A8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    sub_217009264();
    v2 = sub_21700A154();
    v4 = v3;
    v6 = v5;
    v49 = *(v1 + 16);
    sub_216777114(v2, v3, v5 & 1);
    sub_21700DF14();
    v7 = 0;
    v8 = (v1 + 50);
    v46 = v4;
    v47 = v2;
    v9 = v4;
    v45 = v6;
    v10 = v6;
    for (i = v1; ; v1 = i)
    {
      if (v49 == v7)
      {

        sub_21678817C(v47, v46, v45 & 1);

        return;
      }

      if (v7 >= *(v1 + 16))
      {
        break;
      }

      v54 = v10;
      v55 = v8;
      v56 = v7;
      v57 = v9;
      v58 = v2;
      v11 = *(v8 - 2);
      v50 = *(v8 - 1);
      v52 = *v8;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v12 = sub_21700A174();
      v14 = v13;
      v16 = v15;
      sub_217009D34();
      v17 = sub_21700A094();
      v19 = v18;
      v21 = v20;

      sub_21678817C(v12, v14, v16 & 1);

      if (v11 == 1)
      {
        sub_217009814();
      }

      else
      {
        sub_217009834();
      }

      v22 = sub_21700A044();
      v24 = v23;
      v26 = v25;
      sub_21678817C(v17, v19, v21 & 1);

      if (v11)
      {
        sub_217009D94();
      }

      else
      {
        sub_217009DE4();
      }

      v27 = sub_217009FA4();
      v29 = v28;
      v31 = v30;
      sub_21678817C(v22, v24, v26 & 1);

      sub_216777114(v27, v29, v31 & 1);
      if (v50)
      {
        sub_216B9A9B0();
        sub_21700DF14();
        v32 = sub_21700A024();
        v34 = v33;
        v36 = v35;
        sub_21678817C(v27, v29, v31 & 1);
      }

      else
      {
        sub_21700DF14();
        v32 = v27;
        v34 = v29;
        v36 = v31;
      }

      if (v52)
      {
        sub_216B9A95C();
        v37 = v36;
        v38 = sub_21700A024();
        v40 = v39;
        v51 = v41;
        sub_21678817C(v27, v29, v31 & 1);

        sub_21678817C(v32, v34, v37 & 1);
        v42 = v38;
        v34 = v40;
        v36 = v51;
      }

      else
      {
        sub_21678817C(v27, v29, v31 & 1);
        v42 = v32;
      }

      v53 = sub_21700A064();
      v9 = v43;
      v10 = v44;
      sub_21678817C(v42, v34, v36 & 1);

      sub_21678817C(v58, v57, v54 & 1);

      v8 = v55 + 24;
      v7 = v56 + 1;
      v2 = v53;
    }

    __break(1u);
  }
}

double sub_216B98CF0()
{
  v1 = sub_2170061E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for AnimatedTextListItemView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  v8 = 0.0;
  if (v11[15] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);
    sub_21700AEB4();
    sub_217006114();
    v8 = v9;
    (*(v2 + 8))(v4, v1);
  }

  return v8;
}

uint64_t sub_216B98E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_2170061E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-v8];
  v10 = (a2 + *(type metadata accessor for AnimatedTextListItemView(0) + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  v15[16] = v11;
  v16 = v12;
  v15[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();
  sub_2170061A4();
  sub_217006124();
  v13 = *(v4 + 8);
  v13(v6, v3);
  (*(v4 + 16))(v6, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);
  sub_21700AEC4();
  return (v13)(v9, v3);
}

uint64_t sub_216B9907C(uint64_t a1)
{
  v3 = *(type metadata accessor for AnimatedTextListItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216B98E58(a1, v4);
}

uint64_t sub_216B9910C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B9916C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216B991B4(uint64_t a1)
{
  v2 = type metadata accessor for AnimatedTextListItemView.AnimationSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B99210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AnimatedTextListItemView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_216B98430(a1, v6, a2);
}

uint64_t sub_216B99290(uint64_t a1, void (**a2)(char *, uint64_t), int a3, double a4)
{
  v41 = a3;
  v40 = a2;
  v45 = sub_21700A0A4();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700A0C4();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700A104();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4610, &unk_21704D678);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v39 - v18;
  v47 = MEMORY[0x277D84F90];
  (*(v12 + 16))(v14, a1, v11, v17);
  v20 = MEMORY[0x277CE0B80];
  sub_216B9916C(&qword_27CAC4618, 255, MEMORY[0x277CE0B80], MEMORY[0x277CE0B90]);
  sub_21700E754();
  v21 = *(v16 + 44);
  sub_216B9916C(&qword_27CAC4620, 255, v20, MEMORY[0x277CE0B98]);
  v22 = (v44 + 2);
  while (1)
  {
    sub_21700EC94();
    if (*&v19[v21] == *&v46[0])
    {
      break;
    }

    v23 = sub_21700ECE4();
    (*v22)(v10);
    v23(v46, 0);
    sub_21700ECA4();
    sub_216BDD880(v10);
  }

  sub_216697664(v19, &qword_27CAC4610, &unk_21704D678);
  v24 = *(v47 + 16);
  if (!v24)
  {
  }

  v25 = 0;
  v26 = *v40;
  v28 = v42 + 16;
  v27 = *(v42 + 16);
  v29 = *(v42 + 80);
  v39[1] = v47;
  v30 = v47 + ((v29 + 32) & ~v29);
  v31 = *(v42 + 72);
  v43 = v26;
  v44 = (v42 + 8);
  v32 = v41 ^ 1;
  v42 = v31;
  v41 ^= 1u;
  while (1)
  {
    v27(v7, v30, v45);
    *&v46[0] = v26;
    sub_216B9A9B0();

    sub_21700A0B4();
    if ((v47 | v32))
    {
      sub_216B9A95C();
      sub_21700A0B4();
      if ((v47 | v32))
      {
        sub_217008864();
      }

      else
      {
        sub_216B99E90(v7, v40, a4);
      }

      (*v44)(v7, v45);

      goto LABEL_13;
    }

    v33 = v45;
    v34 = v27;
    v35 = v28;
    sub_216B9980C(v7, v25, v46, a4);
    sub_216B9916C(&qword_27CAC4628, 255, MEMORY[0x277CE0B58], MEMORY[0x277CE0B60]);
    sub_21700EC54();
    sub_21700EC94();
    v36 = sub_21700EC84();
    v26 = v43;
    (*v44)(v7, v33);

    v38 = __OFADD__(v25, v36);
    v25 += v36;
    if (v38)
    {
      break;
    }

    v28 = v35;
    v27 = v34;
    v31 = v42;
    v32 = v41;
LABEL_13:
    v30 += v31;
    if (!--v24)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B9980C(uint64_t a1, uint64_t a2, double *a3, double a4)
{
  v34 = a4;
  v35 = a2;
  v33 = sub_2170088A4();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700A0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21700A0F4();
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B9916C(&qword_27CAC4628, 255, MEMORY[0x277CE0B58], MEMORY[0x277CE0B60]);
  sub_21700EC54();
  sub_21700EC94();
  v36 = v9;
  v37 = a1;
  result = sub_21700EC84();
  if (result >= 1)
  {
    v16 = v36;
    sub_21700EC54();
    sub_21700EC94();
    result = sub_21700EC84();
    if (result < 0)
    {
      goto LABEL_17;
    }

    v16 = result;
    if (result)
    {
      if (qword_27CAB5E78 != -1)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v17 = 0;
        v29 = *a3;
        v27 = (v10 + 16);
        v26 = (v6 + 8);
        v25 = (v12 + 8);
        v30 = 0xBFB47AE147AE147BLL;
        a3 = MEMORY[0x277D839F8];
        v6 = MEMORY[0x277CE1508];
        v28 = 0x3FD47AE147AE147BLL;
        v24[1] = 0x3FB999999999999ALL;
        v24[0] = 0x3FECCCCCCCCCCCCDLL;
        while (!__OFADD__(v35, v17))
        {
          v12 = sub_21700B034();
          __swift_project_value_buffer(v12, qword_27CAC4500);
          v39 = 0x3FF0000000000000;
          v40 = 0x3FF0000000000000;
          sub_21700B024();
          if (qword_27CAB5E80 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v12, qword_27CAC4518);
          v39 = 0x3FF0000000000000;
          v40 = 0x3FF0000000000000;
          v10 = v6;
          sub_21700B024();
          if (qword_27CAB5E70 != -1)
          {
            swift_once();
          }

          v18 = sub_21700B524();
          __swift_project_value_buffer(v18, qword_27CAC44E8);
          sub_21700B504();
          v6 = v29;
          v41 = v29;
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_16;
          }

          v38 = 8.0 - v19 * 8.0;
          (*v27)(v32, v37, v36);

          sub_21700A0E4();
          sub_21700A0D4();
          v20 = v42;
          v21 = v44;
          v22 = v43 - v45;
          v23 = v45 + v46;
          v47.origin.x = v42;
          v47.origin.y = v43 - v45;
          v47.size.width = v44;
          v47.size.height = v45 + v46;
          CGRectGetMidX(v47);
          v48.origin.x = v20;
          v48.origin.y = v22;
          v48.size.width = v21;
          v48.size.height = v23;
          CGRectGetMidY(v48);
          sub_217008854();
          sub_2170088E4();
          sub_217008854();
          sub_217008854();
          sub_2170088D4();
          sub_217008894();
          sub_2170088F4();
          (*v26)(v8, v33);
          sub_217008874();
          (*v25)(v14, v31);

          v12 = ++v17;
          v6 = v10;
          if (v16 == v17)
          {
            return result;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        swift_once();
      }
    }
  }

  return result;
}

uint64_t sub_216B99E90(uint64_t a1, void (**a2)(char *, uint64_t), double a3)
{
  v32 = sub_2170088A4();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700A0A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21700A0F4();
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_216B9916C(&qword_27CAC4628, 255, MEMORY[0x277CE0B58], MEMORY[0x277CE0B60]);
  sub_21700EC54();
  sub_21700EC94();
  v33 = v9;
  v34 = a1;
  result = sub_21700EC84();
  if (result >= 1)
  {
    v17 = v34;
    sub_21700EC54();
    sub_21700EC94();
    result = sub_21700EC84();
    if (result < 0)
    {
      goto LABEL_19;
    }

    v15 = result;
    if (result)
    {
      v17 = v12;
      if (qword_27CAB5E80 != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v18 = *a2;
        if (a3 < 0.0)
        {
          a3 = 0.0;
        }

        v28 = sub_21700B034();
        v19 = 0;
        v29 = a3;
        v20 = a3 + a3;
        if (a3 + a3 <= 0.0)
        {
          v20 = 0.0;
        }

        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        *&v27[2] = v20;
        v21 = (v10 + 2);
        v10 = (v6 + 8);
        a2 = (v17 + 8);
        v27[1] = 0x3FB999999999999ALL;
        v27[0] = 0x3FECCCCCCCCCCCCDLL;
        while (1)
        {
          __swift_project_value_buffer(v28, qword_27CAC4518);
          v35 = 0x3FF0000000000000;
          v36 = 0x3FF0000000000000;
          sub_21700B024();
          a3 = v37;
          if (qword_27CAB5E70 != -1)
          {
            swift_once();
          }

          v22 = sub_21700B524();
          v17 = __swift_project_value_buffer(v22, qword_27CAC44E8);
          sub_21700B504();
          v37 = v18;
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v6 = v15;
          (*v21)(v30, v34, v33);

          sub_21700A0E4();
          sub_21700A0D4();
          v23 = v38;
          v24 = v40;
          v25 = v39 - v41;
          v26 = v41 + v42;
          v43.origin.x = v38;
          v43.origin.y = v39 - v41;
          v43.size.width = v40;
          v43.size.height = v41 + v42;
          CGRectGetMidX(v43);
          v44.origin.x = v23;
          v44.origin.y = v25;
          v44.size.width = v24;
          v44.size.height = v26;
          CGRectGetMidY(v44);
          sub_217008854();
          sub_2170088E4();
          sub_217008854();
          sub_2170088D4();
          sub_217008894();
          sub_2170088F4();
          (*v10)(v8, v32);
          sub_217008874();
          (*a2)(v14, v31);

          if (v15 == ++v19)
          {
            return result;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        swift_once();
      }
    }
  }

  return result;
}

uint64_t sub_216B9A3FC()
{
  v0 = sub_21700B524();
  __swift_allocate_value_buffer(v0, qword_27CAC44E8);
  __swift_project_value_buffer(v0, qword_27CAC44E8);
  return sub_21700B514();
}

uint64_t sub_216B9A490(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_21700B034();
  __swift_allocate_value_buffer(v5, a4);
  __swift_project_value_buffer(v5, a4);
  return sub_21700B014();
}

void (*sub_216B9A568(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_216B9A610(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEA88, qword_217030B30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC45A8, &qword_21704D330);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B9A760()
{
  result = qword_27CAC4570;
  if (!qword_27CAC4570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4560, &qword_21704D308);
    sub_216B9A818();
    sub_2166D9530(&qword_27CAC4598, &qword_27CAC45A0, &unk_21704D320, MEMORY[0x277CE07D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4570);
  }

  return result;
}

unint64_t sub_216B9A818()
{
  result = qword_27CAC4578;
  if (!qword_27CAC4578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4580, &qword_21704D310);
    sub_216B9A8D0();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4578);
  }

  return result;
}

unint64_t sub_216B9A8D0()
{
  result = qword_27CAC4588;
  if (!qword_27CAC4588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4590, &qword_21704D318);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4588);
  }

  return result;
}

unint64_t sub_216B9A95C()
{
  result = qword_27CAC45B0;
  if (!qword_27CAC45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45B0);
  }

  return result;
}

unint64_t sub_216B9A9B0()
{
  result = qword_27CAC45B8;
  if (!qword_27CAC45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextRevealEffectRenderer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TextRevealEffectRenderer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_216B9AAEC(uint64_t a1)
{
  result = sub_2170061E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_216B9AB80(uint64_t a1)
{
  type metadata accessor for AnimatedTextListItem(319);
  if (v1 <= 0x3F)
  {
    sub_2166DB7C8(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2166DB7C8(319, &qword_280E2A5B8, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_216854FAC();
        if (v4 <= 0x3F)
        {
          sub_216B9ACAC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216B9ACAC(uint64_t a1)
{
  if (!qword_280E2AC90)
  {
    type metadata accessor for AnimatedTextListItemViewCoordinator();
    sub_216B9916C(qword_280E2E8D0, v1, type metadata accessor for AnimatedTextListItemViewCoordinator, &unk_21704D294);
    v2 = sub_217008D04();
    if (!v3)
    {
      atomic_store(v2, &qword_280E2AC90);
    }
  }
}

unint64_t sub_216B9AD40()
{
  result = qword_27CAC45D8;
  if (!qword_27CAC45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45D8);
  }

  return result;
}

unint64_t sub_216B9AD98()
{
  result = qword_27CAC45E0;
  if (!qword_27CAC45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45E0);
  }

  return result;
}

unint64_t sub_216B9ADF0()
{
  result = qword_27CAC45E8;
  if (!qword_27CAC45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45E8);
  }

  return result;
}

unint64_t sub_216B9AE48()
{
  result = qword_27CAC45F0;
  if (!qword_27CAC45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45F0);
  }

  return result;
}

unint64_t sub_216B9AEA0()
{
  result = qword_27CAC45F8;
  if (!qword_27CAC45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC45F8);
  }

  return result;
}

void *sub_216B9AF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_2170061E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnimatedTextListItemView.AnimationSchedule(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v6 + 80);
  v13 = MEMORY[0x277D84F90];
  v41 = (v40 + 32) & ~v40;
  v14 = MEMORY[0x277D84F90] + v41;
  sub_216B9910C(a1, v12, type metadata accessor for AnimatedTextListItemView.AnimationSchedule);
  v44 = *(v10 + 28);
  v15 = v8;
  v16 = sub_216B9916C(&qword_27CAC1B08, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v17 = 0;
  v42 = (v6 + 16);
  v43 = v16;
  v45 = v6;
  v18 = (v6 + 32);
  v38 = v8;
  v39 = v4;
  while (1)
  {
    if ((sub_21700E464() & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
LABEL_29:
      sub_216B991B4(v12);
      result = sub_216697664(v4, &qword_27CAB74E8, &qword_217030A40);
      v35 = v13[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v34 = __OFSUB__(v36, v17);
        v37 = v36 - v17;
        if (v34)
        {
          goto LABEL_37;
        }

        v13[2] = v37;
      }

      return v13;
    }

    (*v42)(v4, v12, v5);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    sub_217006194();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      goto LABEL_29;
    }

    v19 = *v18;
    result = (*v18)(v15, v4, v5);
    if (v17)
    {
      v21 = v13;
    }

    else
    {
      v22 = v13[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_34;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4608, &qword_21704D670);
      v25 = *(v45 + 72);
      v26 = v41;
      v21 = swift_allocObject();
      result = _swift_stdlib_malloc_size_1(v21);
      if (!v25)
      {
        goto LABEL_35;
      }

      v27 = result - v26;
      if ((result - v26) == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_36;
      }

      v29 = v27 / v25;
      v21[2] = v24;
      v21[3] = 2 * (v27 / v25);
      v30 = v21 + v26;
      v31 = v13[3];
      v32 = (v31 >> 1) * v25;
      if (v13[2])
      {
        if (v21 < v13 || v30 >= v13 + v41 + v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v13[2] = 0;
      }

      v14 = &v30[v32];
      v17 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - (v31 >> 1);

      v15 = v38;
      v4 = v39;
    }

    v34 = __OFSUB__(v17--, 1);
    if (v34)
    {
      break;
    }

    v19(v14, v15, v5);
    v14 += *(v45 + 72);
    v13 = v21;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_216B9B354(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PlaylistCollaboratorsDetailPageIntent(uint64_t a1)
{
  result = qword_27CAC4630;
  if (!qword_27CAC4630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B9B440(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContentDescriptor(319);
    if (v2 <= 0x3F)
    {
      sub_2166CE38C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B9B524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a2;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v55 - v5;
  v69 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v68 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v60 = v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - v10;
  v11 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v58 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v30 = *(v16 + 8);
  v29 = v16 + 8;
  v28 = v30;
  v30(v24, v14);
  v31 = v67;
  *v67 = v25;
  v31[1] = v27;
  v62 = v27;
  v32 = a1;
  v33 = v68;
  v66 = v32;
  sub_21700CE04();
  v35 = v63;
  v34 = v64;
  v57 = *(v33 + 16);
  v57(v63, v64, v69);
  v36 = v65;
  ContentDescriptor.init(deserializing:using:)(v21, v35, v37, v38, v39, v40, v41, v42, v55, v56, SWORD2(v56), SBYTE6(v56), SHIBYTE(v56), v57, v58, v13, v60, v61, v62, v63, v64, v65, v66);
  if (v36)
  {
    (*(v33 + 8))(v34, v69);
    v28(v66, v14);
  }

  else
  {
    v62 = v28;
    v63 = v29;
    v65 = v14;
    v56 = type metadata accessor for PlaylistCollaboratorsDetailPageIntent(0);
    v44 = v67;
    sub_2168ED900(v59, v67 + *(v56 + 20));
    v45 = v58;
    v46 = v66;
    v47 = v34;
    sub_21700CE04();
    v48 = v60;
    v49 = v69;
    v57(v60, v47, v69);
    v50 = v61;
    ReferrerInfo.init(deserializing:using:)(v45, v48, v61);
    v51 = v46;
    v52 = v49;
    v53 = v65;
    (*(v68 + 8))(v47, v52);
    v62(v51, v53);
    v54 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v54);
    return sub_21693FB5C(v50, v44 + *(v56 + 24));
  }
}

void sub_216B9B964(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2166F1DCC();
    v12 = type metadata accessor for PlaylistCollaboratorsDetailPageIntent(0);
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D10, &qword_217045B50);
    v13 = sub_21700E594();
    v24 = MEMORY[0x277D837D0];
    v22 = v13;
    v23 = v14;
    v15 = a1;
    v16 = sub_2166F1E10(&v22, a1);
    sub_2166F1F64(v16, 0x646E696B24, 0xE500000000000000);
    v17 = v3[1];
    if (v17)
    {
      v22 = *v3;
      v23 = v17;
      sub_21700DF14();
      v18 = sub_21700DD04();
    }

    else
    {
      v18 = 0;
    }

    sub_2166F1F64(v18, 0x656C746974, 0xE500000000000000);
    ContentDescriptor.makeValue(in:)(v15);
    sub_21700F0B4();
    sub_2168CC268(v3 + *(v12 + 24), v8);
    v19 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
    {
      sub_2168CC2D8(v8);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v15).super.isa;
      sub_2168CC340(v8);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    v21 = MEMORY[0x277D225C8];
    a2[3] = v11;
    a2[4] = v21;
    *a2 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_216B9BC54(uint64_t a1)
{
  result = sub_2166CE78C(&qword_27CAC4640, type metadata accessor for PlaylistCollaboratorsDetailPageIntent, &unk_21704D6E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B9BCF4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE78C(&qword_27CAC4640, type metadata accessor for PlaylistCollaboratorsDetailPageIntent, &unk_21704D6E4);
  result = sub_2166CE78C(&qword_27CAC4648, type metadata accessor for PlaylistCollaboratorsDetailPageIntent, &unk_21704D6C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216B9BD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700D2A4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_21700EA34();
  v3[10] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_216B9BE8C, v6, v5);
}

uint64_t sub_216B9BE8C()
{
  v1 = v0[4];
  v2 = type metadata accessor for CheckSocialHandleAvailabilityAction(0);
  v0[13] = *(v1 + *(v2 + 24));
  sub_216AFF304(1);
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[14] = v0[2];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_216B9BF98;
  v7 = v0[5];

  return sub_216AA1570(v5, v4, v7);
}

uint64_t sub_216B9BF98()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v4 + 128) = v7;
  *(v4 + 136) = v8;
  *(v4 + 144) = v0;

  if (v0)
  {
    v9 = *(v4 + 88);
    v10 = *(v4 + 96);
    v11 = sub_216B9C2FC;
  }

  else
  {
    *(v4 + 176) = v3 & 1;
    v9 = *(v4 + 88);
    v10 = *(v4 + 96);
    v11 = sub_216B9C0BC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216B9C0BC()
{
  v1 = *(v0 + 136);
  if (*(v0 + 176) == 1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);

    sub_216AFD240();

    (*(v3 + 104))(v4, *MEMORY[0x277D21CA8], v2);

    OUTLINED_FUNCTION_3();
LABEL_13:

    return v5();
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:

    sub_216B9C80C();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 144);
    sub_216AFE67C();
    swift_willThrow();

    if (!v10)
    {
    }

    OUTLINED_FUNCTION_3();
    goto LABEL_13;
  }

  swift_bridgeObjectRetain_n();
  sub_216AFEBA8();
  *(v0 + 152) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  sub_216B50BCC();
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_216B9C3A8;
  v9 = *(v0 + 72);

  return MEMORY[0x282180360](v9);
}

uint64_t sub_216B9C2FC()
{

  v1 = *(v0 + 144);
  sub_216AFE67C();
  swift_willThrow();

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B9C3A8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;
  v2[21] = v0;

  if (v0)
  {

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_216B9C628;
  }

  else
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_216B9C4F4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216B9C4F4()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, *MEMORY[0x277D21CA8], v3);
  v4 = sub_21700D294();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    sub_216AFC988(v0[16], v0[17]);
    sub_216AFD240();
  }

  else
  {
  }

  (*(v0[7] + 32))(v0[3], v0[9], v0[6]);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216B9C628()
{

  v1 = *(v0 + 144);
  sub_216AFE67C();
  swift_willThrow();

  if (!v1)
  {
  }

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B9C6D8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_2166F2728;

  return sub_216B9BD88(v6, v4, v2);
}

unint64_t sub_216B9C784(uint64_t a1)
{
  result = sub_2166D1384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B9C7B0()
{
  result = qword_27CAB7C20;
  if (!qword_27CAB7C20)
  {
    type metadata accessor for CheckSocialHandleAvailabilityAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C20);
  }

  return result;
}

unint64_t sub_216B9C80C()
{
  result = qword_27CAC4650;
  if (!qword_27CAC4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CheckSocialHandleAvailabilityActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216B9C910()
{
  result = qword_27CAC4658;
  if (!qword_27CAC4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4658);
  }

  return result;
}

uint64_t sub_216B9C964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - v5;
  v47 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v45 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = *(v16 + 16);
  v52 = a1;
  v53 = v24;
  v23(&v42 - v21, a1, v20);
  v25 = *(v9 + 16);
  v51 = v7;
  v25(v14, v54, v7);
  v26 = v49;
  v27 = sub_2167B97E4(v22, v14);
  if (v26)
  {
    v44 = v16;
    v49 = v9;
    v29 = v50;

    v30 = v45;
    (v23)(v45, v52, v53);
    v31 = v46;
    v25(v46, v54, v51);
    v32 = v48;
    sub_216C7D384(v30, v31, v48);
    v36 = OUTLINED_FUNCTION_0_181();
    v37(v36);
    v38 = OUTLINED_FUNCTION_3_116();
    v39(v38);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v47);
    v40 = v43;
    sub_216A912E8(v32, v43);
    sub_216A912E8(v40, v29);
  }

  else
  {
    v33 = v27;
    v34 = v28;
    (*(v9 + 8))(v54, v51);
    (*(v16 + 8))(v52, v53);
    v35 = v50;
    *v50 = v33;
    v35[1] = v34;
  }

  type metadata accessor for LockupArtwork(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216B9CDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_216B9CE38(char *a1@<X8>)
{
  [v1 modelClass];
  swift_getObjCClassMetadata();
  v3 = sub_216685F4C(0, &qword_27CAC4660, 0x277CD5E40);
  if (OUTLINED_FUNCTION_0_182(v3))
  {
    v4 = 4;
    goto LABEL_11;
  }

  v5 = sub_216685F4C(0, &qword_27CAC4668, 0x277CD5EF0);
  if (OUTLINED_FUNCTION_0_182(v5))
  {
    v4 = 14;
    goto LABEL_11;
  }

  v6 = sub_216685F4C(0, &qword_27CABAA80, 0x277CD5F98);
  if (OUTLINED_FUNCTION_0_182(v6))
  {
    v4 = 21;
    goto LABEL_11;
  }

  v7 = sub_216685F4C(0, &qword_27CABAA88, 0x277CD5FA8);
  if (OUTLINED_FUNCTION_0_182(v7))
  {
    v4 = 22;
    goto LABEL_11;
  }

  v8 = sub_216685F4C(0, &qword_27CAC4670, 0x277CD5F88);
  if (OUTLINED_FUNCTION_0_182(v8))
  {
    v4 = 20;
    goto LABEL_11;
  }

  v9 = sub_216685F4C(0, &qword_27CAC4678, 0x277CD5F58);
  if (OUTLINED_FUNCTION_0_182(v9))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
LABEL_16:
      v4 = 19;
      goto LABEL_11;
    }

    v11 = v10;
    v12 = v1;
    v13 = [v11 variants];
    v14 = [v11 variants];

    if ((v13 & 4) == 0)
    {
      if ((v14 & 2) != 0)
      {
        v4 = 13;
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    if (v14)
    {
      v4 = 7;
    }

    else
    {
      v4 = 6;
    }
  }

  else
  {
    v15 = sub_216685F4C(0, &qword_27CABAA78, 0x277CD5E50);
    if (OUTLINED_FUNCTION_0_182(v15))
    {
      v4 = 5;
    }

    else
    {
      v16 = sub_216685F4C(0, &qword_27CAC4680, 0x277CD5EE0);
      if (OUTLINED_FUNCTION_0_182(v16))
      {
        v4 = 12;
      }

      else
      {
        v17 = sub_216685F4C(0, &qword_27CABACF8, 0x277CD5F18);
        if (OUTLINED_FUNCTION_0_182(v17))
        {
          v4 = 16;
        }

        else
        {
          v18 = sub_216685F4C(0, &qword_27CAC4688, 0x277CD5F48);
          if (OUTLINED_FUNCTION_0_182(v18))
          {
            v4 = 18;
          }

          else
          {
            v19 = sub_216685F4C(0, &qword_27CABAA70, 0x277CD5E78);
            if (OUTLINED_FUNCTION_0_182(v19) && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
            {
              v21 = v20;
              v22 = v1;
              if (([v21 variants] & 4) != 0)
              {

                v4 = 1;
              }

              else if (([v21 variants] & 2) != 0)
              {

                v4 = 0;
              }

              else
              {
                v23 = [v21 variants];

                if ((v23 & 8) != 0)
                {
                  v4 = 2;
                }

                else
                {
                  v4 = 9;
                }
              }
            }

            else
            {
              v4 = 23;
            }
          }
        }
      }
    }
  }

LABEL_11:
  *a1 = v4;
}

id sub_216B9D10C()
{
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21704D9A0;
  *(v1 + 32) = [objc_opt_self() kindWithVariants_];
  *(v1 + 40) = [objc_opt_self() kindWithVariants_];
  *(v1 + 48) = [objc_opt_self() kindWithVariants_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4690, qword_21704D9B8);
  v2 = sub_21700E804();

  v3 = [v0 kindWithKinds_];

  return v3;
}

id sub_216B9D234()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants_];
  v3 = [v1 kindWithEpisodeKind_];

  v4 = [v0 kindWithSeasonKind_];
  return v4;
}

id sub_216B9D308()
{
  v0 = objc_opt_self();
  sub_216685F4C(0, &qword_27CAC4660, 0x277CD5E40);
  v1 = sub_216B9D780(0x277CD5E40, 0x277CD5F58, &selRef_kindWithSongKind_);
  v2 = [v0 kindWithAlbumKind_];

  return v2;
}

id sub_216B9D394(void *a1)
{
  sub_216B9D3CC();

  return a1;
}

id sub_216B9D3D4(void *a1)
{
  v1 = a1;
  v2 = sub_216B9D418();

  return v2;
}

id sub_216B9D418()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id sub_216B9D4D0(void *a1)
{
  v1 = a1;
  v2 = sub_216B9D514();

  return v2;
}

id sub_216B9D514()
{
  switch([v0 type])
  {
    case 1uLL:
      v1 = [v6 song];
      goto LABEL_20;
    case 2uLL:
      v1 = [v6 album];
      goto LABEL_20;
    case 3uLL:
      v1 = [v6 artist];
      goto LABEL_20;
    case 4uLL:
      v1 = [v6 playlist];
      goto LABEL_20;
    case 5uLL:
      v2 = [v6 playlistEntry];
      if (!v2)
      {
        goto LABEL_21;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      return v4;
    case 6uLL:
      v1 = [v6 tvEpisode];
      goto LABEL_20;
    case 7uLL:
      v1 = [v6 season];
      goto LABEL_20;
    case 8uLL:
      v1 = [v6 show];
      goto LABEL_20;
    case 9uLL:
      v1 = [v6 movie];
      goto LABEL_20;
    case 0xAuLL:
      v1 = [v6 mediaClip];
      goto LABEL_20;
    case 0xBuLL:
      v1 = [v6 podcast];
      goto LABEL_20;
    case 0xCuLL:
      v1 = [v6 podcastEpisode];
      goto LABEL_20;
    case 0xDuLL:
      v1 = [v6 radioStation];
      goto LABEL_20;
    case 0xFuLL:
      v1 = [v6 genre];
      goto LABEL_20;
    case 0x10uLL:
      v1 = [v6 curator];
      goto LABEL_20;
    case 0x11uLL:
      v1 = [v6 socialPerson];
      goto LABEL_20;
    case 0x13uLL:
      v1 = [v6 recordLabel];
LABEL_20:
      result = v1;
      if (!result)
      {
        goto LABEL_21;
      }

      return result;
    default:
LABEL_21:

      return v6;
  }
}

id sub_216B9D780(void *a1, void *a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() kindWithVariants_];
  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_216B9D858(uint64_t a1, uint64_t a2)
{
  v40 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v45 = v10;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - v11;
  v41 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v44 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v42 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = type metadata accessor for ModalFlowAction(0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  v47 = a2;
  sub_21700E094();
  v26 = v48[0];
  if (*(v48[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    sub_21700D234();
    v27 = (v25 + *(v22 + 20));
    v27[3] = type metadata accessor for SocialProfileEditorPageIntent(0);
    v27[4] = sub_216B9DD44(&qword_27CAC4698, type metadata accessor for SocialProfileEditorPageIntent, &unk_2170242D0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    v29 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v29);
    type metadata accessor for FlowAction.Destination(0);
    swift_storeEnumTagMultiPayload();
    *(v25 + *(v22 + 24)) = xmmword_217015580;
    sub_21700E094();
    v30 = v16;
    v39 = v16;
    v31 = v41;
    sub_21700E094();
    v48[3] = v22;
    v48[4] = sub_216B9DD44(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
    v32 = __swift_allocate_boxed_opaque_existential_1(v48);
    sub_216B9DD8C(v25, v32);
    v40 = v26;
    v34 = v43;
    v33 = v44;
    (*(v44 + 16))(v43, v30, v31);
    v36 = v45;
    v35 = v46;
    (*(v45 + 104))(v34, *MEMORY[0x277D21E10], v46);
    v37 = sub_21700D5E4();

    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v39, v31);
    (*(v42 + 8))(v21, v17);
    sub_216B9DDF0(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v4 + 104))(v8, *MEMORY[0x277D21CA0], v40);
    v37 = sub_21700E1F4();
  }

  return v37;
}

uint64_t sub_216B9DD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B9DD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalFlowAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B9DDF0(uint64_t a1)
{
  v2 = type metadata accessor for ModalFlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B9DE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v56 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v62 = v14;
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v55 = v15;
  MEMORY[0x28223BE20](v16);
  v57 = v49 - v17;
  MEMORY[0x28223BE20](v18);
  v19 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v58 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_21700CE04();
  v24 = *(v7 + 16);
  v24(v12, a2, v5);
  v25 = v60;
  sub_21700D224();
  if (v25)
  {
    (*(v7 + 8))(a2, v5);
    return (*(v62 + 8))(v61, v63);
  }

  v49[1] = 0;
  v53 = v7;
  v27 = *(v58 + 32);
  v51 = v19;
  v27(v59, v23, v19);
  sub_21700D704();
  v28 = v61;
  sub_21700CE04();
  v60 = a2;
  v54 = v5;
  v24(v56, a2, v5);
  v52 = type metadata accessor for InvalidationAction(0);
  v50 = *(v52 + 24);
  sub_21700D734();
  v29 = 0xE400000000000000;
  v30 = v55;
  sub_21700CE04();
  v31 = sub_21700CDB4();
  v33 = v32;
  v34 = *(v62 + 8);
  v34(v30, v63);
  v35 = v28;
  if (!v33)
  {
    v40 = 1684957547;
    goto LABEL_7;
  }

  v36 = v57;
  sub_21700CE04();
  sub_216AFB408();
  sub_21700CD14();
  v37 = v36;
  v38 = v63;
  v34(v37, v63);
  v39 = v64;
  if (v64 == 2)
  {
    v40 = 0x65706F6373;

    v29 = 0xE500000000000000;
LABEL_7:
    v42 = v53;
    v41 = v54;
    v43 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v44 = v40;
    v44[1] = v29;
    v44[2] = v52;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    (*(v42 + 8))(v60, v41);
    v34(v35, v63);
    v45 = v59;
    (*(v58 + 8))(v59, v51);
    return sub_216B9E3C8(v45 + v50);
  }

  (*(v53 + 8))(v60, v54);
  result = (v34)(v35, v38);
  v46 = v52;
  v47 = v59;
  *(v59 + *(v52 + 28)) = v39 & 1;
  v48 = (v47 + *(v46 + 20));
  *v48 = v31;
  v48[1] = v33;
  return result;
}

uint64_t sub_216B9E3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B9E458@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v67 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v65 = v11 + 8;
  v66 = v9;
  v23 = v9;
  v24 = v22;
  v22(v17, v23);
  if (v21)
  {
    v68 = v19;
    v69 = v21;
    v25 = a3;
    sub_21700F364();
    v26 = sub_21700D7A4();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v27 = *(v64 + 16);
    v61 = v64 + 16;
    v62 = v27;
    v60 = v8;
    v27(v8, v70, v67);
    v28 = type metadata accessor for LandingUpsell(0);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    v29 = OUTLINED_FUNCTION_0_100();
    v30 = v66;
    v24(v29, v66);
    v31 = (v25 + v28[6]);
    *v31 = v14;
    v31[1] = v26;
    sub_21700CE04();
    sub_21700CDB4();
    v32 = OUTLINED_FUNCTION_0_100();
    v24(v32, v30);
    v33 = (v25 + v28[7]);
    v63 = v25;
    *v33 = v14;
    v33[1] = v26;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    v58 = v18;
    sub_21700CE04();
    sub_21700CDB4();
    v34 = OUTLINED_FUNCTION_0_100();
    v24(v34, v30);
    v59 = v24;
    v35 = (v25 + v28[8]);
    *v35 = v14;
    v35[1] = v26;
    sub_21700CE04();
    v57 = v28;
    v36 = v70;
    sub_21700D2E4();
    v24(v14, v30);
    type metadata accessor for Artwork(0);
    sub_21700CE04();
    v37 = v60;
    v38 = v67;
    v39 = v62;
    v62(v60, v36, v67);
    sub_216B9EB58(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    v40 = v58;
    sub_21700CE04();
    v39(v37, v70, v38);
    v41 = v57;
    v42 = v63;
    sub_21700D734();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v43 = v41;
    v44 = v42;
    sub_21700D2E4();
    v45 = v66;
    v46 = v59;
    v59(v14, v66);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v47 = sub_21700CDB4();
    v49 = v48;
    v46(v14, v45);
    v50 = (v44 + v43[9]);
    *v50 = v47;
    v50[1] = v49;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v51 = v70;
    sub_21700D2E4();
    (*(v64 + 8))(v51, v67);
    v46(v40, v45);
    return (v46)(v14, v45);
  }

  else
  {
    v53 = sub_21700E2E4();
    sub_216B9EB58(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v55 = v54;
    v56 = type metadata accessor for LandingUpsell(0);
    *v55 = 25705;
    v55[1] = 0xE200000000000000;
    v55[2] = v56;
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    (*(v64 + 8))(v70, v67);
    return (v24)(v18, v66);
  }
}

uint64_t sub_216B9EB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B9EBA0@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v56 = sub_2170073D4();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_217007324();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_217007264();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700BEA4();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C554();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006FE4();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C384();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x28223BE20](v10);
  v80 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21700C644();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700BA44();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v71 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217006B84();
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21700C084();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21700C924();
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21700C1E4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2170067A4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v48 - v31;
  v33 = *(v26 + 16);
  v33(&v48 - v31, v83, v25, v30);
  (v33)(v28, v32, v25);
  v34 = (*(v26 + 88))(v28, v25);
  if (v34 == *MEMORY[0x277D2A400])
  {
    (*(v26 + 96))(v28, v25);
    (*(v22 + 32))(v24, v28, v21);
    sub_21700C174();
    (*(v22 + 8))(v24, v21);
    return (*(v26 + 8))(v32, v25);
  }

  v36 = v32;
  v37 = v84;
  if (v34 == *MEMORY[0x277D2A418])
  {
    (*(v26 + 96))(v28, v25);
    v39 = v80;
    v38 = v81;
    v40 = v82;
    (*(v81 + 32))(v80, v28, v82);
    sub_21700C354();
  }

  else if (v34 == *MEMORY[0x277D2A428])
  {
    (*(v26 + 96))(v28, v25);
    v39 = v77;
    v38 = v78;
    v40 = v79;
    (*(v78 + 32))(v77, v28, v79);
    sub_21700C4F4();
  }

  else if (v34 == *MEMORY[0x277D2A3B0])
  {
    (*(v26 + 96))(v28, v25);
    v39 = v74;
    v38 = v75;
    v40 = v76;
    (*(v75 + 32))(v74, v28, v76);
    sub_217006B34();
  }

  else if (v34 == *MEMORY[0x277D2A3B8])
  {
    (*(v26 + 96))(v28, v25);
    v39 = v71;
    v38 = v72;
    v40 = v73;
    (*(v72 + 32))(v71, v28, v73);
    sub_21700BA04();
  }

  else
  {
    if (v34 == *MEMORY[0x277D2A440])
    {
      (*(v26 + 96))(v28, v25);
      v42 = v69;
      v41 = v70;
      (*(v69 + 32))(v20, v28, v70);
      sub_21700C7D4();
      (*(v42 + 8))(v20, v41);
      return (*(v26 + 8))(v36, v25);
    }

    if (v34 != *MEMORY[0x277D2A3C0])
    {
      if (v34 == *MEMORY[0x277D2A3D0])
      {
        (*(v26 + 96))(v28, v25);
        v44 = v64;
        v43 = v65;
        v45 = v63;
        (*(v64 + 32))(v63, v28, v65);
        sub_217006F94();
      }

      else if (v34 == *MEMORY[0x277D2A3F8])
      {
        (*(v26 + 96))(v28, v25);
        v44 = v61;
        v45 = v60;
        v43 = v62;
        (*(v61 + 32))(v60, v28, v62);
        sub_21700C004();
      }

      else if (v34 == *MEMORY[0x277D2A430])
      {
        (*(v26 + 96))(v28, v25);
        v44 = v58;
        v45 = v57;
        v43 = v59;
        (*(v58 + 32))(v57, v28, v59);
        sub_21700C614();
      }

      else if (v34 == *MEMORY[0x277D2A458])
      {
        (*(v26 + 96))(v28, v25);
        v44 = v55;
        v45 = v54;
        v43 = v56;
        (*(v55 + 32))(v54, v28, v56);
        sub_217007384();
      }

      else if (v34 == *MEMORY[0x277D2A448])
      {
        (*(v26 + 96))(v28, v25);
        v44 = v52;
        v45 = v51;
        v43 = v53;
        (*(v52 + 32))(v51, v28, v53);
        sub_2170072D4();
      }

      else
      {
        if (v34 != *MEMORY[0x277D2A420])
        {
          v46 = *(v26 + 8);
          v46(v32, v25);
          v47 = sub_217005EF4();
          __swift_storeEnumTagSinglePayload(v37, 1, 1, v47);
          return (v46)(v28, v25);
        }

        (*(v26 + 96))(v28, v25);
        v44 = v49;
        v45 = v48;
        v43 = v50;
        (*(v49 + 32))(v48, v28, v50);
        sub_217007224();
      }

      (*(v44 + 8))(v45, v43);
      return (*(v26 + 8))(v32, v25);
    }

    (*(v26 + 96))(v28, v25);
    v39 = v66;
    v38 = v67;
    v40 = v68;
    (*(v67 + 32))(v66, v28, v68);
    sub_21700BE74();
  }

  (*(v38 + 8))(v39, v40);
  return (*(v26 + 8))(v36, v25);
}

id sub_216B9F980()
{
  v0 = sub_217007B94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_216B9EBA0(&v16 - v5);
  v7 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216846CF0(v6);
    return [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  }

  v8 = sub_217005E04();
  (*(*(v7 - 8) + 8))(v6, v7);
  v9 = v8;
  sub_217007B74();
  v10 = sub_217007B54();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  v13 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v14 = sub_216B9FB78(v8, v10, v12);

  if (!v14)
  {
    return [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  }

  return v14;
}

id sub_216B9FB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_21700E4D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithItem:a1 typeIdentifier:v5];
  swift_unknownObjectRelease();

  return v6;
}