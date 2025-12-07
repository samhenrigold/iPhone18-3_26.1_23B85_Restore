uint64_t sub_226C08BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D61C();
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x28223BE20](v4);
  v133 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v136 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  MEMORY[0x28223BE20](v132);
  v10 = (&v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v119 - v15;
  v17 = sub_226D6D4AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v119 - v21;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](&v119 - v24);
  MEMORY[0x28223BE20](v25);
  v138 = &v119 - v30;
  if (a1 < 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F668);
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9CC();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_12;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Expected failedAttemptCount > 0";
    goto LABEL_11;
  }

  v126 = v28;
  v127 = v26;
  v129 = v22;
  v125 = v29;
  v131 = v27;
  sub_226AF265C(a2, v16);
  v130 = *(v18 + 48);
  if (v130(v16, 1, v17) == 1)
  {
    sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v31 = sub_226D6E07C();
    __swift_project_value_buffer(v31, qword_28105F668);
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9CC();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_12;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Expected non-nil lastFailedAttemptDate";
LABEL_11:
    _os_log_impl(&dword_226AB4000, v32, v33, v35, v34, 2u);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
LABEL_12:

    sub_226C077F8();
    swift_willThrowTypedImpl();
    return v37 & 1;
  }

  v124 = v18;
  v121 = *(v18 + 32);
  v122 = v18 + 32;
  v121(v138, v16, v17);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v38 = sub_226D6E07C();
  v39 = __swift_project_value_buffer(v38, qword_28105F668);
  sub_226C09A10(v137, v10);
  v128 = v39;
  v40 = sub_226D6E05C();
  v41 = sub_226D6E9EC();
  v42 = os_log_type_enabled(v40, v41);
  v123 = v13;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v120 = v17;
    v44 = v43;
    *v43 = 134218240;
    *(v43 + 4) = a1;
    *(v43 + 12) = 2048;
    v45 = a1;
    v46 = v7;
    v47 = v6;
    v48 = *v10;
    sub_226C09A74(v10);
    *(v44 + 14) = v48;
    v6 = v47;
    v7 = v46;
    a1 = v45;
    _os_log_impl(&dword_226AB4000, v40, v41, "Checking if failed attempt count: %ld is less than or equal to maximumFailedAttemptsBeforeThrottle: %ld", v44, 0x16u);
    v49 = v44;
    v17 = v120;
    MEMORY[0x22AA8BEE0](v49, -1, -1);
  }

  else
  {
    sub_226C09A74(v10);
  }

  if (*v137 >= a1)
  {
    v59 = sub_226D6E05C();
    v60 = sub_226D6E9EC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_226AB4000, v59, v60, "Below threshold. Returning true", v61, 2u);
      MEMORY[0x22AA8BEE0](v61, -1, -1);
    }

    (*(v124 + 8))(v138, v17);
    goto LABEL_26;
  }

  v51 = v133;
  v50 = v134;
  v52 = v135;
  (v134[13])(v133, *MEMORY[0x277CC9830], v135);
  sub_226D6D62C();
  (v50[1])(v51, v52);
  v53 = v123;
  sub_226D6D67C();
  if (v130(v53, 1, v17) != 1)
  {
    v137 = v7;
    v121(v131, v53, v17);
    v63 = v124;
    v64 = v124 + 16;
    v65 = *(v124 + 16);
    v66 = v127;
    v65(v127, v138, v17);
    v67 = sub_226D6E05C();
    v68 = sub_226D6E9EC();
    v69 = os_log_type_enabled(v67, v68);
    v119 = v6;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v133 = v70;
      v134 = swift_slowAlloc();
      v139 = v134;
      *v70 = 136315138;
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      LODWORD(v132) = v68;
      v71 = sub_226D6F1CC();
      v135 = v64;
      v72 = v17;
      v74 = v73;
      v75 = v65;
      v76 = *(v63 + 8);
      v77 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v76(v66, v72);
      v78 = v76;
      v65 = v75;
      v79 = sub_226AC4530(v71, v74, &v139);
      v17 = v72;

      v80 = v133;
      *(v133 + 4) = v79;
      v81 = v77;
      v82 = v80;
      _os_log_impl(&dword_226AB4000, v67, v132, "This account is throttled. Will process if two months have passed since the last failure date: %s", v80, 0xCu);
      v83 = v134;
      __swift_destroy_boxed_opaque_existential_0Tm(v134);
      MEMORY[0x22AA8BEE0](v83, -1, -1);
      MEMORY[0x22AA8BEE0](v82, -1, -1);
    }

    else
    {

      v84 = *(v63 + 8);
      v81 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84(v66, v17);
      v78 = v84;
    }

    v85 = v129;
    sub_226D6D46C();
    v86 = v131;
    v87 = sub_226D6D40C();
    v135 = v81;
    v78(v85, v17);
    if ((v87 & 1) == 0)
    {
      v134 = v78;
      v106 = v125;
      v65(v125, v86, v17);
      v107 = sub_226D6E05C();
      v108 = sub_226D6E9EC();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v139 = v110;
        *v109 = 136315138;
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v111 = sub_226D6F1CC();
        v112 = v17;
        v114 = v113;
        v115 = v106;
        v116 = v134;
        (v134)(v115, v112);
        v117 = sub_226AC4530(v111, v114, &v139);

        *(v109 + 4) = v117;
        _os_log_impl(&dword_226AB4000, v107, v108, "This account is throttled and not enough time has passed to retry. Not processing until after %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v110);
        MEMORY[0x22AA8BEE0](v110, -1, -1);
        MEMORY[0x22AA8BEE0](v109, -1, -1);

        v116(v131, v112);
        (*(v137 + 8))(v136, v119);
        v116(v138, v112);
      }

      else
      {

        v118 = v134;
        (v134)(v106, v17);
        v118(v86, v17);
        (*(v137 + 8))(v136, v119);
        v118(v138, v17);
      }

      v37 = 0;
      return v37 & 1;
    }

    v88 = v126;
    v65(v126, v86, v17);
    v89 = sub_226D6E05C();
    v90 = sub_226D6E9EC();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v132 = v91;
      v134 = swift_slowAlloc();
      v139 = v134;
      *v91 = 136315394;
      v92 = v129;
      sub_226D6D46C();
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v93 = v17;
      v94 = sub_226D6F1CC();
      v96 = v95;
      LODWORD(v133) = v90;
      v78(v92, v17);
      v97 = sub_226AC4530(v94, v96, &v139);

      v98 = v132;
      *(v132 + 4) = v97;
      *(v98 + 12) = 2080;
      v99 = sub_226D6F1CC();
      v101 = v100;
      v78(v88, v93);
      v102 = sub_226AC4530(v99, v101, &v139);

      *(v98 + 14) = v102;
      _os_log_impl(&dword_226AB4000, v89, v133, "%s is after %s. This account is throttled and should be retried now. Returning true", v98, 0x16u);
      v103 = v134;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v103, -1, -1);
      MEMORY[0x22AA8BEE0](v98, -1, -1);

      v78(v131, v93);
      (*(v137 + 8))(v136, v119);
      v104 = v138;
      v105 = v93;
    }

    else
    {

      v78(v88, v17);
      v78(v86, v17);
      (*(v137 + 8))(v136, v119);
      v104 = v138;
      v105 = v17;
    }

    v78(v104, v105);
LABEL_26:
    v37 = 1;
    return v37 & 1;
  }

  sub_226AC47B0(v53, &qword_27D7A8BE0, &unk_226D718F0);
  v54 = sub_226D6E05C();
  v55 = sub_226D6E9CC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v6;
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_226AB4000, v54, v55, "Expected non-nil attemptAgainAfter date", v57, 2u);
    v58 = v57;
    v6 = v56;
    MEMORY[0x22AA8BEE0](v58, -1, -1);
  }

  sub_226C077F8();
  swift_willThrowTypedImpl();
  (*(v7 + 8))(v136, v6);
  (*(v124 + 8))(v138, v17);
  return v37 & 1;
}

uint64_t sub_226C09A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C09A74(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226C09AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226C09B2C()
{
  result = qword_27D7A8038;
  if (!qword_27D7A8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8038);
  }

  return result;
}

void sub_226C09B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a1;
  v36 = a2;
  v40 = sub_226D6B9BC();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - v5;
  v6 = sub_226D680EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_226D69F0C();
  v10 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D71840;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 32) = 0x49746E756F636361;
  *(v11 + 40) = 0xE900000000000064;
  *(v11 + 88) = v12;
  *(v11 + 56) = v12;
  strcpy((v11 + 64), "institutionId");
  *(v11 + 78) = -4864;
  v13 = sub_226D6E5CC();

  [v10 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D70840;
  (*(v7 + 104))(v9, *MEMORY[0x277CC7158], v6);
  v15 = sub_226D680DC();
  (*(v7 + 8))(v9, v6);
  v16 = MEMORY[0x277D849A0];
  *(v14 + 56) = MEMORY[0x277D84958];
  *(v14 + 64) = v16;
  *(v14 + 32) = v15;
  v17 = sub_226D6E91C();
  [v10 setPredicate_];

  v18 = v39;
  v19 = sub_226D6EBBC();
  if (v18)
  {

    return;
  }

  v20 = v35;
  v21 = v36;
  v22 = v34;
  v39 = v19;
  if (!(v19 >> 62))
  {
    v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_18:

    *v21 = MEMORY[0x277D84F90];
    return;
  }

  v23 = sub_226D6EDFC();
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_5:
  v41 = MEMORY[0x277D84F90];
  sub_226AE2090(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = 0;
    v37 = v10;
    v24 = v41;
    if ((v39 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v23; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v39);
        sub_226D69D5C();
        swift_unknownObjectRelease();
        v41 = v24;
        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE2090((v26 > 1), v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        (*(v2 + 32))(v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v22, v40);
      }
    }

    else
    {
      v38 = v2 + 32;
      v28 = 32;
      v29 = v39;
      do
      {
        v30 = *(v29 + v28);
        sub_226D69D5C();

        v41 = v24;
        v32 = *(v24 + 16);
        v31 = *(v24 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_226AE2090((v31 > 1), v32 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v32 + 1;
        (*(v2 + 32))(v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v20, v40);
        v28 += 8;
        --v23;
      }

      while (v23);
    }

    *v36 = v24;
  }
}

uint64_t sub_226C0A0D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_226D6B6FC();
  swift_allocObject();
  v52 = sub_226D6B6EC();
  v14 = *(a1 + 16);
  if (!v14)
  {
  }

  v16 = *(v7 + 16);
  v15 = v7 + 16;
  v56 = v16;
  v51 = (v15 - 8);
  v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v48 = *(v15 + 56);
  *&v13 = 136315138;
  v44 = v13;
  v18 = v9;
  v45 = v12;
  v49 = v15;
  v50 = a2;
  v43 = v9;
  while (1)
  {
    v54 = v17;
    v20 = v56(v12);
    v55 = MEMORY[0x22AA8B6A0](v20);
    v21 = [objc_opt_self() currentQueryGenerationToken];
    v57[0] = 0;
    v22 = [a2 setQueryGenerationFromToken:v21 error:v57];

    v23 = v57[0];
    if (!v22)
    {
      break;
    }

    v24 = v57[0];
    sub_226D6B6DC();
    if (v3)
    {
      goto LABEL_14;
    }

    v57[0] = 0;
    v25 = [a2 save_];
    v23 = v57[0];
    if ((v25 & 1) == 0)
    {
      break;
    }

    v53 = v14;
    v26 = v57[0];
    [a2 reset];
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v27 = sub_226D6E07C();
    __swift_project_value_buffer(v27, qword_28105F710);
    (v56)(v18, v12, v6);
    v28 = v18;
    v29 = sub_226D6E05C();
    v30 = sub_226D6E9EC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v51;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57[0] = v46;
      *v33 = v44;
      sub_226C0B634();
      v34 = v28;
      v35 = sub_226D6F1CC();
      v47 = 0;
      v37 = v36;
      v19 = *v32;
      v19(v34, v6);
      v38 = sub_226AC4530(v35, v37, v57);
      v3 = v47;

      *(v33 + 4) = v38;
      _os_log_impl(&dword_226AB4000, v29, v30, "Successfully populated isVisible transactions for: %s.", v33, 0xCu);
      v39 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v12 = v45;
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v33, -1, -1);

      v18 = v43;
    }

    else
    {

      v19 = *v32;
      v19(v28, v6);
      v18 = v28;
    }

    objc_autoreleasePoolPop(v55);
    v19(v12, v6);
    v17 = v54 + v48;
    v14 = v53 - 1;
    a2 = v50;
    if (v53 == 1)
    {
    }
  }

  v41 = v23;
  sub_226D6D04C();

  swift_willThrow();
LABEL_14:
  objc_autoreleasePoolPop(v55);

  return (*v51)(v12, v6);
}

void sub_226C0A558(id a1)
{
  v2 = v1;
  v58[6] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v58[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v58];

  v6 = v58[0];
  if (!v5)
  {
    v14 = v58[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  sub_226D6AC0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  v9 = [ObjCClassFromMetadata entityName];
  if (!v9)
  {
    sub_226D6E39C();
    v9 = sub_226D6E36C();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v11 = sub_226D6E91C();
  [v10 setPredicate_];

  [v10 setResultType_];
  v12 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v13 = sub_226D6EBBC();
  if (v1)
  {

    return;
  }

  v15 = v13;
  v16 = v13 >> 62;
  v45 = v10;
  if (v13 >> 62)
  {
    goto LABEL_67;
  }

  v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v57 = v2;
  if (v17 < 1)
  {
    goto LABEL_57;
  }

  v18 = 0;
  v50 = v15 & 0xC000000000000001;
  v51 = v15 & 0xFFFFFFFFFFFFFF8;
  v46 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
  v47 = v17;
  v19 = 100;
  v55 = v12;
  v48 = v16;
  v49 = v15;
  v56 = a1;
  while (1)
  {
    v53 = v19;
    if (v17 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17;
    }

    a1 = (v18 + 100);
    v2 = __OFADD__(v18, 100);
    v21 = MEMORY[0x22AA8B6A0]();
    if (v2)
    {
      goto LABEL_62;
    }

    if (v17 >= a1)
    {
      v2 = v18 + 100;
    }

    else
    {
      v2 = v17;
    }

    if (v2 < v18)
    {
      goto LABEL_63;
    }

    v22 = v21;
    v52 = v18 + 100;
    if (v16)
    {
      if (sub_226D6EDFC() < v18)
      {
        goto LABEL_64;
      }

      v23 = sub_226D6EDFC();
    }

    else
    {
      v23 = *(v51 + 16);
      if (v23 < v18)
      {
        goto LABEL_64;
      }
    }

    if (v23 < v2)
    {
      goto LABEL_65;
    }

    if (!v50 || v18 == v2)
    {

      v54 = v22;
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v18 >= v2)
      {
        goto LABEL_66;
      }

      v24 = v18;
      do
      {
        v25 = v24 + 1;
        sub_226D6EF0C();
        v24 = v25;
      }

      while (v20 != v25);
      v54 = v22;
      if (!v16)
      {
LABEL_34:
        v26 = (2 * v2) | 1;
        v27 = v46;
        goto LABEL_37;
      }
    }

    sub_226D6F0CC();
    v27 = v28;
    v18 = v29;
    v26 = v30;
LABEL_37:
    sub_226AE4BCC(v27, v18, v26);
    v32 = v31;
    swift_unknownObjectRelease();
    if ((v32 & 0xC000000000000001) != 0)
    {
      sub_226D6EDBC();
      sub_226AE59FC();
      sub_226D6E8DC();
      v32 = v58[1];
      v2 = v58[2];
      v33 = v58[3];
      v12 = v58[4];
      a1 = v58[5];
    }

    else
    {
      v12 = 0;
      v34 = -1 << *(v32 + 32);
      v2 = v32 + 56;
      v33 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      a1 = (v36 & *(v32 + 56));
    }

    v15 = (v33 + 64) >> 6;
    if (v32 < 0)
    {
LABEL_50:
      if (!sub_226D6EE2C())
      {
        goto LABEL_55;
      }

      swift_dynamicCast();
      v40 = v58[0];
      v16 = v12;
      v39 = a1;
      if (!v58[0])
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    while (1)
    {
      v37 = v12;
      v38 = a1;
      v16 = v12;
      if (!a1)
      {
        while (1)
        {
          v16 = (v37 + 1);
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v16 >= v15)
          {
            goto LABEL_55;
          }

          v38 = *(v2 + 8 * v16);
          ++v37;
          if (v38)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        v17 = sub_226D6EDFC();
        goto LABEL_9;
      }

LABEL_48:
      v39 = ((v38 - 1) & v38);
      v40 = *(*(v32 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v38)))));
      if (!v40)
      {
        break;
      }

LABEL_52:
      v41 = sub_226D6AB0C();
      if (v57)
      {

        sub_226AD3C20(v32);

        goto LABEL_59;
      }

      v42 = v41;
      [v41 setIsVisible_];

      v12 = v16;
      a1 = v39;
      if (v32 < 0)
      {
        goto LABEL_50;
      }
    }

LABEL_55:
    sub_226AD3C20(v32);
    v58[0] = 0;
    if (([v56 save_] & 1) == 0)
    {
      break;
    }

    v43 = v58[0];
    [v56 reset];
    objc_autoreleasePoolPop(v54);
    v19 = v53 + 100;
    v18 = v52;
    v17 = v47;
    v16 = v48;
    v15 = v49;
    v12 = v55;
    if (v52 >= v47)
    {
LABEL_57:

      return;
    }
  }

  v44 = v58[0];

  sub_226D6D04C();

  swift_willThrow();
LABEL_59:
  objc_autoreleasePoolPop(v54);
}

void sub_226C0AB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Cleaning up empty currency transactions", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v9 = [objc_opt_self() currentQueryGenerationToken];
  v36[0] = 0;
  v10 = [a3 setQueryGenerationFromToken:v9 error:v36];

  v11 = v36[0];
  if (v10)
  {
    sub_226D6AC0C();
    v12 = v11;
    v13 = sub_226D6AAFC();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v14 = sub_226D6E91C();
    [v13 setPredicate_];

    v15 = sub_226D6EBBC();
    if (v3)
    {
LABEL_33:

      goto LABEL_34;
    }

    v16 = v15;
    v17 = v15 >> 62;
    if (v15 >> 62)
    {
      if (sub_226D6EDFC() >= 1)
      {
        v34 = v17;
        v35 = v13;
        v23 = sub_226D6EDFC();
        if (v23)
        {
          v18 = v23;
          if (v23 >= 1)
          {
LABEL_9:
            v34 = v17;
            v35 = v13;
            for (i = 0; i != v18; ++i)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x22AA8AFD0](i, v16);
              }

              else
              {
                v20 = *(v16 + 8 * i + 32);
              }

              v21 = v20;
              [a3 deleteObject_];
            }

            goto LABEL_19;
          }

          __break(1u);
        }

LABEL_19:

        v24 = sub_226D6E05C();
        v25 = sub_226D6E9EC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          v13 = v35;
          if (v34)
          {
            v27 = sub_226D6EDFC();
          }

          else
          {
            v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v26 + 4) = v27;

          _os_log_impl(&dword_226AB4000, v24, v25, "Deleted %ld empty currency transactions", v26, 0xCu);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v13 = v35;
        }

        v36[0] = 0;
        if (![a3 save_])
        {
          v33 = v36[0];
          sub_226D6D04C();

          swift_willThrow();
          goto LABEL_33;
        }

        v32 = v36[0];
        v28 = sub_226D6E05C();
        v29 = sub_226D6E9EC();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_31;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "Successfully cleaned up empty currency transactions";
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_9;
      }
    }

    v28 = sub_226D6E05C();
    v29 = sub_226D6E9EC();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_31:

      goto LABEL_33;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "No empty currency transactions, returning";
LABEL_30:
    _os_log_impl(&dword_226AB4000, v28, v29, v31, v30, 2u);
    MEMORY[0x22AA8BEE0](v30, -1, -1);
    goto LABEL_31;
  }

  v22 = v36[0];
  sub_226D6D04C();

  swift_willThrow();
LABEL_34:
  sub_226C0B68C();
}

void sub_226C0B058()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v5);
    _os_log_impl(&dword_226AB4000, oslog, v1, "Completed %s task", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

void sub_226C0B1A0(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F710);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v17);
    _os_log_impl(&dword_226AB4000, v5, v6, "Starting %s task", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = sub_226D676AC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_226D6EB7C();
  if (v3)
  {
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E88, &unk_226D73770);
    v11 = sub_226D6EB8C();
    MEMORY[0x28223BE20](v11);
    sub_226D6EB7C();

    MEMORY[0x28223BE20](v12);
    sub_226D6EB7C();
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_226AC4530(0xD00000000000004BLL, 0x8000000226D773A0, &v17);
      _os_log_impl(&dword_226AB4000, v13, v14, "Successfully completed %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }
  }

  sub_226C0B058();
}

unint64_t sub_226C0B634()
{
  result = qword_27D7A6E40;
  if (!qword_27D7A6E40)
  {
    sub_226D6B9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6E40);
  }

  return result;
}

void sub_226C0B68C()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F710);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9EC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v1, "Finished cleaning up empty currency transactions", v2, 2u);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

uint64_t sub_226C0B798(uint64_t a1)
{
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D67F1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() ephemeralSessionConfiguration];
  sub_226D67E6C();
  sub_226D67F0C();
  v11 = sub_226D6E36C();

  [v10 set:v11 sourceApplicationBundleIdentifier:?];

  (*(v3 + 16))(v5, a1, v2);
  sub_226D6827C();
  sub_226D699AC();
  swift_allocObject();
  v12 = sub_226D6999C();
  (*(v7 + 8))(v9, v6);
  return v12;
}

uint64_t sub_226C0B9A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_226C0B9EC(uint64_t a1)
{
  v2 = sub_226D676AC();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_226C19610;
  *(v4 + 24) = v3;
  v9[4] = sub_226B2A194;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226CAD254;
  v9[3] = &block_descriptor_105;
  v5 = _Block_copy(v9);
  v6 = v2;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *sub_226C0BB5C()
{
  v1 = sub_226D6E07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 328))
  {
    v5 = *(v0 + 328);
  }

  else
  {
    sub_226AE532C(v0 + 120, v17);
    v6 = *(v0 + 112);
    v7 = sub_226D6704C();
    type metadata accessor for OrderWebServicePendingTaskSource();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = MEMORY[0x277CC6A68];
    v9 = qword_28105F5B8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v1, qword_28105F5C0);
    (*(v2 + 16))(v4, v10, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C10, &qword_226D775A8);
    v5 = swift_allocObject();
    swift_defaultActor_initialize();
    v11 = v5 + *(*v5 + 152);
    *v11 = sub_226B239BC(MEMORY[0x277D84F90]);
    *(v11 + 8) = xmmword_226D77480;
    *(v5 + *(*v5 + 160)) = 0;
    *(v5 + *(*v5 + 168)) = 0;
    *(v5 + *(*v5 + 176)) = 0;
    sub_226AE532C(v17, (v5 + 14));
    v5[19] = v8;
    v15 = type metadata accessor for OrderWebServiceCoordinator();
    v16 = &off_28183CAD0;
    *&v14 = v0;

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    sub_226AC484C(&v14, (v5 + 20));
    v5[25] = &type metadata for WalletInfo;
    v5[26] = &protocol witness table for WalletInfo;
    (*(v2 + 32))(v5 + *(*v5 + 136), v4, v1);
    v12 = v5 + *(*v5 + 144);
    *v12 = 0;
    *(v12 + 1) = 0xD000000000000018;
    *(v12 + 2) = 0x8000000226D836E0;
    *(v12 + 3) = 0xD000000000000027;
    *(v12 + 4) = 0x8000000226D83700;
    v12[40] = 1;
    *(v0 + 328) = v5;
  }

  return v5;
}

void *sub_226C0BE78()
{
  if (v0[42])
  {

    sub_226D6E80C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 36);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226C0BF20()
{
  sub_226C0BE78();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226C0BF70()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0C00C, v0, 0);
}

uint64_t sub_226C0C00C()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting order web service coordinator", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = sub_226C0BB5C();
  *(v0 + 32) = v5;

  return MEMORY[0x2822009F8](sub_226C0C134, v5, 0);
}

uint64_t sub_226C0C134(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_226CAD8A4(a1);
  v5 = sub_226D6E79C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8, &unk_226D763A8);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = v2;

  sub_226B60364(0, 0, v3, &unk_226D775B0, v7);

  return MEMORY[0x2822009F8](sub_226C0C278, v4, 0);
}

uint64_t sub_226C0C278()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 248), *(*(v0 + 16) + 272));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_226C0C338;
  v3 = *(v0 + 16);

  return sub_226C15BF0(v3, v1);
}

uint64_t sub_226C0C338()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226C0C448, v1, 0);
}

uint64_t sub_226C0C448()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 248), *(*(v0 + 16) + 272));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_226C0C4E8;

  return sub_226D0A5C4();
}

uint64_t sub_226C0C4E8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_226C0C628;

  return sub_226C0C7A0();
}

uint64_t sub_226C0C628()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226C0C738, v1, 0);
}

uint64_t sub_226C0C738()
{
  sub_226C0DC58();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C0C7C0()
{
  v22 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[4] = v1;
  __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Retrieving enabled topics (order types)", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = sub_226D676AC();
  *(swift_task_alloc() + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();

  v6 = v0[2];
  v0[5] = v6;

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x22AA8A6A0](v6, MEMORY[0x277D837D0]);
    v13 = sub_226AC4530(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v7, v8, "Requesting tokens for enabled topics (order types): %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v14 = *(v6 + 16);
  v0[6] = v14;
  if (v14)
  {
    v15 = v0[3];
    v0[7] = 0;
    v16 = v0[5];
    v0[8] = *(v16 + 32);
    v0[9] = *(v16 + 40);
    v17 = __swift_project_boxed_opaque_existential_1((v15 + 248), *(v15 + 272));
    v18 = *v17;
    v0[10] = *v17;

    return MEMORY[0x2822009F8](sub_226C0CBC8, v18, 0);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_226C0CBC8()
{
  v19 = v0;
  v1 = *(v0[10] + 112);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CEEA00]);
    v3 = v1;
    v4 = sub_226D6E36C();
    v5 = sub_226D6E36C();
    v6 = [v2 initWithTopic:v4 identifier:v5];

    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[4], qword_28105F648);

    v7 = sub_226D6E05C();
    v8 = sub_226D6E9EC();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[8];
      v9 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_226AC4530(v10, v9, &v18);
      _os_log_impl(&dword_226AB4000, v7, v8, "Requesting token for topic %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    v13 = v0[3];
    [v3 requestTokenForInfo_];

    v14 = sub_226C0CE24;
    v15 = v13;
  }

  else
  {
    v16 = v0[3];

    v14 = sub_226C19898;
    v15 = v16;
  }

  return MEMORY[0x2822009F8](v14, v15, 0);
}

uint64_t sub_226C0CE24()
{
  v1 = v0[7] + 1;
  if (v1 == v0[6])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[7] = v1;
    v4 = v0[3];
    v5 = v0[5] + 16 * v1;
    v0[8] = *(v5 + 32);
    v0[9] = *(v5 + 40);
    v6 = __swift_project_boxed_opaque_existential_1((v4 + 248), *(v4 + 272));
    v7 = *v6;
    v0[10] = *v6;

    return MEMORY[0x2822009F8](sub_226C0CBC8, v7, 0);
  }
}

uint64_t sub_226C0CF38()
{
  v1 = sub_226C0BB5C();
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_226C0CFA4, v1, 0);
}

uint64_t sub_226C0CFA4()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_226C0D0E4;

    return sub_226CAE190();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_226C0D1F4;

    return sub_226CAFB00();
  }
}

uint64_t sub_226C0D0E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226C0D1F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_226C0D304(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  sub_226D6A47C();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v5 + 32) = sub_226D6E91C();
  *(v5 + 40) = sub_226D6E91C();
  v6 = sub_226D6E5CC();

  v7 = objc_opt_self();
  v8 = [v7 orPredicateWithSubpredicates_];

  *(v4 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D70840;
  v10 = sub_226D6D3EC();
  *(v9 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v9 + 64) = sub_226C19454();
  *(v9 + 32) = v10;
  *(v4 + 40) = sub_226D6E91C();
  v11 = sub_226D6E5CC();

  v12 = [v7 andPredicateWithSubpredicates_];

  [v3 setPredicate:v12];
  v13 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v26[0] = 0;
  v14 = [a2 executeRequest:v13 error:v26];
  if (v14)
  {
    v15 = v14;
    v16 = v26[0];

LABEL_8:
    v3 = v15;
    goto LABEL_9;
  }

  v17 = v26[0];
  v18 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v19 = sub_226D6E07C();
  __swift_project_value_buffer(v19, qword_28105F5C0);
  v20 = v18;
  v15 = sub_226D6E05C();
  v21 = sub_226D6E9CC();

  if (!os_log_type_enabled(v15, v21))
  {

    goto LABEL_8;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v22 = 138412290;
  v24 = v18;
  v25 = _swift_stdlib_bridgeErrorToNSError();
  *(v22 + 4) = v25;
  *v23 = v25;
  _os_log_impl(&dword_226AB4000, v15, v21, "Failed to prune order registrations with error: %@", v22, 0xCu);
  sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v23, -1, -1);
  MEMORY[0x22AA8BEE0](v22, -1, -1);

LABEL_9:
}

void sub_226C0D75C(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  sub_226D6B7BC();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = sub_226D6D3EC();
  *(v4 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v4 + 64) = sub_226C19454();
  *(v4 + 32) = v5;
  v6 = sub_226D6E91C();
  [v3 setPredicate:v6];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v20[0] = 0;
  v8 = [a2 executeRequest:v7 error:v20];
  if (v8)
  {
    v9 = v8;
    v10 = v20[0];

LABEL_8:
    v3 = v9;
    goto LABEL_9;
  }

  v11 = v20[0];
  v12 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5C0);
  v14 = v12;
  v9 = sub_226D6E05C();
  v15 = sub_226D6E9CC();

  if (!os_log_type_enabled(v9, v15))
  {

    goto LABEL_8;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  v18 = v12;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 4) = v19;
  *v17 = v19;
  _os_log_impl(&dword_226AB4000, v9, v15, "Failed to prune order web service log entries with error: %@", v16, 0xCu);
  sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v17, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

LABEL_9:
}

void sub_226C0DA70(void *a1, uint64_t (*a2)(id, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = a1;
  v6 = a1;
  v8 = a2(v6, v7);
  if (!v3)
  {
    a3(v8, v9);

    v12[0] = 0;
    if ([v6 save_])
    {
      v10 = v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226C0DB6C(void *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  ManagedOrderDashboardItemUpdater.updateShowsAsActive(context:now:)(a1, a2, v10);
  if (!v3)
  {
    v6 = v10[0];
    v7 = BYTE1(v10[0]);
    if (LOBYTE(v10[0]) != 1)
    {
LABEL_5:
      *a3 = v6;
      a3[1] = v7;
      return;
    }

    v10[0] = 0;
    if ([a1 save_])
    {
      v8 = v10[0];
      goto LABEL_5;
    }

    v9 = v10[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226C0DC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5C0);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Starting to observe persistent store remote change notifications", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  if (*(v1 + 336))
  {

    sub_226D6E80C();
  }

  v9 = sub_226D6E79C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  *(v1 + 336) = sub_226B60364(0, 0, v4, &unk_226D77580, v11);
}

uint64_t sub_226C0DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = sub_226D6B70C();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = sub_226D6CD9C();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80);
  v4[32] = swift_task_alloc();
  v7 = sub_226D6EAEC();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0E070, 0, 0);
}

uint64_t sub_226C0E070()
{
  *(v0 + 288) = [objc_opt_self() defaultCenter];
  *(v0 + 296) = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  *(v0 + 304) = *MEMORY[0x277CBE300];
  *(v0 + 328) = *MEMORY[0x277CC7FF0];
  v1 = sub_226C190C0(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_226C0E1DC;
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_226C0E1DC()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226C0EB50;
  }

  else
  {
    v2 = sub_226C0E2F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226C0E30C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_15:

    v31 = *(v0 + 8);

    return v31();
  }

  (*(v3 + 32))(*(v0 + 248), v1, v2);
  if (!swift_weakLoadStrong())
  {
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 264);
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v0 + 232);

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    goto LABEL_15;
  }

  v5 = sub_226D6CD8C();
  if (!v5)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_21;
  }

  v6 = v5;
  *(v0 + 144) = sub_226D6E39C();
  *(v0 + 152) = v7;
  sub_226D6EE8C();
  if (!*(v6 + 16) || (v8 = sub_226C2FE4C(v0 + 16), (v9 & 1) == 0))
  {

    sub_226AE5030(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_19;
  }

  sub_226AC4708(*(v6 + 56) + 32 * v8, v0 + 56);
  sub_226AE5030(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_19:
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_21:
    sub_226AC47B0(v0 + 56, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = *(v0 + 168);
    v57 = *(v0 + 160);
    v15 = sub_226D6769C();
    v16 = [v15 persistentStoreCoordinator];

    v17 = [v16 persistentStores];
    sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
    sub_226D6E5EC();

    (*(v11 + 104))(v12, v10, v13);
    v18 = sub_226D6E5AC();

    (*(v11 + 8))(v12, v13);
    if (v18)
    {
      v19 = [v18 identifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_226D6E39C();
        v23 = v22;

        v24 = v16;
        if (v57 == v21 && v14 == v23)
        {

LABEL_30:
          if (qword_28105F5B8 != -1)
          {
            swift_once();
          }

          v38 = sub_226D6E07C();
          __swift_project_value_buffer(v38, qword_28105F5C0);
          v39 = sub_226D6E05C();
          v40 = sub_226D6E9EC();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_226AB4000, v39, v40, "Received remote change notification for local persistent store", v41, 2u);
            MEMORY[0x22AA8BEE0](v41, -1, -1);
          }

          v42 = *(v0 + 192);
          v43 = *(v0 + 200);

          v44 = sub_226D6E79C();
          v45 = *(v44 - 8);
          (*(v45 + 56))(v43, 1, 1, v44);
          v46 = swift_allocObject();
          swift_weakInit();
          v47 = swift_allocObject();
          v47[2] = 0;
          v47[3] = 0;
          v47[4] = v46;
          sub_226AC40E8(v43, v42, &unk_27D7A8BA0, &qword_226D734E0);
          LODWORD(v43) = (*(v45 + 48))(v42, 1, v44);

          v48 = *(v0 + 192);
          if (v43 == 1)
          {
            sub_226AC47B0(*(v0 + 192), &unk_27D7A8BA0, &qword_226D734E0);
          }

          else
          {
            sub_226D6E78C();
            (*(v45 + 8))(v48, v44);
          }

          v52 = v47[2];
          swift_unknownObjectRetain();

          if (v52)
          {
            swift_getObjectType();
            v53 = sub_226D6E6CC();
            v55 = v54;
            swift_unknownObjectRelease();
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          sub_226AC47B0(*(v0 + 200), &unk_27D7A8BA0, &qword_226D734E0);
          v56 = swift_allocObject();
          *(v56 + 16) = &unk_226D77598;
          *(v56 + 24) = v47;
          if (v55 | v53)
          {
            *(v0 + 88) = 0;
            *(v0 + 96) = 0;
            *(v0 + 104) = v53;
            *(v0 + 112) = v55;
          }

          v50 = *(v0 + 240);
          v49 = *(v0 + 248);
          v51 = *(v0 + 232);
          swift_task_create();

          goto LABEL_44;
        }

        v37 = sub_226D6F21C();

        if (v37)
        {
          goto LABEL_30;
        }
      }

      else
      {

        v24 = v16;
      }

      v50 = *(v0 + 240);
      v49 = *(v0 + 248);
      v51 = *(v0 + 232);

LABEL_44:

      (*(v50 + 8))(v49, v51);
      goto LABEL_22;
    }

    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

LABEL_22:
  v33 = sub_226C190C0(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v34 = swift_task_alloc();
  *(v0 + 312) = v34;
  *v34 = v0;
  v34[1] = sub_226C0E1DC;
  v35 = *(v0 + 256);
  v36 = *(v0 + 264);

  return MEMORY[0x282200308](v35, v36, v33);
}

uint64_t sub_226C0EB50()
{
  *(v0 + 176) = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_226C0EBFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_226C0ECB4, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_226C0ECB4()
{
  v1 = sub_226C0BB5C();
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_226C0ED20, v1, 0);
}

uint64_t sub_226C0ED20()
{
  v1 = v0[7];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_226C0EE60;

    return sub_226CAE190();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_226C0EFD8;

    return sub_226CAFB00();
  }
}

uint64_t sub_226C0EE60()
{

  return MEMORY[0x2822009F8](sub_226C0EF78, 0, 0);
}

uint64_t sub_226C0EF78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C0EFD8()
{

  return MEMORY[0x2822009F8](sub_226C0EF78, 0, 0);
}

uint64_t sub_226C0F0F0()
{
  v1[8] = v0;
  v2 = sub_226D67A2C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C0F1B0, v0, 0);
}

uint64_t sub_226C0F1B0()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[12] = __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Pruning deleted extracted order emails", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = *(v8 + 112);
  v10 = objc_allocWithZone(MEMORY[0x277D06D78]);

  v11 = [v10 init];
  v0[5] = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
  v0[6] = &off_283A72E98;
  v0[2] = v11;
  v0[7] = v9;
  (*(v6 + 104))(v5, *MEMORY[0x277CC6EB8], v7);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_226C0F3A0;
  v13 = v0[11];

  return sub_226C1527C(v13, 0);
}

uint64_t sub_226C0F3A0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226C0F53C;
    v4 = 0;
  }

  else
  {
    v5 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_226C0F4D4;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_226C0F4D4()
{
  sub_226C17BCC(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C0F53C()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x2822009F8](sub_226C0F5B4, v1, 0);
}

uint64_t sub_226C0F5B4()
{
  v1 = *(v0 + 112);
  sub_226C17BCC(v0 + 16);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to prune deleted extracted order emails with error: %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226C0F724()
{
  v1 = sub_226D6E18C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6E1BC();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281060348 != -1)
  {
    swift_once();
  }

  v11[1] = qword_281064528;
  v8 = *(v0 + 112);
  aBlock[4] = sub_226C17B38;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_13;
  v9 = _Block_copy(aBlock);

  sub_226D6E19C();
  v13 = MEMORY[0x277D84F90];
  sub_226C190C0(&qword_28105F588, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7000, &unk_226D73DE0);
  sub_226AC4194(&qword_28105F528, &qword_27D7A7000, &unk_226D73DE0, MEMORY[0x277D83970]);
  sub_226D6ED5C();
  MEMORY[0x22AA8AB20](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_226C0FA10(uint64_t a1)
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5C0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Reprocessing extracted order cascade set as part of maintenance task", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226BAFC9C(v5);
}

uint64_t sub_226C0FB10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  sub_226AE532C(v3 + 160, (a1 + 1));
  sub_226AE532C(v3 + 200, (a1 + 6));
  v5 = *(v3 + 240);
  sub_226AE532C(v3 + 248, (a1 + 12));
  sub_226AE532C(v3 + 288, (a1 + 17));
  *a1 = v4;
  a1[11] = v5;
}

void sub_226C0FB98(void *a1@<X8>)
{
  sub_226D67FDC();
  v3 = sub_226D67FAC();
  [v3 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000226D81C60;
  v5 = sub_226D6E5CC();

  [v3 setPropertiesToFetch_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_226D6E91C();
  [v3 setPredicate_];

  v8 = sub_226D6EBBC();
  if (v1)
  {

    return;
  }

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_18:

    v11 = MEMORY[0x277D84F90];
LABEL_19:
    *a1 = v11;
    return;
  }

  v10 = sub_226D6EDFC();
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_5:
  sub_226AE1D68(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v3;
    v30 = a1;
    v11 = v6;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v12, v9);
        v13 = [swift_unknownObjectRetain() orderTypeIdentifier];
        v14 = sub_226D6E39C();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1D68((v17 > 1), v18 + 1, 1);
        }

        ++v12;
        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v10 != v12);
    }

    else
    {
      v20 = 32;
      do
      {
        v21 = *(v9 + v20);
        v22 = [v21 orderTypeIdentifier];
        v23 = sub_226D6E39C();
        v25 = v24;

        v27 = *(v11 + 16);
        v26 = *(v11 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE1D68((v26 > 1), v27 + 1, 1);
        }

        *(v11 + 16) = v27 + 1;
        v28 = v11 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += 8;
        --v10;
      }

      while (v10);
    }

    a1 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_226C0FEE8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v56 = a5;
  v57[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6D52C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67FDC();
  v14 = sub_226D67FBC();
  if (!v5)
  {
    v50 = a3;
    v15 = v56;
    v53 = a1;
    v54 = v11;
    v52 = a4;
    v55 = 0;
    if (v14)
    {
      v51 = v14;
      v16 = [v14 pushToken];
      if (v16)
      {
        v17 = v16;
        v18 = sub_226D6D21C();
        v20 = v19;

        v21 = v54;
        v22 = v15;
        v23 = v10;
        if (v20 >> 60 != 15)
        {
          v24 = v13;
          v49 = v23;
          if (v15 >> 60 != 15)
          {
            v25 = v52;
            sub_226B11B44(v52, v15);
            sub_226B3FA64(v18, v20);
            v26 = sub_226C16250(v18, v20, v25, v15);
            sub_226B3FAEC(v18, v20);
            sub_226B3FAEC(v25, v15);
            v21 = v54;
            sub_226B3FAEC(v18, v20);
            if (!v26)
            {
              goto LABEL_23;
            }

LABEL_16:
            if (qword_28105F5B8 != -1)
            {
              swift_once();
            }

            v35 = sub_226D6E07C();
            __swift_project_value_buffer(v35, qword_28105F5C0);
            v36 = a2;

            v37 = sub_226D6E05C();
            v38 = sub_226D6E9AC();

            v39 = os_log_type_enabled(v37, v38);
            v40 = v53;
            if (v39)
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v57[0] = v42;
              *v41 = 136315138;
              *(v41 + 4) = sub_226AC4530(v40, v36, v57);
              _os_log_impl(&dword_226AB4000, v37, v38, "Token for order type %s didn't change, ignoring", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v42);
              MEMORY[0x22AA8BEE0](v42, -1, -1);
              MEMORY[0x22AA8BEE0](v41, -1, -1);
            }

LABEL_25:
            return;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
        v21 = v54;
        v22 = v15;
        v23 = v10;
      }

      v24 = v13;
      if (v22 >> 60 == 15)
      {
        sub_226B11B44(v52, v22);
        sub_226B3FAEC(v18, v20);
        goto LABEL_16;
      }

      v49 = v23;
LABEL_22:
      v43 = v52;
      sub_226B11B44(v52, v22);
      sub_226B3FAEC(v18, v20);
      sub_226B3FAEC(v43, v22);
LABEL_23:
      sub_226D6D51C();
      sub_226D6D4CC();
      (*(v21 + 8))(v24, v49);
      v44 = sub_226D6E36C();

      v45 = v51;
      [v51 setDeviceLibraryIdentifier_];

      v46 = sub_226D6D1FC();
      [v45 setPushToken_];

      [v45 setRequestTokenAttemptCount_];
      [v45 setLastRequestTokenAttemptDate_];
      v57[0] = 0;
      if (![v50 save_])
      {
        v48 = v57[0];
        sub_226D6D04C();

        swift_willThrow();
        return;
      }

      v47 = v57[0];
      goto LABEL_25;
    }

    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v27 = sub_226D6E07C();
    __swift_project_value_buffer(v27, qword_28105F5C0);
    v28 = a2;

    v29 = sub_226D6E05C();
    v30 = sub_226D6E9AC();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v53;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_226AC4530(v32, v28, v57);
      _os_log_impl(&dword_226AB4000, v29, v30, "Order type %s doesn't exist", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x22AA8BEE0](v34, -1, -1);
      MEMORY[0x22AA8BEE0](v33, -1, -1);
    }
  }
}

void sub_226C10490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F5C0);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_226AC4530(a3, a4, &v12);
    _os_log_impl(&dword_226AB4000, v7, v8, "Received token for order type %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v11 = sub_226D676AC();
  MEMORY[0x28223BE20](v11);
  sub_226D6EB7C();
}

void sub_226C107B0(uint64_t a1)
{
  v3 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8040, &qword_226D77568);
  sub_226D6EB7C();
  if (v2 || (v4 = v11) == 0)
  {
  }

  else
  {
    v5 = v10;
    v7 = v12;
    v6 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1((v1 + 288), *(v1 + 312));
    v13 = &type metadata for OrderWebServiceCoordinator.TokenBucketEmptyEvent;
    v14 = sub_226C15B9C();
    v9 = swift_allocObject();
    v10 = v9;
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = v7;
    v9[5] = v6;
    v9[6] = v8;
    sub_226D69AFC();

    __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  }
}

void sub_226C108F4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v47 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for TokenBucket.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  sub_226D67FDC();
  v17 = sub_226D67FBC();
  if (v4)
  {
    return;
  }

  v18 = v17;
  v43 = v16;
  v44 = v13;
  v19 = v47;
  v45 = 0;
  v46 = a1;
  if (v17)
  {
    v20 = v11;
    v21 = [v17 updateSequenceNumber];
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      [v18 setUpdateSequenceNumber_];
      v19 = [v18 updateTokenCount];
      v22 = [v18 updateTokenRefillDate];
      v23 = a3;
      v24 = v10;
      if (v22)
      {
        v25 = v22;
        sub_226D6D45C();

        v26 = sub_226D6D4AC();
        (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
      }

      else
      {
        v26 = sub_226D6D4AC();
        (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
      }

      v35 = v44;
      v36 = *(v20 + 20);
      sub_226D6D4AC();
      v37 = v43;
      (*(*(v26 - 8) + 56))(v43 + v36, 1, 1, v26);
      if ((v19 & 0x80000000) == 0)
      {
        *v37 = v19;
        sub_226AFD680(v24, v37 + v36, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226C19664(v37, v35, type metadata accessor for TokenBucket.State);

        sub_226C17808(v46, a2, v35, v49);
        v48 = 0;
        v38 = [v23 save_];
        v39 = v47;
        if (v38)
        {
          v40 = v48;
          sub_226C196CC(v37, type metadata accessor for TokenBucket.State);

          v41 = v49[1];
          *v39 = v49[0];
          *(v39 + 1) = v41;
          v39[4] = v50;
        }

        else
        {
          v42 = v48;
          sub_226AC47B0(v49, &qword_27D7A8040, &qword_226D77568);
          sub_226D6D04C();

          swift_willThrow();
          sub_226C196CC(v37, type metadata accessor for TokenBucket.State);
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_28105F5B8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v27 = sub_226D6E07C();
  __swift_project_value_buffer(v27, qword_28105F5C0);
  v28 = a2;

  v29 = sub_226D6E05C();
  v30 = sub_226D6E9AC();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v46;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_226AC4530(v32, v28, &v48);
    _os_log_impl(&dword_226AB4000, v29, v30, "Order type %s doesn't exist", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x22AA8BEE0](v34, -1, -1);
    MEMORY[0x22AA8BEE0](v33, -1, -1);
  }

  v19[4] = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
}

void sub_226C10DE8(uint64_t a1, unint64_t a2)
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);

  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(a1, a2, &v9);
    _os_log_impl(&dword_226AB4000, v5, v6, "Received message for order type %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  sub_226C107B0(a1);
}

uint64_t sub_226C110EC(uint64_t a1)
{
  v2 = sub_226D676AC();
  *(swift_task_alloc() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  sub_226D6EB8C();

  v4 = *(v1 + 8);
  v3 = *(v1 + 16);

  return v4(v3);
}

unint64_t sub_226C11218()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000226D81C60;
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000226D837C0;
  *(inited + 72) = sub_226D6E85C();
  v1 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v1;
}

void sub_226C1131C(void *a1, void *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v91 = sub_226D6904C();
  v73 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent(0);
  MEMORY[0x28223BE20](active);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_226D6D4AC();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v63 - v11;
  v93 = sub_226D6A58C();
  v12 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v14 = sub_226D6748C();
  v15 = [objc_opt_self() currentQueryGenerationToken];
  *&v95 = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:&v95];

  v17 = v95;
  if (!v16)
  {
    v54 = v95;
    v24 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F5D8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v83 = v12;
  v86 = v8;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v18 = v17;
  v19 = MEMORY[0x277D84F90];
  v20 = sub_226D6E91C();
  [v14 setPredicate_];

  [v14 setReturnsObjectsAsFaults_];
  v21 = sub_226D6EBBC();
  v76 = v21;
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v92;
    v23 = v93;
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_31:

    return;
  }

  v22 = sub_226D6EDFC();
  v24 = v92;
  v23 = v93;
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_4:
  v25 = 0;
  v77 = v76 & 0xC000000000000001;
  v68 = v76 & 0xFFFFFFFFFFFFFF8;
  v67 = v76 + 32;
  v89 = 0x8000000226D837A0;
  v88 = (v83 + 16);
  v87 = (v73 + 56);
  v84 = (v73 + 8);
  v85 = v73 + 16;
  v64 = (v86 + 32);
  v74 = (v83 + 8);
  v63 = xmmword_226D70840;
  v66 = a2;
  v65 = v14;
  v75 = v22;
  while (1)
  {
    if (v77)
    {
      v26 = MEMORY[0x22AA8AFD0](v25, v76);
    }

    else
    {
      if (v25 >= *(v68 + 16))
      {
        goto LABEL_28;
      }

      v26 = *(v67 + 8 * v25);
    }

    v27 = v26;
    v28 = __OFADD__(v25, 1);
    v29 = v25 + 1;
    if (v28)
    {
      break;
    }

    v83 = v29;
    v30 = [v26 ecommerceOrderContent];
    if (v30)
    {
      v31 = v30;
      v32 = v27;
      v81 = v31;
      v82 = v32;
      sub_226D6A51C();
      v33 = a2[39];
      v79 = a2[40];
      v80 = v33;
      v78 = __swift_project_boxed_opaque_existential_1(a2 + 36, v33);
      v34 = *(sub_226D6A4BC() + 16);

      if (v34)
      {
        v35 = sub_226D6A4BC();
        v36 = *(v35 + 16);
        if (v36)
        {
          v94 = v19;
          v37 = v35;
          sub_226AE26A0(0, v36, 0);
          v38 = v94;
          v39 = (*(v73 + 80) + 32) & ~*(v73 + 80);
          v69 = v37;
          v40 = v37 + v39;
          v86 = *(v73 + 72);
          v41 = *(v73 + 16);
          do
          {
            v43 = v90;
            v42 = v91;
            v41(v90, v40, v91);
            (*v88)(&v7[active[5]], v92, v93);
            v44 = active[6];
            v41(&v7[v44], v43, v42);
            (*v87)(&v7[v44], 0, 1, v42);
            sub_226D6D46C();
            *v7 = 0xD00000000000001ELL;
            *(v7 + 1) = v89;
            (*v84)(v43, v42);
            v94 = v38;
            v46 = *(v38 + 16);
            v45 = *(v38 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_226AE26A0((v45 > 1), v46 + 1, 1);
              v38 = v94;
            }

            v96 = active;
            v97 = sub_226C190C0(&qword_27D7A8058, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent, &unk_226D77648);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
            sub_226C19664(v7, boxed_opaque_existential_1, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
            *(v38 + 16) = v46 + 1;
            sub_226AC484C(&v95, v38 + 40 * v46 + 32);
            sub_226C196CC(v7, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent);
            v40 += v86;
            --v36;
          }

          while (v36);

          a2 = v66;
          v14 = v65;
          v24 = v92;
          v23 = v93;
          v19 = MEMORY[0x277D84F90];
        }

        else
        {
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
        v48 = swift_allocObject();
        *(v48 + 16) = v63;
        v49 = v70;
        (*v87)(v70, 1, 1, v91);
        v50 = v71;
        sub_226D6D46C();
        *(v48 + 56) = active;
        *(v48 + 64) = sub_226C190C0(&qword_27D7A8058, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent, &unk_226D77648);
        v51 = __swift_allocate_boxed_opaque_existential_1((v48 + 32));
        *v51 = 0xD00000000000001ELL;
        v52 = v88;
        v51[1] = v89;
        (*v52)(v51 + active[5], v24, v23);
        v53 = v49;
        v19 = MEMORY[0x277D84F90];
        sub_226AFD80C(v53, v51 + active[6], &qword_27D7A77B8, &qword_226D75588);
        (*v64)(v51 + active[7], v50, v72);
      }

      sub_226D69AEC();

      (*v74)(v24, v23);
      v22 = v75;
    }

    else
    {
    }

    v25 = v83;
    if (v83 == v22)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_24:
  v55 = sub_226D6E07C();
  __swift_project_value_buffer(v55, qword_28105F5E0);
  v56 = v24;
  v57 = sub_226D6E05C();
  v58 = sub_226D6E9CC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = v24;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 4) = v62;
    *v60 = v62;
    _os_log_impl(&dword_226AB4000, v57, v58, "Unable to count orders: %@", v59, 0xCu);
    sub_226AC47B0(v60, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v60, -1, -1);
    MEMORY[0x22AA8BEE0](v59, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_226C11DC8()
{
  v434 = sub_226D6801C();
  v386 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v421 = &v359 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v420 = &v359 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7818, &unk_226D756A0);
  MEMORY[0x28223BE20](v4 - 8);
  v374 = &v359 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7820, &unk_226D776B0);
  MEMORY[0x28223BE20](v6 - 8);
  v373 = &v359 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7828, &unk_226D756B0);
  MEMORY[0x28223BE20](v8 - 8);
  v372 = &v359 - v9;
  v371 = sub_226D6927C();
  v370 = *(v371 - 8);
  MEMORY[0x28223BE20](v371);
  v369 = &v359 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = sub_226D6A82C();
  v380 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v387 = &v359 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7830, &unk_226D776C0);
  MEMORY[0x28223BE20](v12 - 8);
  v375 = &v359 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7838, &qword_226D756C0);
  MEMORY[0x28223BE20](v14 - 8);
  v376 = &v359 - v15;
  v368 = sub_226D69FEC();
  v367 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v366 = &v359 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_226D6B0EC();
  v384 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v413 = &v359 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  MEMORY[0x28223BE20](v18 - 8);
  v405 = &v359 - v19;
  v412 = sub_226D6904C();
  v416 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v379 = &v359 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v415 = &v359 - v22;
  v404 = sub_226D6797C();
  v403 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v402 = &v359 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7800, &unk_226D776D0);
  MEMORY[0x28223BE20](v24 - 8);
  v409 = &v359 - v25;
  v408 = sub_226D677AC();
  v407 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v378 = &v359 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F0, &qword_226D75678);
  MEMORY[0x28223BE20](v27 - 8);
  v377 = &v359 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7808, &qword_226D75690);
  MEMORY[0x28223BE20](v29 - 8);
  v400 = &v359 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v399 = &v359 - v32;
  MEMORY[0x28223BE20](v33);
  v398 = &v359 - v34;
  MEMORY[0x28223BE20](v35);
  v396 = &v359 - v36;
  MEMORY[0x28223BE20](v37);
  v395 = &v359 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F8, &unk_226D75680);
  MEMORY[0x28223BE20](v39 - 8);
  v390 = &v359 - v40;
  v41 = sub_226D6731C();
  v42 = *(v41 - 8);
  v417 = v41;
  v418 = v42;
  MEMORY[0x28223BE20](v41);
  v401 = &v359 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v397 = &v359 - v45;
  MEMORY[0x28223BE20](v46);
  v394 = &v359 - v47;
  MEMORY[0x28223BE20](v48);
  v392 = &v359 - v49;
  MEMORY[0x28223BE20](v50);
  v389 = &v359 - v51;
  MEMORY[0x28223BE20](v52);
  v388 = &v359 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v54 - 8);
  v365 = &v359 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v363 = &v359 - v57;
  MEMORY[0x28223BE20](v58);
  v393 = &v359 - v59;
  MEMORY[0x28223BE20](v60);
  v391 = &v359 - v61;
  MEMORY[0x28223BE20](v62);
  v433 = &v359 - v63;
  MEMORY[0x28223BE20](v64);
  v432 = &v359 - v65;
  v66 = sub_226D6D1AC();
  v67 = *(v66 - 8);
  v423 = v66;
  v424 = v67;
  MEMORY[0x28223BE20](v66);
  v414 = &v359 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v431 = &v359 - v70;
  v430 = sub_226D6900C();
  v435 = *(v430 - 8);
  MEMORY[0x28223BE20](v430);
  v429 = &v359 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v72 - 8);
  v364 = &v359 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v76 = &v359 - v75;
  v77 = sub_226B224E8(MEMORY[0x277D84F90]);
  v428 = "multipleFulfillments";
  active = type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent(0);
  v422 = *(active + 20);
  sub_226D6A56C();
  v79 = sub_226D6D4AC();
  v361 = *(v79 - 8);
  v427 = *(v361 + 56);
  v427(v76, 0, 1, v79);
  v410 = *(active + 28);
  v80 = sub_226C190C0(&qword_27D7A8058, type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent, &unk_226D77648);
  v81 = sub_226D6770C();
  sub_226AC47B0(v76, &qword_27D7A8BE0, &unk_226D718F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v436 = v77;
  sub_226BE6628(v81, 0xD000000000000010, v428 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  v83 = v436;
  v428 = "daysSincePickedUp";
  sub_226D6A57C();
  v362 = v79;
  v427(v76, 0, 1, v79);
  v411 = active;
  v381 = v80;
  v84 = sub_226D6770C();
  v383 = v76;
  sub_226AC47B0(v76, &qword_27D7A8BE0, &unk_226D718F0);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v83;
  v406 = 0xD000000000000010;
  sub_226BE6628(v84, 0xD000000000000010, v428 | 0x8000000000000000, v85);
  v86 = v436;
  v87 = sub_226D6A50C();
  v88 = *(v87 + 16);
  v419 = v0;
  if (v88)
  {
    v360 = v86;
    v428 = *(v435 + 16);
    v89 = (*(v435 + 80) + 32) & ~*(v435 + 80);
    v359 = v87;
    v90 = v87 + v89;
    v91 = *(v435 + 72);
    v435 += 16;
    v425 = (v435 - 8);
    v92 = (v424 + 48);
    v426 = (v424 + 32);
    v427 = v91;
    v93 = MEMORY[0x277D84F90];
    v94 = v423;
    v95 = v432;
    do
    {
      v96 = v429;
      v97 = v430;
      (v428)(v429, v90, v430);
      v98 = v433;
      sub_226D68FFC();
      sub_226AFD80C(v98, v95, &unk_27D7A62F8, &unk_226D73B70);
      (*v425)(v96, v97);
      if ((*v92)(v95, 1, v94) == 1)
      {
        sub_226AC47B0(v95, &unk_27D7A62F8, &unk_226D73B70);
      }

      else
      {
        v99 = *v426;
        (*v426)(v431, v95, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_226BBB9F8(0, v93[2] + 1, 1, v93);
        }

        v101 = v93[2];
        v100 = v93[3];
        if (v101 >= v100 >> 1)
        {
          v93 = sub_226BBB9F8((v100 > 1), v101 + 1, 1, v93);
        }

        v93[2] = v101 + 1;
        v102 = v93 + ((*(v424 + 80) + 32) & ~*(v424 + 80)) + *(v424 + 72) * v101;
        v94 = v423;
        v99(v102, v431, v423);
      }

      v90 += v427;
      --v88;
    }

    while (v88);

    v86 = v360;
  }

  else
  {
  }

  v103 = sub_226D6E6BC();

  v104 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v86;
  v432 = 0xD000000000000012;
  sub_226BE6628(v103, 0xD000000000000012, 0x8000000226D81D20, v104);
  v105 = v436;
  sub_226D6A50C();
  v106 = sub_226D6E6BC();

  v107 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v105;
  v431 = 0xD000000000000013;
  sub_226BE6628(v106, 0xD000000000000013, 0x8000000226D81DF0, v107);
  v108 = v436;
  v109 = v388;
  sub_226D6A55C();
  sub_226D672BC();
  v111 = v110;
  v112 = *(v418 + 8);
  v418 += 8;
  (v112)(v109, v417);
  if (v111)
  {
    v113 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v113 = sub_226D6EC0C();
  }

  v114 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v108;
  sub_226BE6628(v113, 0xD000000000000015, 0x8000000226D81D60, v114);
  v115 = v436;
  v116 = v390;
  sub_226D6A4EC();
  v117 = sub_226D6BC2C();
  (*(*(v117 - 8) + 48))(v116, 1, v117);
  v118 = sub_226D6E6BC();
  sub_226AC47B0(v116, &qword_27D7A77F8, &unk_226D75680);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v115;
  sub_226BE6628(v118, 0xD00000000000001ALL, 0x8000000226D81E30, v119);
  v120 = v436;
  v121 = v389;
  sub_226D6A55C();
  sub_226D672CC();
  v123 = v122;
  (v112)(v121, v417);
  if (v123)
  {
    v124 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v124 = sub_226D6EC0C();
  }

  v125 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v120;
  sub_226BE6628(v124, 0xD000000000000016, 0x8000000226D81DA0, v125);
  v126 = v436;
  v127 = v392;
  sub_226D6A55C();
  v128 = v391;
  sub_226D672DC();
  (v112)(v127, v417);
  v129 = v423;
  v130 = v424 + 48;
  v131 = *(v424 + 48);
  v131(v128, 1, v423);
  v132 = sub_226D6E6BC();
  sub_226AC47B0(v128, &unk_27D7A62F8, &unk_226D73B70);
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v126;
  sub_226BE6628(v132, 0xD000000000000018, 0x8000000226D81D80, v133);
  v134 = v436;
  v135 = v394;
  sub_226D6A55C();
  v136 = v393;
  sub_226D6729C();
  v435 = v112;
  (v112)(v135, v417);
  v429 = v131;
  v430 = v130;
  v131(v136, 1, v129);
  v137 = sub_226D6E6BC();
  sub_226AC47B0(v136, &unk_27D7A62F8, &unk_226D73B70);
  v138 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v134;
  sub_226BE6628(v137, 0xD000000000000014, 0x8000000226D81D40, v138);
  v139 = v436;
  v140 = v395;
  sub_226D6A54C();
  v141 = sub_226D67D3C();
  v142 = *(v141 - 8);
  v143 = *(v142 + 48);
  v144 = v143(v140, 1, v141);
  v433 = v142;
  if (v144 == 1)
  {
    sub_226AC47B0(v140, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v145 = sub_226D6EC0C();
  }

  else
  {
    sub_226D67D0C();
    (*(v142 + 8))(v140, v141);
    v145 = sub_226D6E6BC();
  }

  v146 = v409;
  v147 = v396;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v139;
  sub_226BE6628(v145, 0xD000000000000017, 0x8000000226D81E50, v148);
  v149 = v436;
  sub_226D6A54C();
  if (v143(v147, 1, v141) == 1)
  {
    sub_226AC47B0(v147, &qword_27D7A7808, &qword_226D75690);
  }

  else
  {
    v150 = v377;
    sub_226D67D2C();
    (*(v433 + 8))(v147, v141);
    v151 = sub_226D699EC();
    v152 = *(v151 - 8);
    if ((*(v152 + 48))(v150, 1, v151) == 1)
    {
      sub_226AC47B0(v150, &qword_27D7A77F0, &qword_226D75678);
    }

    else
    {
      sub_226D699DC();
      (*(v152 + 8))(v150, v151);
    }

    v146 = v409;
  }

  v153 = sub_226D6E36C();

  v154 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v149;
  sub_226BE6628(v153, 0x53746E656D796170, 0xED00007375746174, v154);
  v155 = v436;
  v156 = v397;
  sub_226D6A55C();
  sub_226D6730C();
  v158 = v157;
  (v435)(v156, v417);
  if (v158)
  {
    v159 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v159 = sub_226D6EC0C();
  }

  v160 = v433;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v155;
  sub_226BE6628(v159, 0xD000000000000020, 0x8000000226D81DC0, v161);
  v162 = v436;
  v163 = v398;
  sub_226D6A54C();
  if (v143(v163, 1, v141) == 1)
  {
    sub_226AC47B0(v163, &qword_27D7A7808, &qword_226D75690);
  }

  else
  {
    v164 = v163;
    v165 = v378;
    sub_226D67D1C();
    (*(v160 + 8))(v164, v141);
    sub_226D6778C();
    (*(v407 + 8))(v165, v408);
  }

  v166 = sub_226D6E36C();

  v167 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v162;
  sub_226BE6628(v166, v406, 0x8000000226D81D00, v167);
  v168 = v436;
  v169 = v399;
  sub_226D6A54C();
  if (v143(v169, 1, v141) == 1)
  {
    sub_226AC47B0(v169, &qword_27D7A7808, &qword_226D75690);
    v170 = 1;
  }

  else
  {
    sub_226D67D1C();
    (*(v160 + 8))(v169, v141);
    v170 = 0;
  }

  (*(v407 + 56))(v146, v170, 1, v408);
  v171 = sub_226D6E6BC();
  sub_226AC47B0(v146, &qword_27D7A7800, &unk_226D776D0);
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v168;
  sub_226BE6628(v171, 0xD000000000000016, 0x8000000226D81CE0, v172);
  v173 = v436;
  v174 = v400;
  sub_226D6A54C();
  if (v143(v174, 1, v141) == 1)
  {
    sub_226AC47B0(v174, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v175 = sub_226D6EC0C();
  }

  else
  {
    sub_226D67CFC();
    (*(v160 + 8))(v174, v141);
    v175 = sub_226D6E6BC();
  }

  v176 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v173;
  sub_226BE6628(v175, 0xD000000000000015, 0x8000000226D81CC0, v176);
  v177 = v436;
  v433 = "nextTokenAvailable";
  v178 = v401;
  sub_226D6A55C();
  sub_226D672EC();
  v179 = v417;
  v180 = v435;
  (v435)(v178, v417);
  v181 = sub_226D6E36C();

  v182 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v177;
  sub_226BE6628(v181, v432, v433 | 0x8000000000000000, v182);
  v183 = v436;
  sub_226D6A55C();
  sub_226D672AC();
  v180(v178, v179);
  v184 = sub_226D6E36C();

  v185 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v183;
  sub_226BE6628(v184, 0x746E61686372656DLL, 0xEC000000656D614ELL, v185);
  v186 = v436;
  sub_226D6A55C();
  v187 = v414;
  sub_226D672FC();
  v180(v178, v179);
  sub_226D6D15C();
  v189 = v188;
  v190 = v424 + 8;
  v191 = *(v424 + 8);
  (v191)(v187, v423);
  if (v189)
  {
    v192 = sub_226D6E36C();

    v193 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v186;
    sub_226BE6628(v192, 0x746E61686372656DLL, 0xEE006E69616D6F44, v193);
    v186 = v436;
  }

  v194 = v419;
  sub_226D6A50C();

  v195 = sub_226D6E8EC();
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v186;
  sub_226BE6628(v195, 0xD000000000000011, 0x8000000226D83800, v196);
  v197 = v436;
  sub_226D6A4AC();
  if (v198)
  {
    v199 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v199 = sub_226D6EC0C();
  }

  v200 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v197;
  sub_226BE6628(v199, 0xD000000000000014, 0x8000000226D83820, v200);
  v201 = v436;
  v202 = v414;
  sub_226D6A4DC();
  sub_226D6D15C();
  v204 = v203;
  (v191)(v202, v423);
  v424 = v190;
  v435 = v191;
  if (v204)
  {
    v205 = sub_226D6E36C();

    v206 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v201;
    sub_226BE6628(v205, 0xD000000000000014, 0x8000000226D838C0, v206);
    v201 = v436;
  }

  v207 = v402;
  sub_226D6A52C();
  sub_226D6796C();
  (*(v403 + 8))(v207, v404);
  v208 = sub_226D6E36C();

  v209 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v201;
  sub_226BE6628(v208, 0x617453726564726FLL, 0xEB00000000737574, v209);
  v210 = v436;
  sub_226D6A4FC();
  v211 = sub_226D6E36C();

  v212 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v210;
  sub_226BE6628(v211, v431, 0x8000000226D81C60, v212);
  v213 = v436;
  v214 = *(sub_226D6A4BC() + 16);

  v215 = v194;
  v216 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v217 = sub_226D6EC0C();
  v218 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v213;
  sub_226BE6628(v217, 0xD000000000000014, 0x8000000226D81C80, v218);
  v219 = v436;
  if (v214)
  {
    v220 = sub_226D6A4BC();
    sub_226C17C8C(v220);

    v221 = sub_226D6E6BC();
  }

  else
  {
    v221 = sub_226D6EC0C();
  }

  v222 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v219;
  sub_226BE6628(v221, 0xD000000000000028, 0x8000000226D83840, v222);
  v223 = v436;
  v224 = v215 + *(v411 + 24);
  v225 = v405;
  sub_226AC40E8(v224, v405, &qword_27D7A77B8, &qword_226D75588);
  v226 = v416;
  v227 = v412;
  if ((*(v416 + 48))(v225, 1, v412) == 1)
  {
    sub_226AC47B0(v225, &qword_27D7A77B8, &qword_226D75588);
    return v223;
  }

  (*(v226 + 32))(v415, v225, v227);
  v228 = v379;
  (*(v226 + 16))(v379);
  v229 = (*(v226 + 88))(v228, v227);
  v230 = *MEMORY[0x277CC7728];
  v433 = 0xD000000000000011;
  if (v229 == v230)
  {
    (*(v226 + 96))(v228, v227);
    (*(v384 + 32))(v413, v228, v385);
    v231 = v366;
    sub_226D6B0AC();
    sub_226D69FDC();
    (*(v367 + 8))(v231, v368);
    v232 = sub_226D6E36C();

    v233 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v223;
    sub_226BE6628(v232, 0xD000000000000011, 0x8000000226D81F00, v233);
    v234 = v436;
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v235 = sub_226D6EC5C();
    v236 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v234;
    sub_226BE6628(v235, 0x6D6C6C69666C7566, 0xEF65707954746E65, v236);
    v237 = v436;
    sub_226D6B06C();
    v431 = v216;
    if (v238)
    {
      v239 = sub_226D6E6BC();
    }

    else
    {
      v239 = sub_226D6EC0C();
    }

    v264 = v375;
    v265 = v365;
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v237;
    sub_226BE6628(v239, 0xD000000000000017, 0x8000000226D82060, v266);
    v267 = v436;
    v268 = v363;
    sub_226D6B05C();
    v269 = v423;
    v270 = v429;
    (v429)(v268, 1, v423);
    v271 = sub_226D6E6BC();
    sub_226AC47B0(v268, &unk_27D7A62F8, &unk_226D73B70);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v267;
    sub_226BE6628(v271, 0xD000000000000014, 0x8000000226D82080, v272);
    v273 = v436;
    sub_226D6B05C();
    if (v270(v265, 1, v269) == 1)
    {
      sub_226AC47B0(v265, &unk_27D7A62F8, &unk_226D73B70);
    }

    else
    {
      sub_226D6D15C();
      v275 = v274;
      (v435)(v265, v269);
      if (v275)
      {
        v276 = sub_226D6E36C();

        v277 = swift_isUniquelyReferenced_nonNull_native();
        v436 = v273;
        sub_226BE6628(v276, v433, 0x8000000226D82140, v277);
        v273 = v436;
      }
    }

    v278 = v364;
    sub_226D6B08C();
    (*(v361 + 48))(v278, 1, v362);
    v279 = sub_226D6E6BC();
    sub_226AC47B0(v278, &qword_27D7A8BE0, &unk_226D718F0);
    v280 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v273;
    sub_226BE6628(v279, 0xD000000000000014, 0x8000000226D820A0, v280);
    v281 = v436;
    sub_226D6B0CC();
    v282 = sub_226D6A84C();
    v283 = *(v282 - 8);
    if ((*(v283 + 48))(v264, 1, v282) == 1)
    {
      sub_226AC47B0(v264, &qword_27D7A7830, &unk_226D776C0);
      v284 = sub_226D670EC();
      v285 = v376;
      (*(*(v284 - 8) + 56))(v376, 1, 1, v284);
    }

    else
    {
      v285 = v376;
      sub_226D6A83C();
      (*(v283 + 8))(v264, v282);
      v286 = sub_226D670EC();
      (*(*(v286 - 8) + 48))(v285, 1, v286);
    }

    v287 = sub_226D6E6BC();
    sub_226AC47B0(v285, &qword_27D7A7838, &qword_226D756C0);
    v288 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v281;
    sub_226BE6628(v287, 0xD00000000000001DLL, 0x8000000226D820C0, v288);
    v289 = v436;
    sub_226D6B0BC();
    if (v290)
    {
      v291 = sub_226D6E6BC();
    }

    else
    {
      v291 = sub_226D6EC0C();
    }

    v292 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v289;
    v293 = v406;
    sub_226BE6628(v291, v406, 0x8000000226D820E0, v292);
    v294 = v436;
    v435 = "carrierSpecified";
    v295 = v383;
    sub_226D6B0DC();
    v296 = sub_226D6770C();
    sub_226AC47B0(v295, &qword_27D7A8BE0, &unk_226D718F0);
    v297 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v294;
    sub_226BE6628(v296, v293, v435 | 0x8000000000000000, v297);
    v298 = v436;
    sub_226D6B04C();
    v299 = sub_226D6770C();
    sub_226AC47B0(v295, &qword_27D7A8BE0, &unk_226D718F0);
    v300 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v298;
    sub_226BE6628(v299, v432, 0x8000000226D82120, v300);
    v301 = v436;
    sub_226D6B09C();
    if (v302)
    {
      v303 = sub_226D6E6BC();
    }

    else
    {
      v303 = sub_226D6EC0C();
    }

    v304 = v416;
    v305 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v301;
    sub_226BE6628(v303, 0x6570537365746F6ELL, 0xEE00646569666963, v305);
    v306 = v436;
    sub_226D6B07C();
    if (v307 || (sub_226D6A4CC(), v308))
    {
      v309 = sub_226D6E6BC();
    }

    else
    {
      v309 = sub_226D6EC0C();
    }

    v310 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v306;
    sub_226BE6628(v309, 0xD00000000000001ALL, 0x8000000226D81F80, v310);
    v311 = v436;
    (*(v384 + 8))(v413, v385);
    goto LABEL_81;
  }

  if (v229 == *MEMORY[0x277CC7720])
  {
    (*(v226 + 96))(v228, v227);
    (*(v380 + 32))(v387, v228, v382);
    v240 = v369;
    sub_226D6A7FC();
    sub_226D6926C();
    (*(v370 + 8))(v240, v371);
    v241 = sub_226D6E36C();

    v242 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v223;
    sub_226BE6628(v241, v433, 0x8000000226D81F00, v242);
    v243 = v436;
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v244 = sub_226D6EC5C();
    v245 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v243;
    sub_226BE6628(v244, 0x6D6C6C69666C7566, 0xEF65707954746E65, v245);
    v246 = v436;
    v247 = v372;
    sub_226D6A80C();
    v248 = sub_226D67C3C();
    (*(*(v248 - 8) + 48))(v247, 1, v248);
    v249 = sub_226D6E6BC();
    sub_226AC47B0(v247, &qword_27D7A7828, &unk_226D756B0);
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v246;
    sub_226BE6628(v249, 0xD000000000000016, 0x8000000226D81F20, v250);
    v251 = v436;
    v252 = v373;
    sub_226D6A81C();
    v253 = sub_226D6728C();
    (*(*(v253 - 8) + 48))(v252, 1, v253);
    v254 = sub_226D6E6BC();
    sub_226AC47B0(v252, &qword_27D7A7820, &unk_226D776B0);
    v255 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v251;
    sub_226BE6628(v254, 0xD000000000000017, 0x8000000226D81F40, v255);
    v256 = v436;
    v257 = v374;
    sub_226D6A7DC();
    v258 = sub_226D6CB6C();
    (*(*(v258 - 8) + 48))(v257, 1, v258);
    v259 = sub_226D6E6BC();
    sub_226AC47B0(v257, &qword_27D7A7818, &unk_226D756A0);
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v256;
    sub_226BE6628(v259, 0xD000000000000017, 0x8000000226D81F60, v260);
    v261 = v436;
    sub_226D6A7EC();
    if (v262)
    {
      v263 = sub_226D6E6BC();
    }

    else
    {
      v263 = sub_226D6EC0C();
    }

    v312 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v261;
    sub_226BE6628(v263, 0x6570537365746F6ELL, 0xEE00646569666963, v312);
    v313 = v436;
    sub_226D6A7CC();
    if (v314 || (sub_226D6A4CC(), v315))
    {
      v316 = sub_226D6E6BC();
    }

    else
    {
      v316 = sub_226D6EC0C();
    }

    v317 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v313;
    sub_226BE6628(v316, 0xD00000000000001ALL, 0x8000000226D81F80, v317);
    v318 = v436;
    v319 = v383;
    v320 = v387;
    sub_226D6A7BC();
    v321 = sub_226D6770C();
    sub_226AC47B0(v319, &qword_27D7A8BE0, &unk_226D718F0);
    v322 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v318;
    sub_226BE6628(v321, v433, 0x8000000226D81FA0, v322);
    v311 = v436;
    (*(v380 + 8))(v320, v382);
    v304 = v416;
LABEL_81:
    v323 = sub_226D6903C();
    v324 = *(v323 + 16);
    if (v324)
    {
      v433 = v311;
      v435 = *(v386 + 16);
      v325 = *(v386 + 80);
      v432 = v323;
      v326 = v323 + ((v325 + 32) & ~v325);
      v327 = *(v386 + 72);
      v328 = (v386 + 8);
      v329 = MEMORY[0x277D84F90];
      do
      {
        v331 = v420;
        v332 = v434;
        (v435)(v420, v326, v434);
        v333 = sub_226D67FEC();
        v335 = v334;
        (*v328)(v331, v332);
        if (v335)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v329 = sub_226BBAB0C(0, *(v329 + 2) + 1, 1, v329);
          }

          v337 = *(v329 + 2);
          v336 = *(v329 + 3);
          if (v337 >= v336 >> 1)
          {
            v329 = sub_226BBAB0C((v336 > 1), v337 + 1, 1, v329);
          }

          *(v329 + 2) = v337 + 1;
          v330 = &v329[16 * v337];
          *(v330 + 4) = v333;
          *(v330 + 5) = v335;
        }

        v326 += v327;
        --v324;
      }

      while (v324);

      v304 = v416;
      v311 = v433;
    }

    else
    {
    }

    v338 = sub_226D6E6BC();

    v339 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v311;
    sub_226BE6628(v338, 0xD000000000000014, 0x8000000226D81FE0, v339);
    v340 = v436;
    v341 = sub_226D6903C();
    v342 = *(v341 + 16);
    if (v342)
    {
      v433 = v340;
      v435 = *(v386 + 16);
      v343 = *(v386 + 80);
      v432 = v341;
      v344 = v341 + ((v343 + 32) & ~v343);
      v345 = *(v386 + 72);
      v346 = (v386 + 8);
      v347 = MEMORY[0x277D84F90];
      do
      {
        v349 = v421;
        v350 = v434;
        (v435)(v421, v344, v434);
        v351 = sub_226D6800C();
        v353 = v352;
        (*v346)(v349, v350);
        if (v353)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v347 = sub_226BBAB0C(0, *(v347 + 2) + 1, 1, v347);
          }

          v355 = *(v347 + 2);
          v354 = *(v347 + 3);
          if (v355 >= v354 >> 1)
          {
            v347 = sub_226BBAB0C((v354 > 1), v355 + 1, 1, v347);
          }

          *(v347 + 2) = v355 + 1;
          v348 = &v347[16 * v355];
          *(v348 + 4) = v351;
          *(v348 + 5) = v353;
        }

        v344 += v345;
        --v342;
      }

      while (v342);

      v304 = v416;
      v340 = v433;
    }

    else
    {
    }

    v356 = sub_226D6E6BC();

    v357 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v340;
    sub_226BE6628(v356, 0xD000000000000018, 0x8000000226D82000, v357);
    v223 = v436;
    (*(v304 + 8))(v415, v412);
    return v223;
  }

  v436 = 0;
  v437 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD00000000000001ALL, 0x8000000226D838A0);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226C1527C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_226C152A0, 0, 0);
}

uint64_t sub_226C152A0(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[3];
  v4 = sub_226D676AC();
  v1[6] = v4;
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  sub_226D6EB8C();

  v6 = v1[2];
  v1[7] = v6;
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v1;
  v7[1] = sub_226C1540C;

  return sub_226D492B4(v6);
}

uint64_t sub_226C1540C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_226C15750;
  }

  else
  {
    v4 = sub_226C15520;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226C15520()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v17 = *(v0 + 56);

    sub_226D53D38(v1);

    v3 = v17;
    if (*(v17 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F6A8);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9EC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 48);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "No message IDs to delete. Skipping.", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    v9 = 0;
    goto LABEL_12;
  }

  v3 = sub_226D549F0(v1, v2);

  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  v7[2] = v5;
  v7[3] = v3;
  v7[5] = v6;
  sub_226D6EB8C();

  if (v4)
  {
    v8 = *(v0 + 8);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = *(v0 + 88);
LABEL_12:
  v8 = *(v0 + 8);
LABEL_13:

  return v8(v9);
}

uint64_t sub_226C15750()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_226C157BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_226D6CDBC();
    if (v10)
    {
      v11 = sub_226D6CDDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_226D6CDCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_226D6CDBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_226D6CDDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_226D6CDCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_226C159EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_226C16198(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_226B11B98(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_226C157BC(v13, a3, a4, &v12);
  v10 = v4;
  sub_226B11B98(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_226C15B9C()
{
  result = qword_27D7A8048;
  if (!qword_27D7A8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8048);
  }

  return result;
}

uint64_t sub_226C15BF0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = sub_226D6EA3C();
  v2[6] = swift_task_alloc();
  sub_226D6E1BC();
  v2[7] = swift_task_alloc();
  v4 = sub_226D6EA4C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_226D679BC();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C15D6C, a2, 0);
}

void sub_226C15D6C()
{
  if (!*(v0[4] + 112))
  {
    v23 = v0[4];
    if (qword_28105F640 != -1)
    {
      swift_once();
    }

    v1 = sub_226D6E07C();
    __swift_project_value_buffer(v1, qword_28105F648);
    v2 = sub_226D6E05C();
    v3 = sub_226D6E9EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226AB4000, v2, v3, "Starting push notification coordinator", v4, 2u);
      MEMORY[0x22AA8BEE0](v4, -1, -1);
    }

    v5 = v0[4];

    v22 = v5;
    *(*(v5 + 120) + OBJC_IVAR____TtCC13FinanceDaemon27PushNotificationCoordinatorP33_78F3D932150F9D772EA7172189F2498315DelegateWrapper_delegate + 8) = &off_283A6E5F8;
    swift_unknownObjectWeakAssign();
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Creating connection for production environment", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];

    v15 = *MEMORY[0x277CEE9F0];
    (*(v9 + 104))(v10, *MEMORY[0x277CC6EA8], v12);
    v24 = v15;
    sub_226D679AC();
    (*(v9 + 8))(v10, v12);
    sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
    (*(v14 + 104))(v11, *MEMORY[0x277D85268], v13);
    sub_226D6E19C();
    v0[2] = MEMORY[0x277D84F90];
    sub_226C190C0(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
    sub_226AC4194(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0, MEMORY[0x277D83970]);
    sub_226D6ED5C();
    v16 = sub_226D6EA8C();
    v17 = objc_allocWithZone(MEMORY[0x277CEEA10]);
    v18 = sub_226D6E36C();

    v19 = [v17 initWithEnvironmentName:v24 namedDelegatePort:v18 queue:v16];

    if (!v19)
    {
      __break(1u);
      return;
    }

    [v19 setDelegate_];
    v20 = *(v23 + 112);
    *(v23 + 112) = v19;
  }

  v21 = v0[1];

  v21();
}

uint64_t sub_226C16198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_226D6CDBC();
  v11 = result;
  if (result)
  {
    result = sub_226D6CDDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_226D6CDCC();
  sub_226C157BC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_226C16250(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_226B11B44(a3, a4);
          return sub_226C159EC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_226C163B8(uint64_t a1, void *a2)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_226D6D3DC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v12 = sub_226D6E07C();
  __swift_project_value_buffer(v12, qword_28105F5C0);
  v43 = *(v4 + 16);
  v43(v8, v11, v3);
  v13 = sub_226D6E05C();
  v14 = v3;
  v15 = sub_226D6E9EC();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a2;
    v17 = v16;
    v39 = v16;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v17 = 136315138;
    sub_226C190C0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v18 = v14;
    v19 = sub_226D6F1CC();
    v41 = v11;
    v21 = v20;
    v22 = *(v4 + 8);
    v44 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = v8;
    v24 = v18;
    v22(v23, v18);
    v25 = sub_226AC4530(v19, v21, aBlock);
    v11 = v41;

    v26 = v39;
    *(v39 + 4) = v25;
    v27 = v26;
    _os_log_impl(&dword_226AB4000, v13, v15, "Pruning order registrations cancelled before %s", v26, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    a2 = v42;
    MEMORY[0x22AA8BEE0](v27, -1, -1);

    v29 = v24;
  }

  else
  {

    v22 = *(v4 + 8);
    v44 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v8, v14);
    v29 = v14;
  }

  v30 = v45;
  v43(v45, v11, v29);
  v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  (*(v4 + 32))(v32 + v31, v30, v29);
  *(v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_226C19558;
  *(v33 + 24) = v32;
  aBlock[4] = sub_226B2A194;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_95;
  v34 = _Block_copy(aBlock);
  v35 = a2;

  [v35 performBlockAndWait_];
  _Block_release(v34);
  v22(v11, v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226C1685C(uint64_t a1, void *a2)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  sub_226D6D3DC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v12 = sub_226D6E07C();
  __swift_project_value_buffer(v12, qword_28105F5C0);
  v43 = *(v4 + 16);
  v43(v8, v11, v3);
  v13 = sub_226D6E05C();
  v14 = v3;
  v15 = sub_226D6E9EC();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a2;
    v17 = v16;
    v39 = v16;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v17 = 136315138;
    sub_226C190C0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v18 = v14;
    v19 = sub_226D6F1CC();
    v41 = v11;
    v21 = v20;
    v22 = *(v4 + 8);
    v44 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = v8;
    v24 = v18;
    v22(v23, v18);
    v25 = sub_226AC4530(v19, v21, aBlock);
    v11 = v41;

    v26 = v39;
    *(v39 + 4) = v25;
    v27 = v26;
    _os_log_impl(&dword_226AB4000, v13, v15, "Pruning order web service log entries created before %s", v26, 0xCu);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    a2 = v42;
    MEMORY[0x22AA8BEE0](v27, -1, -1);

    v29 = v24;
  }

  else
  {

    v22 = *(v4 + 8);
    v44 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v8, v14);
    v29 = v14;
  }

  v30 = v45;
  v43(v45, v11, v29);
  v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  (*(v4 + 32))(v32 + v31, v30, v29);
  *(v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_226C1943C;
  *(v33 + 24) = v32;
  aBlock[4] = sub_226B2A194;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226CAD254;
  aBlock[3] = &block_descriptor_85;
  v34 = _Block_copy(aBlock);
  v35 = a2;

  [v35 performBlockAndWait_];
  _Block_release(v34);
  v22(v11, v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226C16D00()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5C0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Pruning order web services", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v4);
  return sub_226D6EB7C();
}

uint64_t sub_226C1704C()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5C0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Pruning order types", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v4);
  return sub_226D6EB7C();
}

uint64_t sub_226C17398()
{
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F5C0);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Pruning wallet messages", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  memset(aBlock, 0, sizeof(aBlock));
  v9 = &type metadata for WidgetRefresher;
  v10 = sub_226B31FA8();
  sub_226AFD680(v8, aBlock, &qword_27D7A6910, &unk_226D721C0);
  v4 = type metadata accessor for WalletMessageUpdater();
  v5 = swift_allocObject();
  v9 = v4;
  v10 = sub_226C190C0(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
  v8[0] = v5;
  sub_226AFD680(v8, &aBlock[2] + 8, &qword_27D7A6E50, &unk_226D73598);
  v6 = sub_226C19328(aBlock, v8);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8050, &unk_226D775D0);
  sub_226D6EB7C();
  sub_226AFD62C(v8);
  if (v11 == 1)
  {
    ManagedOrderDashboardItemUpdater.postProcess(shouldRefreshWalletMessages:)(v12);
  }

  return sub_226AFD62C(aBlock);
}

uint64_t sub_226C17808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a4@<X3>, double *a5@<X8>)
{
  v30 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = sub_226D6D4AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_226D6D46C();
  sub_226D3D740(a4, v14);
  sub_226AC40E8(v14, v11, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {

    sub_226C196CC(a4, type metadata accessor for TokenBucket.State);
    sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
    (*(v16 + 8))(v21, v15);
    result = sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    a2 = 0;
    v26 = 0;
  }

  else
  {
    v24 = 0x8000000226D83600;
    (*(v16 + 32))(v18, v11, v15);
    sub_226D6D3BC();
    v26 = v27;
    sub_226C196CC(a4, type metadata accessor for TokenBucket.State);
    v28 = *(v16 + 8);
    v28(v18, v15);
    sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
    result = (v28)(v21, v15);
    v23 = 0xD000000000000030;
    v25 = v30;
  }

  *a5 = v23;
  *(a5 + 1) = v24;
  *(a5 + 2) = v25;
  *(a5 + 3) = a2;
  *(a5 + 4) = v26;
  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_226C17C20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226C18310(*(v1 + 16), *(v1 + 24), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226C17C54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226C189A0(*(v1 + 16), *(v1 + 24), *(v1 + 40));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

BOOL sub_226C17C8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7830, &unk_226D776C0);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7838, &qword_226D756C0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = sub_226D670EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v53 - v15;
  MEMORY[0x28223BE20](v16);
  v58 = &v53 - v17;
  v18 = sub_226D6B0EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v70 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D6E57C();
  v22 = *(v21 + 16);
  v71 = v11;
  v67 = v12;
  if (v22)
  {
    v23 = v19 + 16;
    v63 = *(v19 + 16);
    v64 = v19 + 16;
    v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v53 = v21;
    v25 = v21 + v24;
    v26 = *(v23 + 56);
    v55 = (v12 + 56);
    v61 = (v23 - 8);
    v62 = v26;
    v59 = (v12 + 32);
    v60 = (v12 + 48);
    v68 = MEMORY[0x277D84F90];
    v54 = v18;
    do
    {
      v69 = v22;
      v63(v70, v25, v18);
      sub_226D6B0CC();
      v27 = sub_226D6A84C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v5, 1, v27) == 1)
      {
        v29 = v66;
        v11 = v71;
        (*v55)(v66, 1, 1, v71);
      }

      else
      {
        v30 = v57;
        sub_226AC40E8(v5, v57, &qword_27D7A7830, &unk_226D776C0);
        v31 = v5;
        v32 = v10;
        v33 = v66;
        sub_226D6A83C();
        v34 = v30;
        v29 = v33;
        v10 = v32;
        v5 = v31;
        v18 = v54;
        (*(v28 + 8))(v34, v27);
        v11 = v71;
      }

      sub_226AC47B0(v5, &qword_27D7A7830, &unk_226D776C0);
      sub_226AFD80C(v29, v10, &qword_27D7A7838, &qword_226D756C0);
      (*v61)(v70, v18);
      if ((*v60)(v10, 1, v11) == 1)
      {
        sub_226AC47B0(v10, &qword_27D7A7838, &qword_226D756C0);
      }

      else
      {
        v35 = *v59;
        (*v59)(v65, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_226BBBB78(0, v68[2] + 1, 1, v68);
        }

        v37 = v68[2];
        v36 = v68[3];
        if (v37 >= v36 >> 1)
        {
          v68 = sub_226BBBB78((v36 > 1), v37 + 1, 1, v68);
        }

        v38 = v67;
        v39 = v68;
        v68[2] = v37 + 1;
        v40 = v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37;
        v11 = v71;
        v35(v40, v65, v71);
      }

      v25 += v62;
      v22 = v69 - 1;
    }

    while (v69 != 1);
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  v70 = v68[2];
  if (v70)
  {
    v41 = v67 + 16;
    v42 = v11;
    v43 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v44 = *(v67 + 16);
    v44(v58, v43, v42);
    v45 = 1;
    v69 = (v41 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v46 = v70 == v45;
      if (v70 == v45)
      {
        break;
      }

      v47 = v67;
      v48 = v56;
      v49 = v71;
      v44(v56, &v43[*(v67 + 72) * v45++], v71);
      v50 = MEMORY[0x22AA83180](v48, v58);
      v51 = *(v47 + 8);
      v51(v48, v49);
      if ((v50 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    v51 = *(v41 - 8);
LABEL_23:
    v51(v58, v71);
  }

  else
  {

    return 1;
  }

  return v46;
}

unint64_t sub_226C18310(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Instant(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v54[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v54];

  v15 = v54[0];
  if (!v14)
  {
    v30 = v54[0];
    sub_226D6D04C();

    swift_willThrow();
    return a1;
  }

  if (a2)
  {
    sub_226D69D3C();
    v16 = v15;

    v17 = sub_226D69D1C();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_226D70840;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
    *(v18 + 64) = sub_226AC4194(&qword_27D7A74F0, &qword_27D7A74E8, &qword_226D75250, MEMORY[0x277CC9C78]);
    *(v18 + 32) = a2;
    v19 = sub_226D6E91C();
    [v17 setPredicate_];

    a1 = sub_226D6EBBC();
    if (v3)
    {
      return a1;
    }

    if (!(a1 >> 62))
    {
LABEL_5:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_6:
        v54[0] = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
        }

        v53 = 0;
        v21 = v54[0];
        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = 0;
          do
          {
            MEMORY[0x22AA8AFD0](v22, a1);
            v23 = [swift_unknownObjectRetain() messageID];
            v24 = sub_226D6E39C();
            v26 = v25;
            swift_unknownObjectRelease_n();

            v54[0] = v21;
            v28 = v21[2];
            v27 = v21[3];
            if (v28 >= v27 >> 1)
            {
              sub_226AE1D68((v27 > 1), v28 + 1, 1);
              v21 = v54[0];
            }

            ++v22;
            v21[2] = v28 + 1;
            v29 = &v21[2 * v28];
            v29[4] = v24;
            v29[5] = v26;
          }

          while (v20 != v22);
        }

        else
        {
          v41 = 32;
          do
          {
            v42 = *(a1 + v41);
            v43 = [v42 messageID];
            v44 = sub_226D6E39C();
            v46 = v45;

            v54[0] = v21;
            v48 = v21[2];
            v47 = v21[3];
            if (v48 >= v47 >> 1)
            {
              sub_226AE1D68((v47 > 1), v48 + 1, 1);
              v21 = v54[0];
            }

            v21[2] = v48 + 1;
            v49 = &v21[2 * v48];
            v49[4] = v44;
            v49[5] = v46;
            v41 += 8;
            --v20;
          }

          while (v20);
        }

        goto LABEL_25;
      }

LABEL_19:

      v21 = MEMORY[0x277D84F90];
LABEL_25:
      a1 = sub_226AE3C28(v21);

      return a1;
    }

LABEL_18:
    v20 = sub_226D6EDFC();
    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v31 = v54[0];
  sub_226D6D46C();
  (*(v10 + 32))(v12, v8, v9);
  v51[1] = sub_226D69D3C();
  v51[0] = sub_226D69D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v52 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_226D70840;
  v34 = sub_226D67A1C();
  v35 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v35;
  *(v33 + 32) = v34;
  v36 = v51[0];
  *(v32 + 32) = sub_226D6E91C();
  *(v32 + 40) = sub_226D69D2C();
  v37 = sub_226D6E5CC();

  v38 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v36 setPredicate_];
  v39 = v52;
  v40 = sub_226D6EBBC();
  if (!v39)
  {
    a1 = v40;
    (*(v10 + 8))(v12, v9);

    if (!(a1 >> 62))
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  (*(v10 + 8))(v12, v9);

  return a1;
}

uint64_t sub_226C189A0(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Instant(0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6B4EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v56[0] = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:v56];

  if (v15)
  {
    v48 = v10;
    v49 = v8;
    v47 = v11;
    v16 = v56[0];
    v54 = a1;
    [a1 refreshAllObjects];
    v53 = v13;
    sub_226D6B4DC();
    v17 = 1 << *(a2 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a2 + 56);
    v20 = (v17 + 63) >> 6;

    LOBYTE(v11) = 0;
    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v22 = v21;
LABEL_9:

        v23 = sub_226D6B4CC();
        if (v3)
        {
          break;
        }

        v24 = v23;
        v19 &= v19 - 1;

        LOBYTE(v11) = v11 | v24;
        v21 = v22;
        if (!v19)
        {
          goto LABEL_6;
        }
      }

      (*(v47 + 8))(v53, v48);
    }

    else
    {
      while (1)
      {
LABEL_6:
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v22 >= v20)
        {
          break;
        }

        v19 = *(a2 + 56 + 8 * v22);
        ++v21;
        if (v19)
        {
          goto LABEL_9;
        }
      }

      v26 = v50;
      sub_226D6D46C();
      v27 = v52;
      (*(v52 + 32))(v55, v26, v49);
      sub_226D69D3C();
      v28 = sub_226D69D1C();
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_226D70840;
      *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
      *(v29 + 64) = sub_226AC4194(&qword_27D7A74F0, &qword_27D7A74E8, &qword_226D75250, MEMORY[0x277CC9C78]);
      *(v29 + 32) = v51;

      v30 = sub_226D6E91C();
      [v28 setPredicate_];

      v31 = sub_226D6EBBC();
      if (v3)
      {

        (*(v27 + 8))(v55, v49);
        (*(v47 + 8))(v53, v48);
        return v11 & 1;
      }

      v19 = v31;
      v50 = v28;
      if (!(v31 >> 62))
      {
        v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }

LABEL_26:
      v33 = sub_226D6EDFC();
      if (!v33)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v33 < 1)
      {
        __break(1u);
      }

      v34 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x22AA8AFD0](v34, v19);
        }

        else
        {
          v35 = *(v19 + 8 * v34 + 32);
        }

        v36 = v35;
        ++v34;
        v37 = sub_226D6D3EC();
        [v36 setBackingEmailExistenceLastVerifiedDate_];
      }

      while (v33 != v34);
LABEL_27:

      v38 = v54;
      v39 = [v54 hasChanges];
      v40 = v49;
      v41 = v52;
      v42 = v53;
      v43 = v55;
      if (v39)
      {
        v56[0] = 0;
        if (![v38 save_])
        {
          v45 = v56[0];
          sub_226D6D04C();

          swift_willThrow();
          (*(v41 + 8))(v43, v40);
          (*(v47 + 8))(v42, v48);
          return v11 & 1;
        }

        v44 = v56[0];
      }

      (*(v41 + 8))(v43, v40);
      (*(v47 + 8))(v42, v48);
    }
  }

  else
  {
    v25 = v56[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  return v11 & 1;
}

uint64_t sub_226C1900C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226C0DE7C(a1, v4, v5, v6);
}

uint64_t sub_226C190C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C19108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226C0EBDC(a1, v4, v5, v6);
}

uint64_t sub_226C191BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD827C;

  return sub_226C9ACEC(a1, v4);
}

uint64_t sub_226C19274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226CAD4F0(a1, v4, v5, v6);
}

unint64_t sub_226C19454()
{
  result = qword_28105F400;
  if (!qword_28105F400)
  {
    sub_226AE59B4(255, &qword_28105F410, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F400);
  }

  return result;
}

uint64_t objectdestroy_77Tm()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_226C19570(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_226D6D4AC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t type metadata accessor for OrderWebServiceCoordinator.ActiveOrderEvent(uint64_t a1)
{
  result = qword_281061490;
  if (!qword_281061490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C19664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C196CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226C19754(uint64_t a1)
{
  sub_226D6A58C();
  if (v1 <= 0x3F)
  {
    sub_226C19800(319);
    if (v2 <= 0x3F)
    {
      sub_226D6D4AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226C19800(uint64_t a1)
{
  if (!qword_281062BA8)
  {
    sub_226D6904C();
    v1 = sub_226D6EC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281062BA8);
    }
  }
}

uint64_t sub_226C19908@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_226C19978(a2, a1);
  if (!v2)
  {
    v5 = sub_226D6D52C();
    return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  }

  return result;
}

uint64_t sub_226C19978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  if (a1)
  {
    v14[1] = 25705;
    v14[2] = 0xE200000000000000;
    sub_226D6EE8C();
    if (*(a1 + 16) && (v7 = sub_226C2FE4C(v15), (v8 & 1) != 0))
    {
      sub_226AC4708(*(a1 + 56) + 32 * v7, v16);
      sub_226AE5030(v15);
      v9 = sub_226D6D52C();
      v10 = swift_dynamicCast();
      v11 = *(v9 - 8);
      (*(v11 + 56))(v6, v10 ^ 1u, 1, v9);
      if ((*(v11 + 48))(v6, 1, v9) != 1)
      {
        return (*(v11 + 32))(a2, v6, v9);
      }
    }

    else
    {
      sub_226AE5030(v15);
      v13 = sub_226D6D52C();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    }

    sub_226AC47B0(v6, &qword_27D7A6D68, &qword_226D75210);
  }

  sub_226C1A7A0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_226C19BA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v46 - v17;
  if (a1)
  {
    v50 = 0xD000000000000013;
    v51 = 0x8000000226D838E0;
    sub_226D6EE8C();
    if (*(a1 + 16) && (v19 = sub_226C2FE4C(v52), (v20 & 1) != 0))
    {
      sub_226AC4708(*(a1 + 56) + 32 * v19, v53);
      sub_226AE5030(v52);
      v21 = swift_dynamicCast();
      v22 = *(v5 + 56);
      v23 = v21 ^ 1u;
      v24 = v18;
    }

    else
    {
      sub_226AE5030(v52);
      v22 = *(v5 + 56);
      v24 = v18;
      v23 = 1;
    }

    v49 = v22;
    v22(v24, v23, 1, v4);
    v54 = v18;
    v50 = 0xD000000000000010;
    v51 = 0x8000000226D83900;
    sub_226D6EE8C();
    v25 = *(a1 + 16);
    v46[0] = v7;
    v46[1] = v2;
    if (v25 && (v26 = sub_226C2FE4C(v52), (v27 & 1) != 0))
    {
      sub_226AC4708(*(a1 + 56) + 32 * v26, v53);
      sub_226AE5030(v52);
      v28 = v5;
      v29 = swift_dynamicCast() ^ 1;
      v30 = v15;
    }

    else
    {
      sub_226AE5030(v52);
      v28 = v5;
      v30 = v15;
      v29 = 1;
    }

    v49(v30, v29, 1, v4);
    v31 = *(v10 + 48);
    sub_226AF265C(v54, v12);
    sub_226AF265C(v15, &v12[v31]);
    v32 = *(v28 + 48);
    v33 = v32(v12, 1, v4);
    v34 = v32(&v12[v31], 1, v4);
    if (v33 == 1)
    {
      if (v34 == 1)
      {
        sub_226C1A7A0();
        swift_allocError();
        swift_willThrow();
        sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
        return sub_226AC47B0(v54, &qword_27D7A8BE0, &unk_226D718F0);
      }

      v40 = &v12[v31];
      v37 = v48;
      (*(v5 + 32))(v48, v40, v4);
    }

    else
    {
      v36 = *(v28 + 32);
      if (v34 == 1)
      {
        v37 = v48;
        v38 = v48;
        v39 = v12;
      }

      else
      {
        v41 = v47;
        v36(v47, v12, v4);
        v42 = v46[0];
        v36(v46[0], &v12[v31], v4);
        sub_226BBF204();
        v43 = sub_226D6E33C();
        v44 = (v43 & 1) == 0;
        if (v43)
        {
          v45 = v42;
        }

        else
        {
          v45 = v41;
        }

        if (!v44)
        {
          v42 = v41;
        }

        (*(v28 + 8))(v45, v4);
        v37 = v48;
        v38 = v48;
        v39 = v42;
      }

      v36(v38, v39, v4);
    }

    v49(v37, 0, 1, v4);
    sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AC47B0(v54, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else
  {
    sub_226C1A7A0();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_226C1A13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  if (a1)
  {
    v15[1] = 0x49746E756F636361;
    v15[2] = 0xE900000000000064;
    sub_226D6EE8C();
    if (*(a1 + 16) && (v7 = sub_226C2FE4C(v16), (v8 & 1) != 0))
    {
      sub_226AC4708(*(a1 + 56) + 32 * v7, v17);
      sub_226AE5030(v16);
      v9 = sub_226D6D52C();
      v10 = swift_dynamicCast();
      v11 = *(v9 - 8);
      v12 = *(v11 + 56);
      v12(v6, v10 ^ 1u, 1, v9);
      if ((*(v11 + 48))(v6, 1, v9) != 1)
      {
        (*(v11 + 32))(a2, v6, v9);
        return (v12)(a2, 0, 1, v9);
      }
    }

    else
    {
      sub_226AE5030(v16);
      v14 = sub_226D6D52C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    sub_226AC47B0(v6, &qword_27D7A6D68, &qword_226D75210);
  }

  sub_226C1A7A0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_226C1A3A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21[1] = 0x746361736E617274;
    v21[2] = 0xEF657461446E6F69;
    sub_226D6EE8C();
    if (*(a1 + 16) && (v11 = sub_226C2FE4C(v22), (v12 & 1) != 0))
    {
      sub_226AC4708(*(a1 + 56) + 32 * v11, v23);
      sub_226AE5030(v22);
      v13 = swift_dynamicCast();
      v14 = *(v8 + 56);
      v14(v6, v13 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v15 = *(v8 + 32);
        v15(v10, v6, v7);
        v15(a2, v10, v7);
        return (v14)(a2, 0, 1, v7);
      }
    }

    else
    {
      sub_226AE5030(v22);
      v14 = *(v8 + 56);
      v14(v6, 1, 1, v7);
    }

    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_28105F600);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9CC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226AB4000, v17, v18, "Unable to find tombstone transactionDate, returning distantPast", v19, 2u);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    sub_226D6D39C();
    return (v14)(a2, 0, 1, v7);
  }

  sub_226C1A7A0();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_226C1A7A0()
{
  result = qword_27D7A8060;
  if (!qword_27D7A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8060);
  }

  return result;
}

uint64_t sub_226C1A854()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + *(_s8MetadataV9CloudItemVMa_1(0) + 24));
  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_226C1C8B4(v8, v4, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v10 = *v4;
      sub_226C1C814(v4, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v8 += v9;
      --v6;
    }

    while (v6);
    return v12;
  }

  return result;
}

uint64_t sub_226C1A9C4()
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1AAC8(uint64_t a1)
{
  sub_226D6EC4C();
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226D6E30C();
}

uint64_t sub_226C1ABB8(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1ACB8(void *a1, void *a2, uint64_t a3)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  return sub_226D6D44C();
}

uint64_t sub_226C1AD58(uint64_t a1)
{
  v2 = v1;
  v4 = _s8MetadataV9CloudItemVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C1C8B4(v2, v10, _s8MetadataV15CloudItemStatusOMa_1);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    return MEMORY[0x22AA8B3B0](v12);
  }

  else
  {
    sub_226C1C93C(v10, v7, _s8MetadataV9CloudItemVMa_1);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    _s8MetadataV9CloudItemV6ObjectVMa_1(0);
    sub_226D6D52C();
    sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_226D6E30C();
    sub_226D6D4AC();
    sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226AF0CF0(a1, *&v7[*(v4 + 24)]);
    return sub_226C1C814(v7, _s8MetadataV9CloudItemVMa_1);
  }
}

uint64_t sub_226C1B028(uint64_t a1)
{
  v2 = v1;
  v3 = _s8MetadataV9LocalItemVMa_1(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s8MetadataV15LocalItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C1C8B4(v2, v9, _s8MetadataV15LocalItemStatusOMa_1);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x22AA8B3B0](v11);
  }

  else
  {
    sub_226C1C93C(v9, v6, _s8MetadataV9LocalItemVMa_1);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    sub_226D6D4AC();
    sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    return sub_226C1C814(v6, _s8MetadataV9LocalItemVMa_1);
  }
}

uint64_t sub_226C1B228(uint64_t a1)
{
  v2 = v1;
  v4 = _s8MetadataV9LocalItemVMa_1(0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s8MetadataV15LocalItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemVMa_1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B9BC();
  sub_226C1CEF4(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
  sub_226D6E30C();
  v16 = _s8MetadataVMa_1(0);
  sub_226D6F31C();
  sub_226C1C8B4(v1 + *(v16 + 24), v15, _s8MetadataV15CloudItemStatusOMa_1);
  v17 = (*(v10 + 48))(v15, 2, v9);
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    MEMORY[0x22AA8B3B0](v18);
  }

  else
  {
    sub_226C1C93C(v15, v12, _s8MetadataV9CloudItemVMa_1);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    _s8MetadataV9CloudItemV6ObjectVMa_1(0);
    v25[2] = sub_226D6D52C();
    v25[1] = sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_226D6E30C();
    v25[0] = sub_226D6D4AC();
    sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226AF0CF0(a1, *&v12[*(v9 + 24)]);
    sub_226C1C814(v12, _s8MetadataV9CloudItemVMa_1);
  }

  v19 = v27;
  v20 = v28;
  v21 = v26;
  sub_226C1C8B4(v2 + *(v16 + 28), v26, _s8MetadataV15LocalItemStatusOMa_1);
  v22 = (*(v19 + 48))(v21, 2, v20);
  if (v22)
  {
    if (v22 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }

    return MEMORY[0x22AA8B3B0](v23);
  }

  else
  {
    sub_226C1C93C(v21, v6, _s8MetadataV9LocalItemVMa_1);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    sub_226D6D4AC();
    sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    return sub_226C1C814(v6, _s8MetadataV9LocalItemVMa_1);
  }
}

uint64_t sub_226C1B74C(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226AF0CF0(v4, *(v1 + *(a1 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226C1B8D0(uint64_t a1, uint64_t a2)
{
  sub_226D6EC4C();
  _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  sub_226D6E30C();
  v5 = *(v2 + *(a2 + 24));

  return sub_226AF0CF0(a1, v5);
}

uint64_t sub_226C1BA44(uint64_t a1, uint64_t a2)
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  sub_226D6D52C();
  sub_226C1CEF4(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226AF0CF0(v5, *(v2 + *(a2 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226C1BBC4(void *a1, void *a2, uint64_t a3)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  if ((sub_226D6D4EC() & 1) == 0 || (sub_226D6D44C() & 1) == 0 || (sub_226D6EC3C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0 || (sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2E43C(v7, v8);
}

uint64_t sub_226C1BD18()
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1BDC4(uint64_t a1)
{
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226D6E30C();
}

uint64_t sub_226C1BE54(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226C1CEF4(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1BF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226C1BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226C1BFF4(uint64_t a1, uint64_t a2, int *a3)
{
  if ((MEMORY[0x22AA87A30]() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || (sub_226C1C084(a1 + a3[6], a2 + a3[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];

  return sub_226C1C468(a1 + v6, a2 + v6);
}

uint64_t sub_226C1C084(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8070, &qword_226D77808);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226C1C8B4(a1, &v19 - v12, _s8MetadataV15CloudItemStatusOMa_1);
  sub_226C1C8B4(a2, &v13[v15], _s8MetadataV15CloudItemStatusOMa_1);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226C1C814(v13, _s8MetadataV15CloudItemStatusOMa_1);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226C1C8B4(v13, v10, _s8MetadataV15CloudItemStatusOMa_1);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226C1C93C(&v13[v15], v7, _s8MetadataV9CloudItemVMa_1);
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      if ((sub_226D6EC3C() & 1) == 0 || (_s8MetadataV9CloudItemV6ObjectVMa_1(0), (sub_226D6D4EC() & 1) == 0) || (sub_226D6D44C() & 1) == 0 || (sub_226D6EC3C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0 || (sub_226D6D44C() & 1) == 0 || (sub_226B2E43C(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]) & 1) == 0)
      {
        sub_226C1C814(v7, _s8MetadataV9CloudItemVMa_1);
        sub_226C1C814(v10, _s8MetadataV9CloudItemVMa_1);
        sub_226C1C814(v13, _s8MetadataV15CloudItemStatusOMa_1);
        return 0;
      }

      sub_226C1C814(v7, _s8MetadataV9CloudItemVMa_1);
      sub_226C1C814(v10, _s8MetadataV9CloudItemVMa_1);
      goto LABEL_8;
    }

    sub_226C1C814(v10, _s8MetadataV9CloudItemVMa_1);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A8070, &qword_226D77808);
  return 0;
}

uint64_t sub_226C1C468(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15LocalItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8068, &qword_226D77800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226C1C8B4(a1, &v19 - v12, _s8MetadataV15LocalItemStatusOMa_1);
  sub_226C1C8B4(a2, &v13[v15], _s8MetadataV15LocalItemStatusOMa_1);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226C1C814(v13, _s8MetadataV15LocalItemStatusOMa_1);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226C1C8B4(v13, v10, _s8MetadataV15LocalItemStatusOMa_1);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226C1C93C(&v13[v15], v7, _s8MetadataV9LocalItemVMa_1);
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      if ((sub_226D6EC3C() & 1) == 0 || (sub_226D6D44C() & 1) == 0)
      {
        sub_226C1C814(v7, _s8MetadataV9LocalItemVMa_1);
        sub_226C1C814(v10, _s8MetadataV9LocalItemVMa_1);
        sub_226C1C814(v13, _s8MetadataV15LocalItemStatusOMa_1);
        return 0;
      }

      sub_226C1C814(v7, _s8MetadataV9LocalItemVMa_1);
      sub_226C1C814(v10, _s8MetadataV9LocalItemVMa_1);
      goto LABEL_8;
    }

    sub_226C1C814(v10, _s8MetadataV9LocalItemVMa_1);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A8068, &qword_226D77800);
  return 0;
}

uint64_t sub_226C1C814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C1C8B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C1C93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C1C9CC(uint64_t a1)
{
  result = sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v2 <= 0x3F)
  {
    result = sub_226D6D52C();
    if (v3 <= 0x3F)
    {
      result = sub_226D6D4AC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_226C1CAA0(uint64_t a1)
{
  _s8MetadataV9CloudItemV6ObjectVMa_1(319);
  if (v1 <= 0x3F)
  {
    sub_226C1CB24(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226C1CB24(uint64_t a1)
{
  if (!qword_27D7A8098)
  {
    _s8MetadataV9CloudItemV6ObjectVMa_1(255);
    v1 = sub_226D6E6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A8098);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226C1CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_226C1CDC0(uint64_t a1)
{
  result = sub_226D6B9BC();
  if (v2 <= 0x3F)
  {
    result = _s8MetadataV15CloudItemStatusOMa_1(319);
    if (v3 <= 0x3F)
    {
      result = _s8MetadataV15LocalItemStatusOMa_1(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226C1CEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BankConnectServiceImplementation.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t BankConnectServiceImplementation.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void FinancialDataAppPermissions.insertOrUpdateApplication(with:for:updateSharingStartDate:in:)(void (**a1)(unint64_t, char *, uint64_t), uint64_t a2, int a3, uint64_t isUniquelyReferenced_nonNull_native)
{
  v5 = v4;
  v79 = a3;
  v86 = sub_226D67C0C();
  v82 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = v77 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8110, &qword_226D77B20);
  MEMORY[0x28223BE20](v96);
  v95 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = v77 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = v77 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = v77 - v18;
  v110 = sub_226D6D52C();
  v19 = *(v110 - 1);
  MEMORY[0x28223BE20](v110);
  v87 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v77 - v22;
  v24 = *(a2 + 16);
  v25 = MEMORY[0x277D84F90];
  v84 = a1;
  v83 = isUniquelyReferenced_nonNull_native;
  v97 = a2;
  if (v24)
  {
    v78 = v4;
    v111 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v24, 0);
    v25 = v111;
    v108 = (a2 + 64);
    v26 = sub_226D6ED6C();
    v27 = 0;
    v109 = *(a2 + 36);
    v107 = (v19 + 2);
    v90 = v19 + 4;
    v80 = a2 + 72;
    a1 = v110;
    v91 = v23;
    v88 = v24;
    v89 = v19;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(a2 + 32))
    {
      if ((v108[v26 >> 6] & (1 << v26)) == 0)
      {
        goto LABEL_44;
      }

      if (v109 != *(a2 + 36))
      {
        goto LABEL_45;
      }

      v99 = 1 << v26;
      v100 = v26 >> 6;
      v98 = v27;
      v28 = v96;
      v106 = v25;
      v29 = *(v96 + 48);
      v30 = *(a2 + 48);
      v105 = v19[9];
      v102 = v19[2];
      v31 = v92;
      v102(v92, (v30 + v105 * v26), a1);
      v32 = *(a2 + 56);
      v33 = v19;
      v34 = sub_226D67E5C();
      v35 = *(v34 - 8);
      (*(v35 + 16))(&v31[v29], v32 + *(v35 + 72) * v26, v34);
      v103 = v26;
      v36 = a1;
      v37 = v33[4];
      v38 = v93;
      v37(v93, v31, v36);
      v39 = *(v28 + 48);
      v101 = *(v35 + 32);
      v101(v38 + v39, &v31[v29], v34);
      v40 = v94;
      isUniquelyReferenced_nonNull_native = &qword_27D7A8110;
      sub_226AC40E8(v38, v94, &qword_27D7A8110, &qword_226D77B20);
      v41 = *(v28 + 48);
      v42 = v95;
      v104 = v37;
      v37(v95, v40, v110);
      v43 = v42 + v41;
      v44 = (v40 + v41);
      v25 = v106;
      v23 = v91;
      v101(v43, v44, v34);
      a1 = v110;
      v102(v23, v42, v110);
      sub_226AC47B0(v42, &qword_27D7A8110, &qword_226D77B20);
      sub_226AC47B0(v38, &qword_27D7A8110, &qword_226D77B20);
      v111 = v25;
      v46 = *(v25 + 2);
      v45 = *(v25 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_226AE20D4((v45 > 1), v46 + 1, 1);
        v25 = v111;
      }

      *(v25 + 2) = v46 + 1;
      v19 = v89;
      v104(&v25[((*(v19 + 80) + 32) & ~*(v19 + 80)) + v46 * v105], v23, a1);
      a2 = v97;
      v26 = 1 << *(v97 + 32);
      if (v103 >= v26)
      {
        goto LABEL_46;
      }

      v47 = v108[v100];
      if ((v47 & v99) == 0)
      {
        goto LABEL_47;
      }

      if (v109 != *(v97 + 36))
      {
        goto LABEL_48;
      }

      v48 = v47 & (-2 << (v103 & 0x3F));
      if (v48)
      {
        v26 = __clz(__rbit64(v48)) | v103 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v100 << 6;
        v50 = v100 + 1;
        v51 = (v80 + 8 * v100);
        while (v50 < (v26 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_226AE5444(v103, v109, 0);
            v26 = __clz(__rbit64(v52)) + v49;
            goto LABEL_4;
          }
        }

        sub_226AE5444(v103, v109, 0);
      }

LABEL_4:
      v27 = v98 + 1;
      if (v98 + 1 == v88)
      {
        a1 = v84;
        isUniquelyReferenced_nonNull_native = v83;
        v5 = v78;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_226AE45DC(v25);

    sub_226D69F0C();
    v23 = sub_226D69E3C();
    v25 = v5;

    if (v5)
    {
      return;
    }

    if (!(v23 >> 62))
    {
      v54 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v100 = 0;
      if (!v54)
      {
        goto LABEL_54;
      }

      goto LABEL_24;
    }
  }

  v54 = sub_226D6EDFC();
  v100 = v25;
  if (v54)
  {
LABEL_24:
    v55 = 0;
    v106 = v23 & 0xFFFFFFFFFFFFFF8;
    v107 = v23 & 0xC000000000000001;
    v108 = (v82 + 32);
    v102 = (v19 + 2);
    v105 = (v19 + 1);
    v56 = MEMORY[0x277D84F98];
    v101 = (v82 + 40);
    v103 = v54;
    v104 = v23;
    while (1)
    {
      if (v107)
      {
        v57 = MEMORY[0x22AA8AFD0](v55, v23);
      }

      else
      {
        if (v55 >= *(v106 + 16))
        {
          goto LABEL_50;
        }

        v57 = *(v23 + 8 * v55 + 32);
      }

      v25 = v57;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_49;
      }

      v109 = v55 + 1;
      a1 = v19;
      v58 = v87;
      sub_226D69EBC();
      v19 = v25;
      v59 = v81;
      sub_226D67C1C();
      v23 = *v108;
      (*v108)(v85, v59, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v56;
      v25 = v56;
      v61 = sub_226C3049C(v58);
      v62 = *(v56 + 2);
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_51;
      }

      v65 = v60;
      if (*(v56 + 3) >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v56 = v111;
          if (v60)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v25 = &v111;
          sub_226C392FC(MEMORY[0x277CC6F70], MEMORY[0x277CC95F0], &qword_27D7A82E8, &qword_226D77F88);
          v56 = v111;
          if (v65)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_226C33D10(v64, isUniquelyReferenced_nonNull_native, MEMORY[0x277CC6F70], &qword_27D7A82E8, &qword_226D77F88);
        v25 = v111;
        v66 = sub_226C3049C(v87);
        if ((v65 & 1) != (v67 & 1))
        {
          sub_226D6F25C();
          __break(1u);
          os_unfair_lock_unlock((v23 + 24));
          __break(1u);
          return;
        }

        v61 = v66;
        v56 = v111;
        if (v65)
        {
LABEL_25:
          (*(v82 + 40))(*(v56 + 7) + *(v82 + 72) * v61, v85, v86);

          (*v105)(v87, v110);
          v19 = a1;
          goto LABEL_26;
        }
      }

      *&v56[8 * (v61 >> 6) + 64] |= 1 << v61;
      v25 = v87;
      v68 = v110;
      a1[2](*(v56 + 6) + a1[9] * v61, v87, v110);
      (v23)(*(v56 + 7) + *(v82 + 72) * v61, v85, v86);

      v19 = a1;
      (a1[1])(v25, v68);
      v69 = *(v56 + 2);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_52;
      }

      *(v56 + 2) = v71;
LABEL_26:
      ++v55;
      v23 = v104;
      a1 = v84;
      isUniquelyReferenced_nonNull_native = v83;
      if (v109 == v103)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_54:
  v56 = MEMORY[0x277D84F98];
LABEL_55:

  v72 = v100;
  v73 = sub_226C3C108(v97, v56);

  v74 = sub_226C3C2C8(a1, v73, v79 & 1, isUniquelyReferenced_nonNull_native);
  if (v72)
  {
  }

  else
  {
    v75 = *(*(v77[1] + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v74);
    v77[-4] = a1;
    v77[-3] = v73;
    v77[-2] = v56;
    v77[-1] = v76;
    os_unfair_lock_lock(v75 + 6);
    sub_226C3ECD8();
    os_unfair_lock_unlock(v75 + 6);
  }
}

void FinancialDataAppPermissions.removeApplications(with:for:onlyForExistingAccounts:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_226C3F420(a1, a2, a3, a4);
  if (!v5)
  {
    v7 = *(*(v4 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock((v7 + 24));
    sub_226B8024C((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
  }
}

void FinancialDataAppPermissions.deleteApplication(with:in:)(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_226D683BC();
  sub_226C1DE60(a1, a2);
  if (!v3)
  {
    v8 = *(*(v4 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_226B80290((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
  }
}

void FinancialDataAppPermissions.migratedAccountIdentifier(for:)(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
  os_unfair_lock_lock(v3 + 6);
  sub_226C3FE1C(a1);
  os_unfair_lock_unlock(v3 + 6);
}

void sub_226C1DE60(uint64_t a1, void *a2)
{
  v4 = sub_226D6833C();
  v5 = sub_226D6834C();
  [v4 setPredicate_];

  [v4 setIncludesPropertyValues_];
  v6 = sub_226D6EBBC();
  if (v2)
  {

    return;
  }

  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  v8 = sub_226D6EDFC();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA8AFD0](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      [a2 deleteObject_];
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_226C1DFE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A81E8, &qword_226D77E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C408C0();
  sub_226D6F38C();
  v8[15] = 0;
  sub_226D67F1C();
  sub_226C40248(&qword_27D7A81F0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70A0]);
  sub_226D6F19C();
  if (!v1)
  {
    type metadata accessor for Permission(0);
    v8[14] = 1;
    sub_226D6D52C();
    sub_226C40248(&qword_27D7A7DD8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_226D6F19C();
    v8[13] = 2;
    sub_226D6B9BC();
    sub_226C40248(&qword_27D7A81F8, 255, MEMORY[0x277CC8058], MEMORY[0x277CC8060]);
    sub_226D6F19C();
    v8[12] = 3;
    sub_226D67E5C();
    sub_226C40248(&qword_27D7A8200, 255, MEMORY[0x277CC7078], MEMORY[0x277CC7080]);
    sub_226D6F19C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_226C1E2DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_226D67E5C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D6B9BC();
  v29 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_226D6D52C();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D67F1C();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A81C0, &qword_226D77E88);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Permission(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C408C0();
  v36 = v10;
  v14 = v38;
  sub_226D6F37C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v6;
  v17 = v32;
  v16 = v33;
  v23 = v11;
  v38 = v13;
  v18 = v35;
  v42 = 0;
  sub_226C40248(&qword_27D7A81D0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C0]);
  v19 = v34;
  sub_226D6F16C();
  (*(v31 + 32))(v38, v19, v7);
  v41 = 1;
  sub_226C40248(&qword_27D7A7DE8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_226D6F16C();
  (*(v30 + 32))(&v38[v23[5]], v15, v16);
  v40 = 2;
  sub_226C40248(&qword_27D7A81D8, 255, MEMORY[0x277CC8058], MEMORY[0x277CC8078]);
  v20 = v28;
  sub_226D6F16C();
  (*(v29 + 32))(&v38[v23[6]], v20, v18);
  v39 = 3;
  sub_226C40248(&qword_27D7A81E0, 255, MEMORY[0x277CC7078], MEMORY[0x277CC7090]);
  sub_226D6F16C();
  (*(v17 + 8))(v36, v37);
  v21 = v38;
  (*(v24 + 32))(&v38[v23[7]], v26, v27);
  sub_226C402B0(v21, v25, type metadata accessor for Permission);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_226C4075C(v21, type metadata accessor for Permission);
}

unint64_t sub_226C1E9D8()
{
  v1 = 0x4449656C646E7562;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x634163696C627570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_226C1EA6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_226C40CE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_226C1EAA0(uint64_t a1)
{
  v2 = sub_226C408C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C1EADC(uint64_t a1)
{
  v2 = sub_226C408C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C1EB48()
{
  sub_226D6F2FC();
  sub_226D67F0C();
  sub_226D6E42C();

  sub_226D6D52C();
  sub_226C40248(&qword_281062B60, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1EC0C(uint64_t a1)
{
  sub_226D67F0C();
  sub_226D6E42C();

  sub_226D6D52C();
  sub_226C40248(&qword_281062B60, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_226D6E30C();
}

uint64_t sub_226C1ECB8(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D67F0C();
  sub_226D6E42C();

  sub_226D6D52C();
  sub_226C40248(&qword_281062B60, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226C1ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_226D67F1C();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = *(a1 + 20);
  v7 = *(type metadata accessor for PermissionIdentifier(0) + 20);
  v8 = sub_226D6D52C();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2 + v7, v2 + v6, v8);
}

uint64_t sub_226C1EE3C()
{
  sub_226D6F2FC();
  sub_226D6E42C();
  return sub_226D6F35C();
}

uint64_t sub_226C1EEB8(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6E42C();
  return sub_226D6F35C();
}

uint64_t sub_226C1EF10@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_226D6F13C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_226C1EFA8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_226D6F13C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_226C1F000(uint64_t a1)
{
  v2 = sub_226C40708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226C1F03C(uint64_t a1)
{
  v2 = sub_226C40708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_226C1F078(uint64_t a1)
{
  v44 = type metadata accessor for PermissionIdentifier(0);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Permission(0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v38 - v7;
  v39 = v1;
  *(v1 + 16) = MEMORY[0x277D84F98];
  v38 = v1 + 16;
  v8 = sub_226B22F20(MEMORY[0x277D84F90]);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v45 = a1;

  v14 = 0;
  v41 = a1 + 56;
  while (v12)
  {
    v15 = v14;
LABEL_11:
    v16 = v46;
    v17 = *(v42 + 72);
    sub_226C402B0(*(v45 + 48) + v17 * (__clz(__rbit64(v12)) | (v15 << 6)), v46, type metadata accessor for Permission);
    v18 = sub_226D67F1C();
    v19 = v48;
    (*(*(v18 - 8) + 16))(v48, v16, v18);
    v20 = *(v43 + 20);
    v21 = *(v44 + 20);
    v22 = sub_226D6D52C();
    (*(*(v22 - 8) + 16))(v19 + v21, v16 + v20, v22);
    sub_226C402B0(v16, v47, type metadata accessor for Permission);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v8;
    v25 = sub_226C2FFAC(v19);
    v26 = v8[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_22;
    }

    v29 = v24;
    if (v8[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226C38034();
      }
    }

    else
    {
      sub_226C31B04(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_226C2FFAC(v48);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_24;
      }

      v25 = v30;
    }

    v12 &= v12 - 1;
    v8 = v49;
    if (v29)
    {
      sub_226C407BC(v47, v49[7] + v25 * v17);
      sub_226C4075C(v48, type metadata accessor for PermissionIdentifier);
      sub_226C4075C(v46, type metadata accessor for Permission);
    }

    else
    {
      v49[(v25 >> 6) + 8] |= 1 << v25;
      v32 = v48;
      sub_226C402B0(v48, v8[6] + *(v40 + 72) * v25, type metadata accessor for PermissionIdentifier);
      sub_226C40318(v47, v8[7] + v25 * v17, type metadata accessor for Permission);
      sub_226C4075C(v32, type metadata accessor for PermissionIdentifier);
      sub_226C4075C(v46, type metadata accessor for Permission);
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v8[2] = v35;
    }

    v14 = v15;
    v9 = v41;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      swift_beginAccess();
      v36 = v39;
      *(v39 + 16) = v8;

      return v36;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226C1F530(void *a1)
{
  v2 = v1;
  v55 = type metadata accessor for PermissionIdentifier(0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Permission(0);
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v44 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8180, &qword_226D77E38);
  v57 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = v44 - v11;
  *(v2 + 16) = MEMORY[0x277D84F98];
  v13 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_226C40708();
  v14 = v52;
  sub_226D6F37C();
  if (v14)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    return v2;
  }

  v15 = v50;
  v46 = v7;
  v52 = (v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8188, &unk_226D77E40);
  sub_226C40820(&qword_28105F530, qword_281062600, &unk_226D77CE8, MEMORY[0x277D83978]);
  sub_226D6F16C();
  v44[0] = v12;
  v44[1] = 0;
  v45 = v2;
  v17 = v56;
  v18 = sub_226B22F20(MEMORY[0x277D84F90]);
  v19 = v57;
  v51 = v17[2];
  if (!v51)
  {
    v25 = v52;
LABEL_21:

    (*(v19 + 8))(v44[0], v47);
    swift_beginAccess();
    *v25 = v18;

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    return v45;
  }

  v20 = 0;
  v21 = *(v15 + 20);
  v22 = v54;
  v23 = v55;
  v49 = v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v50 = v21;
  v24 = v46;
  while (v20 < v17[2])
  {
    v26 = *(v22 + 72);
    sub_226C402B0(v49 + v26 * v20, v10, type metadata accessor for Permission);
    v27 = sub_226D67F1C();
    (*(*(v27 - 8) + 16))(v5, v10, v27);
    v28 = *(v23 + 20);
    v29 = sub_226D6D52C();
    (*(*(v29 - 8) + 16))(&v5[v28], &v10[v50], v29);
    sub_226C402B0(v10, v24, type metadata accessor for Permission);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v18;
    v31 = sub_226C2FFAC(v5);
    v33 = v18[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_23;
    }

    v37 = v32;
    if (v18[3] >= v36)
    {
      v39 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v31;
        sub_226C38034();
        v39 = v53;
        v31 = v43;
      }

      v23 = v55;
      v18 = v56;
      if (v37)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_226C31B04(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_226C2FFAC(v5);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v23 = v55;
      v39 = v53;
      v18 = v56;
      if (v37)
      {
LABEL_7:
        sub_226C407BC(v24, v18[7] + v31 * v26);
        sub_226C4075C(v5, type metadata accessor for PermissionIdentifier);
        sub_226C4075C(v10, type metadata accessor for Permission);
        goto LABEL_8;
      }
    }

    v18[(v31 >> 6) + 8] |= 1 << v31;
    v40 = v31;
    sub_226C402B0(v5, v18[6] + *(v39 + 72) * v31, type metadata accessor for PermissionIdentifier);
    sub_226C40318(v24, v18[7] + v40 * v26, type metadata accessor for Permission);
    sub_226C4075C(v5, type metadata accessor for PermissionIdentifier);
    sub_226C4075C(v10, type metadata accessor for Permission);
    v41 = v18[2];
    v35 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v35)
    {
      goto LABEL_24;
    }

    v18[2] = v42;
LABEL_8:
    ++v20;
    v25 = v52;
    v22 = v54;
    v19 = v57;
    if (v51 == v20)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226C1FB70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8190, &unk_226D77E50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226C40708();
  sub_226D6F38C();
  swift_beginAccess();
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v17 = v6;
  v18 = v5;
  v19[9] = v2;
  v11 = sub_226C24B40(v10, 0, &unk_27D7A6240, &qword_226D77F30, type metadata accessor for Permission);
  v12 = *(type metadata accessor for Permission(0) - 8);
  sub_226C3B330(v19, v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10, v9);
  v14 = v13;
  v15 = v19[0];

  result = sub_226AD3C20(v15);
  if (v14 == v10)
  {
    v6 = v17;
    v5 = v18;
LABEL_5:
    v19[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8188, &unk_226D77E40);
    sub_226C40820(&qword_27D7A8198, &qword_27D7A81A0, &unk_226D77CC0, MEMORY[0x277D83948]);
    sub_226D6F19C();
    (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_226C1FE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v133 = a3;
  v104 = a1;
  v137 = sub_226D6D52C();
  v4 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v106 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PermissionIdentifier(0);
  v96 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v120 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Permission(0);
  v98 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v119 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v95 - v9;
  v116 = sub_226D67C0C();
  v10 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8110, &qword_226D77B20);
  MEMORY[0x28223BE20](v136);
  v128 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = &v95 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v95 - v18;
  MEMORY[0x28223BE20](v20);
  v138 = &v95 - v21;
  MEMORY[0x28223BE20](v22);
  v125 = &v95 - v23;
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;
  v131 = v4 + 16;
  v135 = v4 + 32;
  v99 = v10 + 16;
  v127 = v4;
  v134 = (v4 + 8);
  v101 = v10;
  v97 = (v10 + 8);

  v29 = 0;
  *&v30 = 136315138;
  v105 = v30;
  v123 = a2 + 64;
  v124 = a2;
  v126 = v19;
  v122 = v28;
  if (v27)
  {
LABEL_10:
    while (1)
    {
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v127;
      v35 = *(a2 + 48) + *(v127 + 72) * v33;
      v36 = v125;
      v37 = v137;
      v130 = *(v127 + 16);
      (v130)(v125, v35, v137);
      v38 = *(a2 + 56);
      v39 = sub_226D67E5C();
      v40 = *(v39 - 8);
      v41 = v38 + *(v40 + 72) * v33;
      v42 = v136;
      v43 = *(v136 + 48);
      (*(v40 + 16))(&v36[v43], v41, v39);
      v44 = *(v42 + 48);
      v45 = *(v34 + 32);
      v46 = v138;
      v132 = v45;
      v45(v138, v36, v37);
      v129 = *(v40 + 32);
      v129(v46 + v44, &v36[v43], v39);
      v47 = v126;
      sub_226AC40E8(v46, v126, &qword_27D7A8110, &qword_226D77B20);
      v48 = v47 + *(v42 + 48);
      if (*(v133 + 16))
      {
        v49 = sub_226C3049C(v47);
        if (v50)
        {
          break;
        }
      }

      v129 = *(v40 + 8);
      (v129)(v48, v39);
      v130 = *v134;
      v130(v47, v137);
      if (qword_27D7A5F58 != -1)
      {
        swift_once();
      }

      v72 = sub_226D6E07C();
      __swift_project_value_buffer(v72, qword_27D7A7CF8);
      v73 = v128;
      sub_226AC40E8(v138, v128, &qword_27D7A8110, &qword_226D77B20);
      v74 = sub_226D6E05C();
      v75 = sub_226D6E9AC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v140 = v114;
        *v76 = v105;
        v77 = v121;
        sub_226AC40E8(v73, v121, &qword_27D7A8110, &qword_226D77B20);
        v78 = *(v136 + 48);
        LODWORD(v113) = v75;
        v79 = v106;
        v80 = v137;
        v132(v106, v77, v137);
        (v129)(v77 + v78, v39);
        sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v81 = sub_226D6F1CC();
        v83 = v82;
        v130(v79, v80);
        sub_226AC47B0(v128, &qword_27D7A8110, &qword_226D77B20);
        v84 = sub_226AC4530(v81, v83, &v140);

        *(v76 + 4) = v84;
        _os_log_impl(&dword_226AB4000, v74, v113, "    InternalAccount with id %s\n    not found while setting permissions", v76, 0xCu);
        v85 = v114;
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        a2 = v124;
        MEMORY[0x22AA8BEE0](v85, -1, -1);
        MEMORY[0x22AA8BEE0](v76, -1, -1);

        v86 = v138;
LABEL_27:
        sub_226AC47B0(v86, &qword_27D7A8110, &qword_226D77B20);
        v28 = v122;
        v24 = v123;
        if (!v27)
        {
          goto LABEL_6;
        }
      }

      else
      {

        sub_226AC47B0(v73, &qword_27D7A8110, &qword_226D77B20);
        sub_226AC47B0(v138, &qword_27D7A8110, &qword_226D77B20);
        v28 = v122;
        v24 = v123;
        a2 = v124;
        if (!v27)
        {
          goto LABEL_6;
        }
      }
    }

    (*(v101 + 16))(v115, *(v133 + 56) + *(v101 + 72) * v49, v116);
    v114 = *(v40 + 8);
    (v114)(v48, v39);
    v113 = *v134;
    v113(v47, v137);
    v111 = sub_226D67F1C();
    v51 = *(v111 - 8);
    v110 = *(v51 + 16);
    v112 = v51 + 16;
    v52 = v117;
    v110(v117, v104, v111);
    v53 = v138;
    sub_226AC40E8(v138, v121, &qword_27D7A8110, &qword_226D77B20);
    v54 = v136;
    v109 = *(v136 + 48);
    v55 = v102;
    sub_226D67B4C();
    v56 = v53;
    v57 = v100;
    sub_226AC40E8(v56, v100, &qword_27D7A8110, &qword_226D77B20);
    v107 = *(v54 + 48);
    v108 = *(v55 + 20);
    v58 = v121;
    v59 = v137;
    v132((v52 + v108), v121, v137);
    v129(v52 + *(v55 + 28), (v57 + v107), v39);
    v113(v57, v59);
    (v114)(v58 + v109, v39);
    v60 = v120;
    v110(v120, v52, v111);
    (v130)(v60 + *(v103 + 20), v52 + v108, v59);
    v61 = v118;
    swift_beginAccess();
    sub_226C402B0(v52, v119, type metadata accessor for Permission);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v61 + 16);
    v63 = v139;
    *(v61 + 16) = 0x8000000000000000;
    v64 = sub_226C2FFAC(v60);
    v66 = v63[2];
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_31;
    }

    v70 = v65;
    if (v63[3] >= v69)
    {
      a2 = v124;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = v64;
        sub_226C38034();
        v64 = v89;
        v88 = v138;
        v87 = v139;
        if (v70)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_226C31B04(v69, isUniquelyReferenced_nonNull_native);
      v64 = sub_226C2FFAC(v120);
      a2 = v124;
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_33;
      }
    }

    v88 = v138;
    v87 = v139;
    if (v70)
    {
LABEL_22:
      sub_226C407BC(v119, v87[7] + *(v98 + 72) * v64);
      sub_226C4075C(v120, type metadata accessor for PermissionIdentifier);
LABEL_26:
      *(v118 + 16) = v87;

      swift_endAccess();
      sub_226C4075C(v117, type metadata accessor for Permission);
      (*v97)(v115, v116);
      v86 = v88;
      goto LABEL_27;
    }

LABEL_24:
    v87[(v64 >> 6) + 8] |= 1 << v64;
    v90 = v64;
    v91 = v120;
    sub_226C402B0(v120, v87[6] + *(v96 + 72) * v64, type metadata accessor for PermissionIdentifier);
    sub_226C40318(v119, v87[7] + *(v98 + 72) * v90, type metadata accessor for Permission);
    sub_226C4075C(v91, type metadata accessor for PermissionIdentifier);
    v92 = v87[2];
    v68 = __OFADD__(v92, 1);
    v93 = v92 + 1;
    if (v68)
    {
      goto LABEL_32;
    }

    v87[2] = v93;
    goto LABEL_26;
  }

LABEL_6:
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

BOOL sub_226C20BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BD0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70B0]);
  return (sub_226D6E35C() & 1) == 0;
}

uint64_t sub_226C20C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226D67F1C();
  sub_226C40248(&qword_281062BC8, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70B8]);
  sub_226D6E53C();
  sub_226D6E53C();
  if (v13 == v11 && v14 == v12)
  {

    goto LABEL_8;
  }

  v7 = sub_226D6F21C();

  if (v7)
  {
LABEL_8:
    v9 = type metadata accessor for Permission(0);
    v8 = sub_226D4D898(a2 + *(v9 + 20), a4) ^ 1;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_226C20D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v36 = type metadata accessor for Permission(0);
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D52C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v2 + 16);
  v38 = a1;

  v14 = v13;
  v15 = v4;
  sub_226C21134(sub_226C40914, v37, v14);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v31[2] = v15;
    v32 = a2;
    v39 = MEMORY[0x277D84F90];
    sub_226AE20D4(0, v18, 0);
    v19 = v39;
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v31[1] = v17;
    v21 = v17 + v20;
    v22 = *(v7 + 72);
    v33 = v10 + 32;
    v34 = v22;
    do
    {
      v23 = v35;
      sub_226C402B0(v21, v35, type metadata accessor for Permission);
      (*(v10 + 16))(v12, v23 + *(v36 + 20), v9);
      sub_226C4075C(v23, type metadata accessor for Permission);
      v39 = v19;
      v24 = v9;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226AE20D4((v25 > 1), v26 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v26 + 1;
      (*(v10 + 32))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v12, v24);
      v21 += v34;
      --v18;
      v9 = v24;
    }

    while (v18);

    a2 = v32;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v27 = sub_226AE45DC(v19);

  if (*(v27 + 16) >= 2uLL)
  {

    v29 = sub_226D6A5FC();
    sub_226C40248(&qword_27D7A82D8, 255, MEMORY[0x277CC7C38], MEMORY[0x277CC7C40]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CC7C30], v29);
    return swift_willThrow();
  }

  else
  {
    sub_226CC2E6C(v27, a2);
  }
}

void sub_226C21134(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = type metadata accessor for Permission(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = 0;
  v37 = a3;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v22 = *(v36 + 72);
    sub_226C402B0(*(v37 + 56) + v22 * (__clz(__rbit64(v19)) | (v13 << 6)), v9, type metadata accessor for Permission);
    sub_226C40318(v9, v12, type metadata accessor for Permission);
    v23 = v34(v12);
    if (v3)
    {
      sub_226C4075C(v12, type metadata accessor for Permission);

      return;
    }

    v19 &= v19 - 1;
    if (v23)
    {
      sub_226C40318(v12, v32, type metadata accessor for Permission);
      v24 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226AE2834(0, *(v24 + 16) + 1, 1);
        v24 = v38;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = v27 + 1;
        v31 = v27;
        sub_226AE2834((v26 > 1), v27 + 1, 1);
        v28 = v33;
        v27 = v31;
        v24 = v38;
      }

      *(v24 + 16) = v28;
      v29 = *(v36 + 80);
      v33 = v24;
      sub_226C40318(v32, v24 + ((v29 + 32) & ~v29) + v27 * v22, type metadata accessor for Permission);
    }

    else
    {
      sub_226C4075C(v12, type metadata accessor for Permission);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_226C21460(uint64_t a1)
{
  sub_226D6CFAC();
  swift_allocObject();
  sub_226D6CF9C();
  sub_226D6CF7C();
  sub_226C40248(&qword_27D7A8290, v1, type metadata accessor for Permissions, &unk_226D77D78);
  v2 = sub_226D6CF8C();
  v4 = v3;
  sub_226D6D22C();

  return sub_226B11B98(v2, v4);
}

uint64_t sub_226C21648()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226C21680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_226C1F530(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_226C216FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL;
  v5 = sub_226D6D1AC();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = sub_226D6D1BC();
  v9 = v8;
  sub_226D6CF6C();
  swift_allocObject();
  sub_226D6CF5C();
  type metadata accessor for Permissions();
  sub_226C40248(&qword_281062538, v10, type metadata accessor for Permissions, &unk_226D77DA0);
  sub_226D6CF4C();
  *(v2 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissions) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A82A8, &qword_226D77F58);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_retain_n();

  sub_226B11B98(v7, v9);
  (*(v6 + 8))(a1, v5);
  *(v12 + 16) = v13;

  *(v2 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock) = v12;
  return v2;
}

void sub_226C21A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v30 = a3;
  v32 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8288, &qword_226D77F38);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - v7;
  v8 = *(a2 + 64);
  v26 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v31 = a2;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = v31;
    v18 = *(v31 + 48);
    v19 = sub_226D67F1C();
    v20 = *(v19 - 8);
    v21 = v27;
    (*(v20 + 16))(v27, v18 + *(v20 + 72) * v16, v19);
    v22 = *(*(v17 + 56) + 8 * v16);
    v23 = v28;
    v24 = *(v29 + 48);
    (*(v20 + 32))(v28, v21, v19);
    *(v23 + v24) = v22;

    sub_226C1FE0C(v23, v22, v30);
    sub_226AC47B0(v23, &qword_27D7A8288, &qword_226D77F38);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      sub_226C21460(v25 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL);
      return;
    }

    v11 = *(v26 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_226C21CB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v10[2] = a2;

  sub_226C3A270(sub_226C40964, v10, v6);
  v8 = v7;

  *(v5 + 16) = v8;

  return sub_226C21460(a3 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL);
}

uint64_t sub_226C21D70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v12[2] = a2;
  v12[3] = a3;

  sub_226C3A270(sub_226C4096C, v12, v8);
  v10 = v9;

  *(v7 + 16) = v10;

  return sub_226C21460(a4 + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL);
}

uint64_t sub_226C21E58()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsFileURL;
  v2 = sub_226D6D1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_226C21F14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  static URL.financePersistingPlistURL.getter(&v5 - v1);
  type metadata accessor for FinancialDataAppPermissions();
  v3 = swift_allocObject();
  result = FinancialDataAppPermissions.init(permissionsFileURL:)(v2);
  qword_2810610C8 = v3;
  return result;
}

uint64_t FinancialDataAppPermissions.__allocating_init(permissionsFileURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FinancialDataAppPermissions.init(permissionsFileURL:)(a1);
  return v2;
}

uint64_t static FinancialDataAppPermissions.shared.getter()
{
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }
}

uint64_t FinancialDataAppPermissions.init(permissionsFileURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_226D6D1AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_226AC40E8(a1, v6, &unk_27D7A62F8, &unk_226D73B70);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &unk_27D7A62F8, &unk_226D73B70);
    if (qword_27D7A5F58 != -1)
    {
      swift_once();
    }

    v16 = sub_226D6E07C();
    __swift_project_value_buffer(v16, qword_27D7A7CF8);
    v17 = sub_226D6E05C();
    v18 = sub_226D6E9AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226AB4000, v17, v18, "Permission file not found", v19, 2u);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    type metadata accessor for PersistedPermissions(0);
    swift_allocObject();
    v14 = sub_226C216FC(v10);
    sub_226AC47B0(a1, &unk_27D7A62F8, &unk_226D73B70);
    (*(v8 + 8))(v13, v7);
    *(v2 + 16) = v14;
    return v2;
  }

  return result;
}

Swift::Bool __swiftcall FinancialDataAppPermissions.permissionFileExists()()
{
  v0 = [objc_opt_self() defaultManager];
  sub_226D6D17C();
  v1 = sub_226D6E36C();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinancialDataAppPermissions.exportApplicationsToFile(from:)(NSManagedObjectContext from)
{
  v2 = v1;
  v84 = sub_226D67C0C();
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v68 - v6;
  v7 = sub_226D6D52C();
  v85 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v68 - v14;
  sub_226D683BC();
  v16 = sub_226D6833C();
  isa = from.super.isa;
  v18 = v87;
  v19 = sub_226D6EBBC();
  v20 = v18;
  if (v18)
  {

    return;
  }

  v81 = v9;
  v82 = isa;
  v87 = v7;
  v70 = v16;
  v89 = MEMORY[0x277D84F98];
  v21 = v19;
  v86 = (v19 >> 62);
  if (v19 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v77 = v2;
    v83 = v12;
    if (!i)
    {
      break;
    }

    v2 = 0;
    v23 = (v21 & 0xC000000000000001);
    v12 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v24 = MEMORY[0x22AA8AFD0](v2, v21);
      }

      else
      {
        if (v2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v24 = *(v21 + 8 * v2 + 32);
      }

      v25 = v24;
      v26 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v88[0] = v24;
      sub_226C22D44(&v89, v88);
      if (v20)
      {

        __break(1u);
LABEL_69:
        sub_226D6F25C();
        __break(1u);
LABEL_70:
        os_unfair_lock_unlock(v23 + 6);
        __break(1u);
        return;
      }

      ++v2;
      if (v26 == i)
      {
        v27 = v89;
        v2 = v77;
        v12 = v83;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v27 = MEMORY[0x277D84F98];
LABEL_16:
  v69 = v27;
  if (v86)
  {
    v28 = sub_226D6EDFC();
    if (v28)
    {
      goto LABEL_18;
    }

LABEL_26:

    v29 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_26;
  }

LABEL_18:
  v89 = MEMORY[0x277D84F90];
  sub_226AE20D4(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v29 = v89;
  v86 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v28; ++j)
    {
      MEMORY[0x22AA8AFD0](j, v86);
      v31 = [swift_unknownObjectRetain() accountID];
      sub_226D6D4FC();
      swift_unknownObjectRelease_n();

      v89 = v29;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_226AE20D4((v32 > 1), v33 + 1, 1);
        v29 = v89;
      }

      *(v29 + 16) = v33 + 1;
      (*(v85 + 32))(v29 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v33, v15, v87);
    }
  }

  else
  {
    v34 = v85;
    v35 = 32;
    v36 = v81;
    do
    {
      v37 = *&v86[v35];
      v38 = [v37 accountID];
      sub_226D6D4FC();

      v89 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226AE20D4((v39 > 1), v40 + 1, 1);
        v29 = v89;
      }

      *(v29 + 16) = v40 + 1;
      (*(v34 + 32))(v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40, v36, v87);
      v35 += 8;
      --v28;
    }

    while (v28);
  }

  v2 = v77;
  v12 = v83;
LABEL_32:
  sub_226AE45DC(v29);

  sub_226D69F0C();
  v41 = sub_226D69E3C();
  if (v20)
  {

    return;
  }

  v27 = v41;

  if (!(v27 >> 62))
  {
    v42 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_36;
  }

LABEL_67:
  v42 = sub_226D6EDFC();
LABEL_36:
  v21 = v79;
  v68 = v20;
  if (v42)
  {
    v20 = v42;
    v15 = 0;
    v75 = v27 & 0xFFFFFFFFFFFFFF8;
    v76 = v27 & 0xC000000000000001;
    v81 = (v80 + 32);
    v73 = v85 + 16;
    v74 = (v85 + 8);
    v43 = MEMORY[0x277D84F98];
    v71 = v42;
    v72 = v80 + 40;
    while (1)
    {
      if (v76)
      {
        v45 = MEMORY[0x22AA8AFD0](v15, v27);
        v2 = v78;
        v46 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v2 = v78;
        if (v15 >= *(v75 + 16))
        {
          goto LABEL_62;
        }

        v45 = *(v27 + 8 * v15 + 32);
        v46 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_61;
        }
      }

      v82 = v46;
      sub_226D69EBC();
      v86 = v45;
      sub_226D67C1C();
      v23 = *v81;
      (*v81)(v21, v2, v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v12;
      v12 = isUniquelyReferenced_nonNull_native;
      v89 = v43;
      v21 = sub_226C3049C(v48);
      v50 = v43[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_63;
      }

      v53 = v49;
      if (v43[3] >= v52)
      {
        v57 = v80;
        if ((v12 & 1) == 0)
        {
          sub_226C392FC(MEMORY[0x277CC6F70], MEMORY[0x277CC95F0], &qword_27D7A82E8, &qword_226D77F88);
          v57 = v80;
        }

        v12 = v83;
        v56 = v84;
        v43 = v89;
        if (v53)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_226C33D10(v52, v12, MEMORY[0x277CC6F70], &qword_27D7A82E8, &qword_226D77F88);
        v12 = v83;
        v54 = sub_226C3049C(v83);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_69;
        }

        v21 = v54;
        v56 = v84;
        v57 = v80;
        v43 = v89;
        if (v53)
        {
LABEL_38:
          v44 = v43[7] + *(v57 + 72) * v21;
          v21 = v79;
          (*(v57 + 40))(v44, v79);

          (*v74)(v12, v87);
          goto LABEL_39;
        }
      }

      v20 = v27;
      v43[(v21 >> 6) + 8] |= 1 << v21;
      v58 = v85;
      v2 = v87;
      v59 = v56;
      (*(v85 + 16))(v43[6] + *(v85 + 72) * v21, v83, v87);
      v60 = v43[7] + *(v57 + 72) * v21;
      v21 = v79;
      (v23)(v60, v79, v59);

      v61 = *(v58 + 8);
      v12 = v83;
      v61(v83, v2);
      v62 = v43[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_64;
      }

      v43[2] = v64;
      v27 = v20;
      v20 = v71;
LABEL_39:
      ++v15;
      v2 = v77;
      if (v82 == v20)
      {
        goto LABEL_57;
      }
    }
  }

  v43 = MEMORY[0x277D84F98];
LABEL_57:

  v23 = *(*(v2 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
  MEMORY[0x28223BE20](v65);
  *(&v68 - 4) = v69;
  *(&v68 - 3) = v43;
  *(&v68 - 2) = v66;
  os_unfair_lock_lock(v23 + 6);
  v67 = v68;
  sub_226C40208(&v23[4]);
  if (v67)
  {
    goto LABEL_70;
  }

  os_unfair_lock_unlock(v23 + 6);
}

uint64_t sub_226C22D44(uint64_t *a1, void **a2)
{
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8298, &qword_226D77F40);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v52 - v4;
  v5 = sub_226D6D52C();
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_226D67F1C();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v52 - v9;
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v59 = sub_226D67E5C();
  v20 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v58 = &v52 - v25;
  v26 = *a2;
  v27 = [v26 sharingStartDate];
  if (v27)
  {
    v28 = v27;
    sub_226D6D45C();

    (*(v11 + 32))(v19, v16, v10);
    (*(v11 + 16))(v13, v19, v10);
    sub_226D67E4C();
    (*(v11 + 8))(v19, v10);
  }

  else
  {
    sub_226D67E2C();
  }

  v30 = v58;
  v29 = v59;
  (*(v20 + 32))(v58, v22, v59);
  v31 = v60;
  sub_226D6835C();
  v32 = [v26 accountID];
  v33 = v55;
  sub_226D6D4FC();

  v34 = v57;
  (*(v20 + 16))(v57, v30, v29);
  (*(v20 + 56))(v34, 0, 1, v29);
  v35 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v35;
  v37 = v61;
  v39 = sub_226C30574(v31);
  v40 = v37[2];
  v41 = (v38 & 1) == 0;
  v42 = v40 + v41;
  v43 = v54;
  if (__OFADD__(v40, v41))
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v31) = v38;
  if (v37[3] >= v42)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_226C39658(MEMORY[0x277CC7098], &qword_27D7A82A0, &qword_226D77F48);
    v37 = v61;
    goto LABEL_9;
  }

  sub_226C34C64(v42, isUniquelyReferenced_nonNull_native);
  v37 = v61;
  v44 = sub_226C30574(v60);
  if ((v31 & 1) != (v45 & 1))
  {
    result = sub_226D6F25C();
    __break(1u);
    return result;
  }

  v39 = v44;
LABEL_9:
  *v35 = v37;
  v46 = v53;
  if ((v31 & 1) == 0)
  {
    v56 = sub_226B24080(MEMORY[0x277D84F90]);
    v47 = v20;
    v48 = v33;
    v49 = v52;
    (*(v43 + 16))(v52, v60, v46);
    v50 = v49;
    v33 = v48;
    v20 = v47;
    sub_226C366F0(v39, v50, v56, v37, MEMORY[0x277CC7098]);
  }

  sub_226D48EC8(v34, v33);
  (*(v43 + 8))(v60, v46);
  return (*(v20 + 8))(v58, v59);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FinancialDataAppPermissions.importApplicationsFromFile(in:)(NSManagedObjectContext in)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = v67 - v5;
  v80 = sub_226D6D52C();
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v82 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_226D67F1C();
  v85 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Permission(0);
  v84 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v67 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v67 - v16;
  v18 = sub_226D683BC();
  v19 = sub_226D6833C();
  v20 = v87;
  v87 = sub_226D6EBBC();

  if (!v20)
  {
    isa = in.super.isa;
    v22 = v83;
    v73 = v18;
    v74 = v14;
    v75 = v11;
    v78 = v9;
    v79 = v8;
    if (v87 >> 62)
    {
      v23 = sub_226D6EDFC();
    }

    else
    {
      v23 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v78;
    v24 = v79;
    v27 = v84;
    v26 = v85;
    if (v23)
    {

      return;
    }

    v67[1] = 0;
    v72 = isa;
    v28 = *(*(v22 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    os_unfair_lock_lock((v28 + 24));
    v29 = *(v28 + 16);
    swift_beginAccess();
    v30 = *(v29 + 16);
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = sub_226C24B40(*(v30 + 16), 0, &unk_27D7A6240, &qword_226D77F30, type metadata accessor for Permission);
      sub_226C3B330(&v86, v32 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v31, v30);
      v83 = v33;
      v34 = v86;

      sub_226AD3C20(v34);
      if (v83 != v31)
      {
        __break(1u);
        return;
      }

      v25 = v78;
      v24 = v79;
      v35 = v71;
      v27 = v84;
      v26 = v85;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
      v35 = v71;
    }

    os_unfair_lock_unlock((v28 + 24));

    v37 = v32[2];
    if (v37)
    {
      v38 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v67[0] = v32;
      v39 = v32 + v38;
      v71 = (v26 + 16);
      v70 = *(v27 + 72);
      v69 = v35 + 2;
      *&v36 = 136315394;
      v68 = v36;
      v40 = v81;
      v41 = v82;
      do
      {
        v87 = v37;
        v85 = v39;
        sub_226C402B0(v39, v17, type metadata accessor for Permission);
        (*v71)(v24, v17, v40);
        (*v69)(v41, &v17[*(v25 + 20)], v80);
        v42 = sub_226D6B97C();
        v83 = v43;
        v84 = v42;
        sub_226D6B9AC();
        v44 = v77;
        sub_226D67E1C();
        v45 = sub_226D6D4AC();
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        if (v47(v44, 1, v45) == 1)
        {
          (*(v46 + 56))(v76, 1, 1, v45);
          v48 = v47(v44, 1, v45);
          v49 = v74;
          if (v48 != 1)
          {
            sub_226AC47B0(v77, &qword_27D7A8BE0, &unk_226D718F0);
          }
        }

        else
        {
          v50 = v76;
          (*(v46 + 32))(v76, v44, v45);
          (*(v46 + 56))(v50, 0, 1, v45);
          v49 = v74;
        }

        v51 = v72;
        v24 = v79;
        v41 = v82;

        if (qword_27D7A5F58 != -1)
        {
          swift_once();
        }

        v52 = sub_226D6E07C();
        __swift_project_value_buffer(v52, qword_27D7A7CF8);
        sub_226C402B0(v17, v49, type metadata accessor for Permission);
        v53 = v75;
        sub_226C402B0(v17, v75, type metadata accessor for Permission);
        v54 = sub_226D6E05C();
        v55 = sub_226D6E9EC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v86 = v57;
          *v56 = v68;
          sub_226C40248(&qword_281062BC0, 255, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
          v58 = sub_226D6F1CC();
          v60 = v59;
          sub_226C4075C(v49, type metadata accessor for Permission);
          v61 = sub_226AC4530(v58, v60, &v86);

          *(v56 + 4) = v61;
          *(v56 + 12) = 2080;
          sub_226C40248(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v62 = sub_226D6F1CC();
          v64 = v63;
          sub_226C4075C(v53, type metadata accessor for Permission);
          v65 = sub_226AC4530(v62, v64, &v86);
          v41 = v82;

          *(v56 + 14) = v65;
          _os_log_impl(&dword_226AB4000, v54, v55, "Importing association between app (%s) with account: %s", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v57, -1, -1);
          v66 = v56;
          v24 = v79;
          MEMORY[0x22AA8BEE0](v66, -1, -1);
        }

        else
        {

          sub_226C4075C(v53, type metadata accessor for Permission);
          sub_226C4075C(v49, type metadata accessor for Permission);
        }

        sub_226C4075C(v17, type metadata accessor for Permission);
        v39 = v85 + v70;
        v37 = v87 - 1;
        v40 = v81;
        v25 = v78;
      }

      while (v87 != 1);
    }

    else
    {
    }
  }
}

uint64_t FinancialDataAppPermissions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_226C23CBC(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
  os_unfair_lock_lock(v3 + 6);
  sub_226C40E84(a1);
  os_unfair_lock_unlock(v3 + 6);
}

unint64_t FinancialDataAppPermissions.removeApplicationsAssociatedWithDeletedAccounts(accountsToBeRemoved:in:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8118, &qword_226D77B28);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v80 - v6;
  v7 = sub_226D67F1C();
  v91 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v80 - v14);
  v16 = sub_226D6D52C();
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  sub_226D683BC();
  v22 = a2;
  v23 = v98;
  result = sub_226D6839C();
  if (v23)
  {
    return result;
  }

  v25 = result;
  v99 = v7;
  v87 = v21;
  v88 = v16;
  v89 = v9;
  v90 = v18;
  v95 = v12;
  v96 = v15;
  sub_226C3FE48(result, v22);
  v98 = 0;
  if (v25 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    if (i)
    {
      v27 = 0;
      v85 = v25 & 0xFFFFFFFFFFFFFF8;
      v86 = v25 & 0xC000000000000001;
      v83 = (v91 + 8);
      v81 = (v91 + 16);
      v82 = (v94 + 8);
      v28 = MEMORY[0x277D84F98];
      v29 = v96;
      v84 = v25;
      while (1)
      {
        if (v86)
        {
          v31 = MEMORY[0x22AA8AFD0](v27, v25);
        }

        else
        {
          if (v27 >= *(v85 + 16))
          {
            goto LABEL_43;
          }

          v31 = *(v25 + 8 * v27 + 32);
        }

        v32 = v31;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_42;
        }

        sub_226D6835C();
        v33 = [v32 accountID];
        sub_226D6D4FC();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v28;
        v25 = v28;
        v36 = sub_226C30574(v29);
        v37 = *(v28 + 16);
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_44;
        }

        v40 = v35;
        v41 = *(v28 + 24);
        v94 = v27 + 1;
        if (v41 >= v39)
        {
          break;
        }

        sub_226C341B8(v39, isUniquelyReferenced_nonNull_native);
        v28 = v100;
        v42 = sub_226C30574(v96);
        if ((v40 & 1) != (v43 & 1))
        {
          goto LABEL_47;
        }

        v36 = v42;
        v44 = v99;
        v45 = v95;
        v46 = i;
        if ((v40 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        v30 = v87;
        sub_226C2514C(v87, v90);

        v29 = v96;
        (*v83)(v96, v44);
        (*v82)(v30, v88);
        ++v27;
        i = v46;
        v25 = v84;
        if (v94 == v46)
        {
          goto LABEL_22;
        }
      }

      v45 = v95;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226C39658(MEMORY[0x277CC7098], &qword_27D7A8280, &qword_226D77F28);
        v45 = v95;
        v28 = v100;
      }

      v44 = v99;
      v46 = i;
      if (v40)
      {
        goto LABEL_6;
      }

LABEL_19:
      (*v81)(v45, v96, v44);
      sub_226C366F0(v36, v45, MEMORY[0x277D84FA0], v28, MEMORY[0x277CC7098]);
      goto LABEL_6;
    }

    v28 = MEMORY[0x277D84F98];
LABEL_22:

    v47 = 0;
    v48 = *(v28 + 64);
    v87 = (v28 + 64);
    v49 = 1 << *(v28 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v48;
    v86 = (v49 + 63) >> 6;
    v88 = v91 + 16;
    v96 = (v91 + 32);
    v90 = (v91 + 8);
    v94 = v28;
    v52 = v89;
    v53 = v97;
    if ((v50 & v48) != 0)
    {
      break;
    }

LABEL_26:
    if (v86 <= v47 + 1)
    {
      v55 = v47 + 1;
    }

    else
    {
      v55 = v86;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v54 >= v86)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8120, &qword_226D77B30);
        (*(*(v79 - 8) + 56))(v53, 1, 1, v79);
        v51 = 0;
        goto LABEL_34;
      }

      v51 = *&v87[8 * v54];
      ++v47;
      if (v51)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  while (1)
  {
    v54 = v47;
LABEL_33:
    v57 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v58 = v57 | (v54 << 6);
    v59 = *(v28 + 48);
    v60 = v28;
    v61 = v91;
    v62 = v95;
    v63 = v99;
    (*(v91 + 16))(v95, v59 + *(v91 + 72) * v58, v99);
    v64 = *(*(v60 + 56) + 8 * v58);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8120, &qword_226D77B30);
    v66 = *(v65 + 48);
    v67 = *(v61 + 32);
    v68 = v97;
    v67(v97, v62, v63);
    *&v68[v66] = v64;
    v53 = v68;
    (*(*(v65 - 8) + 56))(v68, 0, 1, v65);

    v56 = v54;
    v52 = v89;
LABEL_34:
    v69 = v93;
    sub_226AFD80C(v53, v93, &qword_27D7A8118, &qword_226D77B28);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8120, &qword_226D77B30);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
    }

    v71 = v56;
    v72 = *(v69 + *(v70 + 48));
    v73 = v99;
    v74 = (*v96)(v52, v69, v99);
    v75 = *(*(v92 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v74);
    v25 = (&v80 - 6);
    *(&v80 - 4) = v52;
    *(&v80 - 3) = v72;
    *(&v80 - 2) = v76;
    os_unfair_lock_lock((v75 + 24));
    v77 = v98;
    sub_226C40E6C((v75 + 16));
    v98 = v77;
    v78 = (v75 + 24);
    if (v77)
    {
      break;
    }

    os_unfair_lock_unlock(v78);

    (*v90)(v52, v73);
    v47 = v71;
    v28 = v94;
    v53 = v97;
    if (!v51)
    {
      goto LABEL_26;
    }
  }

  os_unfair_lock_unlock(v78);
  __break(1u);
LABEL_47:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}