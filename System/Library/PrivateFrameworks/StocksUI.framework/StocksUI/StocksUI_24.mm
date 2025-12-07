void sub_220720130(uint64_t a1)
{
  if (!qword_281298BA0)
  {
    sub_22088755C();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298BA0);
    }
  }
}

uint64_t sub_220720188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207201D0(uint64_t a1, uint64_t a2)
{
  sub_2204D4A18(0);
  v4 = v3;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v77 = &v69 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v69 - v19;
  v21 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v79 = &v69 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v69 - v34;
  v85 = sub_22088685C();
  v36 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v37);
  v78 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v71 = &v69 - v41;
  v83 = v4;
  sub_22088AD8C();
  sub_2204C9FBC(v35, v31, type metadata accessor for StockSearchModel);
  v80 = v21;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v43 = *(v42 + 48);
    sub_2204C9FBC(v31, v16, type metadata accessor for StockViewModel);
    v44 = sub_220886A4C();
    (*(*(v44 - 8) + 8))(&v31[v43], v44);
  }

  else
  {
    sub_2204C9FBC(v31, v16, type metadata accessor for StockViewModel);
  }

  sub_2204C9FBC(v16, v20, type metadata accessor for StockViewModel);
  v75 = *(v36 + 16);
  v76 = v36 + 16;
  v75(v71, v20, v85);
  sub_2204EFAD0(v20);
  v45 = *(a2 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v86 = MEMORY[0x277D84F90];
    sub_22048DBA8(0, v45, 0);
    v46 = v86;
    v47 = *(v84 + 16);
    v48 = a2 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v73 = *(v84 + 72);
    v74 = v47;
    v84 += 16;
    v49 = (v84 - 8);
    v72 = v36 + 32;
    do
    {
      v51 = v82;
      v50 = v83;
      v74(v82, v48, v83);
      v52 = v79;
      sub_22088AD8C();
      (*v49)(v51, v50);
      sub_2204C9FBC(v52, v24, type metadata accessor for StockSearchModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22049550C(0);
        v54 = *(v53 + 48);
        v55 = v81;
        sub_2204C9FBC(v24, v81, type metadata accessor for StockViewModel);
        v56 = sub_220886A4C();
        (*(*(v56 - 8) + 8))(&v24[v54], v56);
      }

      else
      {
        v55 = v81;
        sub_2204C9FBC(v24, v81, type metadata accessor for StockViewModel);
      }

      v57 = v77;
      v58 = v78;
      sub_2204C9FBC(v55, v77, type metadata accessor for StockViewModel);
      v59 = v85;
      v75(v58, v57, v85);
      sub_2204EFAD0(v57);
      v86 = v46;
      v61 = *(v46 + 16);
      v60 = *(v46 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22048DBA8((v60 > 1), v61 + 1, 1);
        v59 = v85;
        v46 = v86;
      }

      *(v46 + 16) = v61 + 1;
      (*(v36 + 32))(v46 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v61, v58, v59);
      v48 += v73;
      --v45;
    }

    while (v45);
  }

  v62 = v70;
  v63 = v70[9];
  v64 = v70[10];
  __swift_project_boxed_opaque_existential_1(v70 + 6, v63);
  v65 = v71;
  (*(v64 + 8))(v71, v46, v63, v64);

  v66 = v62[5];
  ObjectType = swift_getObjectType();
  (*(v66 + 64))(v65, ObjectType, v66);
  return (*(v36 + 8))(v65, v85);
}

uint64_t sub_220720878()
{
  v1 = v0;
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4A18(0);
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v16 = *(v15 + 48);
    sub_2204C9FBC(v10, v14, type metadata accessor for StockViewModel);
    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
  }

  else
  {
    sub_2204C9FBC(v10, v14, type metadata accessor for StockViewModel);
  }

  v18 = v1[9];
  v19 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v18);
  (*(v3 + 16))(v6, v14, v2);
  sub_2204EFAD0(v14);
  v20 = sub_2205F0094();
  v21 = (*(v19 + 16))(v6, v20, v18, v19);

  (*(v3 + 8))(v6, v2);
  return v21;
}

double sub_220720B70(char a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = (a1 & 1) == 0;

    sub_220888FEC();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220720C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = a5(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v9 + 32))(v16 + v15, v12, v8);

    sub_220888FEC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_220720F04(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_220720F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22088685C();
  if (v2 >= 2)
  {
    sub_2206CE438(a1, a1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), 1, (2 * v2) | 1);
  }
}

double sub_220721020(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_220722E80, v4);

  return result;
}

void sub_2207210B4(uint64_t a1, uint64_t a2)
{
  sub_22044D56C(0, &qword_28127E888, 0x277D75720);
  v3 = sub_2208916DC();
  (*(a2 + 16))(a2, v3);
}

double sub_220721130(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  v55 = a4;
  v56 = a2;
  v57 = a1;
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088B50C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84560];
  sub_22044769C(0, &qword_28127E088, sub_22062DD90, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220899360;
  v21 = *(v15 + 104);
  v52 = *MEMORY[0x277D6D7B0];
  v53 = v15 + 104;
  v54 = v14;
  v51 = v21;
  v21(v18);
  sub_22044769C(0, &qword_28127E080, sub_2205D3A54, v19);
  v50 = v22;
  v23 = swift_allocObject();
  v49 = xmmword_220899920;
  *(v23 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  sub_2208863EC();
  v25 = sub_2207E4BBC(v24);
  (*(v10 + 8))(v13, v9);
  v26 = sub_22088B17C();
  v27 = MEMORY[0x277D6D630];
  *(v23 + 56) = v26;
  *(v23 + 64) = v27;
  *(v23 + 32) = v25;
  v28 = sub_22088685C();
  v29.n128_f64[0] = (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v30 = sub_2207E3FA0(v8, 0, 0, v29);
  sub_220722E88(v8, sub_2206AA758);
  *(v23 + 96) = v26;
  *(v23 + 104) = v27;
  *(v23 + 72) = v30;
  v31 = sub_22088B4FC();
  swift_allocObject();
  v32 = sub_22088B4CC();
  v33 = MEMORY[0x277D6D798];
  *(v20 + 56) = v31;
  *(v20 + 64) = v33;
  *(v20 + 32) = v32;
  v34 = sub_2207216A8();
  v36 = *(v20 + 16);
  v35 = *(v20 + 24);
  if (v36 >= v35 >> 1)
  {
    v47 = v34;
    v20 = sub_22058832C((v35 > 1), v36 + 1, 1, v20);
    v34 = v47;
  }

  v59 = v31;
  v60 = v33;
  *&v58 = v34;
  *(v20 + 16) = v36 + 1;
  sub_220457328(&v58, v20 + 40 * v36 + 32);
  v37 = sub_220722858();
  v39 = *(v20 + 16);
  v38 = *(v20 + 24);
  if (v39 >= v38 >> 1)
  {
    v48 = v37;
    v20 = sub_22058832C((v38 > 1), v39 + 1, 1, v20);
    v37 = v48;
  }

  v59 = v31;
  v60 = v33;
  *&v58 = v37;
  *(v20 + 16) = v39 + 1;
  sub_220457328(&v58, v20 + 40 * v39 + 32);
  v51(v18, v52, v54);
  v40 = swift_allocObject();
  *(v40 + 16) = v49;
  v41 = _s5TeaUI15ContextMenuItemC06StocksB0E15provideFeedbackACyFZ_0();
  *(v40 + 56) = v26;
  *(v40 + 64) = v27;
  *(v40 + 32) = v41;
  v42 = _s5TeaUI15ContextMenuItemC06StocksB0E24clearRecommendationsDataACyFZ_0();
  *(v40 + 96) = v26;
  *(v40 + 104) = v27;
  *(v40 + 72) = v42;
  swift_allocObject();
  v43 = sub_22088B4CC();
  v44 = *(v20 + 16);
  v45 = *(v20 + 24);

  if (v44 >= v45 >> 1)
  {
    v20 = sub_22058832C((v45 > 1), v44 + 1, 1, v20);
  }

  v59 = v31;
  v60 = v33;
  *&v58 = v43;
  *(v20 + 16) = v44 + 1;
  sub_220457328(&v58, v20 + 40 * v44 + 32);
  sub_22088AB2C();
  sub_22088AADC();
  sub_22088AA9C();
  v57();

  return result;
}

uint64_t sub_2207216A8()
{
  v157 = sub_220885DBC();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v0);
  v133 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SortWatchlistCommandContext(0);
  MEMORY[0x28223BE20](v154, v2);
  v140 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_220885DFC();
  v4 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v5);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v141 = &v132 - v10;
  v143 = sub_220886A4C();
  v147 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v11);
  v138 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v149 = (&v132 - v15);
  v16 = sub_22088B50C();
  v148 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220885DDC();
  v21 = *(v20 + 16);
  v144 = v19;
  v145 = v4;
  v146 = v16;
  if (v21)
  {
    v160 = MEMORY[0x277D84F90];
    sub_2208925EC();
    v23 = *(v4 + 16);
    v22 = v4 + 16;
    v24 = *(v22 + 64);
    v142 = v20;
    v25 = v20 + ((v24 + 32) & ~v24);
    v151 = *(v22 + 56);
    v152 = v23;
    v153 = v22;
    v150 = (v22 - 8);
    v26 = v156;
    v27 = v154;
    v28 = v140;
    do
    {
      v29 = v152;
      v152(v7, v25, v26);
      __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
      sub_2208863EC();
      v29(v28 + *(v27 + 20), v7, v26);
      *(v28 + *(v27 + 24)) = 0;
      sub_2207E4DF0(v28);
      sub_220722E88(v28, type metadata accessor for SortWatchlistCommandContext);
      (*v150)(v7, v26);
      sub_2208925CC();
      sub_2208925FC();
      sub_22089260C();
      sub_2208925DC();
      v25 += v151;
      --v21;
    }

    while (v21);

    v30 = v160;
    v19 = v144;
    v31 = v145;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v31 = v4;
  }

  v139 = v7;
  v32 = *(v148 + 104);
  v134 = *MEMORY[0x277D6D7A8];
  v148 += 104;
  v142 = v32;
  (v32)(v19);
  sub_2205AF574(v30);
  v137 = sub_22088B4FC();
  swift_allocObject();
  v33 = sub_22088B4CC();
  sub_22048BC00();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22089B130;
  *(v34 + 32) = v33;
  v160 = v34;
  __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
  v136 = v33;

  v35 = v149;
  sub_2208863EC();
  v36 = v141;
  sub_220886A3C();
  v37 = v147 + 8;
  v38 = *(v147 + 8);
  v38(v35, v143);
  v39 = v156;
  v40 = (*(v31 + 88))(v36, v156);
  v41 = v40 == *MEMORY[0x277D694A8];
  v147 = v37;
  v135 = v38;
  LODWORD(v153) = v40;
  if (v41)
  {

    v42 = sub_220885D9C();
    v43 = *(v42 + 16);
    v44 = v155;
    if (v43)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v46 = *(v44 + 16);
      v45 = v44 + 16;
      v152 = v46;
      v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
      v132 = v42;
      v48 = v42 + v47;
      v49 = *(v45 + 56);
      v150 = (v31 + 104);
      v151 = v49;
      v155 = v45;
      v149 = (v45 - 8);
      v50 = v157;
      v51 = v133;
      v52 = v140;
      do
      {
        v53 = v152;
        v152(v51, v48, v50);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v54 = v154;
        v55 = *(v154 + 20);
        v53(v52 + v55, v51, v157);
        v56 = v52 + v55;
        v50 = v157;
        (*v150)(v56, v153, v156);
        *(v52 + *(v54 + 24)) = 1;
        sub_2207E4DF0(v52);
        sub_220722E88(v52, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v51, v50);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v48 += v151;
        --v43;
      }

      while (v43);

      v57 = v159;
      v19 = v144;
      v31 = v145;
      v58 = v146;
      v59 = v142;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
      v59 = v142;
      v58 = v146;
    }

    v39 = v156;
    (*(v31 + 8))(v141, v156);
    v91 = v134;
    goto LABEL_36;
  }

  v60 = v155;
  if (v40 == *MEMORY[0x277D694B8])
  {

    v61 = sub_220885D9C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v64 = *(v60 + 16);
      v63 = v60 + 16;
      v152 = v64;
      v65 = (*(v63 + 64) + 32) & ~*(v63 + 64);
      v66 = v63;
      v132 = v61;
      v67 = v61 + v65;
      v68 = *(v66 + 56);
      v150 = (v31 + 104);
      v151 = v68;
      v155 = v66;
      v149 = (v66 - 8);
      v69 = v157;
      v70 = v133;
      v71 = v140;
      v72 = v64;
      do
      {
        v72(v70, v67, v69);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v73 = v154;
        v74 = *(v154 + 20);
        v72((v71 + v74), v70, v157);
        v75 = v71 + v74;
        v69 = v157;
        (*v150)(v75, v153, v156);
        *(v71 + *(v73 + 24)) = 1;
        sub_2207E4DF0(v71);
        sub_220722E88(v71, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v70, v69);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v67 += v151;
        --v62;
      }

      while (v62);
LABEL_33:

      v57 = v159;
      v19 = v144;
      v31 = v145;
      v58 = v146;
      v36 = v141;
LABEL_35:
      v39 = v156;
      (*(v31 + 8))(v36, v156);
      v91 = v134;
      v59 = v142;
LABEL_36:
      v59(v19, v91, v58);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v40 == *MEMORY[0x277D694F0])
  {

    v76 = sub_220885D9C();
    v77 = *(v76 + 16);
    if (v77)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v79 = *(v60 + 16);
      v78 = v60 + 16;
      v152 = v79;
      v80 = (*(v78 + 64) + 32) & ~*(v78 + 64);
      v81 = v78;
      v132 = v76;
      v82 = v76 + v80;
      v83 = *(v81 + 56);
      v150 = (v31 + 104);
      v151 = v83;
      v155 = v81;
      v149 = (v81 - 8);
      v84 = v157;
      v85 = v133;
      v86 = v140;
      v87 = v79;
      do
      {
        v87(v85, v82, v84);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v88 = v154;
        v89 = *(v154 + 20);
        v87((v86 + v89), v85, v157);
        v90 = v86 + v89;
        v84 = v157;
        (*v150)(v90, v153, v156);
        *(v86 + *(v88 + 24)) = 1;
        sub_2207E4DF0(v86);
        sub_220722E88(v86, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v85, v84);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v82 += v151;
        --v77;
      }

      while (v77);
      goto LABEL_33;
    }

LABEL_34:

    v57 = MEMORY[0x277D84F90];
    v58 = v146;
    goto LABEL_35;
  }

  if (v40 == *MEMORY[0x277D694E8])
  {

    v92 = sub_220885D9C();
    v93 = *(v92 + 16);
    if (v93)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v95 = *(v60 + 16);
      v94 = v60 + 16;
      v152 = v95;
      v96 = (*(v94 + 64) + 32) & ~*(v94 + 64);
      v97 = v94;
      v132 = v92;
      v98 = v92 + v96;
      v99 = *(v97 + 56);
      v150 = (v31 + 104);
      v151 = v99;
      v155 = v97;
      v149 = (v97 - 8);
      v100 = v157;
      v101 = v133;
      v102 = v140;
      v103 = v95;
      do
      {
        v103(v101, v98, v100);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v104 = v154;
        v105 = *(v154 + 20);
        v103((v102 + v105), v101, v157);
        v106 = v102 + v105;
        v100 = v157;
        (*v150)(v106, v153, v156);
        *(v102 + *(v104 + 24)) = 1;
        sub_2207E4DF0(v102);
        sub_220722E88(v102, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v101, v100);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v98 += v151;
        --v93;
      }

      while (v93);
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v40 == *MEMORY[0x277D694C0])
  {

    v107 = sub_220885D9C();
    v108 = *(v107 + 16);
    if (v108)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v110 = *(v60 + 16);
      v109 = v60 + 16;
      v152 = v110;
      v111 = (*(v109 + 64) + 32) & ~*(v109 + 64);
      v112 = v109;
      v132 = v107;
      v113 = v107 + v111;
      v114 = *(v112 + 56);
      v150 = (v31 + 104);
      v151 = v114;
      v155 = v112;
      v149 = (v112 - 8);
      v115 = v157;
      v116 = v133;
      v117 = v140;
      v118 = v110;
      do
      {
        v118(v116, v113, v115);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v119 = v154;
        v120 = *(v154 + 20);
        v118((v117 + v120), v116, v157);
        v121 = v117 + v120;
        v115 = v157;
        (*v150)(v121, v153, v156);
        *(v117 + *(v119 + 24)) = 1;
        sub_2207E4DF0(v117);
        sub_220722E88(v117, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v116, v115);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v113 += v151;
        --v108;
      }

      while (v108);
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v40 != *MEMORY[0x277D694E0])
  {
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v142(v19, v134, v146);
LABEL_37:
  sub_2205AF574(v57);

  swift_allocObject();
  sub_22088B4CC();

  MEMORY[0x223D89870](v122);
  if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  v123 = v160;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v125 = [objc_opt_self() bundleForClass_];
  v157 = sub_220884CAC();

  __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
  v126 = v138;
  sub_2208863EC();
  v127 = v139;
  sub_220886A3C();
  v135(v126, v143);
  sub_220885D6C();
  (*(v145 + 8))(v127, v39);
  v128 = sub_22089132C();
  v129 = [objc_opt_self() systemImageNamed_];

  sub_2205AFD34(v123);

  v142(v144, *MEMORY[0x277D6D7B8], v146);
  swift_allocObject();
  v130 = sub_22088B4CC();

  return v130;
}

uint64_t sub_220722858()
{
  v1 = v0;
  v2 = sub_220885D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220886A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088B50C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220885D3C();
  v16 = *(v15 + 16);
  v50 = v6;
  v44 = v3;
  v41 = v8;
  if (v16)
  {
    v40 = v14;
    v51 = MEMORY[0x277D84F90];
    sub_2208925EC();
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = *(v17 + 64);
    v39[1] = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v46 = *(v17 + 56);
    v47 = v18;
    v48 = v17;
    v49 = v7;
    v21 = (v17 - 8);
    v22 = v45;
    do
    {
      v47(v6, v20, v2);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_2208863EC();
      sub_2207E53A0(v22, v6);
      (*(v8 + 8))(v22, v49);
      (*v21)(v6, v2);
      sub_2208925CC();
      sub_2208925FC();
      v6 = v50;
      sub_22089260C();
      sub_2208925DC();
      v20 += v46;
      --v16;
    }

    while (v16);

    v23 = v51;
    v14 = v40;
    v7 = v49;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v24 = *MEMORY[0x277D6D7A8];
  v25 = v43;
  v48 = *(v42 + 104);
  v48(v14, v24, v43);
  sub_2205AF574(v23);

  v26 = sub_22088B4FC();
  swift_allocObject();
  v47 = sub_22088B4CC();
  v49 = sub_220634DF8();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v46 = sub_220884CAC();
  v42 = v29;

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v30 = v45;
  sub_2208863EC();
  v31 = v50;
  sub_2208869CC();
  (*(v41 + 8))(v30, v7);
  sub_220885D2C();
  (*(v44 + 8))(v31, v2);
  v32 = sub_22089132C();
  v33 = [objc_opt_self() systemImageNamed_];

  v48(v14, *MEMORY[0x277D6D7B8], v25);
  sub_22044769C(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_220899920;
  v35 = MEMORY[0x277D6D798];
  *(v34 + 56) = v26;
  *(v34 + 64) = v35;
  *(v34 + 32) = v47;
  v36 = sub_22088B17C();
  v37 = MEMORY[0x277D6D630];
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v49;
  swift_allocObject();
  return sub_22088B4CC();
}

uint64_t sub_220722E28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_220722E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for QuoteSummaryViewLayoutOptions(uint64_t a1)
{
  result = qword_281286318;
  if (!qword_281286318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_220722F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088FFCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F52C();
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D32F88])
  {
    (*(v7 + 96))(v10, v6);
    v11 = sub_22089023C();
    v12 = *(v11 - 8);
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2207FA020(a3, a4);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v12 + 8))(v10, v11);
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return result;
}

double sub_220723168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2207FA020(a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220723200()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_2207232E0(uint64_t a1)
{
  sub_22051D97C(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_2208854AC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220722F5C(a1, v7, v1 + v4, v8);
}

uint64_t objectdestroy_3Tm_2()
{
  sub_22051D97C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

double sub_220723508()
{
  sub_22051D97C(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2208854AC() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_220723168(v5, v0 + v2, v6);
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22072369C(void **a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v72 = type metadata accessor for StockFeedServiceContext(0);
  MEMORY[0x28223BE20](v72, v4);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22088F87C();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v6);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_220885ACC();
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for StockFeedServiceConfig(0);
  MEMORY[0x28223BE20](v69, v12);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_2207258D8(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v62 - v17;
  sub_2207258D8(0, qword_281292F18, type metadata accessor for StockFeedConfig, v14);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = (&v62 - v21);
  v23 = type metadata accessor for StockFeedContentConfig(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v62 - v29;
  v66 = *a1;
  sub_2207258D8(0, &qword_28127DF70, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D84560]);
  v31 = *(type metadata accessor for StockFeedGroupConfig(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899360;
  if (qword_281296C20 != -1)
  {
    swift_once();
  }

  sub_220452BA4(0);
  v35 = v34;
  v36 = __swift_project_value_buffer(v34, qword_2812B6B88);
  (*(*(v35 - 8) + 16))(v33 + v32, v36, v35);
  v37 = type metadata accessor for StockFeedConfig(0);
  v38 = *(v37 + 20);
  sub_22088515C();
  v39 = sub_22088516C();
  (*(*(v39 - 8) + 56))(v22 + v38, 0, 1, v39);
  v40 = *(v37 + 24);
  v41 = sub_22088F67C();
  (*(*(v41 - 8) + 56))(v22 + v40, 1, 1, v41);
  *v22 = v33;
  (*(*(v37 - 8) + 56))(v22, 0, 1, v37);
  v42 = type metadata accessor for StockFeedKnobsConfig(0);
  (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
  v43 = v30;
  v65 = v30;
  sub_220602A44(v22, v18, v30);
  v63 = *(v8 + 16);
  v64 = v8;
  v44 = v11;
  v45 = v74;
  v63(v11, v68 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration, v74);
  v46 = v70;
  v47 = v76;
  (*(v70 + 104))(v75, *MEMORY[0x277D32220], v76);
  v62 = v26;
  sub_22072548C(v43, v26, type metadata accessor for StockFeedContentConfig);
  v48 = v73;
  sub_22072548C(v71, v73, type metadata accessor for StockFeedServiceContext);
  v49 = v67;
  v63(v67, v44, v45);
  v50 = v69;
  v51 = v75;
  (*(v46 + 16))(&v49[*(v69 + 20)], v75, v47);
  v52 = v62;
  sub_22072548C(v62, &v49[v50[6]], type metadata accessor for StockFeedContentConfig);
  sub_22072548C(v48, &v49[v50[7]], type metadata accessor for StockFeedServiceContext);
  v53 = v66;
  *&v49[v50[8]] = v66;
  v54 = v53;
  sub_220885A8C();
  v56 = v55;
  sub_2205A6140(v52, type metadata accessor for StockFeedContentConfig);
  (*(v46 + 8))(v51, v76);
  (*(v64 + 8))(v44, v74);
  *&v49[v50[9]] = v56;
  v57 = *(v72 + 20);
  v58 = v50[10];
  v59 = sub_22088685C();
  (*(*(v59 - 8) + 16))(&v49[v58], v48 + v57, v59);
  sub_2205A6140(v48, type metadata accessor for StockFeedServiceContext);
  sub_2207258D8(0, &qword_281298638, type metadata accessor for StockFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v60 = sub_220888ECC();
  sub_2205A6140(v65, type metadata accessor for StockFeedContentConfig);
  return v60;
}

uint64_t sub_220723EA4()
{
  v1 = OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_paidBundleConfigManager));

  return swift_deallocClassInstance();
}

uint64_t sub_220723F88(uint64_t a1)
{
  result = sub_220885ACC();
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

uint64_t sub_22072402C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StockFeedServiceContext(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  sub_22044E0CC();
  sub_220888FBC();
  sub_22072548C(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockFeedServiceContext);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2207254F4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StockFeedServiceContext);
  v9 = sub_220888D9C();
  type metadata accessor for StockFeedServiceConfig(0);
  v10 = sub_220888E5C();

  return v10;
}

uint64_t sub_2207241CC(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(a1 + *a2) appConfiguration];
  if ([v5 respondsToSelector_])
  {
    [v5 paidBundleConfig];
    swift_unknownObjectRelease();
    sub_2207258D8(0, &qword_2812985E8, sub_22044E0CC, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((a1 + *a3), *(a1 + *a3 + 24));
    return sub_220890A4C();
  }
}

uint64_t sub_2207242E4(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_220888FBC();
  v3 = sub_220888D9C();
  type metadata accessor for StockFeedContentConfig(0);
  sub_220888E3C();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_220888D9C();
  sub_2207252B8(0);
  v6 = sub_220888E4C();

  return v6;
}

uint64_t sub_2207243F8(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a3;
  v56 = a2;
  v59 = type metadata accessor for StockFeedServiceContext(0) - 8;
  MEMORY[0x28223BE20](v59, v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088F87C();
  v48 = *(v54 - 8);
  v6 = v48;
  MEMORY[0x28223BE20](v54, v7);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_220885ACC();
  v52 = *(v60 - 8);
  v9 = v52;
  MEMORY[0x28223BE20](v60, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StockFeedServiceConfig(0) - 8;
  MEMORY[0x28223BE20](v50, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207252B8(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for StockFeedContentConfig(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v47 - v26;
  sub_22072548C(a1, v19, sub_2207252B8);
  v51 = *v19;
  v28 = v19 + *(v16 + 56);
  v29 = v27;
  v55 = v27;
  sub_2207254F4(v28, v27, type metadata accessor for StockFeedContentConfig);
  v49 = *(v9 + 16);
  v30 = v60;
  v49(v12, v56 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_appConfiguration, v60);
  v31 = v61;
  v32 = v54;
  (*(v6 + 104))(v61, *MEMORY[0x277D32220], v54);
  sub_22072548C(v29, v23, type metadata accessor for StockFeedContentConfig);
  v33 = v57;
  sub_22072548C(v58, v57, type metadata accessor for StockFeedServiceContext);
  v34 = v53;
  v49(v53, v12, v30);
  v35 = v50;
  v36 = v48;
  (*(v48 + 16))(&v34[*(v50 + 28)], v31, v32);
  v37 = v47;
  sub_22072548C(v47, &v34[v35[8]], type metadata accessor for StockFeedContentConfig);
  sub_22072548C(v33, &v34[v35[9]], type metadata accessor for StockFeedServiceContext);
  v38 = v35;
  v39 = v51;
  *&v34[v35[10]] = v51;
  v58 = v39;
  sub_220885A8C();
  v41 = v40;
  sub_2205A6140(v37, type metadata accessor for StockFeedContentConfig);
  (*(v36 + 8))(v61, v32);
  (*(v52 + 8))(v12, v60);
  *&v34[v35[11]] = v41;
  v42 = *(v59 + 28);
  v43 = v38[12];
  v44 = sub_22088685C();
  (*(*(v44 - 8) + 16))(&v34[v43], v33 + v42, v44);
  sub_2205A6140(v33, type metadata accessor for StockFeedServiceContext);
  sub_2207258D8(0, &qword_281298638, type metadata accessor for StockFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v45 = sub_220888ECC();

  sub_2205A6140(v55, type metadata accessor for StockFeedContentConfig);
  return v45;
}

uint64_t sub_22072496C(uint64_t *a1, __n128 a2)
{
  sub_2207258D8(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = sub_220884E9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298D48 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55B90 != -1)
    {
      swift_once();
    }

    sub_220453568(&qword_27CF59240, type metadata accessor for NFFStockFeedServiceConfigFetcher, &unk_2208AF8C4);
    sub_220886B3C();
    sub_220884E8C();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_22047C4E4(v6);
      sub_2207255E4();
      swift_allocError();
      *v12 = 1;
      sub_2206EC60C();
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v14 = sub_220725638(v11);
      (*(v8 + 8))(v11, v7);
      return v14;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    return sub_2208863CC();
  }
}

uint64_t sub_220724C8C(uint64_t *a1)
{
  v2 = type metadata accessor for StockFeedContentConfig(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v12 - v8;
  sub_22088F60C();
  swift_allocObject();
  v10 = sub_22088F5FC();
  sub_220453568(&qword_28128C640, type metadata accessor for StockFeedContentConfig, &unk_2208A1550);
  sub_22088827C();

  if (!v1)
  {
    sub_22072548C(v9, v5, type metadata accessor for StockFeedContentConfig);
    sub_2207258D8(0, &unk_281298640, type metadata accessor for StockFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_220888ECC();
    sub_2205A6140(v9, type metadata accessor for StockFeedContentConfig);
  }

  return v10;
}

uint64_t sub_220724E5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_paidBundleConfigManager));

  return swift_deallocClassInstance();
}

uint64_t sub_220724F48(uint64_t a1)
{
  result = sub_220885ACC();
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

uint64_t sub_220724FF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StockFeedServiceContext(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  sub_22044E0CC();
  sub_220888FBC();
  v7 = sub_220888D9C();
  sub_2207252B8(0);
  sub_220888E5C();

  sub_22072548C(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockFeedServiceContext);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_2207254F4(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for StockFeedServiceContext);
  v10 = sub_220888D9C();
  type metadata accessor for StockFeedServiceConfig(0);
  v11 = sub_220888E5C();

  return v11;
}

void sub_2207252B8(uint64_t a1)
{
  if (!qword_28127E600)
  {
    sub_22044E0CC();
    type metadata accessor for StockFeedContentConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E600);
    }
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for StockFeedServiceContext(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_22072548C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207254F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_220725578@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2207252B8(0);
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_22072548C(a1, a2 + v7, type metadata accessor for StockFeedContentConfig);
  return v5;
}

unint64_t sub_2207255E4()
{
  result = qword_27CF59248;
  if (!qword_27CF59248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59248);
  }

  return result;
}

uint64_t sub_220725638(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088495C();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v11 = qword_2812948A8;
  sub_2207258D8(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  v13 = sub_220884E0C();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_22048D860();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_220891AFC();
  sub_22088A7EC("Fetching the Stock feed service configuration from debug url=%@", 63, 2, &dword_22043F000, v11, v16, v12);

  (*(v3 + 16))(v6, a1, v2);
  sub_22088494C();
  v17 = [objc_opt_self() sharedSession];
  v18 = sub_220888D7C();

  (*(v7 + 8))(v10, v21);
  return v18;
}

void sub_2207258D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220725950()
{
  result = qword_27CF59250;
  if (!qword_27CF59250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59250);
  }

  return result;
}

unint64_t sub_220725B40()
{
  result = qword_28127E8B8;
  if (!qword_28127E8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E8B8);
  }

  return result;
}

uint64_t sub_220725BB4(uint64_t a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30[-v10];
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + 16);
  sub_2207261E0(a1, v15, type metadata accessor for WatchlistCreationRouteModel);
  swift_storeEnumTagMultiPayload();
  v17 = sub_22088969C();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = v16;
  sub_2205A0924(v36, &v31, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (*(&v32 + 1))
  {
    sub_220458198(&v31, v33);
    v18 = sub_220597454(v33);
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_2205A0B34(&v31, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v18 = qword_2812908F8;
    v20 = qword_281290900;
    v22 = qword_281290908;

    sub_2204A80F4(v20, v22);
  }

  v32 = 0u;
  v31 = 0u;
  sub_2207261E0(v11, v7, sub_22061D1D0);
  sub_2205A0924(v38, v33, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v23 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_2205A0994(v7, v25 + v23);
  v26 = v25 + v24;
  v27 = v33[1];
  *v26 = v33[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v34;
  v28 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v18;
  v28[1] = v20;
  v28[2] = v22;

  sub_2204A80F4(v20, v22);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v20, v22);
  sub_2205A0B34(v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v38, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v11, sub_22061D1D0);
  sub_220650F50(v15, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v31, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207261E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier(uint64_t a1)
{
  result = qword_28127F6C8;
  if (!qword_28127F6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207262BC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  sub_22051D6A0(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v34 - v6;
  sub_2205252E0(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_22051D6A0(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v11 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v47 = 0;
  sub_22088E6FC();
  v34 = v15;
  v41 = v3;
  v42 = &v47;
  sub_220573C28(sub_2207279B0, v40);
  v17 = v16;
  sub_2204FA2D0(0);
  v19 = v18;
  v20 = sub_2207279D0(&qword_281297E78, sub_2204FA2D0, MEMORY[0x277D6D720]);
  v21 = sub_2207279D0(&qword_281297E80, sub_2204FA2D0, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v17, v19, v20, v21);
  type metadata accessor for ForYouFeedSectionDescriptor(0);
  type metadata accessor for ForYouFeedModel(0);
  sub_2207279D0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
  sub_2207279D0(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
  sub_22088E6EC();
  v22 = sub_2205BF5D0();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for ForYouFeedServiceConfig(0);
  sub_2207279D0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
  v23 = sub_22088F9EC();

  v24 = 0;
  if (v23)
  {
    v24 = sub_22088F45C();
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v43 = v23;
  v46 = v24;
  sub_22088E7BC();
  sub_22062782C(v22);
  v25 = v35;
  if (v47 == 1)
  {
    sub_220525DD8(0);
    v27 = *(v26 + 48);
    (*(v25 + 16))(v7, v14, v11);
    v28 = *MEMORY[0x277D6D868];
    v29 = sub_22088B64C();
    (*(*(v29 - 8) + 104))(&v7[v27], v28, v29);
    v30 = MEMORY[0x277D6DF70];
  }

  else
  {
    v30 = MEMORY[0x277D6DF80];
  }

  v32 = v36;
  v31 = v37;
  (*(v36 + 104))(v7, *v30, v37);
  v39(v7);
  (*(v32 + 8))(v7, v31);
  return (*(v25 + 8))(v14, v11);
}

uint64_t sub_220726780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v160 = a2;
  v172 = a4;
  v153 = sub_2208852DC();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v6);
  v159 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2208857EC();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v8);
  v158 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22088699C();
  v155 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v10);
  v154 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v167 = &v134 - v14;
  v169 = sub_220885D4C();
  v157 = *(v169 - 1);
  MEMORY[0x28223BE20](v169, v15);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204545BC(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v134 - v20;
  sub_2204545BC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v145 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v134 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v144 = &v134 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v134 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v156 = &v134 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v165 = &v134 - v41;
  sub_2204545BC(0, &qword_281296C60, MEMORY[0x277D31C50]);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v164 = &v134 - v44;
  v161 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v161, v45);
  v166 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v162 = &v134 - v49;
  v171 = sub_22088685C();
  v163 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v50);
  v170 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v53);
  v168 = &v134 - v54;
  v55 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v55, v56);
  v148 = &v134 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v134 - v60;
  sub_2204FA2D0(0);
  v63 = v62;
  v173 = a1;
  sub_22088B2AC();
  v147 = v55;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    return (*(*(v63 - 8) + 16))(v172, v173, v63);
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_2204FC224(v61, type metadata accessor for ForYouFeedSectionDescriptor);
    return (*(*(v63 - 8) + 16))(v172, v173, v63);
  }

  if (EnumCaseMultiPayload)
  {
    v140 = v28;
    v141 = v21;
    v142 = v17;
    v143 = v4;
    sub_22045849C(0);
    v67 = v66;
    v68 = *(v66 + 48);
    v69 = *(v66 + 64);
    v70 = v163;
    (*(v163 + 32))(v168, v61, v171);
    v71 = v162;
    sub_22050381C(&v61[v68], v162);
    v72 = &v61[v69];
    v73 = v164;
    sub_2204FBAC4(v72, v164);
    v74 = v161;
    v75 = *(type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier(0) + 20);
    sub_2207279D0(&qword_2812992E8, MEMORY[0x277D69488], MEMORY[0x277D69490]);
    v139 = v75;
    v76 = v169;
    if (sub_2208912FC())
    {
      sub_22051F3D0(v73, &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC224(v71, type metadata accessor for StockViewModel);
      (*(v70 + 8))(v168, v171);
      return (*(*(v63 - 8) + 16))(v172, v173, v63);
    }

    else
    {
      v138 = v67;
      *v146 = 1;
      v77 = v70 + 16;
      v78 = *(v70 + 16);
      v78(v170, v71, v171);
      v79 = v74[5];
      v146 = MEMORY[0x277D697F8];
      sub_2204B2B80(v71 + v79, v165, &qword_2812990C0, MEMORY[0x277D697F8]);
      v80 = type metadata accessor for StockSparklineViewModel(0);
      v81 = v141;
      (*(*(v80 - 8) + 56))(v141, 1, 1, v80);
      v82 = v76;
      v136 = *(v157 + 16);
      v83 = v142;
      v136(v142, v160 + v139, v82);
      v84 = v166;
      v139 = v77;
      v137 = v78;
      v78(v166, v170, v171);
      v85 = v165;
      v86 = v146;
      sub_2204B2B80(v165, v84 + v74[5], &qword_2812990C0, v146);
      sub_2204B2B80(v81, v84 + v74[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      v136((v84 + v74[8]), v83, v169);
      *(v84 + v74[9]) = 0;
      v87 = v156;
      sub_2204B2B80(v85, v156, &qword_2812990C0, v86);
      sub_2208867CC();
      sub_2204B2B80(v87, v35, &qword_2812990C0, v86);
      v88 = sub_22088676C();
      v89 = *(v88 - 8);
      v90 = *(v89 + 48);
      v91 = v90(v35, 1, v88);
      v160 = v89;
      if (v91 == 1)
      {
        sub_22051F3D0(v35, &qword_2812990C0, MEMORY[0x277D697F8]);
        v136 = 0;
        v135 = 1;
      }

      else
      {
        v136 = sub_22088675C();
        v135 = v92;
        (*(v89 + 8))(v35, v88);
      }

      v93 = v155;
      v94 = v145;
      v95 = v140;
      v96 = v144;
      sub_2204B2B80(v87, v144, &qword_2812990C0, MEMORY[0x277D697F8]);
      if (v90(v96, 1, v88) == 1)
      {
        sub_22051F3D0(v96, &qword_2812990C0, MEMORY[0x277D697F8]);
        v145 = 0;
        LODWORD(v144) = 1;
      }

      else
      {
        v145 = sub_22088666C();
        LODWORD(v144) = v97;
        (*(v160 + 8))(v96, v88);
      }

      sub_2204B2B80(v87, v95, &qword_2812990C0, MEMORY[0x277D697F8]);
      v98 = v90(v95, 1, v88);
      v99 = v95;
      v100 = v149;
      if (v98 == 1)
      {
        sub_22051F3D0(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
        v140 = 0;
        v134 = 1;
      }

      else
      {
        v140 = sub_22088671C();
        v134 = v101;
        (*(v160 + 8))(v99, v88);
      }

      sub_2204B2B80(v87, v94, &qword_2812990C0, MEMORY[0x277D697F8]);
      v102 = v90(v94, 1, v88);
      v103 = v88;
      v104 = v158;
      if (v102 == 1)
      {
        sub_22051F3D0(v94, &qword_2812990C0, MEMORY[0x277D697F8]);
        v146 = 0;
        v105 = 0;
      }

      else
      {
        v146 = sub_22088668C();
        v105 = v106;
        (*(v160 + 8))(v94, v103);
      }

      v107 = v154;
      v108 = &v166[*(v161 + 28)];
      v161 = *(v93 + 16);
      (v161)(v154, v167, v100);
      v109 = v150;
      v110 = v151;
      (*(v150 + 104))(v104, *MEMORY[0x277D69288], v151);
      v111 = v159;
      sub_22088524C();
      *v108 = v136;
      v108[8] = v135 & 1;
      *(v108 + 2) = v145;
      v108[24] = v144 & 1;
      *(v108 + 4) = v140;
      v108[40] = v134 & 1;
      *(v108 + 6) = v146;
      *(v108 + 7) = v105;
      v112 = type metadata accessor for PriceViewModel(0);
      v113 = v107;
      v114 = v100;
      (v161)(&v108[v112[10]], v113, v100);
      v115 = v110;
      v116 = v158;
      v117 = v111;
      *(v108 + 8) = 9666786;
      *(v108 + 9) = 0xA300000000000000;
      (*(v109 + 16))(&v108[v112[9]], v116, v115);
      v118 = v152;
      v119 = v117;
      v120 = v153;
      (*(v152 + 16))(&v108[v112[11]], v119, v153);
      if (qword_281294078 != -1)
      {
        swift_once();
      }

      v121 = qword_2812B6B48;
      (*(v109 + 8))(v116, v115);
      v122 = *(v155 + 8);
      v122(v154, v114);
      v122(v167, v114);
      v123 = MEMORY[0x277D697F8];
      sub_22051F3D0(v156, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v157 + 8))(v142, v169);
      sub_22051F3D0(v141, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      sub_22051F3D0(v165, &qword_2812990C0, v123);
      v169 = *(v163 + 8);
      v124 = v171;
      (v169)(v170, v171);
      v125 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
      swift_beginAccess();
      (*(v118 + 40))(v121 + v125, v159, v120);
      swift_endAccess();
      v126 = *(v138 + 48);
      v127 = *(v138 + 64);
      v128 = v148;
      v129 = v168;
      v137(v148, v168, v124);
      v130 = v166;
      sub_220527BCC(v166, v128 + v126);
      v131 = MEMORY[0x277D31C50];
      v132 = v128 + v127;
      v133 = v164;
      sub_2204B2B80(v164, v132, &qword_281296C60, MEMORY[0x277D31C50]);
      swift_storeEnumTagMultiPayload();
      sub_22088B2DC();
      sub_2204FC224(v128, type metadata accessor for ForYouFeedSectionDescriptor);
      sub_2204FC224(v130, type metadata accessor for StockViewModel);
      sub_22051F3D0(v133, &qword_281296C60, v131);
      sub_2204FC224(v162, type metadata accessor for StockViewModel);
      return (v169)(v129, v124);
    }
  }

  else
  {
    (*(*(v63 - 8) + 16))(v172, v173, v63);
    return sub_22051F3D0(v61, &qword_281296C60, MEMORY[0x277D31C50]);
  }
}

uint64_t sub_2207279D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_8StocksUI22WatchlistSwitcherModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_220727A4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220727A94(uint64_t result, int a2, int a3)
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

void *sub_220727AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  if (v36[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281288850, &protocol descriptor for AppReviewRequestManagerType, 1);
    result = sub_2208884DC();
    v5 = v35;
    if (v35)
    {
      sub_220728048(0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22089C660;
      v7 = type metadata accessor for AppSessionEndEventTranslator();
      v8 = swift_allocObject();
      *(v6 + 56) = v7;
      *(v6 + 64) = &off_283417358;
      *(v6 + 32) = v8;
      started = type metadata accessor for AppSessionStartEventTranslator();
      v10 = swift_allocObject();
      *(v6 + 96) = started;
      *(v6 + 104) = &off_283416A58;
      *(v6 + 72) = v10;
      v11 = type metadata accessor for ArticleEngagementEventTranslator();
      v12 = swift_allocObject();
      *(v6 + 136) = v11;
      *(v6 + 144) = &off_28341BF70;
      *(v6 + 112) = v12;
      v13 = type metadata accessor for FeedViewEventTranslator();
      v14 = swift_allocObject();
      *(v6 + 176) = v13;
      *(v6 + 184) = &off_2834166E0;
      *(v6 + 152) = v14;
      v15 = type metadata accessor for WatchSymbolEventTranslator();
      v16 = swift_allocObject();
      *(v6 + 216) = v15;
      *(v6 + 224) = &off_28341FBB0;
      *(v6 + 192) = v16;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v34, v5);
      v18 = MEMORY[0x28223BE20](v17, v17);
      v20 = (&v31[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20, v18);
      v22 = *v20;
      v32 = type metadata accessor for AppReviewRequestManager(0);
      v33 = &off_283427CE0;
      v31[0] = v22;
      v23 = objc_allocWithZone(type metadata accessor for StocksEngagementEventProcessor());
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v25 = MEMORY[0x28223BE20](v24, v24);
      v27 = (&v31[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27, v25);
      v29 = sub_220727E84(v36, *v27, v6, v23);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = sub_220457154(qword_281295768, type metadata accessor for StocksEngagementEventProcessor, &protocol conformance descriptor for StocksEngagementEventProcessor);
      *a2 = v29;
      a2[1] = result;
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

void *sub_220727E84(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_22088825C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[3] = type metadata accessor for AppReviewRequestManager(0);
  v18[4] = &off_283427CE0;
  v18[0] = a2;
  sub_22046DA2C(a1, &a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_featureAvailability]);
  sub_22046DA2C(v18, &a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_appReviewRequestManager]);
  *&a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_eventTranslators] = a3;
  sub_22088829C();
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_jsonDecoder] = sub_22088828C();
  *v13 = sub_220707CB8;
  v13[1] = 0;
  (*(v10 + 104))(v13, *MEMORY[0x277D6C9B0], v9);

  sub_22088826C();

  v17.receiver = a4;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

void sub_220728048(uint64_t a1)
{
  if (!qword_28127DF98)
  {
    sub_220446A58(255, qword_2812955B0, &protocol descriptor for StocksEngagementEventTranslatorType, 1);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127DF98);
    }
  }
}

uint64_t StockSearchCompositionalLayoutOptionsProvider.layoutOptions(for:)(void *a1)
{
  v2 = sub_22088DA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088DFCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v18 - v14;
  *(&v18 - v14) = xmmword_2208AFC50;
  (*(v8 + 104))(&v18 - v14, *MEMORY[0x277D6EB28], v7);
  v16 = [a1 horizontalSizeClass];
  if (v16 < 2)
  {
    sub_22088D9FC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
LABEL_6:
    sub_22088D9BC();
    sub_22088D9CC();
    (*(v8 + 16))(v11, v15, v7);
    sub_22088D9DC();
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v15, v7);
  }

  if (v16 == 2)
  {
    sub_22088DA0C();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    goto LABEL_6;
  }

  sub_22088D9FC();
  return (*(v8 + 8))(v15, v7);
}

BOOL sub_2207283C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_22052024C(0);
      return sub_22088F70C() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_220728420()
{
  if (*v0)
  {
    return 0x726F73727563;
  }

  else
  {
    return 0x656546664F706F74;
  }
}

uint64_t sub_22072845C()
{
  if (!*v0)
  {
    return 0x656546664F706F74;
  }

  v1 = sub_22088F6EC();
  MEMORY[0x223D89680](v1);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0x28726F73727563;
}

uint64_t sub_2207284E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSummaryTimeRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22072854C(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSummaryTimeRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2207286D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_220728F6C(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for StockFeedGroupKnobs(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220728FC0(a1, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    v22 = type metadata accessor for NewsStockFeedGroupKnobs(0);
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    sub_22068599C(v11, v20);
    sub_220729040(a1);
    if (v21(v15, 1, v16) != 1)
    {
      sub_220729040(v15);
    }
  }

  else
  {
    sub_220729040(a1);
    sub_2206682A8(v15, v20);
  }

  sub_2206682A8(v20, a4);
  if (a3)
  {
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = type metadata accessor for StockFeedKnobsConfig(0);
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_220728944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_2207290B8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220729114();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for StockFeedGroupKnobs(0);
    v20 = 0;
    sub_220729168();
    sub_22089271C();
    v19 = 1;
    sub_22089271C();
    sub_2207286D8(v7, v17, v18, v16);
    (*(v10 + 8))(v13, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220728B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756F724778616DLL;
  }

  else
  {
    v3 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v4 = 0xEA00000000007362;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x70756F724778616DLL;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_220728BF0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220728C7C(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_220728CF4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220728D7C(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_220728DDC(uint64_t *a1@<X8>)
{
  v2 = 0x6F6E4B70756F7267;
  if (*v1)
  {
    v2 = 0x70756F724778616DLL;
  }

  v3 = 0xEA00000000007362;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220728E24()
{
  if (*v0)
  {
    return 0x70756F724778616DLL;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

void sub_220728E68(char *a3@<X8>)
{
  v4 = sub_22089270C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_220728ECC(uint64_t a1)
{
  v2 = sub_220729114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220728F08(uint64_t a1)
{
  v2 = sub_220729114();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220728F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220728FC0(uint64_t a1, uint64_t a2)
{
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220729040(uint64_t a1)
{
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207290B8(uint64_t a1)
{
  if (!qword_28127E250)
  {
    sub_220729114();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E250);
    }
  }
}

unint64_t sub_220729114()
{
  result = qword_28128E8B8[0];
  if (!qword_28128E8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128E8B8);
  }

  return result;
}

unint64_t sub_220729168()
{
  result = qword_28128FB58;
  if (!qword_28128FB58)
  {
    type metadata accessor for StockFeedGroupKnobs(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FB58);
  }

  return result;
}

uint64_t sub_2207291C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_220729238()
{
  result = qword_27CF592A8;
  if (!qword_27CF592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592A8);
  }

  return result;
}

unint64_t sub_220729290()
{
  result = qword_28128E8A8;
  if (!qword_28128E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E8A8);
  }

  return result;
}

unint64_t sub_2207292E8()
{
  result = qword_28128E8B0;
  if (!qword_28128E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E8B0);
  }

  return result;
}

uint64_t sub_22072933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v46 = a3;
  v5 = sub_22088F23C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v44, v13);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StockFeedGroup(0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206008F4(a1, v30, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22060095C(v30, v22, type metadata accessor for NewsStockFeedGroup);
      sub_2207D62E8(v18);
      v32 = sub_2206008F4(v18, v43, type metadata accessor for StockFeedSectionDescriptor);
      MEMORY[0x28223BE20](v32, v33);
      *(&v42 - 4) = v42;
      *(&v42 - 3) = v22;
      *(&v42 - 2) = v3;
      sub_2205731B8(sub_22072ACF8, (&v42 - 6), v34);
      v36 = v35;
      sub_22055D328(0);
      v38 = v37;
      v39 = sub_22072ACB0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
      v40 = sub_22072ACB0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A20](v36, v38, v39, v40);
      type metadata accessor for StockFeedModel(0);
      sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
      sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      sub_22088B29C();
      sub_22072AD1C(v18, type metadata accessor for StockFeedSectionDescriptor);
      return sub_22072AD1C(v22, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v6 + 32))(v9, v30, v5);
      sub_220729D2C(v9, v46);
      return (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_22060095C(v30, v26, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_220729860(v26, v46);
    return sub_22072AD1C(v26, type metadata accessor for NewsPlacardStockFeedGroup);
  }
}

uint64_t sub_220729860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D328(0);
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v14, v15);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if ((sub_220885E7C() & 1) != 0 && *(v23 + *(type metadata accessor for NewsPlacardStockFeedGroup(0) + 20)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v16 = sub_22072ACB0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v17 = sub_22072ACB0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v25, v16, v17);
    sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_22088B29C();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v18 = sub_22072ACB0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v19 = sub_22072ACB0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v25, v18, v19);
    sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_22088B29C();
    if (qword_281299528 != -1)
    {
      swift_once();
    }

    v20 = *algn_2812B6D88;
    *v6 = qword_2812B6D80;
    v6[1] = v20;
    swift_storeEnumTagMultiPayload();
  }

  sub_22088AD7C();
  sub_22055CE80(0);
  sub_22088B30C();
  return (*(v8 + 8))(v11, v25);
}

uint64_t sub_220729D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v20[0] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F23C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_22072A424(0);
  sub_22055D328(0);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_22088FB2C();
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088AD7C();
  v17 = sub_22072ACB0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
  v18 = sub_22072ACB0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A10](v16, v15, v17, v18);
  sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  return sub_22088B29C();
}

uint64_t sub_22072A07C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22072A0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a1;
  v21[1] = a3;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v10, v11);
  swift_storeEnumTagMultiPayload();
  sub_22072A424(0);
  sub_22055D328(0);
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899360;
  sub_220459914(0);
  v16 = *(v15 + 48);
  v17 = sub_22089030C();
  (*(*(v17 - 8) + 16))(v9, v21[0], v17);
  *&v9[v16] = a2;
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);

  sub_22088AD7C();
  v18 = sub_22072ACB0(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
  v19 = sub_22072ACB0(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A10](v14, v13, v18, v19);
  sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  return sub_22088B29C();
}

void sub_22072A424(uint64_t a1)
{
  if (!qword_28127E100)
  {
    sub_22055D328(255);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E100);
    }
  }
}

uint64_t sub_22072A47C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v74 = a5;
  v8 = sub_22088FFFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v69 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v58 - v14;
  v16 = sub_22088698C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v65 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v58 - v22;
  v70 = type metadata accessor for StockFeedModel(0);
  v25 = MEMORY[0x28223BE20](v70, v24);
  v67 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v17;
  v27 = *(v17 + 16);
  v66 = v23;
  v59 = v16;
  v62 = v17 + 16;
  v61 = v27;
  (v27)(v23, a1, v16, v25);
  v71 = v15;
  v72 = v9;
  v28 = *(v9 + 16);
  v73 = v8;
  v60 = v28;
  v28(v15, a2, v8);
  v29 = a3[1];
  v64 = *a3;
  v30 = *(v63 + 96);
  v63 = v29;

  v31 = sub_2208868DC();
  v32 = [v31 isPaid];
  if ([v31 respondsToSelector_])
  {
    v33 = [v31 isBundlePaid];
  }

  else
  {
    v33 = 0;
  }

  v34 = [v31 sourceChannel];
  if (v34)
  {
    v35 = [v34 identifier];
    swift_unknownObjectRelease();
    v36 = sub_22089136C();
    v38 = v37;

    if (v32)
    {
      goto LABEL_6;
    }

LABEL_10:
    if ((v33 & 1) == 0)
    {
      swift_unknownObjectRelease();

      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v36 = 0;
  v38 = 0;
  if (!v32)
  {
    goto LABEL_10;
  }

LABEL_6:
  v39 = [v30 purchaseProvider];
  if (!v38)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (!v33)
    {
      swift_unknownObjectRelease();

      goto LABEL_37;
    }

LABEL_14:
    if (!v38)
    {
LABEL_36:
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v42 = [objc_msgSend(v30 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v42, v42 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77 = v75;
    v78 = v76;
    if (*(&v76 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v43 = v79;
        v44 = [v79 integerValue];
        if (v44 == -1)
        {

          goto LABEL_31;
        }

LABEL_25:
        v58 = v44;
        if (objc_getAssociatedObject(v42, ~v44))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v77 = v75;
        v78 = v76;
        if (*(&v76 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v45 = v79;
            v46 = [v45 integerValue];

            if ((v46 ^ v58))
            {
              goto LABEL_31;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          sub_22072AD1C(&v77, sub_22055F87C);
        }

        if (v58)
        {
LABEL_31:
          v47 = [objc_msgSend(v30 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v48 = [v47 bundleChannelIDs];

          v49 = sub_22089132C();
          v50 = [v48 containsObject_];

          swift_unknownObjectRelease();
          if (v50)
          {
            goto LABEL_32;
          }

LABEL_37:
          v51 = 0;
          goto LABEL_38;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_22072AD1C(&v77, sub_22055F87C);
    }

    v43 = 0;
    v44 = 0;
    goto LABEL_25;
  }

  v40 = [v39 purchasedTagIDs];
  v41 = sub_2208918EC();

  LOBYTE(v40) = sub_22056F244(v36, v38, v41);

  swift_unknownObjectRelease();
  if ((v40 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
LABEL_32:
  v51 = 1;
LABEL_38:
  v52 = v66;
  v53 = v59;
  v61(v65, v66, v59);
  v54 = v71;
  v55 = v73;
  v60(v69, v71, v73);
  LOBYTE(v77) = v51;
  v56 = MEMORY[0x277D69858];
  sub_22072ACB0(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
  sub_22072ACB0(&unk_281299040, v56, MEMORY[0x277D69848]);
  sub_22088FF9C();
  (*(v72 + 8))(v54, v55);
  (*(v68 + 8))(v52, v53);
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  return sub_22088AD7C();
}

uint64_t sub_22072ACB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22072AD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22072AD7C(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  *&v104 = a3;
  v94 = sub_22088516C();
  v93 = *(v94 - 8);
  v6 = MEMORY[0x28223BE20](v94, v5);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22072B7CC(0, &qword_28127ECC0, MEMORY[0x277D6C7C8], v6);
  *&v103 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v89 - v11;
  v13 = sub_220890E5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v90 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v95 = &v89 - v19;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v89 - v23;
  v91 = v3;
  *&v102 = v3[2];
  sub_22072B7CC(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v22);
  v26 = v25;
  sub_220890E9C();
  sub_220890E4C();
  v27 = *(v14 + 8);
  v100 = v13;
  v99 = v14 + 8;
  v96 = v27;
  v27(v24, v13);
  v97 = v26;
  *&v101 = a1;
  sub_220890EAC();
  *&v28 = COERCE_DOUBLE(sub_2208910AC());
  v30 = v29;

  (*(v9 + 8))(v12, v103);
  v31 = 0uLL;
  v32 = 0.0;
  if (v30)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0uLL;
    v39 = v104;
  }

  else
  {
    v40 = type metadata accessor for StockChartCalloutLayoutOptions(0);
    v41 = v98;
    v42 = (v98 + v40[8]);
    v43 = v42[1];
    v44 = v95;
    sub_220890E9C();
    v45 = sub_220890E4C();
    v47 = v46;
    v96(v44, v100);
    v105[0] = 0;
    LOBYTE(v45) = sub_2206E7BA8(v45, v47, v105);

    if (v45)
    {
      v48 = v41;
      v49 = *&v28;
      v50 = v91[6];
      v51 = v91[7];
      __swift_project_boxed_opaque_existential_1(v91 + 3, v50);
      v52 = *(v48 + v40[7]);
      v53 = *(v51 + 8);
      *&v103 = v42;
      v54 = *(v53 + 8);
      v105[3] = v50;
      v105[4] = v51;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
      v54(v52, v50, v53);
      v56 = v98;
      v57 = v92;
      sub_2208850EC();
      sub_22072B578(v56 + v40[6]);
      v58 = v56 + v40[5];
      v59 = v57;
      v60 = sub_22078EE00(v57, v58);
      v61 = *(v51 + 24);
      v91 = boxed_opaque_existential_1;
      v95 = v50;
      v33 = v61(v60);

      sub_220891D7C();
      v63 = v62;
      v102 = v64;
      v65 = *v56;
      v66 = *(v103 + 24);
      sub_220891A6C();
      *&v67 = v65 - *&v67;
      if (*&v67 >= v63)
      {
        *&v67 = v63;
      }

      v103 = v67;
      v68 = v65 - *&v67;
      v69 = v90;
      sub_220890E9C();
      sub_220890E2C();
      v71 = v70;
      v96(v69, v100);
      if (v71 == 0.0 || fabs(v71) >= 5.0)
      {
        if (qword_281294138 != -1)
        {
          swift_once();
        }

        v72 = &qword_2812B6B60;
      }

      else
      {
        if (qword_27CF55B40 != -1)
        {
          swift_once();
        }

        v72 = &qword_27CF6D0B0;
      }

      v39 = v104;
      v73 = v59;
      v74 = v43 + v49;
      v32 = v68 * 0.5;
      v75 = *v72;
      [v75 setNumberStyle_];
      v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v77 = [v75 stringFromNumber_];

      if (v77)
      {
        v78 = sub_22089136C();
        v80 = v79;
      }

      else
      {

        v78 = 0;
        v80 = 0xE000000000000000;
      }

      v35 = (*(v51 + 32))(v78, v80, v95, v51, 0.0);

      sub_220891D7C();
      v104 = v81;
      v37 = v82;
      if (v65 - *&v81 - v66 > v43)
      {
        v83 = v65 - *&v81 - v66;
      }

      else
      {
        v83 = v43;
      }

      v84 = v74 + *&v81 * -0.5;
      if (v84 <= v43)
      {
        v84 = v43;
      }

      if (v83 >= v84)
      {
        v36 = v84;
      }

      else
      {
        v36 = v83;
      }

      v85 = v56[1] - v37 + -4.0;
      v106.origin.y = 4.0;
      v106.origin.x = v32;
      *&v106.size.height = v102;
      *&v106.size.width = v103;
      MaxY = CGRectGetMaxY(v106);

      (*(v93 + 8))(v73, v94);
      if (v85 > MaxY)
      {
        *&v87 = v85;
      }

      else
      {
        *&v87 = MaxY;
      }

      v101 = v87;
      __swift_destroy_boxed_opaque_existential_1(v105);
      *&v31 = v103;
      *(&v31 + 1) = v102;
      *&v88 = v101;
      *(&v88 + 1) = v104;
      v38 = v88;
      v34 = 0x4010000000000000;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0.0;
      v37 = 0.0;
      v38 = 0uLL;
      v39 = v104;
      v31 = 0uLL;
    }
  }

  *v39 = v33;
  *(v39 + 8) = v32;
  *(v39 + 16) = v34;
  *(v39 + 24) = v31;
  *(v39 + 40) = v35;
  *(v39 + 48) = v36;
  *(v39 + 56) = v38;
  *(v39 + 72) = v37;
}

uint64_t sub_22072B578(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088543C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 64);
  if (*(v9 + 16) && (v10 = sub_2205CDF20(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v8, a1, v4);
    type metadata accessor for StockChartCalloutDateFormatter(0);
    v12 = swift_allocObject();
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter) = 0;
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter) = 0;
    (*(v5 + 32))(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone, v8, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 64);
    *(v2 + 64) = 0x8000000000000000;
    sub_2207CF09C(v12, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 64) = v15;
    swift_endAccess();
  }

  return v12;
}

uint64_t sub_22072B758()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_22072B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v7 = sub_220890E5C();
    v8 = MEMORY[0x277D6C6B0];
    v11[0] = v7;
    v11[1] = sub_2204CF254(&qword_28127EDB8, MEMORY[0x277D6C6B0], MEMORY[0x277D6C6C8]);
    v11[2] = sub_2204CF254(&qword_28127EDC8, v8, MEMORY[0x277D6C6B8]);
    v11[3] = sub_2204CF254(&qword_28127EDC0, v8, MEMORY[0x277D6C6C0]);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_22072B8D8(double a1)
{
  v3 = sub_2208854FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088543C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088516C();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088515C();
  sub_22088542C();
  v17 = sub_22072B578(v12);
  (*(v9 + 8))(v12, v8);
  v55 = v1;
  v18 = __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  (*(v4 + 104))(v7, *MEMORY[0x277D69120], v3);
  v65 = v17;
  v66 = v16;
  v56 = sub_22078EE00(v16, v7);
  (*(v4 + 8))(v7, v3);
  v19 = *v18;
  sub_2204A5DF0(0);
  v64 = v20;
  inited = swift_initStackObject();
  v62 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v23 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v24 = *MEMORY[0x277D76968];
  v60 = v22;
  v61 = v24;
  v25 = sub_220891F3C();
  v26 = MEMORY[0x277D740C0];
  *(inited + 40) = v25;
  v27 = *v26;
  v63 = v23;
  *(inited + 64) = v23;
  *(inited + 72) = v27;
  v28 = v19[5];
  v29 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v28);
  v30 = *(v29 + 16);
  v31 = *(v30 + 40);
  v57 = v27;
  v32 = v31(v28, v30);
  v59 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 104) = v59;
  *(inited + 80) = v32;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  v58 = v33;
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v35 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204CF254(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v36 = sub_22089125C();

  v37 = [v34 initWithString:v35 attributes:v36];

  v56 = v37;
  sub_220891D7C();
  sub_22046DA2C(v55 + 24, v69);
  v38 = __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  if (qword_281294138 != -1)
  {
    swift_once();
  }

  v39 = qword_2812B6B60;
  [v39 setNumberStyle_];
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v41 = [v39 stringFromNumber_];

  if (v41)
  {
    sub_22089136C();
  }

  v42 = *v38;
  v43 = swift_initStackObject();
  *(v43 + 16) = v62;
  *(v43 + 32) = v60;
  v44 = v63;
  *(v43 + 40) = sub_220891F3C();
  v45 = v57;
  *(v43 + 64) = v44;
  *(v43 + 72) = v45;
  v47 = v42[5];
  v46 = v42[6];
  __swift_project_boxed_opaque_existential_1(v42 + 2, v47);
  v48 = (*(*(v46 + 16) + 208))(v47);
  *(v43 + 104) = v59;
  *(v43 + 80) = v48;
  sub_2204A5EAC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v50 = sub_22089132C();

  v51 = sub_22089125C();

  v52 = [v49 initWithString:v50 attributes:v51];

  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_220891D7C();

  (*(v67 + 8))(v66, v68);
  return a1;
}

uint64_t sub_22072BFA4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF592B0 = result;
  return result;
}

uint64_t sub_22072C194()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &qword_281298CC0, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v6[2] = 1;
  v6[3] = 5;
  v6[1] = 5;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF592B8 = result;
  return result;
}

uint64_t sub_22072C2FC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D28 = result;
  return result;
}

uint64_t sub_22072C4EC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D10 = result;
  return result;
}

uint64_t sub_22072C6DC()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[0] = 0xD000000000000042;
  v11[1] = 0x80000002208D1A60;
  sub_2204643A4(0, &qword_281298CD0, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF592C0 = result;
  return result;
}

uint64_t static Settings.StockFeed.ConfigOverrides.url.getter()
{
  if (qword_27CF55B90 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.StockFeed.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.StockFeed.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.StockFeed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8StocksUIE4TipsV8EarningsV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_22072CB90()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v12 - v8;
  (*(v1 + 104))(&v12 - v8, *MEMORY[0x277D6D098], v0, v7);
  type metadata accessor for Settings.StockFeed.ConfigOverrides(0);
  swift_allocObject();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_220886B6C();
  result = (*(v1 + 8))(v9, v0);
  qword_281298D50 = v10;
  return result;
}

uint64_t sub_22072CD28()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 1;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D38 = result;
  return result;
}

uint64_t sub_22072CF1C()
{
  v0 = sub_220886BDC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v25 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220886BEC();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FB1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v21 - v14;
  sub_2206A7890(0, v13);
  v21[0] = "15ConfigOverrides";
  v21[1] = v16;
  v17 = *MEMORY[0x277D325C0];
  v18 = *(v7 + 104);
  v18(v15, v17, v6);
  sub_2206A7944(0, &qword_28127E188, sub_2206A7910, MEMORY[0x277D84560]);
  sub_2206A7910(0);
  *(swift_allocObject() + 16) = xmmword_22089B140;
  v18(v10, v17, v6);
  sub_220886BFC();
  v18(v10, *MEMORY[0x277D325C8], v6);
  sub_220886BFC();
  v18(v10, *MEMORY[0x277D325B8], v6);
  sub_220886BFC();
  (*(v23 + 104))(v22, *MEMORY[0x277D6D0A8], v24);
  v19.n128_f64[0] = (*(v26 + 104))(v25, *MEMORY[0x277D6D090], v27);
  sub_2206A79A8(&qword_281296A80, MEMORY[0x277D325A8], v19);
  result = sub_220886C1C();
  qword_281298DA0 = result;
  return result;
}

uint64_t type metadata accessor for Settings.StockFeed.ConfigOverrides(uint64_t a1)
{
  result = qword_281298D80;
  if (!qword_281298D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(uint64_t a1)
{
  result = qword_28127FF48;
  if (!qword_28127FF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22072D4EC(uint64_t a1)
{
  type metadata accessor for StockFeedQuoteData(319);
  if (v1 <= 0x3F)
  {
    sub_22044D9A4(319, &qword_281299480, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_2204446D4(319, qword_281286088, &protocol descriptor for StockEarningsModelFactoryType);
      if (v3 <= 0x3F)
      {
        sub_2204446D4(319, &qword_281299220, MEMORY[0x277D69608]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22072D5F4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v52 = a2;
  v6 = sub_22088B64C();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207320A4(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v41 - v11;
  sub_220587530(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_2207320A4(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v16 = v15;
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v41 - v18;
  v46 = v4;
  v54 = v4;
  v20 = sub_2205579A0(sub_220731BC4, v53);
  v47 = v16;
  sub_22088E6FC();
  sub_22055CE80(0);
  v22 = v21;
  v23 = sub_220732544(&qword_281297DF8, sub_22055CE80, MEMORY[0x277D6D720]);
  v24 = sub_220732544(&qword_281297E00, sub_22055CE80, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v20, v22, v23, v24);
  type metadata accessor for StockFeedSectionDescriptor(0);
  type metadata accessor for StockFeedModel(0);
  sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
  sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
  sub_22088E6EC();
  v43 = a1;
  v25 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig(0);
  sub_220732544(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v26 = sub_22088F9EC();

  v27 = 0;
  if (v26)
  {
    v27 = sub_22088F45C();
  }

  else
  {
    *(&v55 + 1) = 0;
    *&v56 = 0;
  }

  *&v55 = v26;
  *(&v56 + 1) = v27;
  v28 = v47;
  sub_22088E7BC();
  sub_22062782C(v25);
  v29 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(0);
  if (*(v46 + *(v29 + 24)) == 1)
  {
    sub_220731BE0(0, v30);
    v32 = *(v31 + 48);
    v33 = v48;
    (*(v48 + 16))(v12, v19, v28);
    v34.n128_f64[0] = (*(v44 + 104))(&v12[v32], *MEMORY[0x277D6D868], v45);
    sub_220731C88(0, v34);
    sub_220732544(&unk_2812975D8, sub_220731C88, MEMORY[0x277D6E5D8]);
    v55 = 0u;
    v56 = 0u;
    sub_22088B90C();
    v36 = v49;
    v35 = v50;
    (*(v49 + 104))(v12, *MEMORY[0x277D6DF58], v50);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v46 + *(v29 + 40)), *(v46 + *(v29 + 40) + 24));
    if (sub_22088618C())
    {
      sub_22088C66C();
    }

    else
    {
      v38 = v44;
      v37 = v45;
      v39 = v42;
      (*(v44 + 104))(v42, *MEMORY[0x277D6D868], v45);
      sub_220732544(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A205C);
      sub_22088C67C();
      (*(v38 + 8))(v39, v37);
    }

    v36 = v49;
    v35 = v50;
    v33 = v48;
  }

  v52(v12);
  (*(v36 + 8))(v12, v35);
  return (*(v33 + 8))(v19, v28);
}

uint64_t sub_22072DC9C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39[1] = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v39 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v39 - v23;
  sub_22055CE80(0);
  v26 = v25;
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628(0);
      sub_220732420(&v20[*(v37 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_22073247C(v20, type metadata accessor for StockFeedSectionDescriptor);
    }

LABEL_2:
    v28 = sub_22088B2AC();
    goto LABEL_3;
  }

  sub_2207324DC(v20, v12, type metadata accessor for StockFeedMastheadModel);
  sub_22072E180(v12, v8);
  sub_22073247C(v12, type metadata accessor for StockFeedMastheadModel);
  sub_2207324DC(v8, v24, type metadata accessor for StockFeedMastheadModel);
  v28 = swift_storeEnumTagMultiPayload();
LABEL_3:
  MEMORY[0x28223BE20](v28, v29);
  v39[-2] = v41;
  v30 = sub_220557F14(sub_220732404, &v39[-4]);
  if (*(v30 + 2))
  {
    sub_22073258C(v24, v16, type metadata accessor for StockFeedSectionDescriptor);
    sub_22055D328(0);
    v32 = v31;
    v33 = sub_220732544(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v34 = sub_220732544(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    v41 = v24;
    MEMORY[0x223D80A20](v30, v32, v33, v34);
    type metadata accessor for StockFeedModel(0);
    sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v35 = v40;
    sub_22088B29C();
    sub_22073247C(v41, type metadata accessor for StockFeedSectionDescriptor);
    v36 = 0;
  }

  else
  {
    sub_22073247C(v24, type metadata accessor for StockFeedSectionDescriptor);

    v36 = 1;
    v35 = v40;
  }

  return (*(*(v26 - 8) + 56))(v35, v36, 1, v26);
}

uint64_t sub_22072E180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v264 = a2;
  v252 = sub_2208852DC();
  v245 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v4);
  v263 = &v214[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = sub_2208857EC();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v6);
  v240 = &v214[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22044D9A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v219 = &v214[-v10];
  sub_22044D9A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v218 = &v214[-v13];
  v247 = sub_22088699C();
  v254 = *(v247 - 8);
  MEMORY[0x28223BE20](v247, v14);
  v266 = &v214[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v249 = &v214[-v18];
  v246 = type metadata accessor for PriceViewModel(0);
  v217 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v19);
  v226 = &v214[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v269 = type metadata accessor for QuoteViewModel(0);
  v239 = *(v269 - 8);
  MEMORY[0x28223BE20](v269, v21);
  v227 = &v214[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22044D9A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v225 = &v214[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v235 = &v214[-v28];
  v29 = sub_22088676C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v234 = &v214[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v243 = type metadata accessor for QuoteSummaryViewModel(0);
  MEMORY[0x28223BE20](v243, v33);
  v244 = &v214[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_2208854FC();
  v261 = *(v35 - 8);
  v262 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v223 = &v214[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38, v39);
  v259 = &v214[-v40];
  v272 = sub_220885D4C();
  v267 = *(v272 - 8);
  MEMORY[0x28223BE20](v272, v41);
  v216 = &v214[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43, v44);
  v265 = &v214[-v45];
  MEMORY[0x28223BE20](v46, v47);
  v270 = &v214[-v48];
  sub_22044D9A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v268 = &v214[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52, v53);
  v260 = &v214[-v54];
  v55 = MEMORY[0x277D697F8];
  sub_22044D9A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v224 = &v214[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v59, v60);
  v222 = &v214[-v61];
  MEMORY[0x28223BE20](v62, v63);
  v221 = &v214[-v64];
  MEMORY[0x28223BE20](v65, v66);
  v220 = &v214[-v67];
  MEMORY[0x28223BE20](v68, v69);
  v248 = &v214[-v70];
  MEMORY[0x28223BE20](v71, v72);
  v231 = &v214[-v73];
  MEMORY[0x28223BE20](v74, v75);
  v255 = &v214[-v76];
  MEMORY[0x28223BE20](v77, v78);
  v80 = &v214[-v79];
  MEMORY[0x28223BE20](v81, v82);
  v84 = &v214[-v83];
  v85 = sub_22088685C();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v87);
  v271 = &v214[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = MEMORY[0x28223BE20](v89, v90);
  v238 = v86;
  v92 = *(v86 + 16);
  v256 = &v214[-v93];
  v258 = v94;
  v230 = v86 + 16;
  v229 = v92;
  v92(v91);
  v95 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(0);
  sub_22047E980(v2 + *(v95 + 20), v80, &qword_2812990C0, v55);
  v96 = *(v30 + 48);
  v97 = v96(v80, 1, v29);
  v251 = v29;
  v250 = v30;
  v257 = v84;
  v233 = v30 + 48;
  v232 = v96;
  if (v97 == 1)
  {
    v98 = type metadata accessor for StockFeedMastheadModel(0);
    sub_22047E980(a1 + *(v98 + 20), v84, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v96(v80, 1, v29) != 1)
    {
      sub_220732420(v80, &qword_2812990C0, MEMORY[0x277D697F8]);
    }
  }

  else
  {
    (*(v30 + 32))(v84, v80, v29);
    (*(v30 + 56))(v84, 0, 1, v29);
  }

  v99 = type metadata accessor for StockFeedMastheadModel(0);
  v100 = v99[6];
  v228 = MEMORY[0x277D697C0];
  v101 = v260;
  sub_22047E980(a1 + v100, v260, &unk_2812990E0, MEMORY[0x277D697C0]);
  v102 = a1 + v99[7];
  v103 = *(v269 + 20);
  v104 = v267 + 16;
  v253 = *(v267 + 16);
  v253(v270, v102 + v103, v272);
  v236 = *(a1 + v99[8]);
  __swift_project_boxed_opaque_existential_1((v2 + *(v95 + 40)), *(v2 + *(v95 + 40) + 24));
  v215 = sub_2208861AC();
  v105 = v264;
  v106 = v256;
  v107 = v258;
  v108 = v229;
  (v229)(v264, v256, v258);
  v109 = MEMORY[0x277D697F8];
  v110 = v257;
  sub_22047E980(v257, v105 + v99[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  v237 = v99;
  v111 = v105 + v99[6];
  v112 = v228;
  sub_22047E980(v101, v111, &unk_2812990E0, v228);
  (v108)(v271, v106, v107);
  v113 = v110;
  v114 = v255;
  sub_22047E980(v113, v255, &qword_2812990C0, v109);
  v115 = v272;
  sub_22047E980(v101, v268, &unk_2812990E0, v112);
  v230 = v104;
  v253(v265, v270, v115);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v116 = v259;
  sub_220886B9C();

  v117 = v231;
  sub_22047E980(v114, v231, &qword_2812990C0, MEMORY[0x277D697F8]);
  v118 = v251;
  v119 = v232;
  v120 = v232(v117, 1, v251);
  v121 = v250;
  v122 = v249;
  v123 = v248;
  if (v120 == 1)
  {
    v124 = MEMORY[0x277D697F8];
    sub_220732420(v117, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v121 + 56))(v123, 1, 1, v118);
    sub_2208867CC();
    v125 = v220;
    sub_22047E980(v123, v220, &qword_2812990C0, v124);
    v126 = v119;
    if (v119(v125, 1, v118) == 1)
    {
      sub_220732420(v125, &qword_2812990C0, MEMORY[0x277D697F8]);
      v253 = 0;
      LODWORD(v235) = 1;
    }

    else
    {
      v253 = sub_22088675C();
      LODWORD(v235) = v144;
      (*(v121 + 8))(v125, v118);
    }

    v145 = v254;
    v146 = v224;
    v147 = v222;
    v148 = v221;
    sub_22047E980(v123, v221, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v148, 1, v118) == 1)
    {
      sub_220732420(v148, &qword_2812990C0, MEMORY[0x277D697F8]);
      v234 = 0;
      LODWORD(v231) = 1;
    }

    else
    {
      v234 = sub_22088666C();
      LODWORD(v231) = v149;
      (*(v121 + 8))(v148, v118);
    }

    sub_22047E980(v123, v147, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v147, 1, v118) == 1)
    {
      sub_220732420(v147, &qword_2812990C0, MEMORY[0x277D697F8]);
      v230 = 0;
      LODWORD(v229) = 1;
    }

    else
    {
      v230 = sub_22088671C();
      LODWORD(v229) = v150;
      (*(v121 + 8))(v147, v118);
    }

    sub_22047E980(v123, v146, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v146, 1, v118) == 1)
    {
      sub_220732420(v146, &qword_2812990C0, MEMORY[0x277D697F8]);
      v233 = 0;
      v151 = 0;
    }

    else
    {
      v233 = sub_22088668C();
      v151 = v152;
      (*(v121 + 8))(v146, v118);
    }

    v153 = v263;
    v154 = *(v145 + 16);
    v155 = v266;
    v156 = v122;
    v157 = v247;
    v154(v266, v156, v247);
    v158 = v241;
    v159 = v240;
    v160 = v242;
    (*(v241 + 104))(v240, *MEMORY[0x277D69288], v242);
    sub_22088524C();
    v161 = v226;
    *v226 = v253;
    *(v161 + 8) = v235 & 1;
    *(v161 + 16) = v234;
    *(v161 + 24) = v231 & 1;
    *(v161 + 32) = v230;
    *(v161 + 40) = v229 & 1;
    *(v161 + 48) = v233;
    *(v161 + 56) = v151;
    v162 = v246;
    v154((v161 + *(v246 + 40)), v155, v157);
    *(v161 + 64) = 9666786;
    *(v161 + 72) = 0xA300000000000000;
    (*(v158 + 16))(v161 + *(v162 + 36), v159, v160);
    v163 = *(v162 + 44);
    v164 = v245;
    (*(v245 + 16))(v161 + v163, v153, v252);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v253 = qword_2812B6B48;
    (*(v158 + 8))(v159, v160);
    v165 = *(v254 + 8);
    v165(v266, v157);
    v165(v249, v157);
    v166 = MEMORY[0x277D697F8];
    sub_220732420(v248, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v261 + 8))(v259, v262);
    v167 = MEMORY[0x277D697C0];
    sub_220732420(v268, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_220732420(v255, &qword_2812990C0, v166);
    v168 = *(v238 + 8);
    v169 = v258;
    v168(v271, v258);
    v170 = v267;
    (*(v267 + 8))(v270, v272);
    sub_220732420(v260, &unk_2812990E0, v167);
    sub_220732420(v257, &qword_2812990C0, v166);
    v168(v256, v169);
    v171 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v172 = v253;
    swift_beginAccess();
    (*(v164 + 40))(v172 + v171, v263, v252);
    swift_endAccess();
    v173 = v269;
    v174 = *(v269 + 24);
    v175 = type metadata accessor for QuoteSummaryTimeRange(0);
    v176 = v227;
    (*(*(v175 - 8) + 56))(&v227[v174], 1, 1, v175);
    sub_2207324DC(v161, v176, type metadata accessor for PriceViewModel);
    (*(v170 + 32))(v176 + *(v173 + 20), v265, v272);
    v177 = v244;
    (*(v239 + 56))(v244 + *(v243 + 20), 1, 1, v173);
    sub_2207324DC(v176, v177, type metadata accessor for QuoteViewModel);
    goto LABEL_35;
  }

  v127 = v234;
  v128.n128_f64[0] = (*(v250 + 32))(v234, v117, v118);
  v129 = sub_220656950(v116, v128, v127, v268);
  v248 = v130;
  LODWORD(v233) = v131;
  v132 = v261;
  v133 = v223;
  (*(v261 + 104))(v223, *MEMORY[0x277D69120], v262, v129);
  sub_220732544(&qword_281299398, MEMORY[0x277D69160], MEMORY[0x277D69170]);
  sub_22089167C();
  sub_22089167C();
  v134 = v269;
  if (v275 == v273 && v276 == v274)
  {
    v135 = 1;
  }

  else
  {
    v135 = sub_2208928BC();
  }

  v249 = *(v132 + 8);
  (v249)(v133, v262);

  v261 = v132 + 8;
  if (v135)
  {
    v136 = v266;
    sub_2208867CC();
    v137 = v215;
    v138 = v218;
    sub_22069DDE0(v136, v215 & 1, v218);
    (*(v254 + 8))(v136, v247);
    v139 = v216;
    v253(v216, v265, v115);
    v140 = v219;
    sub_22069E5AC(v137 & 1, v219);
    if ((*(v217 + 48))(v138, 1, v246) != 1)
    {
      v143 = v225;
      sub_2207324DC(v138, v225, type metadata accessor for PriceViewModel);
      (*(v267 + 32))(&v143[*(v134 + 20)], v139, v115);
      sub_220528C64(v140, &v143[*(v134 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      v141 = 0;
      v142 = v235;
      goto LABEL_32;
    }

    sub_220732420(v140, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v267 + 8))(v139, v115);
    sub_220732420(v138, qword_281294018, type metadata accessor for PriceViewModel);
  }

  v141 = 1;
  v142 = v235;
  v143 = v225;
LABEL_32:
  (*(v239 + 56))(v143, v141, 1, v134);
  sub_220528C64(v143, v142, qword_281293F78, type metadata accessor for QuoteViewModel);
  v178 = sub_22088675C();
  LODWORD(v239) = v179;
  v180 = sub_22088671C();
  v182 = v181;
  v183 = sub_22088668C();
  v185 = v184;
  v186 = v266;
  sub_2208867CC();
  v187 = v241;
  v188 = v240;
  v189 = v242;
  (*(v241 + 104))(v240, *MEMORY[0x277D69288], v242);
  v190 = v263;
  sub_22088524C();
  v191 = v244;
  *v244 = v178;
  *(v191 + 8) = v239 & 1;
  v191[2] = v248;
  *(v191 + 24) = v233 & 1;
  v191[4] = v180;
  v177 = v191;
  v192 = v189;
  *(v191 + 40) = v182 & 1;
  v191[6] = v183;
  v191[7] = v185;
  v193 = v246;
  v194 = v254;
  v195 = v247;
  (*(v254 + 16))(v191 + *(v246 + 40), v186, v247);
  *(v177 + 64) = 9666786;
  *(v177 + 72) = 0xA300000000000000;
  (*(v187 + 16))(v177 + *(v193 + 36), v188, v189);
  v196 = v245;
  v197 = v252;
  (*(v245 + 16))(v177 + *(v193 + 44), v190, v252);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v198 = qword_2812B6B48;
  (*(v187 + 8))(v188, v192);
  (*(v194 + 8))(v266, v195);
  v199 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v196 + 40))(v198 + v199, v263, v197);
  swift_endAccess();
  v200 = v269;
  v201 = v265;
  v202 = v272;
  v253((v177 + *(v269 + 20)), v265, v272);
  v203 = v177 + *(v200 + 24);
  v204 = v259;
  v205 = v234;
  sub_22069E834(v259, v203);
  (*(v250 + 8))(v205, v251);
  (v249)(v204, v262);
  v206 = *(v267 + 8);
  v206(v201, v202);
  v207 = MEMORY[0x277D697C0];
  sub_220732420(v268, &unk_2812990E0, MEMORY[0x277D697C0]);
  v208 = MEMORY[0x277D697F8];
  sub_220732420(v255, &qword_2812990C0, MEMORY[0x277D697F8]);
  v209 = *(v238 + 8);
  v210 = v258;
  v209(v271, v258);
  v206(v270, v202);
  sub_220732420(v260, &unk_2812990E0, v207);
  sub_220732420(v257, &qword_2812990C0, v208);
  v209(v256, v210);
  sub_220528C64(v235, v177 + *(v243 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
LABEL_35:
  v211 = v237;
  v212 = v264;
  result = sub_2207324DC(v177, v264 + v237[7], type metadata accessor for QuoteSummaryViewModel);
  *(v212 + v211[8]) = v236;
  return result;
}

uint64_t sub_22072FDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v228 = a2;
  v232 = a3;
  v4 = sub_22088685C();
  v226 = *(v4 - 8);
  v227 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v229 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D9A4(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v215 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v222 = &v192 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v200 = &v192 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v202 = &v192 - v18;
  v214 = sub_22088516C();
  v220 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v19);
  v203 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22088543C();
  v213 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v21);
  v212 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D9A4(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v206 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v201 = &v192 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v210 = &v192 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v211 = &v192 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v204 = &v192 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v209 = &v192 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v219 = &v192 - v43;
  sub_22044D9A4(0, qword_2812906B8, type metadata accessor for StockEarningsModel);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v208 = &v192 - v46;
  sub_22044D9A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v218 = &v192 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v223 = &v192 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v199 = &v192 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v198 = &v192 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v221 = &v192 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v217 = &v192 - v64;
  v65 = sub_22088676C();
  v224 = *(v65 - 8);
  v225 = v65;
  MEMORY[0x28223BE20](v65, v66);
  v216 = &v192 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for StockEarningsModel(0);
  v205 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v69);
  v71 = &v192 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v192 - v74;
  v76 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v76 - 8, v77);
  v79 = &v192 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v192 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v192 - v86;
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v192 - v90;
  sub_22055D328(0);
  v230 = a1;
  v231 = v92;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v194 = v83;
    v95 = v229;
    v192 = v68;
    v193 = v71;
    v196 = v87;
    v195 = v75;
    v197 = v80;
    if (EnumCaseMultiPayload <= 1)
    {
      v117 = v196;
      sub_2207324DC(v91, v79, type metadata accessor for StockFeedMastheadModel);
      sub_22072E180(v79, v117);
      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      v115 = v232;
      sub_22088AD7C();
      v129 = type metadata accessor for StockFeedMastheadModel;
      v130 = v79;
LABEL_19:
      sub_22073247C(v130, v129);
      v116 = 0;
      v94 = v231;
      v114 = *(v231 - 8);
      return (*(v114 + 56))(v115, v116, 1, v94);
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v226 + 8))(v91, v227);
      v94 = v231;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0(0);
      v97 = v96;
      v98 = *(v96 + 48);
      v99 = *(v96 + 64);
      v100 = v226;
      v101 = v227;
      (*(v226 + 32))(v95, v91, v227);
      v102 = MEMORY[0x277D697F8];
      v103 = v223;
      sub_220528C64(&v91[v98], v223, &qword_2812990C0, MEMORY[0x277D697F8]);
      sub_220528C64(&v91[v99], v222, &qword_281299370, MEMORY[0x277D69178]);
      v230 = v97;
      v104 = *(v97 + 48);
      v105 = v194;
      (*(v100 + 16))(v194, v95, v101);
      v106 = v228 + *(type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(0) + 20);
      v107 = v218;
      sub_22047E980(v106, v218, &qword_2812990C0, v102);
      v109 = v224;
      v108 = v225;
      v110 = *(v224 + 48);
      if (v110(v107, 1, v225) == 1)
      {
        sub_22047E980(v103, &v105[v104], &qword_2812990C0, MEMORY[0x277D697F8]);
        v111 = v110(v107, 1, v108) == 1;
        v112 = v107;
        v113 = v215;
        if (!v111)
        {
          sub_220732420(v112, &qword_2812990C0, MEMORY[0x277D697F8]);
        }
      }

      else
      {
        (*(v109 + 32))(&v105[v104], v107, v108);
        (*(v109 + 56))(&v105[v104], 0, 1, v108);
        v113 = v215;
      }

      v131 = *(v230 + 64);
      v132 = type metadata accessor for StockFeedQuoteData(0);
      sub_22047E980(v106 + *(v132 + 20), v113, &qword_281299370, MEMORY[0x277D69178]);
      v133 = sub_2208855EC();
      v134 = *(v133 - 8);
      v135 = *(v134 + 48);
      if (v135(v113, 1, v133) == 1)
      {
        v136 = v222;
        sub_22047E980(v222, &v105[v131], &qword_281299370, MEMORY[0x277D69178]);
        if (v135(v113, 1, v133) != 1)
        {
          sub_220732420(v113, &qword_281299370, MEMORY[0x277D69178]);
        }
      }

      else
      {
        (*(v134 + 32))(&v105[v131], v113, v133);
        (*(v134 + 56))(&v105[v131], 0, 1, v133);
        v136 = v222;
      }

      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      v115 = v232;
      sub_22088AD7C();
      sub_220732420(v136, &qword_281299370, MEMORY[0x277D69178]);
      sub_220732420(v223, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v226 + 8))(v229, v227);
      v116 = 0;
      v94 = v231;
LABEL_29:
      v114 = *(v94 - 8);
      return (*(v114 + 56))(v115, v116, 1, v94);
    }

    v119 = v91;
    v120 = v195;
    sub_2207324DC(v119, v195, type metadata accessor for StockEarningsModel);
    v121 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(0);
    v122 = v228;
    v123 = v228 + v121[5];
    v124 = v217;
    sub_22047E980(v123, v217, &qword_2812990C0, MEMORY[0x277D697F8]);
    v126 = v224;
    v125 = v225;
    v127 = *(v224 + 48);
    if (v127(v124, 1, v225) == 1)
    {
      sub_220732420(v124, &qword_2812990C0, MEMORY[0x277D697F8]);
      sub_22073258C(v120, v196, type metadata accessor for StockEarningsModel);
      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      v128 = v120;
      v115 = v232;
      sub_22088AD7C();
      v129 = type metadata accessor for StockEarningsModel;
      v130 = v128;
      goto LABEL_19;
    }

    v229 = v123;
    v137 = v216;
    (*(v126 + 32))(v216, v124, v125);
    v138 = __swift_project_boxed_opaque_existential_1((v122 + v121[9]), *(v122 + v121[9] + 24));
    v139 = v221;
    (*(v126 + 16))(v221, v137, v125);
    (*(v126 + 56))(v139, 0, 1, v125);
    v140 = *(type metadata accessor for StockFeedQuoteData(0) + 20);
    v141 = v122;
    v142 = v125;
    v143 = v121[7];
    v144 = v121[8];
    v222 = *v138;
    v223 = v140;
    v145 = v209;
    sub_22047E980(v141 + v143, v209, &qword_281299480, MEMORY[0x277CC9578]);
    v146 = v220;
    v147 = v214;
    v230 = *(v220 + 48);
    if ((v230)(v145, 1, v214) != 1)
    {
      v152 = v219;
      (*(v146 + 32))(v219, v145, v147);
      (*(v146 + 56))(v152, 0, 1, v147);
      v153 = v228;
      v154 = v210;
      goto LABEL_41;
    }

    v148 = v139;
    v149 = v198;
    sub_22047E980(v148, v198, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v127(v149, 1, v142) == 1)
    {
      sub_220732420(v149, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v146 + 56))(v204, 1, 1, v147);
      v150 = v200;
    }

    else
    {
      v155 = v204;
      sub_22088670C();
      v147 = v214;
      (*(v224 + 8))(v149, v142);
      v156 = (v230)(v155, 1, v147);
      v150 = v200;
      if (v156 != 1)
      {
        v160 = v219;
        (*(v146 + 32))(v219, v155, v147);
        (*(v146 + 56))(v160, 0, 1, v147);
        v153 = v228;
        v154 = v210;
LABEL_39:
        v161 = v209;
        if ((v230)(v209, 1, v147) != 1)
        {
          sub_220732420(v161, &qword_281299480, MEMORY[0x277CC9578]);
        }

LABEL_41:
        sub_22047E980(v153 + v144, v154, &qword_281299480, MEMORY[0x277CC9578]);
        if ((v230)(v154, 1, v147) != 1)
        {
          v166 = v211;
          (*(v146 + 32))(v211, v154, v147);
          (*(v146 + 56))(v166, 0, 1, v147);
          v94 = v231;
          v167 = v147;
          v169 = v212;
          v168 = v213;
          v170 = v219;
          goto LABEL_54;
        }

        v162 = v199;
        sub_22047E980(v221, v199, &qword_2812990C0, MEMORY[0x277D697F8]);
        v163 = v225;
        if (v127(v162, 1, v225) == 1)
        {
          sub_220732420(v162, &qword_2812990C0, MEMORY[0x277D697F8]);
          v164 = v201;
          (*(v220 + 56))(v201, 1, 1, v147);
          v165 = v202;
        }

        else
        {
          v164 = v201;
          sub_2208866DC();
          v147 = v214;
          (*(v224 + 8))(v162, v163);
          v171 = (v230)(v164, 1, v147);
          v165 = v202;
          if (v171 != 1)
          {
            v175 = v220;
            v166 = v211;
            (*(v220 + 32))(v211, v164, v147);
            (*(v175 + 56))(v166, 0, 1, v147);
            v94 = v231;
            v167 = v147;
            v169 = v212;
            v168 = v213;
            v170 = v219;
LABEL_52:
            v176 = v210;
            if ((v230)(v210, 1, v167) != 1)
            {
              sub_220732420(v176, &qword_281299480, MEMORY[0x277CC9578]);
            }

LABEL_54:
            sub_22056FA8C(v221, v169);
            v177 = v170;
            v178 = v170;
            v179 = v206;
            sub_22047E980(v177, v206, &qword_281299480, MEMORY[0x277CC9578]);
            if ((v230)(v179, 1, v167) == 1)
            {
              (*(v168 + 8))(v169, v207);
              v180 = MEMORY[0x277CC9578];
              sub_220732420(v166, &qword_281299480, MEMORY[0x277CC9578]);
              sub_220732420(v178, &qword_281299480, v180);
              sub_220732420(v221, &qword_2812990C0, MEMORY[0x277D697F8]);
              v181 = v224;
              v182 = v208;
              v183 = v179;
            }

            else
            {
              v184 = v220;
              v185 = v169;
              v186 = v203;
              v233 = *(v220 + 32);
              v233(v203, v179, v167);
              v187 = sub_22056FD0C(v186, v185);
              sub_220732420(v178, &qword_281299480, MEMORY[0x277CC9578]);
              sub_220732420(v221, &qword_2812990C0, MEMORY[0x277D697F8]);
              v181 = v224;
              v182 = v208;
              if (v187)
              {
                (*(v226 + 16))(v208, v195, v227);
                v188 = v192;
                v233((v182 + v192[5]), v186, v167);
                sub_220528C64(v211, v182 + v188[6], &qword_281299480, MEMORY[0x277CC9578]);
                (*(v213 + 32))(v182 + v188[7], v212, v207);
                v189 = 0;
                *(v182 + v188[8]) = 0;
                *(v182 + v188[9]) = 0;
                v115 = v232;
                v190 = v193;
LABEL_60:
                v191 = v205;
                (*(v205 + 56))(v182, v189, 1, v188);
                if ((*(v191 + 48))(v182, 1, v188) == 1)
                {
                  (*(v181 + 8))(v216, v225);
                  sub_22073247C(v195, type metadata accessor for StockEarningsModel);
                  sub_220732420(v182, qword_2812906B8, type metadata accessor for StockEarningsModel);
                  v114 = *(v94 - 8);
                  v116 = 1;
                  return (*(v114 + 56))(v115, v116, 1, v94);
                }

                sub_2207324DC(v182, v190, type metadata accessor for StockEarningsModel);
                sub_22073258C(v190, v196, type metadata accessor for StockEarningsModel);
                swift_storeEnumTagMultiPayload();
                sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
                sub_22088AD7C();
                sub_22073247C(v190, type metadata accessor for StockEarningsModel);
                (*(v181 + 8))(v216, v225);
                sub_22073247C(v195, type metadata accessor for StockEarningsModel);
                v116 = 0;
                goto LABEL_29;
              }

              (*(v184 + 8))(v186, v167);
              (*(v213 + 8))(v212, v207);
              v183 = v211;
            }

            sub_220732420(v183, &qword_281299480, MEMORY[0x277CC9578]);
            v189 = 1;
            v115 = v232;
            v190 = v193;
            v188 = v192;
            goto LABEL_60;
          }
        }

        sub_22047E980(&v229[v223], v165, &qword_281299370, MEMORY[0x277D69178]);
        v172 = sub_2208855EC();
        v173 = *(v172 - 8);
        if ((*(v173 + 48))(v165, 1, v172) == 1)
        {
          sub_220732420(v165, &qword_281299370, MEMORY[0x277D69178]);
          v166 = v211;
          (*(v220 + 56))(v211, 1, 1, v147);
          v94 = v231;
          v167 = v147;
        }

        else
        {
          v174 = v211;
          v167 = v147;
          sub_22088558C();
          (*(v173 + 8))(v165, v172);
          v166 = v174;
          v94 = v231;
        }

        v169 = v212;
        v168 = v213;
        v170 = v219;
        if ((v230)(v164, 1, v167) != 1)
        {
          sub_220732420(v164, &qword_281299480, MEMORY[0x277CC9578]);
        }

        goto LABEL_52;
      }
    }

    sub_22047E980(&v229[v223], v150, &qword_281299370, MEMORY[0x277D69178]);
    v157 = sub_2208855EC();
    v158 = *(v157 - 8);
    if ((*(v158 + 48))(v150, 1, v157) == 1)
    {
      sub_220732420(v150, &qword_281299370, MEMORY[0x277D69178]);
      v146 = v220;
      (*(v220 + 56))(v219, 1, 1, v147);
    }

    else
    {
      sub_2208855AC();
      v147 = v214;
      (*(v158 + 8))(v150, v157);
      v146 = v220;
    }

    v153 = v228;
    v154 = v210;
    v159 = v204;
    if ((v230)(v204, 1, v147) != 1)
    {
      sub_220732420(v159, &qword_281299480, MEMORY[0x277CC9578]);
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v94 = v231;
LABEL_12:
    sub_22073247C(v91, type metadata accessor for StockFeedModel);
    goto LABEL_13;
  }

  v94 = v231;
  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v118 = sub_22089030C();
    (*(*(v118 - 8) + 8))(v91, v118);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 9)
  {
    goto LABEL_12;
  }

LABEL_13:
  v114 = *(v94 - 8);
  v115 = v232;
  (*(v114 + 16))(v232, v230, v94);
  v116 = 0;
  return (*(v114 + 56))(v115, v116, 1, v94);
}

void sub_220731BE0(uint64_t a1, __n128 a2)
{
  if (!qword_27CF592C8)
  {
    sub_2207320A4(255, &unk_281296F10, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    sub_22088B91C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF592C8);
    }
  }
}

void sub_220731C88(uint64_t a1, __n128 a2)
{
  if (!qword_2812975D0)
  {
    sub_220731D1C(255, a2);
    sub_220732544(&qword_281297A38, sub_220731D1C, MEMORY[0x277D6DC88]);
    v2 = sub_22088D23C();
    if (!v3)
    {
      atomic_store(v2, &qword_2812975D0);
    }
  }
}

void sub_220731D1C(uint64_t a1, __n128 a2)
{
  if (!qword_281297A30)
  {
    sub_220731E88();
    sub_220731ED4(255);
    sub_220732198(255);
    sub_220732318(255);
    type metadata accessor for StockFeedViewController(255);
    sub_220732544(&qword_2812973D8, sub_220731ED4, MEMORY[0x277D6E820]);
    sub_220732544(&qword_281297550, sub_220732198, MEMORY[0x277D6E738]);
    sub_220732544(&qword_281297360, sub_220732318, MEMORY[0x277D6E918]);
    v2 = sub_22088BFDC();
    if (!v3)
    {
      atomic_store(v2, &qword_281297A30);
    }
  }
}

unint64_t sub_220731E88()
{
  result = qword_28127E820;
  if (!qword_28127E820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E820);
  }

  return result;
}

void sub_220731ED4(uint64_t a1)
{
  if (!qword_2812973D0)
  {
    sub_2205E9B98(255);
    sub_2205E88C0(255);
    type metadata accessor for StockFeedBlueprintViewCellProvider();
    type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider();
    sub_220732544(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
    sub_220732544(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_220732544(qword_2812826E8, type metadata accessor for StockFeedBlueprintViewCellProvider, &unk_2208A0AFC);
    sub_220732544(qword_281296698, type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider, &unk_2208A97C8);
    sub_220732544(&qword_28128E7F0, type metadata accessor for StockFeedLayoutModel, &unk_22089F200);
    v1 = sub_22088D7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812973D0);
    }
  }
}

void sub_2207320A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220732198(uint64_t a1)
{
  if (!qword_281297548)
  {
    sub_2205E9B98(255);
    sub_2205E88C0(255);
    type metadata accessor for StockFeedViewController(255);
    sub_220732544(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
    sub_220732544(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_220732544(&qword_28128AF30, type metadata accessor for StockFeedViewController, &unk_2208A454C);
    sub_220732544(&qword_28128E7F0, type metadata accessor for StockFeedLayoutModel, &unk_22089F200);
    v1 = sub_22088D59C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297548);
    }
  }
}

void sub_220732318(uint64_t a1)
{
  if (!qword_281297358)
  {
    sub_2205E9B98(255);
    sub_2205E88C0(255);
    sub_220732544(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
    sub_220732544(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    v1 = sub_22088D9AC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297358);
    }
  }
}

uint64_t sub_220732420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044D9A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22073247C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207324DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220732544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22073258C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2207325F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong becomeFirstResponder];
  }
}

void sub_220732650()
{
  sub_2207326AC();
  if (v0)
  {
    v1 = v0;
    sub_22088AB3C();
  }
}

void sub_2207326AC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_22044D56C(0, &qword_27CF58F88, 0x277D75940);
  sub_220732A50();
  v3 = sub_2208918EC();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_22089243C();
    sub_22089190C();
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!sub_22089248C() || (swift_dynamicCast(), v15 = v28, v14 = v6, v27 = v7, !v28))
  {
LABEL_35:
    sub_22067DE08(v3);
    return;
  }

  while (1)
  {
    if ([v15 activationState] || (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) == 0))
    {

      v6 = v14;
      v7 = v27;
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v24 = v11;
    v17 = [v16 windows];
    sub_22044D56C(0, &qword_28127E440, 0x277D75DA0);
    v18 = sub_2208916EC();

    v25 = v2;
    v26 = v5;
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_33;
    }

    v19 = sub_2208926AC();
    if (v19)
    {
      break;
    }

LABEL_33:

    v6 = v14;
    v7 = v27;
    v2 = v25;
    v5 = v26;
    v11 = v24;
    if (v3 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_35;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v27 = (v13 - 1) & v13;
    v15 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D8A700](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    sub_22088AB4C();
    if (swift_dynamicCastClass())
    {
      sub_22067DE08(v3);

      return;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_33;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_220732A50()
{
  result = qword_27CF5AA10;
  if (!qword_27CF5AA10)
  {
    sub_22044D56C(255, &qword_27CF58F88, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5AA10);
  }

  return result;
}

void sub_220732AE4(uint64_t a1, uint64_t a2)
{
  v144 = a2;
  v2 = sub_22088959C();
  v141 = *(v2 - 8);
  v142 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v126 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v130 = &v123 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v133 = &v123 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v138 = &v123 - v13;
  v143 = sub_2208906CC();
  v146 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v14);
  v124 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v125 = &v123 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v127 = &v123 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v129 = &v123 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v131 = &v123 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v137 = (&v123 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v134 = &v123 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v135 = (&v123 - v36);
  v37 = sub_220889ACC();
  v139 = *(v37 - 8);
  v140 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v128 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v132 = &v123 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v136 = (&v123 - v45);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v123 - v48;
  v50 = sub_22089022C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v123 = &v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v123 - v56;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v123 - v60;
  MEMORY[0x28223BE20](v62, v63);
  v65 = &v123 - v64;
  sub_22088E4CC();
  sub_22088E3CC();
  v66 = sub_22088E23C();

  if (v66)
  {
    v67 = v145;
    v68 = v145[10];
    v69 = v145[11];
    v136 = __swift_project_boxed_opaque_existential_1(v145 + 7, v68);
    sub_220733854();
    sub_2208905DC();
    v70 = v147;
    sub_2208905FC();
    v137 = v49;
    sub_2205B7B64(v49);
    v51[1](v65, v50);
    v71 = v135;
    sub_22089060C();
    v72 = v146;
    v73 = v134;
    v74 = v143;
    (*(v146 + 16))(v134, v71, v143);
    v75 = (*(v72 + 88))(v73, v74);
    v76 = v74;
    if (v75 == *MEMORY[0x277D33A68])
    {
      v77 = MEMORY[0x277D68618];
LABEL_16:
      (*(v72 + 8))(v71, v76);
      v98 = v141;
      v97 = v142;
      v99 = v138;
      (*(v141 + 104))(v138, *v77, v142);
      v100 = v137;
      (*(v69 + 48))(v137, v99, v68, v69, v70);
      (*(v98 + 8))(v99, v97);
      (*(v139 + 8))(v100, v140);
      __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
      sub_2208905DC();
      sub_220887E5C();
      return;
    }

    if (v75 == *MEMORY[0x277D33A78])
    {
      v77 = MEMORY[0x277D68628];
      goto LABEL_16;
    }

    if (v75 == *MEMORY[0x277D33A70])
    {
      v77 = MEMORY[0x277D68620];
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v135 = v51;
  v138 = v50;
  v78 = v143;
  v79 = v145;
  sub_22088E34C();
  v80 = sub_22088E23C();

  if (v80)
  {
    v81 = v79[11];
    v134 = v79[10];
    __swift_project_boxed_opaque_existential_1(v79 + 7, v134);
    sub_220733854();
    sub_2208905DC();
    v82 = v147;
    sub_2208905FC();
    sub_2205B7B64(v136);
    v135[1](v61, v138);
    v83 = v137;
    sub_22089060C();
    v84 = v146;
    v85 = v131;
    (*(v146 + 16))(v131, v83, v78);
    v86 = (*(v84 + 88))(v85, v78);
    if (v86 == *MEMORY[0x277D33A68])
    {
      v87 = MEMORY[0x277D68618];
LABEL_24:
      (*(v84 + 8))(v137, v78);
      v111 = v141;
      v110 = v142;
      v112 = v133;
      (*(v141 + 104))(v133, *v87, v142);
      v113 = v136;
      (*(v81 + 56))(v136, v112, v134, v81, v82);
      (*(v111 + 8))(v112, v110);
      (*(v139 + 8))(v113, v140);
      __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
      sub_2208905DC();
      sub_220887E2C();
      return;
    }

    if (v86 == *MEMORY[0x277D33A78])
    {
      v87 = MEMORY[0x277D68628];
      goto LABEL_24;
    }

    if (v86 == *MEMORY[0x277D33A70])
    {
      v87 = MEMORY[0x277D68620];
      goto LABEL_24;
    }

LABEL_34:
    sub_22089267C();
    __break(1u);
    return;
  }

  sub_22088E38C();
  v88 = sub_22088E23C();

  if (v88)
  {
    v89 = v79[10];
    v90 = v79[11];
    v137 = __swift_project_boxed_opaque_existential_1(v79 + 7, v89);
    sub_220733854();
    sub_2208905DC();
    v91 = v147;
    sub_2208905FC();
    sub_2205B7B64(v132);
    v135[1](v57, v138);
    v92 = v129;
    sub_22089060C();
    v93 = v146;
    v94 = v127;
    (*(v146 + 16))(v127, v92, v78);
    v95 = (*(v93 + 88))(v94, v78);
    if (v95 == *MEMORY[0x277D33A68])
    {
      v96 = MEMORY[0x277D68618];
    }

    else if (v95 == *MEMORY[0x277D33A78])
    {
      v96 = MEMORY[0x277D68628];
    }

    else
    {
      if (v95 != *MEMORY[0x277D33A70])
      {
        goto LABEL_34;
      }

      v96 = MEMORY[0x277D68620];
    }

    (*(v146 + 8))(v92, v78);
    v115 = v141;
    v114 = v142;
    v116 = v130;
    (*(v141 + 104))(v130, *v96, v142);
    v117 = v132;
    (*(v90 + 64))(v132, v116, v89, v90, v91);
    (*(v115 + 8))(v116, v114);
    (*(v139 + 8))(v117, v140);
    __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
    sub_2208905DC();
    sub_220887E4C();
    return;
  }

  sub_22088E35C();
  v101 = sub_22088E23C();

  if (v101)
  {
    v102 = v79[10];
    v103 = v79[11];
    __swift_project_boxed_opaque_existential_1(v79 + 7, v102);
    sub_220733854();
    v104 = v123;
    sub_2208905FC();
    sub_2205B7B64(v128);
    v135[1](v104, v138);
    v105 = v125;
    sub_22089060C();
    v106 = v146;
    v107 = v124;
    (*(v146 + 16))(v124, v105, v78);
    v108 = (*(v106 + 88))(v107, v78);
    if (v108 == *MEMORY[0x277D33A68])
    {
      v109 = MEMORY[0x277D68618];
    }

    else if (v108 == *MEMORY[0x277D33A78])
    {
      v109 = MEMORY[0x277D68628];
    }

    else
    {
      if (v108 != *MEMORY[0x277D33A70])
      {
        goto LABEL_34;
      }

      v109 = MEMORY[0x277D68620];
    }

    (*(v146 + 8))(v105, v78);
    v118 = *v109;
    v120 = v141;
    v119 = v142;
    v121 = v126;
    (*(v141 + 104))(v126, v118, v142);
    v122 = v128;
    (*(v103 + 32))(v128, v121, v102, v103);
    (*(v120 + 8))(v121, v119);
    (*(v139 + 8))(v122, v140);
    __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
    sub_2208905DC();
    sub_220887E1C();
  }
}

void sub_220733854()
{
  if (!qword_281296828)
  {
    v0 = sub_22089062C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296828);
    }
  }
}

uint64_t sub_2207338A4()
{
  MEMORY[0x223D8B910](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_220733920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1853321060;
  }

  else
  {
    v3 = 28789;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1853321060;
  }

  else
  {
    v5 = 28789;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207339B4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220733A24(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_220733A80()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220733AEC(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_220733B4C(uint64_t *a1@<X8>)
{
  v2 = 28789;
  if (*v1)
  {
    v2 = 1853321060;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_220733C2C()
{
  result = qword_27CF592D0;
  if (!qword_27CF592D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592D0);
  }

  return result;
}

unint64_t sub_220733C80()
{
  result = qword_27CF592D8;
  if (!qword_27CF592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592D8);
  }

  return result;
}

uint64_t sub_220733CD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E69727065756C62;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1701869940;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 7107189;
    }

    else
    {
      v5 = 0x6B72616D6B6F6F62;
    }

    if (v4 == 3)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  v9 = 0xE300000000000000;
  v10 = 7107189;
  if (a2 != 3)
  {
    v10 = 0x6B72616D6B6F6F62;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6E69727065756C62;
    v2 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2208928BC();
  }

  return v13 & 1;
}

uint64_t sub_220733E40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x69726F7453706F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64657461727563;
    }

    else
    {
      v5 = 25697;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6B636F7473;
    }

    else
    {
      v5 = 0x69726F7453706F74;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000007365;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657461727563;
  if (a2 != 2)
  {
    v8 = 25697;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v3 = 0x6B636F7473;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_220733F64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737275;
  v3 = 0xD000000000000012;
  v4 = 0x6F682D7265746661;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6F682D7265746661;
    }

    if (v5 == 2)
    {
      v7 = 0x80000002208BEC00;
    }

    else
    {
      v7 = 0xEB00000000737275;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x80000002208BEBE0;
    }

    else
    {
      v7 = 0x80000002208BEBC0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000002208BEC00;
  }

  v8 = 0x80000002208BEBE0;
  if (!a2)
  {
    v3 = 0xD000000000000011;
    v8 = 0x80000002208BEBC0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_22073408C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "ight";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a1 == 4)
  {
    v6 = ".v2.SymbolSearch";
  }

  else
  {
    v6 = "com.apple.stocks.v2.Article";
  }

  if (v4 == 3)
  {
    v7 = 0xD000000000000020;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v8 = "com.apple.stocks.v2.SymbolFeed";
  }

  else
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v9 = "com.apple.stocks.v2.StockList";
  }

  else
  {
    v9 = "com.apple.stocks.v2.ForYouFeed";
  }

  if (v4)
  {
    v10 = 0xD00000000000001ELL;
  }

  else
  {
    v10 = 0xD00000000000001DLL;
  }

  if (v4)
  {
    v11 = v9;
  }

  else
  {
    v11 = "ight";
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000020;
      v3 = "com.apple.stocks.v2.SymbolFeed";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001BLL;
      v3 = ".v2.SymbolSearch";
    }

    else
    {
      v2 = 0xD000000000000017;
      v3 = "com.apple.stocks.v2.Article";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "com.apple.stocks.v2.StockList";
    }

    else
    {
      v3 = "com.apple.stocks.v2.ForYouFeed";
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2208928BC();
  }

  return v14 & 1;
}

double sub_2207341F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22048EE54(0, v1, 0);
    v3 = v22;
    v4 = (a1 + 32);
    v5 = 0x80000002208BEC00;
    v6 = 0x80000002208BEBE0;
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = v8 == 2;
      if (v8 == 2)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = 0x6F682D7265746661;
      }

      if (v9)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0xEB00000000737275;
      }

      if (v7)
      {
        v12 = 0xD000000000000012;
      }

      else
      {
        v12 = 0xD000000000000011;
      }

      if (v7)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0x80000002208BEBC0;
      }

      if (v7 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 <= 1)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      v23 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v5;
        v21 = v6;
        sub_22048EE54((v16 > 1), v17 + 1, 1);
        v6 = v21;
        v5 = v19;
        v3 = v23;
      }

      *(v3 + 16) = v17 + 1;
      v18 = v3 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      --v1;
    }

    while (v1);
  }

  sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748], MEMORY[0x277D6C740]);
  sub_220890F7C();

  return result;
}

uint64_t sub_2207343C4(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v162 = a1;
  v163 = sub_220890D2C();
  v167 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v5);
  v148 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v142 - v10;
  sub_220737450(0, &qword_28127ECC0, MEMORY[0x277D6C7C8], v9);
  v157 = *(v12 - 8);
  v158 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v146 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v156 = v142 - v17;
  sub_2204569E0(0, &qword_28127EDB0, MEMORY[0x277D6C6B0]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v149 = v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v142 - v23;
  v166 = sub_220890E5C();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v25);
  v147 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v150 = v142 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v152 = v142 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v151 = (v142 - v35);
  v36 = sub_220890C9C();
  v154 = *(v36 - 8);
  v155 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v145 = v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39, v40);
  v153 = v142 - v42;
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88], v41);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v46 = v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47, v48);
  v51 = v142 - v50;
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v49);
  v53 = v52;
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v55);
  v159 = (v142 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x28223BE20](v57, v58);
  v160 = v142 - v60;
  v161 = v54;
  v61 = *(v54 + 48);
  v62 = a2;
  v63 = v61(a2, 1, v53, v59);
  v165 = v3;
  if (v63 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v66 = Strong;
      sub_2207341F4(byte_283410C90);
    }

    v67 = OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel;
    v68 = v165;
    swift_beginAccess();
    v69 = v167;
    v70 = *(v167 + 48);
    v71 = v163;
    v72 = v70(v68 + v67, 1, v163);
    v73 = v166;
    if (v72)
    {
      goto LABEL_5;
    }

    v82 = v166;
    v161 = *(v69 + 16);
    (v161)(v11, v68 + v67, v71);
    v83 = sub_220890D1C();
    v84 = *(v69 + 8);
    v167 = v69 + 8;
    v162 = v84;
    v84(v11, v71);
    if (!*(v83 + 16))
    {

      v73 = v82;
LABEL_5:
      (*(v164 + 56))(v24, 1, 1, v73);
LABEL_6:
      v74 = &qword_28127EDB0;
      v75 = MEMORY[0x277D6C6B0];
      v76 = sub_2204569E0;
      v77 = v24;
      return sub_220737624(v77, v74, v75, v76);
    }

    v153 = (v69 + 16);
    v85 = v157;
    v86 = *(v157 + 16);
    v144 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v87 = v156;
    v88 = v158;
    v152 = (v157 + 16);
    v151 = v86;
    v86(v156, v83 + v144, v158);

    v89 = sub_22089117C();
    v157 = *(v85 + 8);
    (v157)(v87, v88);
    if (*(v89 + 16))
    {
      v90 = v164;
      v91 = v166;
      (*(v164 + 16))(v24, v89 + ((*(v164 + 80) + 32) & ~*(v164 + 80)), v166);
      v92 = 0;
    }

    else
    {
      v92 = 1;
      v91 = v166;
      v90 = v164;
    }

    v159 = *(v90 + 56);
    v160 = (v90 + 56);
    v159(v24, v92, 1, v91);
    v156 = *(v90 + 48);
    if ((v156)(v24, 1, v91) == 1)
    {
      goto LABEL_6;
    }

    v142[1] = v90 + 48;
    v124 = v150;
    v143 = *(v90 + 32);
    v143(v150, v24, v91);
    v125 = v165;
    swift_beginAccess();
    v126 = v163;
    if (v70(v125 + v67, 1, v163))
    {
      (*(v90 + 8))(v124, v91);
      swift_endAccess();
      v127 = v149;
    }

    else
    {
      v128 = v143;
      v129 = v148;
      (v161)(v148, v125 + v67, v126);
      swift_endAccess();
      v130 = sub_220890D1C();
      v162(v129, v126);
      v127 = v149;
      if (*(v130 + 16))
      {
        v131 = v146;
        v132 = v158;
        v151(v146, v130 + v144, v158);

        v133 = sub_22089117C();
        (v157)(v131, v132);
        v134 = *(v133 + 16);
        if (v134)
        {
          v135 = v166;
          (*(v164 + 16))(v127, v133 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * (v134 - 1), v166);
          v136 = 0;
        }

        else
        {
          v136 = 1;
          v135 = v166;
        }

        v137 = v147;

        v159(v127, v136, 1, v135);
        if ((v156)(v127, 1, v135) != 1)
        {
          v128(v137, v127, v135);
          v138 = swift_unknownObjectWeakLoadStrong();
          if (v138)
          {
            v139 = v138;
            sub_220890E4C();
            sub_220890E4C();
            v140 = v145;
            sub_220890C8C();
            sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748], MEMORY[0x277D6C740]);
            sub_220890F8C();

            (*(v154 + 8))(v140, v155);
          }

          v141 = *(v164 + 8);
          v141(v137, v135);
          return (v141)(v124, v135);
        }

        (*(v164 + 8))(v124, v135);
        goto LABEL_62;
      }

      v91 = v166;
      (*(v164 + 8))(v124, v166);
    }

    v159(v127, 1, 1, v91);
LABEL_62:
    v74 = &qword_28127EDB0;
    v75 = MEMORY[0x277D6C6B0];
    v76 = sub_2204569E0;
    v77 = v127;
    return sub_220737624(v77, v74, v75, v76);
  }

  sub_2207375A4(v162, v51, v64);
  if ((v61)(v51, 1, v53) == 1)
  {
    v74 = &qword_28127ED80;
    v75 = MEMORY[0x277D83D88];
    v76 = sub_220737684;
    v77 = v51;
    return sub_220737624(v77, v74, v75, v76);
  }

  v79 = v160;
  v78 = v161;
  v80 = *(v161 + 32);
  v81.n128_f64[0] = v80(v160, v51, v53);
  sub_2207375A4(v62, v46, v81);
  if ((v61)(v46, 1, v53) == 1)
  {
    (*(v78 + 8))(v79, v53);
    v74 = &qword_28127ED80;
    v75 = MEMORY[0x277D83D88];
    v76 = sub_220737684;
    v77 = v46;
    return sub_220737624(v77, v74, v75, v76);
  }

  v93 = v159;
  v94.n128_f64[0] = v80(v159, v46, v53);
  LODWORD(v167) = sub_220736FD0(v94);
  v95 = swift_unknownObjectWeakLoadStrong();
  v96 = v79;
  v97 = v166;
  if (!v95)
  {
    goto LABEL_52;
  }

  v162 = v95;
  v163 = v53;
  v98 = 0;
  v99 = MEMORY[0x277D84F90];
  v100 = 0xEB00000000737275;
  v101 = 0x6F682D7265746661;
  do
  {
    v102 = byte_283410C90[v98 + 32];
    if (v102 > 1)
    {
      if (v102 == 2)
      {
        v103 = 0xD000000000000012;
      }

      else
      {
        v103 = 0x6F682D7265746661;
      }

      if (v102 == 2)
      {
        v104 = 0x80000002208BEC00;
      }

      else
      {
        v104 = 0xEB00000000737275;
      }
    }

    else if (byte_283410C90[v98 + 32])
    {
      v103 = 0xD000000000000012;
      v104 = 0x80000002208BEBE0;
    }

    else
    {
      v103 = 0xD000000000000011;
      v104 = 0x80000002208BEBC0;
    }

    if (v167 == 2)
    {
      v101 = 0xD000000000000012;
      v100 = 0x80000002208BEC00;
    }

    if (v167)
    {
      v105 = 0xD000000000000012;
    }

    else
    {
      v105 = 0xD000000000000011;
    }

    if (v167)
    {
      v106 = 0x80000002208BEBE0;
    }

    else
    {
      v106 = 0x80000002208BEBC0;
    }

    if (v167 <= 1u)
    {
      v107 = v105;
    }

    else
    {
      v107 = v101;
    }

    if (v167 <= 1u)
    {
      v108 = v106;
    }

    else
    {
      v108 = v100;
    }

    if (v103 == v107 && v104 == v108)
    {

LABEL_17:
      v100 = 0xEB00000000737275;
      v101 = 0x6F682D7265746661;
      goto LABEL_18;
    }

    v109 = sub_2208928BC();

    if (v109)
    {
      goto LABEL_17;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168[0] = v99;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22070BDE4(0, *(v99 + 16) + 1, 1);
      v99 = v168[0];
    }

    v112 = *(v99 + 16);
    v111 = *(v99 + 24);
    v100 = 0xEB00000000737275;
    v101 = 0x6F682D7265746661;
    if (v112 >= v111 >> 1)
    {
      sub_22070BDE4((v111 > 1), v112 + 1, 1);
      v101 = 0x6F682D7265746661;
      v100 = 0xEB00000000737275;
      v99 = v168[0];
    }

    *(v99 + 16) = v112 + 1;
    *(v99 + v112 + 32) = v102;
LABEL_18:
    ++v98;
  }

  while (v98 != 3);
  v113 = v162;
  sub_2207341F4(v99);

  v97 = v166;
  v53 = v163;
  v93 = v159;
  v96 = v160;
LABEL_52:
  v114 = swift_unknownObjectWeakLoadStrong();
  if (v114)
  {
    v115 = v114;
    v116 = v151;
    sub_220890E9C();
    v117 = sub_220890E4C();
    v165 = v118;
    v166 = v117;
    v119 = *(v164 + 8);
    v119(v116, v97);
    v120 = v152;
    sub_220890E9C();
    sub_220890E4C();
    v119(v120, v97);
    v121 = v153;
    sub_220890C8C();
    sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748], MEMORY[0x277D6C740]);
    sub_220890F8C();

    (*(v154 + 8))(v121, v155);
    v122 = *(v161 + 8);
    v122(v159, v53);
  }

  else
  {
    v122 = *(v161 + 8);
    v122(v93, v53);
  }

  return (v122)(v96, v53);
}

uint64_t sub_2207354B8()
{

  MEMORY[0x223D8B910](v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  sub_22054B9F8(v0 + 96);
  sub_220737624(v0 + OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel, &qword_28127EDF0, MEMORY[0x277D6C670], sub_2204569E0);

  return swift_deallocClassInstance();
}

unint64_t sub_220735598()
{
  result = qword_27CF592E0;
  if (!qword_27CF592E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592E0);
  }

  return result;
}

void sub_220735634(uint64_t a1, __n128 a2)
{
  v3 = v2;
  sub_220737684(0, &qword_27CF592E8, MEMORY[0x277D6C690], a2);
  v6 = v5;
  v7 = *(v5 - 8);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v23 - v10;
  (*(v7 + 16))(v23 - v10, a1, v6, v9);
  if ((*(v7 + 88))(v11, v6) == *MEMORY[0x277D6C688])
  {
    (*(v7 + 96))(v11, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v13 = Strong, v14 = sub_220890F3C(), v13, v14))
    {
      v15 = v3[7];
      v16 = v3[8];
      __swift_project_boxed_opaque_existential_1(v3 + 4, v15);
      v17 = [v14 traitCollection];
      v18 = *(v16 + 8);
      v19 = *(v18 + 8);
      v24[3] = v15;
      v24[4] = v16;
      __swift_allocate_boxed_opaque_existential_1(v24);
      v19(v17, v15, v18);

      v20 = swift_allocObject();
      swift_weakInit();
      sub_22046DA2C(v24, v23);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v14;
      sub_220457328(v23, v21 + 32);
      v22 = v14;
      sub_220890FDC();

      swift_allocObject();
      swift_weakInit();

      sub_220890FCC();

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
    }
  }

  else
  {
    sub_22089267C();
    __break(1u);
  }
}

void sub_220735954(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, void *a4, __n128 a5)
{
  v213 = a4;
  v219 = a3;
  v230 = a1;
  v204 = sub_220890C9C();
  v203 = *(v204 - 8);
  v6 = MEMORY[0x28223BE20](v204, v5);
  v202 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220737450(0, &qword_28127ECC0, MEMORY[0x277D6C7C8], v6);
  v228 = v8;
  v226 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v9);
  v223 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v195 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v209 = &v195 - v17;
  v18 = sub_220890E5C();
  v229 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v206 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v225 = &v195 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v205 = &v195 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v208 = &v195 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v207 = &v195 - v32;
  v35 = MEMORY[0x28223BE20](v33, v34);
  v210 = &v195 - v36;
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88], v35);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v212 = (&v195 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40, v41);
  v211 = (&v195 - v43);
  sub_220737714(0, v42);
  v45 = v44;
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v47);
  v222 = &v195 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v195 - v51;
  v55 = MEMORY[0x28223BE20](v53, v54);
  v57 = &v195 - v56;
  sub_22073778C(0, v55);
  v59 = v58;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v63 = &v195 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v61);
  v65 = *(v64 - 8);
  v231 = v64;
  v232 = v65;
  MEMORY[0x28223BE20](v64, v66);
  v227 = &v195 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v69);
  v224 = &v195 - v70;
  MEMORY[0x28223BE20](v71, v72);
  v217 = &v195 - v73;
  MEMORY[0x28223BE20](v74, v75);
  v77 = &v195 - v76;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v201 = v14;
  v218 = v18;
  v221 = Strong;
  v79 = *(Strong + 72);
  v80 = *(v59 + 48);
  v81 = v46;
  v84 = *(*&v46 + 16);
  v83 = *&v46 + 16;
  v82 = v84;
  v84(v63, v230, v45);
  v63[v80] = v79;
  v85 = *(*&v81 + 88);
  v216 = *&v81 + 88;
  v215 = v85;
  v86 = v85(v63, v45);
  v214 = *MEMORY[0x277D6C718];
  v220 = v81;
  if (v86 == v214)
  {
    v199 = v83;
    v82(v57, v63, v45);
    (*(*&v81 + 96))(v57, v45);
    v88 = v82;
    if (v79 != 1)
    {
      v200 = v82;
      v104 = v231;
      v103 = v232;
      (*(v232 + 32))(v77, v57, v231);
      (*(*&v81 + 8))(v63, v45);
      v105 = [v219 layer];
      v98 = v221;
      [v105 addSublayer_];

      [*(v98 + 88) removeFromSuperlayer];
      v106 = *(v103 + 56);
      v107 = v211;
      v106(v211, 1, 1, v104);
      v108 = v212;
      v106(v212, 1, 1, v104);
      sub_2207343C4(v107, v108);
      v109 = MEMORY[0x277D83D88];
      sub_220737624(v108, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
      sub_220737624(v107, &qword_28127ED80, v109, sub_220737684);
      v110 = v209;
      sub_220890EAC();
      v101 = v228;
      v111 = sub_22089117C();
      v112 = v226[1];
      v112(v110, v101);
      if (*(v111 + 16))
      {
        v113 = v229;
        v114 = v229[2];
        v196 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v209 = v112;
        v115 = v207;
        v116 = v218;
        v198 = v229 + 2;
        v197 = v114;
        v114(v207, v111 + v196, v218);

        v207 = v113[4];
        (v207)(v210, v115, v116);
        v117 = v201;
        v118 = v231;
        sub_220890EAC();
        (*(v232 + 8))(v77, v118);
        v119 = sub_22089117C();
        (v209)(v117, v101);
        v120 = *(v119 + 16);
        v89 = v222;
        if (v120)
        {
          v121 = v205;
          v197(v205, v119 + v196 + v229[9] * (v120 - 1), v116);

          v122 = v208;
          (v207)(v208, v121, v116);
          v123 = v116;
          v98 = v221;
          v124 = swift_unknownObjectWeakLoadStrong();
          if (v124)
          {
            v125 = v124;
            sub_220890E4C();
            sub_220890E4C();
            v126 = v202;
            sub_220890C8C();
            sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748], MEMORY[0x277D6C740]);
            sub_220890F8C();

            (*(v203 + 8))(v126, v204);
            v127 = v229[1];
            v127(v208, v123);
          }

          else
          {
            v127 = v229[1];
            v127(v122, v123);
          }

          v127(v210, v123);
        }

        else
        {

          (v229[1])(v210, v116);
          v98 = v221;
        }

        v101 = v228;
      }

      else
      {

        (*(v232 + 8))(v77, v231);
        v89 = v222;
      }

      *(v98 + 72) = 1;
      v100 = v225;
      v102 = v230;
      v88 = v200;
      goto LABEL_20;
    }

    (*(v232 + 8))(v57, v231);
    v89 = v222;
    goto LABEL_8;
  }

  v90 = v232;
  v89 = v222;
  v88 = v82;
  if (v86 != *MEMORY[0x277D6C710] || (v82(v52, v63, v45), v91.n128_f64[0] = (*(*&v220 + 96))(v52, v45), sub_220737850(0, v91), v93 = *(v92 + 48), v200 = v82, v94 = *(v90 + 8), v95 = v231, v94(&v52[v93], v231), v94(v52, v95), v88 = v200, v79 > 1))
  {
LABEL_8:
    sub_2207377F4(v63, v87);
    v100 = v225;
    v98 = v221;
    goto LABEL_9;
  }

  (*(*&v220 + 8))(v63, v45);
  v96 = v219;
  v97 = [v219 layer];
  v98 = v221;
  [v97 addSublayer_];

  v99 = [v96 layer];
  v88 = v200;
  [v99 addSublayer_];

  *(v98 + 72) = 2;
  v100 = v225;
LABEL_9:
  v101 = v228;
  v102 = v230;
LABEL_20:
  v88(v89, v102, v45);
  v128 = v215(v89, v45);
  if (v128 == v214)
  {
    (*(*&v220 + 96))(v89, v45);
    v129 = v231;
    v130 = v232;
    v131 = v217;
    (*(v232 + 32))(v217, v89, v231);
    sub_220890E9C();
    v132 = v98;
    v133 = v223;
    sub_220890EAC();
    v134 = COERCE_DOUBLE(sub_2208910BC());
    v136 = v135;
    v138 = v137;
    (v226[1])(v133, v101);
    (v229[1])(v100, v218);
    if (v138)
    {
      (*(v130 + 8))(v131, v129);
    }

    else
    {
      v161 = v134 + -0.5;
      v162 = *(v132 + 80);
      [v219 bounds];
      [v162 setFrame_];

      v163 = *(v132 + 80);
      *&v163[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v136;
      [v163 setNeedsLayout];
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2205696E0(v131);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1(v213, v213[3]);
      sub_220814104(*(v132 + 80), 0.0);
      (*(v232 + 8))(v131, v129);
    }
  }

  else
  {
    v139 = v98;
    v140 = v226;
    if (v128 != *MEMORY[0x277D6C710])
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    v141.n128_f64[0] = (*(*&v220 + 96))(v89, v45);
    sub_220737850(0, v141);
    v143 = *(v142 + 48);
    v144 = v231;
    v145 = *(v232 + 32);
    v145(v224, v89, v231);
    v145(v227, &v89[v143], v144);
    sub_220890E9C();
    v146 = v223;
    sub_220890EAC();
    v147 = v146;
    v220 = COERCE_DOUBLE(sub_2208910BC());
    v222 = v148;
    LOBYTE(v143) = v149;
    v150 = v140[1];
    v150(v147, v101);
    v151 = v139;
    v153 = v229 + 1;
    v152 = v229[1];
    v154 = v218;
    v152(v100, v218);
    if (v143 & 1) != 0 || (v230 = v152, v155 = v147, sub_220890E9C(), sub_220890EAC(), *&v156 = COERCE_DOUBLE(sub_2208910BC()), v226 = v157, v159 = v158, v150(v155, v228), v230(v100, v154), (v159))
    {

      v160 = *(v232 + 8);
      v160(v227, v144);
      v160(v224, v144);
      return;
    }

    v229 = v153;
    v164 = *&v156;
    v165 = v220 + -0.5;
    v166 = *(v151 + 80);
    v167 = v219;
    [v219 bounds];
    [v166 setFrame_];

    v168 = *(v151 + 80);
    *&v168[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v222;
    [v168 setNeedsLayout];
    v169 = *(v151 + 88);
    [v167 bounds];
    [v169 setFrame_];

    v170 = *(v151 + 88);
    *&v170[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v226;
    [v170 setNeedsLayout];
    v171 = v232;
    v172 = *(v232 + 16);
    v173 = v211;
    v174 = v224;
    v172(v211, v224, v144);
    v175 = *(v171 + 56);
    v175(v173, 0, 1, v144);
    v176 = v212;
    v177 = v227;
    v172(v212, v227, v144);
    v175(v176, 0, 1, v144);
    sub_2207343C4(v173, v176);
    v178 = MEMORY[0x277D83D88];
    sub_220737624(v176, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
    sub_220737624(v173, &qword_28127ED80, v178, sub_220737684);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220569C68(v174, v177);
      swift_unknownObjectRelease();
    }

    v179 = v213;
    v228 = __swift_project_boxed_opaque_existential_1(v213, v213[3]);
    v180 = *(v221 + 80);
    v181 = v225;
    sub_220890E9C();
    sub_220890E2C();
    v183 = v182;
    v184 = v218;
    v185 = v230;
    v230(v181, v218);
    v186 = v206;
    sub_220890E9C();
    sub_220890E2C();
    v188 = v187;
    v185(v186, v184);
    sub_220814104(v180, v183 - v188);

    v226 = __swift_project_boxed_opaque_existential_1(v179, v179[3]);
    v228 = *(v221 + 88);
    v189 = v227;
    sub_220890E9C();
    sub_220890E2C();
    v191 = v190;
    v185(v181, v184);
    sub_220890E9C();
    sub_220890E2C();
    v193 = v192;
    v185(v186, v184);
    sub_220814104(v228, v191 - v193);
    v194 = *(v232 + 8);
    v194(v189, v144);
    v194(v174, v144);
  }
}

double sub_220736DC0(uint64_t a1, __n128 a2)
{
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88], a2);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v18 - v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(Strong + 72) = 0;
    [*(Strong + 80) removeFromSuperlayer];
    [*(v12 + 88) removeFromSuperlayer];
    sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v13);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v16(v9, 1, 1, v14);
    v16(v5, 1, 1, v15);
    sub_2207343C4(v9, v5);
    v17 = MEMORY[0x277D83D88];
    sub_220737624(v5, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
    sub_220737624(v9, &qword_28127ED80, v17, sub_220737684);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22056A210();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220736FD0(__n128 a1)
{
  v1 = sub_220890E5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v21 - v9;
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v8);
  sub_220890E9C();
  sub_220890E2C();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v10, v1);
  sub_220890E9C();
  sub_220890E2C();
  v15 = v14;
  v13(v5, v1);
  if (v15 < v12)
  {
    return 2;
  }

  sub_220890E9C();
  sub_220890E2C();
  v18 = v17;
  v13(v10, v1);
  sub_220890E9C();
  sub_220890E2C();
  v20 = v19;
  v13(v5, v1);
  return v20 < v18;
}

uint64_t sub_2207371B8(uint64_t a1, __n128 a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88], a2);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v25 - v11);
  sub_2204569E0(0, &qword_28127EDF0, MEMORY[0x277D6C670]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v25 - v15;
  v17 = sub_220890D2C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel;
  swift_beginAccess();
  sub_2207378D0(v16, v2 + v19);
  swift_endAccess();
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8], v20);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v23(v12, 1, 1, v21);
  v23(v8, 1, 1, v22);
  sub_2207343C4(v12, v8);
  sub_220737624(v8, &qword_28127ED80, v4, sub_220737684);
  return sub_220737624(v12, &qword_28127ED80, v4, sub_220737684);
}

void sub_220737450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    v7 = sub_220890E5C();
    v8 = MEMORY[0x277D6C6B0];
    v11[0] = v7;
    v11[1] = sub_22073755C(&qword_28127EDB8, MEMORY[0x277D6C6B0], MEMORY[0x277D6C6C8]);
    v11[2] = sub_22073755C(&qword_28127EDC8, v8, MEMORY[0x277D6C6B8]);
    v11[3] = sub_22073755C(&qword_28127EDC0, v8, MEMORY[0x277D6C6C0]);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22073755C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2207375A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88], a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220737624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_220737684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8], a4);
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220737714(uint64_t a1, __n128 a2)
{
  if (!qword_27CF592F0)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8], a2);
    v2 = sub_220890FBC();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF592F0);
    }
  }
}

void sub_22073778C(uint64_t a1, __n128 a2)
{
  if (!qword_27CF592F8)
  {
    sub_220737714(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF592F8);
    }
  }
}

uint64_t sub_2207377F4(uint64_t a1, __n128 a2)
{
  sub_22073778C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220737850(uint64_t a1, __n128 a2)
{
  if (!qword_27CF59300)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8], a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59300);
    }
  }
}

uint64_t sub_2207378D0(uint64_t a1, uint64_t a2)
{
  sub_2204569E0(0, &qword_28127EDF0, MEMORY[0x277D6C670]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220737950(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      [v5 accessibilityFrame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v7 accessibilityFrame];
      v22.origin.x = v16;
      v22.origin.y = v17;
      v22.size.width = v18;
      v22.size.height = v19;
      v21.origin.x = v9;
      v21.origin.y = v11;
      v21.size.width = v13;
      v21.size.height = v15;
      CGRectUnion(v21, v22);

      return;
    }
  }

  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_accessibilityFrame);
}

uint64_t sub_220737BA4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_13;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v6 = Strong;
    [Strong contentOffset];
    v8 = v7;
    [v6 visibleSize];
    v10 = v8 + v9;
    [v6 contentInset];
    v12 = v10 - v11;
    [v6 contentSize];
    if (v12 != v13)
    {
      v14 = [v6 accessibilityScrollLeftPage];
      goto LABEL_11;
    }

LABEL_9:

    goto LABEL_13;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    goto LABEL_13;
  }

  v6 = v15;
  [v15 contentOffset];
  v17 = v16;
  [v6 contentInset];
  if (v17 == -v18)
  {
    goto LABEL_9;
  }

  v14 = [v6 accessibilityScrollRightPage];
LABEL_11:
  v19 = v14;

  if (v19)
  {
    return 1;
  }

LABEL_13:
  v21.receiver = v2;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_accessibilityScroll_, a1);
}

uint64_t OpenMainWindowCommandHandler.__allocating_init(navigator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s8StocksUI28OpenMainWindowCommandHandlerC6handle13commandCenter0I04with6sourcey03TeaB00fJ4Type_p_AI0F0CyytGytAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_22088D1DC();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_opt_self();
  v4 = [v3 sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = sub_22070791C();
  sub_220732A50();
  v7 = sub_2208918EC();

  v35 = v3;
  v40 = v7;
  v41 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22089243C();
    sub_22089190C();
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v39 = v9;
  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v7 < 0)
    {
      v21 = sub_22089248C();
      if (!v21 || (v43 = v21, swift_dynamicCast(), v20 = v44, v18 = v10, v19 = v11, !v44))
      {
LABEL_25:
        sub_22067DE08(v7);

        if (qword_281295418 == -1)
        {
LABEL_26:
          v28 = type metadata accessor for StocksActivity(0);
          __swift_project_value_buffer(v28, qword_281295420);
          v30 = v36;
          v29 = v37;
          v31 = v38;
          (*(v37 + 104))(v36, *MEMORY[0x277D6E5A0], v38);
          sub_22088B01C();
          (*(v29 + 8))(v30, v31);
          return;
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_25;
          }

          v17 = *(v8 + 8 * v18);
          ++v16;
          if (v17)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    v42 = v10;
    v22 = [v20 session];
    v23 = sub_220891B7C();
    v25 = v24;

    if (v25)
    {
      break;
    }

LABEL_8:

    v10 = v18;
    v11 = v19;
  }

  if (v23 != 0x756F59726F46 || v25 != 0xE600000000000000)
  {
    v27 = sub_2208928BC();

    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

LABEL_28:
  sub_22067DE08(v7);

  v32 = [v35 sharedApplication];
  v33 = [v20 session];
  [v32 requestSceneSessionActivation:v33 userActivity:0 options:0 errorHandler:0];
}

BOOL sub_2207384A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22088ED0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  sub_22088EC5C();
  sub_22088EC4C();
  v14 = (*(v10 + 88))(v13, v9);
  v15 = v14 == *MEMORY[0x277D2D4F0];
  if (v14 != *MEMORY[0x277D2D4F0] && v14 != *MEMORY[0x277D2D508])
  {
    if (v14 == *MEMORY[0x277D2D4F8])
    {
      return 0;
    }

    if (v14 == *MEMORY[0x277D2D520] || v14 == *MEMORY[0x277D2D528] || v14 == *MEMORY[0x277D2D510] || v14 == *MEMORY[0x277D2D518])
    {
      return 1;
    }
  }

  (*(v10 + 8))(v13, v9);
  return v15;
}

void sub_220738654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v108 = a7;
  v109 = a8;
  *&v105 = a5;
  v92 = a4;
  v110 = a1;
  v11 = sub_22088516C();
  v104 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v103 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088ED0C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v99 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088986C();
  v101 = *(v17 - 8);
  v102 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v100 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22088947C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v20);
  v93 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22088946C();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v22);
  v96 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22088954C();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v24);
  v89 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2208890BC();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v26);
  v85 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088949C();
  v88 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207396B0(0, &qword_281296CA8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v78 - v34;
  v36 = sub_22088EF3C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v107 = Strong;
    v111 = a6;
    v112 = v108;
    v113 = v109;
    v114 = a9;
    v42 = sub_22088EC5C();
    sub_22088EC3C();
    v43 = (*(v37 + 48))(v35, 1, v36);
    v45 = &unk_220899000;
    v84 = v11;
    v83 = a3;
    v106 = v42;
    if (v43 == 1)
    {
      sub_220739624(v35, v44);
      LODWORD(v109) = *MEMORY[0x277CEAD18];
      v46 = 0x80000002208D1EB0;
LABEL_14:
      v108 = v46;

      v60 = v89;
      sub_22088953C();
      sub_2207396B0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v62 = v61;
      v63 = sub_220886F8C();
      v87 = v63;
      v64 = *(v63 - 8);
      v92 = *(v64 + 72);
      v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v86 = v62;
      v66 = swift_allocObject();
      v105 = v45[54];
      *(v66 + 16) = v105;
      v88 = *(v64 + 104);
      v67 = v109;
      (v88)(v66 + v65, v109, v63);
      sub_220739714(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
      v68 = v91;
      sub_220886F1C();

      (*(v90 + 8))(v60, v68);
      (*(v94 + 16))(v93, v107 + qword_2812848C8, v95);
      LODWORD(v109) = v67;
      v69 = v96;
      sub_22088945C();
      v70 = swift_allocObject();
      *(v70 + 16) = v105;
      v71 = v87;
      v72 = v88;
      (v88)(v70 + v65, v67, v87);
      sub_220739714(&qword_2812984E8, MEMORY[0x277D68570], MEMORY[0x277D68568]);
      v73 = v98;
      sub_220886F1C();

      (*(v97 + 8))(v69, v73);
      sub_22088EC4C();
      v74 = v100;
      sub_22088985C();
      v75 = swift_allocObject();
      *(v75 + 16) = v105;
      v72(v75 + v65, v109, v71);
      sub_220739714(&qword_281298448, MEMORY[0x277D68830], MEMORY[0x277D68828]);
      v76 = v102;
      sub_220886F1C();

      (*(v101 + 8))(v74, v76);
      sub_22088996C();
      v77 = v103;
      sub_22088EC2C();
      sub_220739714(&qword_2812983F8, MEMORY[0x277D68908], MEMORY[0x277D68900]);
      sub_220886EDC();

      (*(v104 + 8))(v77, v84);
      return;
    }

    (*(v37 + 32))(v40, v35, v36);
    sub_22088EF2C();
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v47 > -2147483650.0)
    {
      if (v47 < 2147483650.0)
      {
        sub_22088948C();
        sub_2207396B0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v49 = v48;
        v50 = sub_220886F8C();
        v51 = *(v50 - 8);
        v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v80 = *(v51 + 72);
        v81 = v49;
        v53 = swift_allocObject();
        v78 = xmmword_220899360;
        *(v53 + 16) = xmmword_220899360;
        v54 = *(v51 + 104);
        LODWORD(v109) = *MEMORY[0x277CEAD18];
        v82 = v50;
        v79 = v54;
        v54(v53 + v52);
        sub_220739714(&qword_2812984E0, MEMORY[0x277D685A0], MEMORY[0x277D68598]);
        v108 = 0x80000002208D1EB0;
        sub_220886F1C();

        (*(v88 + 8))(v31, v28);
        sub_22088EF1C();
        if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v55 > -2147483650.0)
          {
            if (v55 < 2147483650.0)
            {
              sub_22088EF1C();
              if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v56 > -2147483650.0)
                {
                  if (v56 < 2147483650.0)
                  {
                    v57 = v85;
                    sub_2208890AC();
                    v58 = swift_allocObject();
                    *(v58 + 16) = v78;
                    v79(v58 + v52, v109, v82);
                    sub_220739714(&qword_281298588, MEMORY[0x277D68220], MEMORY[0x277D68218]);
                    v46 = v108;
                    v59 = v87;
                    sub_220886F1C();

                    (*(v86 + 8))(v57, v59);
                    (*(v37 + 8))(v40, v36);
                    v45 = &unk_220899000;
                    goto LABEL_14;
                  }

LABEL_24:
                  __break(1u);
                  return;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_220739478()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = qword_2812848C8;
  v2 = sub_22088947C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2207394E8()
{
  sub_220739478();

  return swift_deallocClassInstance();
}

void sub_220739550(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_22088EC5C() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_220738654(a1, v1[6], v1 + v8, *v9, v9[1], v3, v4, v5, v6);
}

uint64_t sub_220739624(uint64_t a1, __n128 a2)
{
  sub_2207396B0(0, &qword_281296CA8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2207396B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220739714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22073975C(double *a1, char *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v8 = *(*v6 + 40);
  v7 = *(*v6 + 48);
  __swift_project_boxed_opaque_existential_1((*v6 + 16), v8);
  v9 = (*(*(v7 + 16) + 56))(v8);
  [a2 setBackgroundColor_];

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  [a2 setFrame_];
  v14 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_titleLabel];
  [v14 &off_27844B978];
  sub_22046DA2C(v3 + 16, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_220884CAC();
  v19 = v18;

  v20 = sub_2205ED524(v17, v19);

  [v14 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v51);
  [v14 setTextAlignment_];
  [v14 setNumberOfLines_];
  v50 = v14;
  [v14 setLineBreakMode_];
  v21 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_descriptionLabel];
  [v21 setFrame_];
  sub_22046DA2C(v3 + 16, v51);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v22 = [v15 bundleForClass_];
  v23 = sub_220884CAC();
  v25 = v24;

  v26 = sub_2205ED7AC(v23, v25);

  [v21 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v51);
  [v21 setTextAlignment_];
  [v21 setNumberOfLines_];
  [v21 setLineBreakMode_];
  v27 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_button];
  v28 = [v15 bundleForClass_];
  sub_220884CAC();

  v29 = sub_22089132C();

  [v27 setTitle:v29 forState:{0, 0x80000002208D1F50}];

  v30 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v31 = [v27 titleLabel];
  if (v31)
  {
    v32 = v31;
    v33 = *(v30 + 56);
    if (v33)
    {
      v34 = *(v30 + 56);
    }

    else
    {
      v34 = *MEMORY[0x277D76840];
      v33 = 0;
    }

    v35 = *MEMORY[0x277D767F8];
    v36 = v33;
    if (sub_220891DDC())
    {
      v37 = v35;

      v34 = v37;
    }

    v38 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v39 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v38];

    [v32 setFont_];
  }

  v40 = [v27 titleLabel];
  [v40 setTextAlignment_];

  [v27 sizeToFit];
  [v50 frame];
  Width = CGRectGetWidth(v53);
  [v21 frame];
  v42 = CGRectGetWidth(v54);
  [v27 frame];
  v43 = CGRectGetWidth(v55);
  v44 = 0.0;
  if (*(a1 + 145))
  {
    sub_220891A6C();
    v44 = v45;
  }

  if (Width > v42)
  {
    v46 = Width;
  }

  else
  {
    v46 = v42;
  }

  if (v46 > v43)
  {
    v47 = v46;
  }

  else
  {
    v47 = v43;
  }

  v56.origin.x = v10;
  v56.origin.y = v11;
  v56.size.width = v12;
  v56.size.height = v13;
  [v27 setFrame_];
  return [v27 setHidden_];
}

uint64_t sub_220739DC4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_220739DFC()
{
  result = qword_27CF59328;
  if (!qword_27CF59328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF59328);
  }

  return result;
}

id sub_220739E48(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8StocksUI17WebViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v4, v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v19 = v5;
  v20 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v18);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v18, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v9 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v10 = *v9;
  v12 = *(*v9 + 40);
  v11 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
  v13 = (*(*(v11 + 16) + 136))(v12);
  [v2 setPreferredControlTintColor_];

  v15 = v10[5];
  v14 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v15);
  v16 = (*(*(v14 + 16) + 80))(v15);
  [v2 setPreferredBarTintColor_];

  return [v2 setDismissButtonStyle_];
}

uint64_t sub_22073A080(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v32[0] = sub_22088519C();
  v6 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0], v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebViewSession(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v19, v20).n128_u64[0];
  v23 = v32 - v22;
  v35.receiver = v3;
  v35.super_class = ObjectType;
  v32[1] = ObjectType;
  objc_msgSendSuper2(&v35, sel_viewDidAppear_, a1 & 1, v21);
  v24 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(&v3[v24], v23);
  v25 = (*(v11 + 48))(v23, 1, v10);
  sub_22073BAC0(v23, sub_22073AA14);
  if (v25 == 1)
  {
    sub_22088518C();
    v26 = sub_22088517C();
    v28 = v27;
    (*(v6 + 8))(v9, v32[0]);
    sub_22088515C();
    *v14 = v26;
    v14[1] = v28;
    *(v14 + *(v10 + 24)) = 0;
    v29 = &v3[OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator];
    swift_beginAccess();
    v30 = *(v29 + 3);
    if (v30)
    {
      __swift_project_boxed_opaque_existential_1(v29, v30);
      sub_220692420(v14);
    }

    sub_22073BA5C(v14, v18);
    (*(v11 + 56))(v18, 0, 1, v10);
    swift_beginAccess();
    sub_22073B9F0(v18, &v3[v24]);
    swift_endAccess();
  }

  if (*&v3[OBJC_IVAR____TtC8StocksUI17WebViewController_navigator])
  {
    sub_220448CB8(&qword_27CF59368, type metadata accessor for WebViewController, &unk_2208B0A94);

    sub_22088B00C();
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
  }

  return sub_2206F9DA4(v33, &qword_27CF59370, &qword_27CF59378, MEMORY[0x277D6C9C0]);
}

double sub_22073A47C(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v10, v11).n128_u64[0];
  v14 = &v22 - v13;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_viewDidDisappear_, a1 & 1, v12);
  v15 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(&v3[v15], v14);
  v16 = type metadata accessor for WebViewSession(0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v14, 1, v16);
  sub_22073BAC0(v14, sub_22073AA14);
  if (v18 != 1)
  {
    v20 = &v3[OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator];
    swift_beginAccess();
    v21 = *(v20 + 3);
    if (v21)
    {
      __swift_project_boxed_opaque_existential_1(v20, v21);

      sub_22088726C();
    }

    (*(v17 + 56))(v9, 1, 1, v16);
    swift_beginAccess();
    sub_22073B9F0(v9, &v3[v15]);
    swift_endAccess();
  }

  return result;
}

uint64_t type metadata accessor for WebViewController(uint64_t a1)
{
  result = qword_27CF59350;
  if (!qword_27CF59350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22073A964(uint64_t a1, __n128 a2)
{
  sub_22073AA14(319);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22073AA14(uint64_t a1)
{
  if (!qword_27CF59360)
  {
    type metadata accessor for WebViewSession(255);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF59360);
    }
  }
}

double sub_22073AA84@<D0>(uint64_t a1@<X8>)
{
  sub_22088CD7C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_22073AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22088F0DC() & 1) == 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    v13 = (*(v5 + 88))(v8, v4);
    if (v13 == *MEMORY[0x277D6D980])
    {
      v14 = MEMORY[0x277D6E208];
    }

    else
    {
      if (v13 != *MEMORY[0x277D6D978])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      v14 = MEMORY[0x277D6E210];
    }

    v15 = *v14;
    v16 = sub_22088CC1C();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    v17 = *MEMORY[0x277D6E220];
    v18 = sub_22088CC2C();
    return (*(*(v18 - 8) + 104))(a2, v17, v18);
  }

  v9 = *MEMORY[0x277D6E1F0];
  v10 = sub_22088CC2C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_22073AD54@<X0>(uint64_t a1@<X8>)
{
  [v1 dismissViewControllerAnimated:0 completion:0];
  v3 = *MEMORY[0x277D6E350];
  v4 = sub_22088CD4C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

double sub_22073ADE0()
{
  v1 = v0;
  v27 = sub_22088519C();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebViewSession(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - v17;
  v19 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v1 + v19, v18);
  v20 = (*(v7 + 48))(v18, 1, v6);
  sub_22073BAC0(v18, sub_22073AA14);
  if (v20 == 1)
  {
    sub_22088518C();
    v22 = sub_22088517C();
    v24 = v23;
    (*(v2 + 8))(v5, v27);
    sub_22088515C();
    *v10 = v22;
    v10[1] = v24;
    *(v10 + *(v6 + 24)) = 1;
    v25 = (v1 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator);
    swift_beginAccess();
    v26 = v25[3];
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_220692420(v10);
    }

    sub_22073BA5C(v10, v14);
    (*(v7 + 56))(v14, 0, 1, v6);
    swift_beginAccess();
    sub_22073B9F0(v14, v1 + v19);
    swift_endAccess();
  }

  return result;
}

double sub_22073B0C4()
{
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22073BAC0(v4, sub_22073AA14);
  }

  else
  {
    sub_22073BA5C(v4, v9);
    v12 = v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator;
    swift_beginAccess();
    if (*(v12 + 24))
    {
      sub_22046DA2C(v12, v16);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v13 = off_28341AA40[0];
      v14 = type metadata accessor for WebViewCoordinator();
      v13(v9, v14, &off_28341AA30);
      sub_22073BAC0(v9, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_22073BAC0(v9, type metadata accessor for WebViewSession);
      swift_endAccess();
    }
  }

  return result;
}

double sub_22073B2F4()
{
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22073BAC0(v4, sub_22073AA14);
  }

  else
  {
    sub_22073BA5C(v4, v9);
    v12 = v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator;
    swift_beginAccess();
    if (*(v12 + 24))
    {
      sub_22046DA2C(v12, v16);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v13 = off_28341AA48;
      v14 = type metadata accessor for WebViewCoordinator();
      v13(v9, v14, &off_28341AA30);
      sub_22073BAC0(v9, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_22073BAC0(v9, type metadata accessor for WebViewSession);
      swift_endAccess();
    }
  }

  return result;
}

double sub_22073B524()
{
  sub_22073AA14(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v9, v8);
  v10 = type metadata accessor for WebViewSession(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_22073BAC0(v8, sub_22073AA14);
  if (v12 != 1)
  {
    v14 = (v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator);
    swift_beginAccess();
    v15 = v14[3];
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);

      sub_22088726C();
    }

    (*(v11 + 56))(v4, 1, 1, v10);
    swift_beginAccess();
    sub_22073B9F0(v4, v0 + v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22073B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DB0](a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_22073B7A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC0](a1, a2, ObjectType);
}

uint64_t sub_22073B808(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DD0](a1, a2, ObjectType);
}

uint64_t sub_22073B860(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DE8](a1, ObjectType);
}

uint64_t sub_22073B8B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DA8](ObjectType);
}

uint64_t sub_22073B934(uint64_t a1)
{
  result = sub_220448CB8(&qword_27CF59368, type metadata accessor for WebViewController, &unk_2208B0A94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22073B98C(uint64_t a1, uint64_t a2)
{
  sub_22073AA14(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073B9F0(uint64_t a1, uint64_t a2)
{
  sub_22073AA14(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073BA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebViewSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073BAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22073BB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088A0EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  result = sub_22052C400(a1);
  if ((v17 & 1) == 0)
  {
    v18 = result;
    sub_22073BF78(a2, a1, sub_2204FA2D0, &qword_281297E70, sub_2204FA2D0);
    sub_2204FA2D0(0);
    sub_22088B2AC();
    sub_22075360C(v7);
    sub_220503BCC(v15, type metadata accessor for ForYouFeedSectionDescriptor);
    result = sub_22088B2BC();
    if (v18 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v18 <= 0x7FFFFFFF)
    {
      sub_22088B2AC();
      sub_2207538C8();
      sub_220503BCC(v11, type metadata accessor for ForYouFeedSectionDescriptor);
      return sub_22088A0BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22073BD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_22088A0EC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220887F2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = v25 - v17;
  result = sub_2206D1A58(a1, v16);
  if ((v20 & 1) == 0)
  {
    v21 = result;
    v25[3] = sub_22073BF78(a2, a1, sub_2206D32EC, &unk_27CF593A0, sub_2206D32EC);
    sub_2206D32EC(0, v22);
    sub_22088B2AC();
    v26 = v8;
    sub_2205B90F8(v8, v23);
    v24 = *(v10 + 8);
    v24(v18, v9);
    result = sub_22088B2BC();
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      sub_22088B2AC();
      v24(v13, v9);
      return sub_22088A0BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22073BF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088D5BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052063C(a1, v12, sub_2207417F4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_220503BCC(v12, sub_2207417F4);
    a3(0);
    sub_220454908(a4, a5, MEMORY[0x277D6D730]);
    sub_22089193C();
    sub_22089199C();
    result = sub_22089198C();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v19 = result;
    if (result <= 0x7FFFFFFF)
    {
      return v19;
    }

    __break(1u);
  }

  (*(v14 + 32))(v17, v12, v13);
  v19 = sub_22088D5AC();
  result = (*(v14 + 8))(v17, v13);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    return v19;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_22073C1E4(uint64_t a1)
{
  v72 = a1;
  v88 = sub_22088FF2C();
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v2);
  v93 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v89 = v65 - v6;
  v71 = sub_22088CE3C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v7);
  v67 = v8;
  v68 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_220889B9C();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v66 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[1] = v10;
  MEMORY[0x28223BE20](v11, v12);
  v76 = v65 - v13;
  sub_2204FA2D0(0);
  v15 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071B7F0(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = v65 - v32;
  v75 = v1;
  v94[4] = *(v1 + 64);
  sub_220488310(0);
  sub_220454908(&qword_281297C80, sub_220488310, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  v74 = v26;
  v34 = *(v26 + 16);
  v73 = v33;
  v34(v29, v33, v25);
  sub_220454908(&qword_281296EC0, sub_2204F1480, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v35 = *(v20 + 44);
  v36 = v88;
  v37 = sub_220454908(&unk_281296EB0, sub_2204F1480, MEMORY[0x277D6EC70]);
  v38 = 0;
  v84 = v15;
  v85 = (v86 + 16);
  v90 = v91 + 16;
  v92 = (v91 + 32);
  v87 = (v91 + 8);
  v78 = (v86 + 8);
  v79 = v37;
  v82 = v23;
  v83 = v18;
  v80 = v35;
  v81 = v25;
  while (1)
  {
    v86 = v38;
    sub_22089199C();
    if (*&v23[v35] == v94[0])
    {
      break;
    }

    v42 = sub_2208919BC();
    (*v85)(v18);
    v42(v94, 0);
    sub_2208919AC();
    sub_220454908(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B1694);
    sub_220454908(&qword_281293318, type metadata accessor for ForYouFeedModel, &unk_2208BA9A0);
    v43 = sub_22088B37C();
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = 0;
      v39 = MEMORY[0x277D84F90];
      v46 = v89;
      while (v45 < *(v43 + 16))
      {
        v47 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v48 = *(v91 + 72);
        (*(v91 + 16))(v46, v43 + v47 + v48 * v45, v36);
        if (sub_22088FF1C())
        {
          swift_unknownObjectRelease();
          v49 = *v92;
          (*v92)(v93, v46, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94[0] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22070C19C(0, *(v39 + 16) + 1, 1);
            v39 = v94[0];
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_22070C19C((v51 > 1), v52 + 1, 1);
            v39 = v94[0];
          }

          *(v39 + 16) = v52 + 1;
          v36 = v88;
          v49((v39 + v47 + v52 * v48), v93, v88);
          v46 = v89;
        }

        else
        {
          (*v87)(v46, v36);
        }

        if (v44 == ++v45)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v39 = MEMORY[0x277D84F90];
LABEL_3:
    v18 = v83;
    (*v78)(v83, v84);

    v40 = *(v39 + 16);

    v41 = __OFADD__(v86, v40);
    v38 = v86 + v40;
    v25 = v81;
    v23 = v82;
    v35 = v80;
    if (v41)
    {
      goto LABEL_20;
    }
  }

  sub_220503BCC(v23, sub_22071B7F0);
  (*(v74 + 8))(v73, v25);
  v53 = v75;
  __swift_project_boxed_opaque_existential_1((v75 + 296), *(v75 + 320));
  sub_22088618C();
  if (v86 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v86 <= 0x7FFFFFFF)
  {
    v54 = v76;
    sub_220889B8C();
    v93 = *(v53 + 16);
    v55 = v69;
    v56 = v68;
    v57 = v71;
    (*(v69 + 16))(v68, v72, v71);
    v58 = v70;
    v59 = v66;
    (*(v70 + 16))(v66, v54, v77);
    v60 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v61 = (v67 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (*(v58 + 80) + v61 + 8) & ~*(v58 + 80);
    v63 = swift_allocObject();
    (*(v55 + 32))(v63 + v60, v56, v57);
    *(v63 + v61) = v53;
    v64 = v77;
    (*(v58 + 32))(v63 + v62, v59, v77);

    sub_22088726C();

    (*(v58 + 8))(v76, v64);
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_22073CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  *&v61 = a3;
  v72 = a1;
  v5 = sub_22088516C();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088944C();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v58 = &v55 - v13;
  v59 = sub_220886A4C();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v14);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088943C();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088A06C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088D81C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088928C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  sub_22088CE0C();
  v34 = (*(v25 + 88))(v28, v24);
  if (v34 == *MEMORY[0x277D6E830])
  {
    v35 = MEMORY[0x277D68F60];
  }

  else
  {
    v35 = MEMORY[0x277D68F68];
    if (v34 != *MEMORY[0x277D6E840] && v34 != *MEMORY[0x277D6E848] && v34 != *MEMORY[0x277D6E838])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  (*(v20 + 104))(v23, *v35, v19);
  sub_22088927C();
  sub_220454908(&qword_281298540, MEMORY[0x277D683C0], MEMORY[0x277D683B8]);
  sub_220886F1C();
  (*(v30 + 8))(v33, v29);
  __swift_project_boxed_opaque_existential_1((v61 + 256), *(v61 + 280));
  v36 = v56;
  sub_2208863EC();
  v37 = sub_2208869AC();
  v38 = MEMORY[0x277D68560];
  if ((v37 & 1) == 0)
  {
    v38 = MEMORY[0x277D68558];
  }

  v40 = v62;
  v39 = v63;
  v41 = v58;
  (*(v62 + 104))(v58, *v38, v63);
  (*(v40 + 16))(v60, v41, v39);
  v42 = v64;
  sub_22088942C();
  (*(v40 + 8))(v41, v39);
  (*(v57 + 8))(v36, v59);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v63 = v43;
  v44 = sub_220886F8C();
  v45 = *(v44 - 8);
  v62 = *(v45 + 72);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  v61 = xmmword_220899360;
  *(v47 + 16) = xmmword_220899360;
  v48 = *MEMORY[0x277CEAD18];
  v60 = *(v45 + 104);
  (v60)(v47 + v46, v48, v44);
  sub_220454908(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v49 = v66;
  sub_220886F1C();

  (*(v65 + 8))(v42, v49);
  v50 = swift_allocObject();
  *(v50 + 16) = v61;
  (v60)(v50 + v46, v48, v44);
  sub_220889B9C();
  sub_220454908(&qword_281298380, MEMORY[0x277D68AD0], MEMORY[0x277D68AC8]);
  sub_220886F1C();

  sub_2208893EC();
  v51 = v68;
  sub_22088CE2C();
  sub_220454908(&qword_2812984F8, MEMORY[0x277D68488], MEMORY[0x277D68470]);
  sub_220886ECC();
  v52 = v71;
  v53 = *(v70 + 8);
  v53(v51, v71);
  sub_22088CE1C();
  sub_220886EDC();
  return (v53)(v51, v52);
}

void sub_22073D470(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v3 = v2;
  v96 = *(v2 - 8);
  v90 = *(v96 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v95 = &v80 - v5;
  v6 = sub_22089049C();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v88 = v8;
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v103 = &v80 - v11;
  sub_2204547E0(0);
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v100 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088FFFC();
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v94 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088FEFC();
  v19 = *(v18 - 8);
  v84 = v18;
  v85 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v83 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22088698C();
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v22);
  v93 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v99 = &v80 - v26;
  sub_220454720(0);
  v28 = v27;
  v98 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C(0);
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v43 = a1;
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v38 + 8))(v41, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        return;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {

      sub_220458918(0);
      v46 = *(v45 + 48);
      v47 = sub_22089030C();
      (*(*(v47 - 8) + 8))(&v35[v46], v47);
      return;
    }

    goto LABEL_9;
  }

  v49 = v93;
  v48 = v94;
  v50 = v31;
  v51 = v28;
  v53 = v95;
  v52 = v96;
  v54 = v103;
  v80 = v42;
  v55 = v43;
  if (EnumCaseMultiPayload)
  {
    v56 = v97;
    if (EnumCaseMultiPayload == 1)
    {
      (*(v101 + 32))(v100, v35, v102);
      v57 = v54;
      sub_22088FF6C();
      v99 = *(v56 + 16);
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v52;
      v60 = v53;
      v61 = v53;
      v62 = v80;
      (*(v52 + 16))(v61, v43, v80);
      v64 = v91;
      v63 = v92;
      v65 = v89;
      (*(v91 + 16))(v89, v57, v92);
      v66 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v67 = (v90 + *(v64 + 80) + v66) & ~*(v64 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v58;
      (*(v59 + 32))(v68 + v66, v60, v62);
      (*(v64 + 32))(v68 + v67, v65, v63);

      sub_22088726C();

      (*(v64 + 8))(v103, v63);
      (*(v101 + 8))(v100, v102);

      return;
    }

LABEL_9:
    sub_220503BCC(v35, type metadata accessor for ForYouFeedModel);
    return;
  }

  v69 = v50;
  v70 = v35;
  v71 = v51;
  (*(v98 + 32))(v50, v70, v51);
  sub_22088FF6C();
  v72 = v48;
  sub_22088FF7C();
  v73 = v49;
  sub_22088FF6C();
  sub_2208868DC();
  v74 = *(v82 + 8);
  v75 = v73;
  v76 = v81;
  v74(v75, v81);
  sub_22088FF8C();
  v77 = v83;
  sub_22088FFEC();
  swift_unknownObjectRelease();
  v78.n128_f64[0] = (*(v86 + 8))(v72, v87);
  v79 = v99;
  sub_22073DD28(v55, v99, v77, v78);
  (*(v85 + 8))(v77, v84);
  v74(v79, v76);
  (*(v98 + 8))(v69, v71);
}

uint64_t sub_22073DD28(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v34 = a3;
  v38 = a2;
  v31 = a1;
  v33 = sub_22088FEFC();
  v37 = *(v33 - 8);
  v35 = *(v37 + 64);
  MEMORY[0x28223BE20](v33, v6);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088698C();
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v13 = v12;
  v28 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v18 = &v27 - v17;
  v32 = v5[2];
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v18, v31, v13);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v8);
  v20 = v37;
  v21 = v33;
  (*(v37 + 16))(v36, v34, v33);
  v22 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v23 = (v15 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = (v10 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  (*(v14 + 32))(v25 + v22, v18, v28);
  (*(v9 + 32))(v25 + v23, v30, v29);
  (*(v37 + 32))(v25 + v24, v36, v21);

  sub_22088726C();

  __swift_project_boxed_opaque_existential_1(v5 + 11, v5[14]);
  sub_2208863AC();
  __swift_project_boxed_opaque_existential_1(v5 + 27, v5[30]);
  sub_2208868DC();
  sub_220887DDC();
  return swift_unknownObjectRelease();
}

uint64_t sub_22073E0E0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_22088516C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0(0);
  v37 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088A0DC();
  v23 = *(v22 - 8);
  v39 = v22;
  v40 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220516884(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  v38 = a2;
  sub_22088CDDC();
  sub_22088CDCC();
  v27 = sub_22088D5BC();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  sub_22073BB24(v15, v10);
  sub_220503BCC(v10, sub_2207417F4);
  (*(v12 + 8))(v15, v37);
  (*(v18 + 8))(v21, v17);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v28 = sub_220886F8C();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_220899360;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277CEAD18], v28);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v32 = v39;
  sub_220886F1C();

  (*(v40 + 8))(v26, v32);
  sub_22088991C();
  sub_22088CDEC();
  sub_220454908(&qword_281298418, MEMORY[0x277D688A8], MEMORY[0x277D688A0]);
  sub_220886ECC();
  v33 = v43;
  v34 = *(v42 + 8);
  v34(v6, v43);
  sub_22088CDBC();
  sub_220886EDC();
  return (v34)(v6, v33);
}

uint64_t sub_22073E66C(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a1;
  v54 = a3;
  v41 = sub_22088A10C();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208891DC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220889BFC();
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088993C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  ObjectType = swift_getObjectType();
  sub_2206F6C58();
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v49 = v18;
  v47 = sub_220886F8C();
  v19 = *(v47 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v48 = xmmword_220899360;
  *(v21 + 16) = xmmword_220899360;
  v46 = *MEMORY[0x277CEAD18];
  v45 = *(v19 + 104);
  v45(v21 + v20);
  sub_220454908(&qword_27CF58950, MEMORY[0x277D688C8], MEMORY[0x277D688C0]);
  sub_220886F1C();

  (*(v14 + 8))(v17, v13);
  v22 = v54;
  v23 = v52;
  v24 = v50;
  sub_2206F69A0(*(v54 + 168));
  v25 = swift_allocObject();
  *(v25 + 16) = v48;
  (v45)(v25 + v20, v46, v47);
  sub_220454908(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v26 = v55;
  sub_220886F1C();

  (*(v56 + 8))(v23, v26);
  v27 = [v24 sourceChannel];
  if (v27)
  {
    v28 = v27;
    __swift_project_boxed_opaque_existential_1((v22 + 128), *(v22 + 152));
    v29 = v42;
    sub_2206EC95C(v28, v30);
    sub_220454908(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v31 = v44;
    sub_2208872CC();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v29, v31);
  }

  if ([v24 respondsToSelector_])
  {
    v32 = [v24 parentIssue];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 identifier];
      sub_22089136C();

      v35 = v39;
      sub_22088A0FC();
      sub_220454908(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v36 = v41;
      sub_2208872CC();

      (*(v40 + 8))(v35, v36);
    }
  }

  sub_220889EBC();
  sub_220454908(&unk_27CF59380, MEMORY[0x277D68E00], MEMORY[0x277D68DF8]);
  memset(v57, 0, 32);
  sub_220886F3C();
  return sub_220503BCC(v57, sub_22055F87C);
}

uint64_t sub_22073ED74(uint64_t a1)
{
  sub_22051D97C(0);
  v3 = v2;
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v68 = v5;
  v74 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480(0);
  v72 = v6;
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v69 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v78 = v60 - v11;
  v77 = sub_22088698C();
  v70 = *(v77 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v77, v13);
  v73 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v79 = v60 - v16;
  sub_220454720(0);
  v76 = v17;
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v60 - v22;
  v24 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088AD8C();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v62 = v18;
    v63 = v12;
    v65 = a1;
    v66 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v7;
    v32 = v23;
    v33 = v80;
    v34 = v78;
    v35 = v79;
    v36 = v76;
    v37 = v77;
    v67 = v3;
    v38 = v75;
    if (!result)
    {
      v39 = *(v81 + 32);
      v60[2] = v81 + 32;
      v61 = v39;
      v40 = v32;
      v39(v32, v27, v76);
      v41 = v35;
      v42 = v36;
      v60[0] = v40;
      sub_22088FF6C();
      v82 = *(v33 + 64);
      sub_220488310(0);
      sub_220454908(&qword_281297C80, sub_220488310, MEMORY[0x277D6D8C8]);
      v43 = v34;
      sub_22088BF9C();
      v60[1] = *(v33 + 16);
      v44 = v70;
      (*(v70 + 16))(v73, v41, v37);
      v45 = v38;
      v46 = v69;
      (*(v38 + 16))(v69, v43, v72);
      v47 = v71;
      (*(v71 + 16))(v74, v65, v67);
      v48 = v81;
      (*(v81 + 16))(v66, v40, v42);
      v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v50 = (v63 + *(v45 + 80) + v49) & ~*(v45 + 80);
      v51 = (v64 + *(v47 + 80) + v50) & ~*(v47 + 80);
      v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (*(v48 + 80) + v52 + 8) & ~*(v48 + 80);
      v54 = swift_allocObject();
      v55 = v54 + v49;
      v56 = v77;
      (*(v44 + 32))(v55, v73, v77);
      v57 = v46;
      v58 = v72;
      (*(v45 + 32))(v54 + v50, v57, v72);
      (*(v47 + 32))(v54 + v51, v74, v67);
      *(v54 + v52) = v80;
      v59 = v76;
      v61(v54 + v53, v66, v76);

      sub_22088726C();

      (*(v45 + 8))(v78, v58);
      (*(v44 + 8))(v79, v56);
      return (*(v81 + 8))(v60[0], v59);
    }
  }

  else if (result > 4)
  {
    if (result != 5)
    {
      return result;
    }
  }

  else if (result == 3)
  {

    sub_220458918(0);
    v30 = *(v29 + 48);
    v31 = sub_22089030C();
    return (*(*(v31 - 8) + 8))(&v27[v30], v31);
  }

  return sub_220503BCC(v27, type metadata accessor for ForYouFeedModel);
}

uint64_t sub_22073F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v123 = a6;
  v148 = a3;
  v149 = a5;
  v152 = a4;
  v126 = sub_220889BFC();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v9);
  v124 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22088698C();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v11);
  v112 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22088FFFC();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v13);
  v113 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22088FEFC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v15);
  v111 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22088A04C();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v17);
  v120 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22088A10C();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v19);
  v102 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2208891DC();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v21);
  v105 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2208899AC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v23);
  v108 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088971C();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v25);
  v127 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v147 = &v102 - v29;
  sub_2204FA2D0(0);
  v145 = v30;
  v146 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v130 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v144 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_22088A0DC();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v36);
  v131 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_22088916C();
  v153 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v38);
  v151 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22088A02C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v40);
  v139 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22088519C();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v42);
  v135 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22088A01C();
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v44);
  v136 = &v102 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2208895EC();
  v134 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = a2;
  sub_2208868DC();
  swift_getObjectType();
  sub_2206F61F0(v49);
  swift_unknownObjectRelease();
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v158 = v50;
  v51 = sub_220886F8C();
  v52 = *(v51 - 8);
  v159 = *(v52 + 72);
  v53 = *(v52 + 80);
  v54 = (v53 + 32) & ~v53;
  v55 = swift_allocObject();
  v160 = xmmword_220899360;
  *(v55 + 16) = xmmword_220899360;
  v154 = *MEMORY[0x277CEAD18];
  v157 = *(v52 + 104);
  v157(v55 + v54);
  sub_220454908(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v161 = a1;
  sub_220886F1C();

  (*(v134 + 8))(v49, v46);
  v56 = v135;
  sub_22088518C();
  sub_22088517C();
  (*(v137 + 8))(v56, v138);
  (*(v140 + 104))(v139, *MEMORY[0x277D68F28], v141);
  (*(v153 + 13))(v151, *MEMORY[0x277D682B8], v156);
  v57 = v136;
  sub_22088A00C();
  v156 = v53;
  v58 = swift_allocObject();
  *(v58 + 16) = v160;
  v141 = v54;
  v155 = v51;
  v151 = (v52 + 104);
  (v157)(v58 + v54, v154, v51);
  sub_220454908(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  v153 = "feedDismissingManager";
  v59 = v142;
  sub_220886F1C();

  (*(v143 + 8))(v57, v59);
  v60 = sub_22088D5BC();
  v61 = v144;
  (*(*(v60 - 8) + 56))();
  sub_22051D97C(0);
  sub_22088AD4C();
  sub_2204F1480(0);
  v62 = v147;
  v63 = v145;
  sub_22088E76C();
  v64 = v62;
  v65 = v146;

  result = (*(v65 + 48))(v62, 1, v63);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v67 = v130;
  (*(v65 + 32))(v130, v64, v63);
  v68 = v131;
  sub_22073BB24(v67, v61);
  (*(v65 + 8))(v67, v63);
  sub_220503BCC(v61, sub_2207417F4);
  v69 = v141;
  v70 = swift_allocObject();
  *(v70 + 16) = v160;
  v71 = *MEMORY[0x277CEAD10];
  v72 = v69;
  (v157)(v70 + v69, v71, v155);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8], MEMORY[0x277D68FD0]);
  v73 = v133;
  sub_220886F1C();

  (*(v132 + 8))(v68, v73);
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel, &unk_2208BAB20);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v74 = v127;
  sub_22088970C();
  v75 = swift_allocObject();
  *(v75 + 16) = v160;
  (v157)(v75 + v69, v71, v155);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v76 = v129;
  sub_220886F1C();

  (*(v128 + 8))(v74, v76);
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v77 = v108;
  sub_22088999C();
  v78 = swift_allocObject();
  *(v78 + 16) = v160;
  v79 = v155;
  v80 = v157;
  (v157)(v78 + v69, v71, v155);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v81 = v110;
  sub_220886F1C();

  (*(v109 + 8))(v77, v81);
  v82 = [sub_2208868DC() sourceChannel];
  swift_unknownObjectRelease();
  if (v82)
  {
    __swift_project_boxed_opaque_existential_1((v149 + 128), *(v149 + 152));
    v83 = v105;
    sub_2206EC95C(v82, v84);
    v85 = swift_allocObject();
    *(v85 + 16) = v160;
    (v80)(v85 + v69, v154, v79);
    sub_220454908(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v86 = v107;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v106 + 8))(v83, v86);
  }

  v87 = sub_2208868DC();
  if ([v87 respondsToSelector_])
  {
    v88 = [v87 parentIssue];
    swift_unknownObjectRelease();
    if (v88)
    {
      v89 = [v88 identifier];
      sub_22089136C();

      v90 = v102;
      sub_22088A0FC();
      sub_220454908(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v91 = v104;
      sub_2208872CC();

      (*(v103 + 8))(v90, v91);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_220454720(0);
  v92 = v113;
  sub_22088FF7C();
  v93 = v112;
  sub_22088FF6C();
  sub_2208868DC();
  (*(v116 + 8))(v93, v118);
  sub_22088FF8C();
  v94 = v111;
  sub_22088FFEC();
  swift_unknownObjectRelease();
  (*(v117 + 8))(v92, v119);
  v95 = v120;
  sub_220605740();
  (*(v114 + 8))(v94, v115);
  v96 = swift_allocObject();
  *(v96 + 16) = v160;
  v97 = v157;
  (v157)(v96 + v72, v154, v79);
  sub_220454908(&unk_2812982A0, MEMORY[0x277D68F38], MEMORY[0x277D68F30]);
  v98 = v122;
  sub_220886F1C();

  (*(v121 + 8))(v95, v98);
  sub_2208868DC();
  swift_getObjectType();
  v99 = v124;
  sub_2206F69A0(*(v149 + 168));
  swift_unknownObjectRelease();
  v100 = swift_allocObject();
  *(v100 + 16) = v160;
  (v97)(v100 + v72, v154, v155);
  sub_220454908(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v101 = v126;
  sub_220886F1C();

  (*(v125 + 8))(v99, v101);
  sub_220889DEC();
  sub_220454908(&qword_281298310, MEMORY[0x277D68D38], MEMORY[0x277D68D30]);
  memset(v162, 0, sizeof(v162));
  sub_220886F3C();
  return sub_220503BCC(v162, sub_22055F87C);
}