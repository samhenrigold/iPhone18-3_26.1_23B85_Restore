uint64_t sub_226312BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22635004C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226312CE8, 0, 0);
}

uint64_t sub_226312CE8(uint64_t a1)
{
  v39 = v1;
  v2 = v1[3];
  sub_22634FFDC();
  v3 = v2[1];
  v34 = *v2;
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];

  v7 = v6;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v1[8];
  v11 = v1[9];
  v13 = v1[7];
  if (v10)
  {
    v31 = v5;
    v14 = swift_slowAlloc();
    v32 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    sub_22635096C();

    v37 = 0xD000000000000015;
    v38 = 0x8000000226356820;
    MEMORY[0x22AA7C5B0](v34, v3);
    MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
    MEMORY[0x22AA7C5B0](v31, v4);
    MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
    v16 = sub_226345004(0xD000000000000015, 0x8000000226356820, &v36);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_2262B6000, v8, v9, "Performing action with semantic content descriptor on actionable target %s...", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    (*(v12 + 8))(v11, v32);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  sub_22634F15C();
  swift_getOpaqueTypeConformance2();
  v35 = sub_22634ECEC();
  v1[10] = v35;
  v17 = sub_2262D99F4(v7);
  v18 = v17;
  v19 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
LABEL_27:
    v21 = sub_226350A6C();
  }

  else
  {
    v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v1;
  v1[11] = v19;
  if (v21)
  {
    v1 = 0;
    do
    {
      v22 = v1;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x22AA7CA30](v22, v18);
        }

        else
        {
          if (v22 >= *(v20 + 16))
          {
            goto LABEL_26;
          }

          v23 = *(v18 + 8 * v22 + 32);
        }

        v24 = v23;
        v1 = (v22 + 1);
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v25 = [v23 name];
        if (v25)
        {
          break;
        }

LABEL_10:
        ++v22;
        if (v1 == v21)
        {
          goto LABEL_22;
        }
      }

      v26 = v25;
      v27 = [objc_allocWithZone(MEMORY[0x277D238D8]) initWithIdentifier:v25 value:v35];

      if (!v27)
      {
        goto LABEL_10;
      }

      MEMORY[0x22AA7C600]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22635058C();
      }

      sub_2263505AC();
      v19 = v37;
      v33[11] = v37;
    }

    while (v1 != v21);
  }

LABEL_22:

  v28 = swift_task_alloc();
  v33[12] = v28;
  *v28 = v33;
  v28[1] = sub_226313114;
  v29 = v33[3];

  return sub_226311F10(v19, v29);
}

uint64_t sub_226313114(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226313300;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_226313260;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226313260()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4(v5);
}

uint64_t sub_226313300()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22631339C(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v3 = sub_2263507FC();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v4 = sub_22635080C();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  v5 = sub_22635004C();
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263135A0, 0, 0);
}

uint64_t sub_2263135A0(uint64_t a1)
{
  v163 = v1;
  v2 = v1;
  v162[1] = *MEMORY[0x277D85DE8];
  v3 = v1[31];
  v4 = v2[30];
  sub_22634FFDC();
  *(v2 + 17) = *v3;
  *(v2 + 19) = *(v3 + 16);
  v5 = *(v3 + 32);
  v2[49] = v5;
  v6 = v4;
  sub_2263153E0((v2 + 17), (v2 + 21));
  sub_2263153E0((v2 + 19), (v2 + 23));
  v7 = v5;
  v8 = sub_22635003C();
  v9 = sub_22635071C();

  sub_22631543C((v2 + 17));
  sub_22631543C((v2 + 19));

  v10 = os_log_type_enabled(v8, v9);
  v11 = v2[48];
  v13 = v2[38];
  v12 = v2[39];
  v161 = v2;
  if (v10)
  {
    v155 = v7;
    v14 = v2[30];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v162[0] = v16;
    *v15 = 136315394;
    v17 = v14;
    v148 = v13;
    v18 = [v17 description];
    v19 = sub_22635046C();
    v21 = v20;

    v2 = v161;
    v22 = sub_226345004(v19, v21, v162);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = sub_226320200();
    v25 = sub_226345004(v23, v24, v162);

    *(v15 + 14) = v25;
    v7 = v155;
    _os_log_impl(&dword_2262B6000, v8, v9, "Performing intent value query with input value %s on queryable target %s...", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v16, -1, -1);
    MEMORY[0x22AA7D570](v15, -1, -1);

    v26 = *(v12 + 8);
    v26(v11, v148);
  }

  else
  {

    v26 = *(v12 + 8);
    v26(v11, v13);
  }

  v2[50] = v26;
  v27 = v7;
  if (([v27 capabilities] & 0x20) == 0)
  {

    sub_22634FFDC();
    v28 = v27;
    v29 = sub_22635003C();
    v30 = sub_22635073C();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v2[41];
    v33 = v2[38];
    if (v31)
    {
      v34 = swift_slowAlloc();
      v156 = v26;
      v35 = swift_slowAlloc();
      v162[0] = v35;
      *v34 = 136315138;
      v36 = v28;
      v37 = [v36 description];
      v38 = sub_22635046C();
      v151 = v32;
      v40 = v39;

      v41 = sub_226345004(v38, v40, v162);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_2262B6000, v29, v30, "Query metadata %s does not support intent value query. Aborting...", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x22AA7D570](v35, -1, -1);
      MEMORY[0x22AA7D570](v34, -1, -1);

      v156(v151, v33);
    }

    else
    {

      v26(v32, v33);
    }

    sub_226315490();
    swift_allocError();
    *v72 = 0;
LABEL_19:
    swift_willThrow();
    goto LABEL_20;
  }

  v42 = [v27 inputValueType];
  v2[51] = v42;
  if (!v42)
  {

    sub_22634FFDC();
    v73 = v27;
    v74 = sub_22635003C();
    v75 = sub_22635073C();

    v76 = os_log_type_enabled(v74, v75);
    v77 = v2[42];
    v78 = v2[38];
    if (v76)
    {
      v79 = swift_slowAlloc();
      v158 = v26;
      v80 = swift_slowAlloc();
      v162[0] = v80;
      *v79 = 136315138;
      v81 = v73;
      v82 = [v81 description];
      v83 = sub_22635046C();
      v153 = v77;
      v85 = v84;

      v86 = sub_226345004(v83, v85, v162);

      *(v79 + 4) = v86;
      _os_log_impl(&dword_2262B6000, v74, v75, "Query metadata %s does not contain input value type. Aborting...", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x22AA7D570](v80, -1, -1);
      MEMORY[0x22AA7D570](v79, -1, -1);

      v158(v153, v78);
    }

    else
    {

      v26(v77, v78);
    }

    sub_226315490();
    swift_allocError();
    *v110 = 1;
    goto LABEL_19;
  }

  v43 = v42;
  if (![v42 valueIsKindOfType_])
  {
    v87 = v2[30];

    sub_22634FFDC();
    v88 = v87;
    v89 = v43;
    v90 = sub_22635003C();
    v91 = sub_22635073C();

    v92 = os_log_type_enabled(v90, v91);
    v93 = v2[43];
    v94 = v2[38];
    if (v92)
    {
      v154 = v2[43];
      v95 = v2[30];
      v159 = v26;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v162[0] = v97;
      *v96 = 136315394;
      v89 = v89;
      v98 = [v89 description];
      v99 = sub_22635046C();
      v146 = v94;
      v101 = v100;

      v102 = sub_226345004(v99, v101, v162);

      *(v96 + 4) = v102;
      *(v96 + 12) = 2080;
      v103 = v95;
      v104 = [v103 description];
      v105 = sub_22635046C();
      v107 = v106;

      v108 = sub_226345004(v105, v107, v162);

      *(v96 + 14) = v108;
      _os_log_impl(&dword_2262B6000, v90, v91, "Query metadata expects input value type of %s, but input value %s is not a kind of it. Aborting...", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v97, -1, -1);
      MEMORY[0x22AA7D570](v96, -1, -1);

      v159(v154, v146);
    }

    else
    {

      v26(v93, v94);
    }

    sub_226315490();
    swift_allocError();
    *v109 = 2;
    swift_willThrow();

    goto LABEL_20;
  }

  v157 = v26;
  v45 = v2[36];
  v44 = v2[37];
  v47 = v2[34];
  v46 = v2[35];
  v48 = v2[32];
  v49 = v2[33];
  v50 = v161[30];
  sub_2262D9C1C(0, &qword_27D793970, 0x277D23B90);
  *v44 = v50;
  (*(v45 + 104))(v44, *MEMORY[0x277D23A20], v46);
  *v47 = v27;
  (*(v49 + 104))(v47, *MEMORY[0x277D23A38], v48);
  v51 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v52 = v50;
  v53 = v161;
  [v51 init];
  v54 = sub_22635081C();
  v161[52] = v54;
  v55 = [objc_opt_self() policyWithEntityQueryMetadata_];
  v161[53] = v55;
  sub_22634FFDC();
  v56 = v54;
  v57 = sub_22635003C();
  v58 = sub_22635071C();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v161[47];
  v61 = v161[38];
  v152 = v56;
  if (v59)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v162[0] = v63;
    *v62 = 136315138;
    v64 = v56;
    v149 = v60;
    v65 = [v64 description];
    v145 = v61;
    v66 = sub_22635046C();
    v68 = v67;

    v53 = v161;
    v69 = sub_226345004(v66, v68, v162);

    *(v62 + 4) = v69;
    _os_log_impl(&dword_2262B6000, v57, v58, "Performing query request %s...", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x22AA7D570](v63, -1, -1);
    MEMORY[0x22AA7D570](v62, -1, -1);

    v71 = v145;
    v70 = v149;
  }

  else
  {

    v70 = v60;
    v71 = v61;
  }

  v157(v70, v71);
  v53[25] = 0;
  v113 = [v55 connectionWithError_];
  v53[54] = v113;
  v114 = v53[25];
  if (!v113)
  {
    v120 = v114;
    v121 = sub_22634EDAC();

    swift_willThrow();
    v122 = v53[52];
    sub_22634FFDC();
    v123 = v122;
    v124 = v121;
    v125 = sub_22635003C();
    v126 = sub_22635073C();

    v127 = os_log_type_enabled(v125, v126);
    v129 = v53[52];
    v128 = v53[53];
    v131 = v53[50];
    v130 = v53[51];
    v132 = v53[40];
    v160 = v53[38];
    if (v127)
    {
      v150 = v53[50];
      v133 = swift_slowAlloc();
      v144 = v132;
      v134 = swift_slowAlloc();
      v162[0] = v134;
      *v133 = 136315394;
      swift_getErrorValue();
      v147 = v130;
      v135 = sub_226350C9C();
      v137 = sub_226345004(v135, v136, v162);

      *(v133 + 4) = v137;
      *(v133 + 12) = 2080;
      v138 = v129;
      v139 = [v138 description];
      v140 = sub_22635046C();
      v142 = v141;

      v143 = sub_226345004(v140, v142, v162);

      *(v133 + 14) = v143;
      _os_log_impl(&dword_2262B6000, v125, v126, "Error %s occurred when performing query request %s.", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v134, -1, -1);
      MEMORY[0x22AA7D570](v133, -1, -1);

      v150(v144, v160);
      swift_willThrow();
    }

    else
    {

      v131(v132, v160);
      swift_willThrow();
    }

LABEL_20:

    v111 = v161[1];

    return v111();
  }

  v115 = v113;
  v116 = swift_task_alloc();
  v53[55] = v116;
  *(v116 + 16) = v115;
  *(v116 + 24) = v152;
  v117 = v114;
  v118 = swift_task_alloc();
  v53[56] = v118;
  v119 = sub_2262D9C1C(0, &qword_27D793978, 0x277D23C50);
  *v118 = v53;
  v118[1] = sub_2263143FC;

  return MEMORY[0x2821E00F8](v53 + 27, &unk_226354860, v116, sub_22630F770, 0, v119);
}

uint64_t sub_2263143FC()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_2263150AC;
  }

  else
  {

    v2 = sub_22631454C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22631454C()
{
  v114 = v0;
  v113[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);
  v2 = *(v0 + 216);
  sub_22634FFDC();
  v3 = v1;
  v4 = sub_22635003C();
  v5 = sub_22635071C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v111 = v2;
  if (v6)
  {
    v8 = *(v0 + 416);
    v105 = *(v0 + 368);
    v108 = *(v0 + 400);
    v101 = *(v0 + 304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v113[0] = v10;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_22635046C();
    v15 = v14;

    v16 = sub_226345004(v13, v15, v113);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = v111;
    v18 = [v17 description];
    v19 = sub_22635046C();
    v21 = v20;

    v22 = sub_226345004(v19, v21, v113);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_2262B6000, v4, v5, "Performed query request %s with response %s.", v9, 0x16u);
    swift_arrayDestroy();
    v23 = v10;
    v2 = v111;
    MEMORY[0x22AA7D570](v23, -1, -1);
    MEMORY[0x22AA7D570](v9, -1, -1);

    v108(v105, v101);
  }

  else
  {
    v24 = *(v0 + 400);
    v25 = *(v0 + 368);
    v26 = *(v0 + 304);

    v24(v25, v26);
  }

  v27 = [v2 value];

  v28 = [v27 value];
  sub_22635088C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793980, &qword_226354868);
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 224);
    v30 = [*(v0 + 392) resultValueType];
    if (v29 >> 62)
    {
LABEL_35:
      v31 = sub_226350A6C();
      if (v31)
      {
LABEL_7:
        v32 = 0;
        v109 = MEMORY[0x277D84F90];
        do
        {
          v33 = v32;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x22AA7CA30](v33, v29);
            }

            else
            {
              if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v34 = *(v29 + 8 * v33 + 32);
            }

            v35 = v34;
            v32 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if ([v30 valueIsKindOfType_])
            {
              break;
            }

            ++v33;
            if (v32 == v31)
            {
              goto LABEL_37;
            }
          }

          v36 = [v35 value];
          sub_22635088C();
          swift_unknownObjectRelease();
          sub_2262D9C1C(0, &qword_27D793808, 0x277D237F0);
          v106 = swift_dynamicCast();
          if (v106)
          {
            v37 = *(v0 + 232);
            v102 = [v35 displayRepresentation];

            v35 = v37;
          }

          else
          {
            v102 = [v35 displayRepresentation];
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = v109;
          }

          else
          {
            v38 = sub_2262DD324(0, *(v109 + 2) + 1, 1, v109);
          }

          v40 = *(v38 + 2);
          v39 = *(v38 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v43 = sub_2262DD324((v39 > 1), v40 + 1, 1, v38);
            v41 = v40 + 1;
            v38 = v43;
          }

          *(v38 + 2) = v41;
          v109 = v38;
          v42 = &v38[24 * v40];
          *(v42 + 4) = v35;
          v42[40] = v106 ^ 1;
          *(v42 + 6) = v102;
        }

        while (v32 != v31);
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_7;
      }
    }

    v109 = MEMORY[0x277D84F90];
LABEL_37:
    v71 = *(v0 + 416);

    sub_22634FFDC();
    v72 = v71;
    v73 = v30;

    v74 = sub_22635003C();
    v75 = sub_22635071C();

    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 416);
    v78 = *(v0 + 400);
    v104 = *(v0 + 424);
    v107 = *(v0 + 408);
    v79 = *(v0 + 360);
    v80 = *(v0 + 304);
    if (v76)
    {
      v81 = swift_slowAlloc();
      v98 = v78;
      v94 = swift_slowAlloc();
      v113[0] = v94;
      *v81 = 136315394;
      v82 = v77;
      v96 = v79;
      v83 = [v82 description];
      v84 = sub_22635046C();
      v95 = v80;
      v86 = v85;

      v87 = sub_226345004(v84, v86, v113);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      v88 = v73;

      v89 = sub_22630C714(v88);
      v91 = v90;

      v92 = sub_226345004(v89, v91, v113);

      *(v81 + 14) = v92;
      _os_log_impl(&dword_2262B6000, v74, v75, "Performed query request %s with result %s.", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v94, -1, -1);
      MEMORY[0x22AA7D570](v81, -1, -1);

      v98(v96, v95);
    }

    else
    {

      v78(v79, v80);
    }

    v93 = *(v0 + 8);

    return v93(v73, v109);
  }

  v44 = *(v0 + 416);
  sub_22634FFDC();
  v45 = v44;
  v46 = v2;
  v47 = sub_22635003C();
  v48 = sub_22635073C();

  v49 = os_log_type_enabled(v47, v48);
  v51 = *(v0 + 416);
  v50 = *(v0 + 424);
  v52 = *(v0 + 400);
  v53 = *(v0 + 408);
  v110 = *(v0 + 304);
  v112 = *(v0 + 352);
  if (v49)
  {
    v103 = *(v0 + 424);
    v54 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = v53;
    v113[0] = v99;
    *v54 = 136315394;
    v55 = v51;
    v56 = v51;
    v57 = [v56 description];
    v97 = v52;
    v58 = sub_22635046C();
    v60 = v59;

    v51 = v55;
    v61 = sub_226345004(v58, v60, v113);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2080;
    v62 = [v46 value];
    v63 = [v62 value];

    sub_22635088C();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
    v64 = sub_226350D6C();
    v66 = sub_226345004(v64, v65, v113);

    *(v54 + 14) = v66;
    _os_log_impl(&dword_2262B6000, v47, v48, "Response value of query request %s is expected to be [LNValue], but it is %s. Aborting...", v54, 0x16u);
    swift_arrayDestroy();
    v53 = v100;
    MEMORY[0x22AA7D570](v99, -1, -1);
    v67 = v54;
    v50 = v103;
    MEMORY[0x22AA7D570](v67, -1, -1);

    v97(v112, v110);
  }

  else
  {

    v52(v112, v110);
  }

  sub_226315490();
  swift_allocError();
  *v68 = 4;
  swift_willThrow();

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_2263150AC()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 456);
  v2 = *(v0 + 416);
  sub_22634FFDC();
  v3 = v2;
  v4 = v1;
  v5 = sub_22635003C();
  v6 = sub_22635073C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 416);
    v27 = *(v0 + 424);
    v28 = *(v0 + 408);
    v31 = *(v0 + 400);
    v29 = *(v0 + 304);
    v30 = *(v0 + 320);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_226350C9C();
    v12 = sub_226345004(v10, v11, v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = v7;
    v14 = [v13 description];
    v15 = sub_22635046C();
    v17 = v16;

    v18 = v27;
    v19 = sub_226345004(v15, v17, v32);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_2262B6000, v5, v6, "Error %s occurred when performing query request %s.", v8, 0x16u);
    swift_arrayDestroy();
    v20 = v9;
    v21 = v28;
    MEMORY[0x22AA7D570](v20, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);

    v31(v30, v29);
  }

  else
  {
    v13 = *(v0 + 416);
    v18 = *(v0 + 424);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 320);
    v24 = *(v0 + 304);

    v22(v23, v24);
  }

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

unint64_t sub_226315490()
{
  result = qword_27D793968;
  if (!qword_27D793968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793968);
  }

  return result;
}

uint64_t sub_2263154E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2262D641C;

  return sub_22630F230(a1, v5, v4);
}

uint64_t sub_2263155A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7939B8, &qword_226354898);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226315634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2262D641C;

  return sub_22630CEC4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226315728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2262FF0E0;

  return sub_22630D194(a1, v4, v5, v6);
}

uint64_t sub_2263157F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_226315894(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  result = sub_22634F97C();
  if ((result & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
    v15 = (v7 + 48);
    if (a1)
    {
      swift_beginAccess();
      result = (*v15)(v3 + v14, 1, v6);
      if (!result)
      {
        (*(v7 + 16))(v12, v3 + v14, v6);
        v20 = a1;
        v16 = a1;
        sub_2263505EC();
        return (*(v7 + 8))(v12, v6);
      }
    }

    else
    {
      swift_beginAccess();
      result = (*v15)(v3 + v14, 1, v6);
      if (!result)
      {
        (*(v7 + 16))(v10, v3 + v14, v6);
        if (a2)
        {
          v17 = a2;
        }

        else
        {
          sub_226315CA0();
          v17 = swift_allocError();
          *v18 = 1;
        }

        v20 = v17;
        v19 = a2;
        sub_2263505DC();
        return (*(v7 + 8))(v10, v6);
      }
    }
  }

  return result;
}

void sub_226315ACC(void *a1, char a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793960, &qword_226354820);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  if ((sub_22634F97C() & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC26VisualActionPredictionCoreP33_610E6787A62CF717964A8E858C6CA80327_LinkActionExecutorDelegate_continuation;
    swift_beginAccess();
    if (!(*(v7 + 48))(v4 + v10, 1, v6))
    {
      (*(v7 + 16))(v9, v4 + v10, v6);
      sub_226315CA0();
      v11 = swift_allocError();
      *v12 = a2;
      v16 = v11;
      sub_2263505DC();
      (*(v7 + 8))(v9, v6);
    }
  }

  sub_226315CA0();
  v13 = swift_allocError();
  *v14 = 0;
  v15 = sub_22634ED9C();

  [a1 respondWithError_];
}

unint64_t sub_226315CA0()
{
  result = qword_27D793A60;
  if (!qword_27D793A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A60);
  }

  return result;
}

uint64_t sub_226315D04(uint64_t a1, int a2)
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

uint64_t sub_226315D4C(uint64_t result, int a2, int a3)
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

unint64_t sub_226315DAC()
{
  result = qword_27D793A68;
  if (!qword_27D793A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A68);
  }

  return result;
}

unint64_t sub_226315E04()
{
  result = qword_27D793A70;
  if (!qword_27D793A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A70);
  }

  return result;
}

unint64_t sub_226315E6C()
{
  result = qword_27D793A78;
  if (!qword_27D793A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793A78);
  }

  return result;
}

uint64_t sub_226315ED4()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_226315F28(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_22634F34C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for VisualAction(0);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_22634F55C();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263160AC, v2, 0);
}

uint64_t sub_2263160AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  sub_22634F59C();
  sub_22634F52C();
  sub_226316588(&qword_28137E138, 255, MEMORY[0x277D78770], MEMORY[0x277D78778]);
  v5 = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v8 = sub_22634F49C();
    v9 = *(v8 + 16);
    if (v9)
    {
      v29 = v0[8];
      v30 = v0[9];
      v28 = v0[7];
      v10 = v0[5];
      sub_2263165D0(0, v9, 0);
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v26 = *(v10 + 56);
      v27 = v11;
      v25 = (v10 + 16);
      do
      {
        v31 = v9;
        v13 = v0[9];
        v14 = v0[6];
        v15 = v0[4];
        v27(v14, v12, v15);
        v16 = sub_22634FFAC();
        v18 = v17;
        (*v25)(v13 + v28[5], v14, v15);
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v13 = v16;
        *(v30 + 8) = v18;
        v19 = MEMORY[0x277D84F98];
        *(v13 + v28[6]) = MEMORY[0x277D84F98];
        *(v13 + v28[7]) = v19;
        *(v13 + v28[8]) = v19;
        v21 = *(v7 + 16);
        v20 = *(v7 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2263165D0((v20 > 1), v21 + 1, 1);
        }

        v22 = v0[9];
        *(v7 + 16) = v21 + 1;
        sub_2262FEB84(v22, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21);
        v12 += v26;
        --v9;
      }

      while (v31 != 1);
    }
  }

  v23 = v0[1];

  return v23(v7);
}

uint64_t sub_226316390(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226316434;

  return sub_226315F28(a1, a2);
}

uint64_t sub_226316434(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226316530(uint64_t a1, uint64_t a2)
{
  result = sub_226316588(qword_28137F7C0, a2, type metadata accessor for RemoteCustomActionProvider, &unk_226354BD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226316588(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_2263165D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2262DD940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2263165F0(char *a1, int64_t a2, char a3)
{
  result = sub_2262DDA9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226316610(void *a1, int64_t a2, char a3)
{
  result = sub_2262DDBA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226316630(char *a1, int64_t a2, char a3)
{
  result = sub_2262DDEB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_226316650(void *a1, int64_t a2, char a3)
{
  result = sub_2262DDFBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226316670()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionExecutor_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for VisualSearchActionExecutor(uint64_t a1)
{
  result = qword_28137F1C0;
  if (!qword_28137F1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22631675C(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_22631680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v5[12] = swift_task_alloc();
  v6 = sub_22634EF3C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_22634F3FC();
  v5[16] = swift_task_alloc();
  v7 = sub_22634F9DC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793088, &qword_226351F40);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = sub_22635004C();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0);
  v5[34] = swift_task_alloc();
  v9 = sub_22634F17C();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = sub_22634FDDC();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v11 = sub_22634EEFC();
  v5[41] = v11;
  v12 = *(v11 - 8);
  v5[42] = v12;
  v5[43] = *(v12 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = type metadata accessor for VisualAction.Kind(0);
  v5[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226316C5C, v4, 0);
}

uint64_t sub_226316C5C()
{
  v1 = v0[47];
  v2 = v0[8];
  v3 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(v2 + *(v3 + 20), v1, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22631CCC0(v1, type metadata accessor for VisualAction.Kind);
  if (EnumCaseMultiPayload == 4)
  {
    v5 = v0[8];
    v6 = *v5;
    v0[48] = *v5;
    v7 = v5[1];
    v0[49] = v7;
    v8 = swift_task_alloc();
    v0[50] = v8;
    *v8 = v0;
    v8[1] = sub_226316F68;

    return sub_22631D630(v6, v7);
  }

  else
  {
    v10 = v0[7];
    v11 = *MEMORY[0x277D78AE8];
    v12 = sub_22634FB9C();
    (*(*(v12 - 8) + 104))(v10, v11, v12);
    v13 = *MEMORY[0x277D78A40];
    v14 = sub_22634FAEC();
    (*(*(v14 - 8) + 104))(v10, v13, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_226316F68(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_226317080, v2, 0);
}

uint64_t sub_226317080()
{
  if (*(v0[51] + 16))
  {
    v2 = v0[39];
    v1 = v0[40];
    v3 = v0[38];
    v4 = v0[10];
    v5 = *(v0[11] + 128);
    v0[52] = v5;
    v6 = sub_22634F9BC();
    (*(*(v6 - 8) + 16))(v1, v4, v6);
    (*(v2 + 104))(v1, *MEMORY[0x277D78CD0], v3);

    return MEMORY[0x2822009F8](sub_226317358, v5, 0);
  }

  else
  {
    v7 = v0[7];

    v8 = *MEMORY[0x277D78AF0];
    v9 = sub_22634FB9C();
    (*(*(v9 - 8) + 104))(v7, v8, v9);
    v10 = *MEMORY[0x277D78A40];
    v11 = sub_22634FAEC();
    (*(*(v11 - 8) + 104))(v7, v10, v11);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_226317358()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[11];
  sub_2262E0528(v1, v0[45]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2263173FC, v4, 0);
}

uint64_t sub_2263173FC(uint64_t a1)
{
  v2 = v1[51];
  v3 = v1[45];
  v4 = v1[41];
  v5 = v1[42];
  v7 = v1[33];
  v6 = v1[34];
  sub_22634F4EC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A80, &qword_226354CF0);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = *(v5 + 16);
  v1[53] = v9;
  v1[54] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v7, v3, v4);
  (*(v5 + 56))(v7, 0, 1, v4);
  sub_22634F16C();
  if (*(v2 + 16) < 2uLL)
  {
    v10 = v1 + 31;
    sub_22634FFCC();

    v11 = sub_22635003C();
    v12 = sub_22635071C();
    v17 = os_log_type_enabled(v11, v12);
    v18 = v1[51];
    if (v17)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(v18 + 16);

      v16 = "Starting visual search query with semantic content descriptor on %ld queryable target...";
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v1 + 32;
    sub_22634FFCC();

    v11 = sub_22635003C();
    v12 = sub_22635071C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[51];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(v14 + 16);

      v16 = "Starting visual search query with semantic content descriptor on %ld queryable targets...";
LABEL_6:
      _os_log_impl(&dword_2262B6000, v11, v12, v16, v15, 0xCu);
      MEMORY[0x22AA7D570](v15, -1, -1);
      goto LABEL_8;
    }
  }

LABEL_8:

  v19 = *v10;
  v20 = v1[51];
  v21 = v1[37];
  v22 = v1[26];
  v23 = v1[11];
  v24 = *(v1[27] + 8);
  v1[55] = v24;
  v24(v19, v22);
  v25 = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor, &unk_226354CAC);
  v1[56] = v25;
  v26 = swift_task_alloc();
  v1[57] = v26;
  v26[2] = v20;
  v26[3] = v23;
  v26[4] = v21;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A90, &qword_226354D10);
  v29 = swift_task_alloc();
  v1[58] = v29;
  *v29 = v1;
  v29[1] = sub_226317798;

  return MEMORY[0x282200600](v1 + 2, v27, v28, v23, v25, &unk_226354D00, v26, v27);
}

uint64_t sub_226317798()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2263178E8, v1, 0);
}

unint64_t sub_2263178E8(uint64_t a1)
{
  v93 = v1;
  v89 = *(v1 + 16);
  *(v1 + 472) = v89;
  sub_22634FFCC();

  v2 = sub_22635003C();
  v3 = sub_22635071C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v89 + 16);

    _os_log_impl(&dword_2262B6000, v2, v3, "Finished visual search query with scene descriptor and found %ld items.", v4, 0xCu);
    MEMORY[0x22AA7D570](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v1 + 440);
  v6 = *(v1 + 240);
  v7 = *(v1 + 208);
  *(v1 + 488) = (*(v1 + 216) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v6, v7);
  v8 = MEMORY[0x277D84F90];
  *(v1 + 48) = sub_2262FE9B0(MEMORY[0x277D84F90]);
  v9 = *(v89 + 16);
  *(v1 + 496) = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      *(v1 + 504) = v10;
      *(v1 + 512) = v8;
      v11 = *(v1 + 472) + 24 * v10;
      v12 = *(v11 + 32);
      *(v1 + 520) = v12;
      v13 = *(v11 + 40);
      v14 = *(v11 + 48);
      *(v1 + 528) = v14;
      if (v13)
      {
        v15 = v12;
        v16 = v12;
        v17 = v14;
        sub_22634FFCC();
        v18 = v12;
        v19 = sub_22635003C();
        v20 = sub_22635073C();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v12;
          v23 = v18;
          _os_log_impl(&dword_2262B6000, v19, v20, "Boxed value %@ is not supported.", v21, 0xCu);
          sub_2262D67D8(v22, &qword_27D793CC0, qword_226352A00);
          MEMORY[0x22AA7D570](v22, -1, -1);
          MEMORY[0x22AA7D570](v21, -1, -1);
        }

        else
        {
        }

        (*(v1 + 440))(*(v1 + 224), *(v1 + 208));
      }

      else
      {
        v24 = v12;
        v25 = v12;
        v26 = v14;
        v27 = [v12 identifier];
        v28 = [v27 typeIdentifier];

        v29 = sub_22635046C();
        v31 = v30;

        *(v1 + 32) = v29;
        *(v1 + 40) = v31;
        MEMORY[0x22AA7C5B0](47, 0xE100000000000000);
        v32 = [v12 identifier];
        v33 = [v32 instanceIdentifier];

        v34 = sub_22635046C();
        v36 = v35;

        MEMORY[0x22AA7C5B0](v34, v36);

        v38 = *(v1 + 32);
        v37 = *(v1 + 40);
        *(v1 + 536) = v38;
        *(v1 + 544) = v37;
        if (v14)
        {
          v63 = v26;
          v64 = swift_task_alloc();
          *(v1 + 552) = v64;
          *v64 = v1;
          v64[1] = sub_2263183D8;
          v65 = *(v1 + 384);
          v66 = *(v1 + 392);
          v67 = *(v1 + 200);

          return sub_22631AC58(v67, v12, v65, v66, v1 + 48);
        }

        sub_22634FFCC();

        v39 = sub_22635003C();
        v40 = sub_22635073C();

        v41 = os_log_type_enabled(v39, v40);
        v90 = *(v1 + 440);
        v42 = *(v1 + 232);
        v43 = *(v1 + 208);
        if (v41)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v92 = v45;
          *v44 = 136315138;
          v46 = sub_226345004(v38, v37, &v92);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_2262B6000, v39, v40, "Entity '%s' does not have a display representation.", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          MEMORY[0x22AA7D570](v45, -1, -1);
          MEMORY[0x22AA7D570](v44, -1, -1);
        }

        else
        {
        }

        v90(v42, v43);
        v8 = MEMORY[0x277D84F90];
      }

      v10 = *(v1 + 504) + 1;
    }

    while (v10 != *(v1 + 496));
  }

  *(v1 + 560) = v8;

  result = *(v1 + 480);
  if (*(v8 + 16))
  {
LABEL_18:

    v48 = swift_task_alloc();
    *(v1 + 568) = v48;
    *v48 = v1;
    v48[1] = sub_2263190D0;
    v49 = *(v1 + 384);
    v50 = *(v1 + 392);
    v51 = *(v1 + 192);

    return sub_22631B988(v51, v49, v50);
  }

  if (result >> 62)
  {
    v83 = *(v1 + 480);
    v84 = sub_226350A6C();
    result = v83;
    if (!v84)
    {
      goto LABEL_18;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x22AA7CA30](0, *(v1 + 480));
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v52 = *(*(v1 + 480) + 32);
  }

  v53 = [v52 ln_staticDeferredLocalizedString];
  if (v53)
  {
    v54 = v53;
    v56 = *(v1 + 112);
    v55 = *(v1 + 120);
    v57 = *(v1 + 104);
    sub_22634EF2C();
    sub_22634EF0C();
    (*(v56 + 8))(v55, v57);
    v58 = sub_22635045C();

    v59 = [v54 localizedStringForLocaleIdentifier_];

    v60 = sub_22635046C();
    v62 = v61;
  }

  else
  {

    v60 = 0;
    v62 = 0;
  }

  v91 = *(v1 + 448);
  v87 = *(v1 + 360);
  v88 = *(v1 + 424);
  v68 = *(v1 + 336);
  v69 = *(v1 + 328);
  v70 = *(v1 + 288);
  v71 = *(v1 + 296);
  v72 = *(v1 + 280);
  v73 = *(v1 + 88);
  v85 = *(v1 + 96);
  v86 = *(v1 + 352);
  v74 = *(v1 + 56);
  *v74 = v60;
  v74[1] = v62;
  v75 = *MEMORY[0x277D78AC8];
  v76 = sub_22634FB9C();
  (*(*(v76 - 8) + 104))(v74, v75, v76);
  v77 = *MEMORY[0x277D78A40];
  v78 = sub_22634FAEC();
  (*(*(v78 - 8) + 104))(v74, v77, v78);
  (*(v70 + 8))(v71, v72);
  v79 = sub_22635064C();
  (*(*(v79 - 8) + 56))(v85, 1, 1, v79);
  v88(v86, v87, v69);
  v80 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v81 = swift_allocObject();
  *(v81 + 2) = v73;
  *(v81 + 3) = v91;
  *(v81 + 4) = v73;
  (*(v68 + 32))(&v81[v80], v86, v69);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v85, &unk_226354D30, v81);

  (*(v68 + 8))(v87, v69);

  v82 = *(v1 + 8);

  return v82();
}

uint64_t sub_2263183D8()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2263184E8, v1, 0);
}

uint64_t sub_2263184E8()
{
  v107 = v0;
  v97 = *(v0 + 528);
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v102 = *(v0 + 152);
  v4 = *(v0 + 144);
  v100 = *(v0 + 136);
  sub_2262D66FC(*(v0 + 200), *(v0 + 192), &qword_27D793088, &qword_226351F40);
  v5 = sub_22634F3DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v2, 1, 1, v5);
  v7 = v97;
  sub_22634F3EC();
  sub_22634F9CC();
  (*(v4 + 16))(v102, v3, v100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2262DCF24(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v103 = sub_2262DCF24((v10 > 1), v11 + 1, 1, v9);
  }

  else
  {
    v103 = v9;
  }

  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 200);
  v16 = *(v0 + 152);
  v15 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);

  (*(v18 + 8))(v15, v17);
  sub_2262D67D8(v14, &qword_27D793088, &qword_226351F40);
  v19 = v103;
  v103[2] = v11 + 1;
  (*(v18 + 32))(v103 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v16, v17);
  for (i = *(v0 + 504) + 1; i != *(v0 + 496); i = *(v0 + 504) + 1)
  {
    *(v0 + 504) = i;
    *(v0 + 512) = v19;
    v26 = *(v0 + 472) + 24 * i;
    v27 = *(v26 + 32);
    *(v0 + 520) = v27;
    v28 = *(v26 + 40);
    v29 = *(v26 + 48);
    *(v0 + 528) = v29;
    if (v28)
    {
      v30 = v27;
      v31 = v27;
      v32 = v29;
      sub_22634FFCC();
      v33 = v27;
      v34 = sub_22635003C();
      v35 = sub_22635073C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v33;
        *v37 = v27;
        v38 = v33;
        _os_log_impl(&dword_2262B6000, v34, v35, "Boxed value %@ is not supported.", v36, 0xCu);
        sub_2262D67D8(v37, &qword_27D793CC0, qword_226352A00);
        v39 = v37;
        v19 = v103;
        MEMORY[0x22AA7D570](v39, -1, -1);
        MEMORY[0x22AA7D570](v36, -1, -1);
      }

      else
      {
      }

      (*(v0 + 440))(*(v0 + 224), *(v0 + 208));
    }

    else
    {
      v40 = v27;
      v41 = v27;
      v42 = v29;
      v43 = [v27 identifier];
      v44 = [v43 typeIdentifier];

      v45 = sub_22635046C();
      v47 = v46;

      *(v0 + 32) = v45;
      *(v0 + 40) = v47;
      MEMORY[0x22AA7C5B0](47, 0xE100000000000000);
      v48 = [v27 identifier];
      v49 = [v48 instanceIdentifier];

      v50 = sub_22635046C();
      v52 = v51;

      MEMORY[0x22AA7C5B0](v50, v52);

      v54 = *(v0 + 32);
      v53 = *(v0 + 40);
      *(v0 + 536) = v54;
      *(v0 + 544) = v53;
      if (v29)
      {
        v76 = v42;
        v77 = swift_task_alloc();
        *(v0 + 552) = v77;
        *v77 = v0;
        v77[1] = sub_2263183D8;
        v78 = *(v0 + 384);
        v79 = *(v0 + 392);
        v80 = *(v0 + 200);

        return sub_22631AC58(v80, v27, v78, v79, v0 + 48);
      }

      sub_22634FFCC();

      v55 = sub_22635003C();
      v56 = sub_22635073C();

      v57 = os_log_type_enabled(v55, v56);
      v104 = *(v0 + 440);
      v58 = *(v0 + 232);
      v59 = *(v0 + 208);
      if (v57)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v106 = v61;
        *v60 = 136315138;
        v62 = sub_226345004(v54, v53, &v106);

        *(v60 + 4) = v62;
        _os_log_impl(&dword_2262B6000, v55, v56, "Entity '%s' does not have a display representation.", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x22AA7D570](v61, -1, -1);
        v63 = v60;
        v19 = v103;
        MEMORY[0x22AA7D570](v63, -1, -1);
      }

      else
      {
      }

      v104(v58, v59);
    }
  }

  *(v0 + 560) = v19;

  if (v19[2])
  {
LABEL_7:

    v21 = swift_task_alloc();
    *(v0 + 568) = v21;
    *v21 = v0;
    v21[1] = sub_2263190D0;
    v22 = *(v0 + 384);
    v23 = *(v0 + 392);
    v24 = *(v0 + 192);

    return sub_22631B988(v24, v22, v23);
  }

  v64 = *(v0 + 480);
  if (v64 >> 62)
  {
    result = sub_226350A6C();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((v64 & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x22AA7CA30](0, *(v0 + 480));
  }

  else
  {
    if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v65 = *(*(v0 + 480) + 32);
  }

  v66 = [v65 ln_staticDeferredLocalizedString];
  if (v66)
  {
    v67 = v66;
    v69 = *(v0 + 112);
    v68 = *(v0 + 120);
    v70 = *(v0 + 104);
    sub_22634EF2C();
    sub_22634EF0C();
    (*(v69 + 8))(v68, v70);
    v71 = sub_22635045C();

    v72 = [v67 localizedStringForLocaleIdentifier_];

    v73 = sub_22635046C();
    v75 = v74;
  }

  else
  {

    v73 = 0;
    v75 = 0;
  }

  v105 = *(v0 + 448);
  v101 = *(v0 + 424);
  v98 = *(v0 + 352);
  v99 = *(v0 + 360);
  v81 = *(v0 + 336);
  v82 = *(v0 + 328);
  v83 = *(v0 + 288);
  v84 = *(v0 + 296);
  v85 = *(v0 + 280);
  v86 = *(v0 + 88);
  v96 = *(v0 + 96);
  v87 = *(v0 + 56);
  *v87 = v73;
  v87[1] = v75;
  v88 = *MEMORY[0x277D78AC8];
  v89 = sub_22634FB9C();
  (*(*(v89 - 8) + 104))(v87, v88, v89);
  v90 = *MEMORY[0x277D78A40];
  v91 = sub_22634FAEC();
  (*(*(v91 - 8) + 104))(v87, v90, v91);
  (*(v83 + 8))(v84, v85);
  v92 = sub_22635064C();
  (*(*(v92 - 8) + 56))(v96, 1, 1, v92);
  v101(v98, v99, v82);
  v93 = (*(v81 + 80) + 40) & ~*(v81 + 80);
  v94 = swift_allocObject();
  *(v94 + 2) = v86;
  *(v94 + 3) = v105;
  *(v94 + 4) = v86;
  (*(v81 + 32))(&v94[v93], v98, v82);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v96, &unk_226354D30, v94);

  (*(v81 + 8))(v99, v82);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_2263190D0()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2263191E0, v1, 0);
}

uint64_t sub_2263191E0()
{
  v25 = v0[56];
  v24 = v0[53];
  v20 = v0[44];
  v21 = v0[45];
  v1 = v0[36];
  v16 = v0[35];
  v17 = v0[37];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v18 = v0[12];
  v19 = v0[41];
  v22 = v0[42];
  v23 = v0[11];
  v15 = v0[7];
  v6 = sub_22634F3DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  v7(v5, 1, 1, v6);
  sub_2262D66FC(v2, v4, &qword_27D793088, &qword_226351F40);
  sub_22634F3EC();
  sub_22634F9EC();
  sub_2262D67D8(v2, &qword_27D793088, &qword_226351F40);
  v8 = *MEMORY[0x277D78A30];
  v9 = sub_22634FAEC();
  (*(*(v9 - 8) + 104))(v15, v8, v9);
  (*(v1 + 8))(v17, v16);
  v10 = sub_22635064C();
  (*(*(v10 - 8) + 56))(v18, 1, 1, v10);
  v24(v20, v21, v19);
  v11 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v23;
  *(v12 + 3) = v25;
  *(v12 + 4) = v23;
  (*(v22 + 32))(&v12[v11], v20, v19);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v18, &unk_226354D28, v12);

  (*(v22 + 8))(v21, v19);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2263195D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v7 = sub_22634F17C();
  v5[42] = v7;
  v8 = *(v7 - 8);
  v5[43] = v8;
  v5[44] = *(v8 + 64);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A98, &qword_226354D50);
  v5[48] = v9;
  v5[49] = *(v9 - 8);
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226319758, a4, 0);
}

uint64_t sub_226319758()
{
  v1 = *(v0 + 312);
  *(v0 + 288) = MEMORY[0x277D84F90];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v44 = *(v0 + 352) + 7;
  v46 = *(v0 + 344);
  v48 = v1;

  v11 = 0;
  v47 = v2;
  v45 = v6;
  while (v5)
  {
LABEL_10:
    v14 = *(v0 + 376);
    v49 = *(v0 + 368);
    v15 = *(v0 + 360);
    v16 = *(v0 + 328);
    v17 = *(v0 + 336);
    v50 = *(v0 + 320);
    v18 = *(v48 + 48) + 40 * (__clz(__rbit64(v5)) | (v11 << 6));
    v19 = *(v18 + 16);
    *(v0 + 16) = *v18;
    *(v0 + 32) = v19;
    v53 = *(v18 + 32);
    v20 = *v18;
    *(v0 + 128) = *(v0 + 32);
    *(v0 + 144) = v20;
    v21 = sub_22635064C();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v14, 1, 1, v21);
    (*(v46 + 16))(v15, v16, v17);
    v23 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v52 = v24 + 2;
    v24[3] = 0;
    v24[4] = v50;
    (*(v46 + 32))(v24 + v23, v15, v17);
    v51 = v24;
    v25 = v24 + ((v44 + v23) & 0xFFFFFFFFFFFFFFF8);
    v26 = *(v0 + 32);
    *v25 = *(v0 + 16);
    *(v25 + 1) = v26;
    *(v25 + 4) = v53;
    sub_2262D66FC(v14, v49, &qword_27D7939E0, &qword_2263548B0);
    v27 = (*(v22 + 48))(v49, 1, v21);
    v28 = *(v0 + 368);
    if (v27 == 1)
    {
      sub_2263153E0(v0 + 144, v0 + 160);
      sub_2263153E0(v0 + 128, v0 + 176);
      v29 = v53;
      sub_2263153E0(v0 + 144, v0 + 192);
      sub_2263153E0(v0 + 128, v0 + 208);
      v30 = v29;

      sub_2262D67D8(v28, &qword_27D7939E0, &qword_2263548B0);
    }

    else
    {
      sub_2263153E0(v0 + 144, v0 + 224);
      sub_2263153E0(v0 + 128, v0 + 240);
      v31 = v53;
      sub_2263153E0(v0 + 144, v0 + 256);
      sub_2263153E0(v0 + 128, v0 + 272);
      v32 = v31;

      sub_22635063C();
      (*(v22 + 8))(v28, v21);
    }

    if (*v52)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v33 = sub_2263505BC();
      v35 = v34;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = **(v0 + 304);
    v37 = swift_allocObject();
    *(v37 + 16) = &unk_226354D60;
    *(v37 + 24) = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
    v38 = v35 | v33;
    if (v35 | v33)
    {
      v38 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v33;
      *(v0 + 72) = v35;
    }

    v12 = *(v0 + 376);
    v5 &= v5 - 1;
    *(v0 + 80) = 1;
    *(v0 + 88) = v38;
    *(v0 + 96) = v36;
    swift_task_create();

    sub_22631543C(v0 + 144);
    sub_22631543C(v0 + 128);

    v7 = sub_2262D67D8(v12, &qword_27D7939E0, &qword_2263548B0);
    v2 = v47;
    v6 = v45;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v7, v8, v9, v10);
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v11;
    if (v5)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793A88, &qword_226354D08);
  sub_2263505FC();
  v39 = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor, &unk_226354CAC);
  *(v0 + 408) = v39;
  v40 = MEMORY[0x277D84F90];
  *(v0 + 416) = MEMORY[0x277D84F90];
  *(v0 + 424) = v40;
  v41 = *(v0 + 320);
  v42 = swift_task_alloc();
  *(v0 + 432) = v42;
  *v42 = v0;
  v42[1] = sub_226319D04;
  v10 = *(v0 + 384);
  v7 = v0 + 104;
  v8 = v41;
  v9 = v39;

  return MEMORY[0x2822002E8](v7, v8, v9, v10);
}

uint64_t sub_226319D04()
{
  v1 = *(*v0 + 320);

  return MEMORY[0x2822009F8](sub_226319E14, v1, 0);
}

uint64_t sub_226319E14(char *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  v7 = *(v4 + 120);
  if (!v5)
  {
    v11 = *(v4 + 424);
    if (!v7)
    {
LABEL_24:
      sub_22631CF04(v5, v6);
LABEL_25:
      *(v4 + 424) = v11;
      v20 = *(v4 + 408);
      v21 = *(v4 + 320);
      v22 = swift_task_alloc();
      *(v4 + 432) = v22;
      *v22 = v4;
      v22[1] = sub_226319D04;
      a4 = *(v4 + 384);
      isUniquelyReferenced_nonNull_native = (v4 + 104);
      a2 = v21;
      a3 = v20;

      return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, a2, a3, a4);
    }

LABEL_7:
    v12 = v7;
    MEMORY[0x22AA7C600]();
    if (*((*(v4 + 288) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 288) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22635058C();
    }

    sub_2263505AC();
    sub_22631CF04(v5, v6);

    *(v4 + 416) = *(v4 + 288);
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    v13 = *(v6 + 16);
    v14 = *(*(v4 + 424) + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      __break(1u);
    }

    else
    {
      sub_22631CF44(*(v4 + 104), *(v4 + 112));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v4 + 424);
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v11 + 3) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v19 = v14 + v13;
        }

        else
        {
          v19 = v14;
        }

        isUniquelyReferenced_nonNull_native = sub_2262DD324(isUniquelyReferenced_nonNull_native, v19, 1, *(v4 + 424));
        v11 = isUniquelyReferenced_nonNull_native;
        if (*(v6 + 16))
        {
LABEL_14:
          if ((*(v11 + 3) >> 1) - *(v11 + 2) >= v13)
          {
            swift_arrayInitWithCopy();

            if (!v13)
            {
              goto LABEL_23;
            }

            v16 = *(v11 + 2);
            v17 = __OFADD__(v16, v13);
            v18 = v16 + v13;
            if (!v17)
            {
              *(v11 + 2) = v18;
              goto LABEL_23;
            }

LABEL_31:
            __break(1u);
            return MEMORY[0x2822002E8](isUniquelyReferenced_nonNull_native, a2, a3, a4);
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (!v13)
      {
LABEL_23:

        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v4 + 296);
  v23 = *(v4 + 416);
  (*(*(v4 + 392) + 8))(*(v4 + 400), *(v4 + 384), a3, a4);
  *v8 = vextq_s8(v23, v23, 8uLL);

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_22631A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a1;
  v6[34] = a6;
  v9 = sub_22634EF3C();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v10 = sub_22635004C();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[43] = v11;
  *v11 = v6;
  v11[1] = sub_22631A298;

  return sub_22631CF84(a5, a6);
}

uint64_t sub_22631A298(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = sub_22631A464;
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;
    v7 = sub_22631A3CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22631A3CC()
{
  v1 = v0[45];
  v2 = v0[33];
  *v2 = v0[46];
  v2[1] = v1;
  v2[2] = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22631A464()
{
  v90 = v0;
  v1 = *(v0 + 352);
  *(v0 + 232) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793998, &qword_226354D80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 272);
    sub_22634FFCC();
    *(v0 + 104) = *v4;
    *(v0 + 120) = *(v4 + 16);
    v5 = *(v4 + 32);
    v6 = v3;
    sub_2263153E0(v0 + 104, v0 + 200);
    sub_2263153E0(v0 + 120, v0 + 216);
    v7 = v5;
    v8 = sub_22635003C();
    v9 = sub_22635073C();

    sub_22631543C(v0 + 104);
    sub_22631543C(v0 + 120);

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v13 = *(v0 + 304);
    v14 = *(v0 + 312);
    if (v10)
    {
      v84 = *(v0 + 304);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v89 = v16;
      *v15 = 136315394;
      swift_getErrorValue();
      v17 = sub_226350C9C();
      v82 = v11;
      v19 = sub_226345004(v17, v18, &v89);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = sub_226320200();
      v22 = sub_226345004(v20, v21, &v89);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2262B6000, v8, v9, "Error %s occurred while performing standard representation intent value query on %s.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v16, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v14 + 8))(v12, v84);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v26 = 0;
  }

  else
  {
    v23 = *(v0 + 352);

    *(v0 + 240) = v23;
    v24 = v23;
    sub_22631D59C();
    if (swift_dynamicCast())
    {
      v25 = *(v0 + 272);
      v26 = *(v0 + 248);
      v27 = v26;
      sub_22634FFCC();
      *(v0 + 72) = *v25;
      *(v0 + 88) = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = v27;
      sub_2263153E0(v0 + 72, v0 + 168);
      sub_2263153E0(v0 + 88, v0 + 184);
      v30 = v28;
      v31 = sub_22635003C();
      v32 = sub_22635073C();

      sub_22631543C(v0 + 72);
      sub_22631543C(v0 + 88);

      if (os_log_type_enabled(v31, v32))
      {
        v85 = v32;
        log = v31;
        v33 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v89 = v83;
        *v33 = 136315394;
        v34 = [v29 ln_staticDeferredLocalizedString];
        if (v34)
        {
          v35 = v34;
          v80 = v33;
          v37 = *(v0 + 288);
          v36 = *(v0 + 296);
          v38 = *(v0 + 280);
          sub_22634EF2C();
          sub_22634EF0C();
          (*(v37 + 8))(v36, v38);
          v33 = v80;
          v39 = sub_22635045C();

          v40 = [v35 localizedStringForLocaleIdentifier_];

          v41 = sub_22635046C();
          v43 = v42;
        }

        else
        {
          v40 = [v29 localizedDescription];

          v41 = sub_22635046C();
          v43 = v69;
        }

        v70 = *(v0 + 352);
        v71 = *(v0 + 312);
        v79 = *(v0 + 304);
        v81 = *(v0 + 328);

        v72 = sub_226345004(v41, v43, &v89);

        *(v33 + 4) = v72;
        *(v33 + 12) = 2080;
        v73 = sub_226320200();
        v75 = sub_226345004(v73, v74, &v89);

        *(v33 + 14) = v75;
        _os_log_impl(&dword_2262B6000, log, v85, "Error %s occurred while performing standard representation intent value query on %s.", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v83, -1, -1);
        MEMORY[0x22AA7D570](v33, -1, -1);

        (*(v71 + 8))(v81, v79);
      }

      else
      {
        v64 = v31;
        v65 = *(v0 + 352);
        v66 = *(v0 + 328);
        v68 = *(v0 + 304);
        v67 = *(v0 + 312);

        (*(v67 + 8))(v66, v68);
      }
    }

    else
    {
      v44 = *(v0 + 352);
      v45 = *(v0 + 272);

      sub_22634FFCC();
      *(v0 + 40) = *v45;
      *(v0 + 56) = *(v45 + 16);
      v46 = *(v45 + 32);
      v47 = v44;
      sub_2263153E0(v0 + 40, v0 + 136);
      sub_2263153E0(v0 + 56, v0 + 152);
      v48 = v46;
      v49 = sub_22635003C();
      v50 = sub_22635073C();
      sub_22631543C(v0 + 40);
      sub_22631543C(v0 + 56);

      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 352);
      v54 = *(v0 + 312);
      v53 = *(v0 + 320);
      v55 = *(v0 + 304);
      if (v51)
      {
        loga = *(v0 + 320);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v89 = v58;
        *v56 = 136315394;
        v59 = sub_226320200();
        v86 = v55;
        v61 = sub_226345004(v59, v60, &v89);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2112;
        v62 = v52;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 14) = v63;
        *v57 = v63;
        _os_log_impl(&dword_2262B6000, v49, v50, "Unexpected error type while performing standard representation intent value query on %s: %@", v56, 0x16u);
        sub_2262D67D8(v57, &qword_27D793CC0, qword_226352A00);
        MEMORY[0x22AA7D570](v57, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x22AA7D570](v58, -1, -1);
        MEMORY[0x22AA7D570](v56, -1, -1);

        (*(v54 + 8))(loga, v86);
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }

      v26 = 0;
    }
  }

  v76 = *(v0 + 264);
  *v76 = 0;
  v76[1] = 0;
  v76[2] = v26;

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_22631AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_22634F36C();
  v6[8] = swift_task_alloc();
  v7 = sub_22634F37C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_22634F3BC();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  sub_22634EEFC();
  v6[15] = swift_task_alloc();
  v9 = sub_22635004C();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0);
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for VisualAction(0);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631AEDC, v5, 0);
}

uint64_t sub_22631AEDC()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 24) identifier];
  v3 = [v2 typeIdentifier];

  v4 = sub_22635046C();
  v6 = v5;

  v7 = *v1;
  if (*(*v1 + 16))
  {
    v8 = sub_22633941C(v4, v6);
    v10 = v9;

    if (v10)
    {
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      sub_2262FDAD0(*(v7 + 56) + *(*(v0 + 168) + 72) * v8, v12, type metadata accessor for VisualAction);
      sub_22631CC58(v12, v11, type metadata accessor for VisualAction);
      v13 = *(v0 + 192);
      v14 = *(v0 + 104);
      v31 = *(v0 + 112);
      v32 = *(v0 + 96);
      v33 = *(v0 + 80);
      v34 = *(v0 + 88);
      v35 = *(v0 + 72);
      v15 = *(v0 + 24);
      sub_22634EEEC();
      sub_2262DBE60();

      v16 = [v15 identifier];
      v17 = [v16 typeIdentifier];

      sub_22635046C();
      v18 = [v15 identifier];
      v19 = [v18 instanceIdentifier];

      sub_22635046C();
      sub_22634FBBC();
      (*(v14 + 104))(v31, *MEMORY[0x277D78670], v32);
      (*(v33 + 104))(v34, *MEMORY[0x277D78660], v35);
      sub_22634F35C();
      sub_22634F3AC();
      sub_22631CCC0(v13, type metadata accessor for VisualAction);
      v20 = *(v0 + 16);
      v21 = sub_22634F3DC();
      (*(*(v21 - 8) + 56))(v20, 0, 1, v21);

      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
  }

  v24 = *(v0 + 24);
  v25 = *(*(v0 + 56) + 112);
  *(v0 + 200) = v25;
  v26 = [v24 identifier];
  v27 = [v26 typeIdentifier];

  v28 = sub_22635046C();
  v30 = v29;

  *(v0 + 208) = v28;
  *(v0 + 216) = v30;

  return MEMORY[0x2822009F8](sub_22631B310, v25, 0);
}

uint64_t sub_22631B310()
{
  sub_2262F929C(*(v0 + 32), *(v0 + 40), *(v0 + 208), *(v0 + 216), 0, 0, *(v0 + 176));
  *(v0 + 224) = 0;

  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22631B3BC, v1, 0);
}

uint64_t sub_22631B3BC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[3];
  sub_22631CC58(v0[22], v1, type metadata accessor for VisualAction);
  v6 = [v5 identifier];
  v7 = [v6 typeIdentifier];

  v8 = sub_22635046C();
  v10 = v9;

  sub_2262FDAD0(v1, v3, type metadata accessor for VisualAction);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_2262DFD40(v3, v8, v10);
  v11 = v0[24];
  v12 = v0[13];
  v23 = v0[14];
  v24 = v0[12];
  v13 = v0[10];
  v25 = v0[11];
  v26 = v0[9];
  v14 = v0[3];
  sub_22634EEEC();
  sub_2262DBE60();

  v15 = [v14 identifier];
  v16 = [v15 typeIdentifier];

  sub_22635046C();
  v17 = [v14 identifier];
  v18 = [v17 instanceIdentifier];

  sub_22635046C();
  sub_22634FBBC();
  (*(v12 + 104))(v23, *MEMORY[0x277D78670], v24);
  (*(v13 + 104))(v25, *MEMORY[0x277D78660], v26);
  sub_22634F35C();
  sub_22634F3AC();
  sub_22631CCC0(v11, type metadata accessor for VisualAction);
  v19 = v0[2];
  v20 = sub_22634F3DC();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_22631B750(uint64_t a1)
{
  v2 = v1[28];
  sub_22634FFCC();
  v3 = v2;
  v4 = sub_22635003C();
  v5 = sub_22635073C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2262B6000, v4, v5, "Error fetching open action: %@", v8, 0xCu);
    sub_2262D67D8(v9, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[17] + 8))(v1[18], v1[16]);
  v12 = v1[2];
  v13 = sub_22634F3DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_22631B988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22635004C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  sub_22634F36C();
  v4[10] = swift_task_alloc();
  v6 = sub_22634F37C();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_22635029C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_2263502BC();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v9 = sub_22634F3BC();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  sub_22634EEFC();
  v4[24] = swift_task_alloc();
  type metadata accessor for VisualAction.Kind.SystemTool(0);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for VisualAction.Kind(0);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for VisualAction(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631BCC4, v3, 0);
}

uint64_t sub_22631BCC4()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_22631BCE8, v1, 0);
}

uint64_t sub_22631BCE8()
{
  sub_2262F7F04(*(v0 + 24), *(v0 + 32), *(v0 + 232));
  *(v0 + 256) = 0;
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_22631BD7C, v1, 0);
}

uint64_t sub_22631BD7C()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  sub_22631CC58(v0[29], v1, type metadata accessor for VisualAction);
  sub_2262FDAD0(v1 + *(v3 + 20), v2, type metadata accessor for VisualAction.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22634FFCC();
    v4 = sub_22635003C();
    v5 = sub_22635073C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2262B6000, v4, v5, "Programmer error: fetched show visual search results in app action is not a system tool", v6, 2u);
      MEMORY[0x22AA7D570](v6, -1, -1);
    }

    v7 = v0[30];
    v8 = v0[27];
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[2];

    (*(v11 + 8))(v9, v10);
    sub_22631CCC0(v7, type metadata accessor for VisualAction);
    v13 = sub_22634F3DC();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_22631CCC0(v8, type metadata accessor for VisualAction.Kind);
  }

  else
  {
    v14 = v0[25];
    v30 = v0[23];
    v31 = v0[22];
    v15 = v0[20];
    v16 = v0[19];
    v27 = v0[18];
    v28 = v0[30];
    v17 = v0[16];
    v26 = v0[17];
    v18 = v0[14];
    v19 = v0[15];
    v33 = v0[13];
    v32 = v0[12];
    v34 = v0[11];
    v20 = v0[4];
    v29 = v0[3];
    v35 = v0[2];
    sub_22631CC58(v0[27], v14, type metadata accessor for VisualAction.Kind.SystemTool);
    sub_22634EEEC();
    sub_2262DBE60();

    sub_2263500BC();
    sub_2263502AC();
    (*(v16 + 8))(v15, v27);
    (*(v19 + 104))(v17, *MEMORY[0x277D730E8], v18);
    sub_22631D5E8(&qword_27D7930E8, MEMORY[0x277D73100], MEMORY[0x277D73108]);
    v21 = sub_22635044C();
    v22 = *(v19 + 8);
    v22(v17, v18);
    v22(v26, v18);
    *v30 = v29;
    *(v30 + 8) = v20;
    *(v30 + 16) = v21 & 1;
    (*(v31 + 104))();
    sub_2263500CC();
    (*(v32 + 104))(v33, *MEMORY[0x277D78660], v34);
    sub_22634F35C();
    sub_22634F3AC();
    sub_22631CCC0(v14, type metadata accessor for VisualAction.Kind.SystemTool);
    sub_22631CCC0(v28, type metadata accessor for VisualAction);
    v23 = sub_22634F3DC();
    (*(*(v23 - 8) + 56))(v35, 0, 1, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_22631C288(uint64_t a1)
{
  v2 = v1[32];
  sub_22634FFCC();
  v3 = v2;
  v4 = sub_22635003C();
  v5 = sub_22635073C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[32];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2262B6000, v4, v5, "Error fetching show visual search results in app action: %@", v8, 0xCu);
    sub_2262D67D8(v9, &qword_27D793CC0, qword_226352A00);
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  else
  {
  }

  v12 = v1[2];
  (*(v1[7] + 8))(v1[8], v1[6]);
  v13 = sub_22634F3DC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  v14 = v1[1];

  return v14();
}

BOOL sub_22631C4EC(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  sub_2262FDAD0(a1 + *(v5 + 20), v4, type metadata accessor for VisualAction.Kind);
  v6 = swift_getEnumCaseMultiPayload() == 4;
  sub_22631CCC0(v4, type metadata accessor for VisualAction.Kind);
  return v6;
}

uint64_t sub_22631C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_22631680C(a1, a2, a3, a4);
}

uint64_t sub_22631C684(uint64_t a1)
{
  result = sub_22631D5E8(&qword_28137F1D8, type metadata accessor for VisualSearchActionExecutor, &unk_226354CAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22631C6DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2262FF0E0;

  return sub_2263195D8(a1, a2, v6, v7, v8);
}

uint64_t sub_22631C7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22631C7C4, a4, 0);
}

uint64_t sub_22631C7C4()
{
  v1 = *(*(v0 + 24) + 128);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2262FD944, v1, 0);
}

void *sub_22631C7E8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22631C808@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22631C838(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_22631C92C;

  return v5(v2 + 16);
}

uint64_t sub_22631C92C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_22631CA68(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_22631C7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22631CB60(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_22631C7A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22631CC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22631CCC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22631CD20(uint64_t a1)
{
  v4 = *(sub_22634F17C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2262FF0E0;

  return sub_22631A10C(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_22631CE4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_22631C838(a1, v4);
}

void *sub_22631CF04(void *result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_22631CF44(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  return result;
}

uint64_t sub_22631CF84(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939A0, &unk_2263542A0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_22635004C();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631D0AC, 0, 0);
}

uint64_t sub_22631D0AC(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 88);
  sub_22634FFDC();
  *(v1 + 16) = *v2;
  *(v1 + 32) = *(v2 + 16);
  v3 = *(v2 + 32);
  sub_2263153E0(v1 + 16, v1 + 48);
  sub_2263153E0(v1 + 32, v1 + 64);
  v4 = v3;
  v5 = sub_22635003C();
  v6 = sub_22635071C();
  sub_22631543C(v1 + 16);
  sub_22631543C(v1 + 32);

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  v10 = *(v1 + 120);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_226320200();
    v15 = sub_226345004(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2262B6000, v5, v6, "Performing intent value query with standard representation on queryable target %s...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x22AA7D570](v12, -1, -1);
    MEMORY[0x22AA7D570](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  sub_22634F17C();
  sub_22631D5E8(&qword_27D793AA8, MEMORY[0x277CE3120], MEMORY[0x277CE3110]);
  sub_22634ECDC();
  swift_getOpaqueTypeConformance2();
  v16 = sub_22634ECEC();
  *(v1 + 144) = v16;
  v17 = swift_task_alloc();
  *(v1 + 152) = v17;
  *v17 = v1;
  v17[1] = sub_22631D32C;
  v18 = *(v1 + 88);

  return sub_22631339C(v16, v18);
}

uint64_t sub_22631D32C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_22631D500;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_22631D460;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22631D460()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);

  return v4(v5, v6);
}

uint64_t sub_22631D500()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_22631D59C()
{
  result = qword_27D793AA0;
  if (!qword_27D793AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D793AA0);
  }

  return result;
}

uint64_t sub_22631D5E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22631D630(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_22631D654, v2, 0);
}

uint64_t sub_22631D654()
{
  v1 = v0[8];
  v2 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
  if (v2)
  {
    v0[5] = v2;
    v3 = sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider, &unk_226354E5C);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = v0 + 5;
    *(v4 + 24) = v1;

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22631D844;
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v5, v1, v3, 0xD000000000000016, 0x8000000226357360, sub_22631F650, v4, v6);
  }

  else
  {
    v7 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
    swift_beginAccess();
    if (*(*(v1 + v7) + 16) && (sub_22633941C(v0[6], v0[7]), (v8 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v9 = MEMORY[0x277D84FA0];
    }

    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_22631D844()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_22631D970, v1, 0);
}

uint64_t sub_22631D970()
{

  v1 = v0[8];
  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_22633941C(v0[6], v0[7]), (v3 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22631DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AB0, &qword_226354EB8);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AB8, &qword_226354EC0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793AC0, qword_226354EC8);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631DBD0, 0, 0);
}

uint64_t sub_22631DBD0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x277D85768], v5);
  sub_22634FB5C();
  (*(v6 + 8))(v4, v5);
  sub_22635069C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_22631DD40;
  v8 = v0[14];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v8);
}

uint64_t sub_22631DD40()
{

  return MEMORY[0x2822009F8](sub_22631DE3C, 0, 0);
}

uint64_t sub_22631DE3C()
{
  v1 = v0[5];
  v0[18] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_22631DF48, Strong, 0);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_22631DF48()
{
  sub_22631E06C(*(v0 + 144));

  return MEMORY[0x2822009F8](sub_22631DFBC, 0, 0);
}

uint64_t sub_22631DFBC()
{

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_22631DD40;
  v2 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_22631E06C(uint64_t a1)
{
  v2 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - v4;
  v77 = sub_22635004C();
  v5 = *(v77 - 8);
  v6 = MEMORY[0x28223BE20](v77);
  v66 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  sub_22634FFCC();
  v13 = sub_22635003C();
  v14 = sub_22635071C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v10;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2262B6000, v13, v14, "Reloading queryable targets...", v16, 2u);
    v17 = v16;
    v10 = v15;
    MEMORY[0x22AA7D570](v17, -1, -1);
  }

  v18 = *(v5 + 8);
  v75 = v5 + 8;
  v76 = v18;
  v18(v12, v77);
  v19 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  v79 = v19;
  *(v2 + v19) = MEMORY[0x277D84F98];

  v70 = *(a1 + 16);
  if (v70)
  {
    v21 = (a1 + 64);
    *&v20 = 136315138;
    v72 = v20;
    v22 = v70;
    v73 = v2;
    v71 = v10;
    do
    {
      v78 = v22;
      v28 = *(v21 - 3);
      v29 = *(v21 - 2);
      v30 = *(v21 - 1);
      v31 = *v21;
      v80 = *(v21 - 4);
      v84[0] = v80;
      v84[1] = v28;
      v84[2] = v29;
      v84[3] = v30;
      v84[4] = v31;

      v32 = v31;
      sub_22634FFCC();

      v33 = v32;
      v34 = v10;
      v35 = sub_22635003C();
      v36 = sub_22635072C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v82[0] = v38;
        *v37 = v72;

        v39 = v33;
        v74 = v33;
        v40 = v39;
        v41 = sub_226320200();
        v43 = v42;

        v44 = sub_226345004(v41, v43, v82);
        v2 = v73;

        *(v37 + 4) = v44;
        _os_log_impl(&dword_2262B6000, v35, v36, "Add queryable target: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x22AA7D570](v38, -1, -1);
        MEMORY[0x22AA7D570](v37, -1, -1);

        v10 = v71;
        v76(v71, v77);
        v33 = v74;
      }

      else
      {

        v76(v34, v77);
        v10 = v34;
      }

      v45 = v79;
      swift_beginAccess();
      v46 = *(v2 + v45);
      v47 = *(v46 + 16);

      if (v47 && (v48 = sub_22633941C(v80, v28), (v49 & 1) != 0))
      {
        v50 = *(*(v46 + 56) + 8 * v48);
        swift_endAccess();
        v83 = v50;
      }

      else
      {
        swift_endAccess();
        v83 = MEMORY[0x277D84FA0];
      }

      v23 = v78;

      v24 = v33;
      sub_226309F24(v82, v84);

      v25 = v83;
      v26 = v79;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(v2 + v26);
      *(v2 + v26) = 0x8000000000000000;
      sub_2262E42C0(v25, v80, v28, isUniquelyReferenced_nonNull_native);

      *(v2 + v26) = v81;
      swift_endAccess();

      v21 += 5;
      v22 = v23 - 1;
    }

    while (v22);
  }

  v51 = v66;
  sub_22634FFCC();

  v52 = sub_22635003C();
  v53 = sub_22635071C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134218240;
    *(v54 + 4) = v70;
    *(v54 + 12) = 2048;
    *(v54 + 14) = *(*(v2 + v79) + 16);

    _os_log_impl(&dword_2262B6000, v52, v53, "Reloaded %ld queryable targets from %ld sources.", v54, 0x16u);
    MEMORY[0x22AA7D570](v54, -1, -1);
  }

  else
  {
  }

  result = (v76)(v51, v77);
  v56 = *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
  v57 = v69;
  v58 = v68;
  v59 = v67;
  if (v56)
  {
    *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = 0;
    v60 = *(v56 + 16);
    if (v60)
    {
      v63 = *(v58 + 16);
      v62 = v58 + 16;
      v61 = v63;
      v64 = v56 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
      v65 = *(v62 + 56);
      do
      {
        v61(v59, v64, v57);
        sub_2263505EC();
        (*(v62 - 8))(v59, v57);
        v64 += v65;
        --v60;
      }

      while (v60);
    }
  }

  return result;
}

uint64_t sub_22631E794()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for VisualSearchActionProvider(uint64_t a1)
{
  result = qword_28137F0C0;
  if (!qword_28137F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22631E888(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_22631E954(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22631E9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_22631E9F8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22631EA10(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22631EA40(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = type metadata accessor for VisualAction(0);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_22634F55C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22631EB74, v2, 0);
}

uint64_t sub_22631EB74()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_22634F59C();
  sub_22634F53C();
  sub_22631F670(&qword_28137E138, MEMORY[0x277D78770], MEMORY[0x277D78778]);
  v5 = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[7];
    v8 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state);
    if (v8)
    {
      v0[5] = v8;
      v9 = sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider, &unk_226354E5C);
      v10 = swift_task_alloc();
      v0[16] = v10;
      *(v10 + 16) = v0 + 5;
      *(v10 + 24) = v7;

      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_22631EFCC;
      v12 = sub_22631F6B8;
      v13 = 0x80000002263573C0;
      v14 = MEMORY[0x277D84F78] + 8;
      v15 = v7;
      v16 = v9;
      v17 = 0xD00000000000001ELL;
      v18 = v10;
    }

    else
    {
      v42 = v0[9];
      v43 = v0[11];
      v41 = v0[8];
      v20 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
      swift_beginAccess();
      v21 = *(v7 + v20);
      v24 = *(v21 + 64);
      v23 = v21 + 64;
      v22 = v24;
      v25 = -1;
      v26 = -1 << *(*(v7 + v20) + 32);
      if (-v26 < 64)
      {
        v25 = ~(-1 << -v26);
      }

      v27 = v25 & v22;
      v28 = (63 - v26) >> 6;
      v44 = *(v7 + v20);
      v11 = swift_bridgeObjectRetain_n();
      v29 = 0;
      for (i = MEMORY[0x277D84F90]; v27; v11 = sub_2262FEB84(v38, i + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37))
      {
        v46 = i;
LABEL_15:
        v31 = v0[11];
        v45 = v0[10];
        v32 = (*(v44 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
        v34 = *v32;
        v33 = v32[1];
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v31 = v34;
        *(v43 + 8) = v33;
        v35 = MEMORY[0x277D84F98];
        *(v31 + v41[6]) = MEMORY[0x277D84F98];
        *(v31 + v41[7]) = v35;
        *(v31 + v41[8]) = v35;
        sub_2262FEB84(v31, v45);

        i = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_2262DC944(0, v46[2] + 1, 1, v46);
        }

        v37 = i[2];
        v36 = i[3];
        if (v37 >= v36 >> 1)
        {
          i = sub_2262DC944((v36 > 1), v37 + 1, 1, i);
        }

        v27 &= v27 - 1;
        v38 = v0[10];
        i[2] = v37 + 1;
      }

      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          goto LABEL_22;
        }

        v27 = *(v23 + 8 * v30);
        ++v29;
        if (v27)
        {
          v46 = i;
          v29 = v30;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822007B8](v11, v15, v16, v17, v13, v12, v18, v14);
  }

  else
  {
    i = MEMORY[0x277D84F90];
LABEL_22:

    v39 = v0[1];

    return v39(i);
  }
}

uint64_t sub_22631EFCC()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22631F0F8, v1, 0);
}

uint64_t sub_22631F0F8()
{

  v28 = v0[9];
  v29 = v0[11];
  v27 = v0[8];
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v1 + v2) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v30 = *(v1 + v2);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v26 = v0;
  if (v9)
  {
    while (1)
    {
      v31 = v13;
LABEL_9:
      v17 = v0 + 10;
      v16 = v0[10];
      v15 = v17[1];
      v18 = (*(v30 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v20 = *v18;
      v19 = v18[1];
      type metadata accessor for VisualAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v15 = v20;
      *(v29 + 8) = v19;
      v21 = MEMORY[0x277D84F98];
      *(v15 + v27[6]) = MEMORY[0x277D84F98];
      *(v15 + v27[7]) = v21;
      *(v15 + v27[8]) = v21;
      sub_2262FEB84(v15, v16);

      v13 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2262DC944(0, v31[2] + 1, 1, v31);
      }

      v23 = v13[2];
      v22 = v13[3];
      v0 = v26;
      if (v23 >= v22 >> 1)
      {
        v13 = sub_2262DC944((v22 > 1), v23 + 1, 1, v13);
      }

      v9 &= v9 - 1;
      v24 = v26[10];
      v13[2] = v23 + 1;
      result = sub_2262FEB84(v24, v13 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v14);
    ++v12;
    if (v9)
    {
      v31 = v13;
      v12 = v14;
      goto LABEL_9;
    }
  }

  v25 = v0[1];

  return v25(v13);
}

uint64_t sub_22631F38C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, a1, v7);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_2262DD444(0, v11[2] + 1, 1, v11);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_2262DD444((v13 > 1), v14 + 1, 1, v11);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v8 + 32))(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v10, v7);
  *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = *a2;
}

uint64_t sub_22631F564(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226316434;

  return sub_22631EA40(v4, a2);
}

uint64_t sub_22631F5F8(uint64_t a1)
{
  result = sub_22631F670(&qword_28137F0D8, type metadata accessor for VisualSearchActionProvider, &unk_226354E5C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22631F670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22631F6D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_state) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_queryableTargetSetMap) = MEMORY[0x277D84F98];
  *(v2 + 112) = a1;
  v8 = OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionProvider_featureConfiguration;
  v9 = sub_22634FCDC();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + v8, a2, v9);
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = v12;
  swift_retain_n();
  sub_2262FB4D4(0, 0, v7, &unk_226354EB0, v13);

  (*(v10 + 8))(a2, v9);
  return v2;
}

uint64_t sub_22631F8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2262D641C;

  return sub_22631DA34(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for AppWorkspaceObserver(uint64_t a1)
{
  result = qword_28137E6D0;
  if (!qword_28137E6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22631FA88(uint64_t a1)
{
  sub_22631FB18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22631FB18(uint64_t a1)
{
  if (!qword_28137DFF0)
  {
    sub_22634FD8C();
    v1 = sub_22635068C();
    if (!v2)
    {
      atomic_store(v1, &qword_28137DFF0);
    }
  }
}

uint64_t sub_22631FB94(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_22634FD8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  if (a3)
  {
    v16 = sub_22635056C();
    v17 = a1;
    *v10 = sub_22631FF28(v16);
    (*(v8 + 104))(v10, *a4, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
    sub_22635067C();

    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_22631FF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_2262FB40C(v2, v14);
    sub_2262FB40C(v14, v13);
    sub_226320098();
    if (swift_dynamicCast() && (v4 = [v12 bundleIdentifier], v12, v4))
    {
      v5 = sub_22635046C();
      v7 = v6;

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2262DCFC4(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_2262DCFC4((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_226320098()
{
  result = qword_28137DFB8;
  if (!qword_28137DFB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DFB8);
  }

  return result;
}

uint64_t sub_2263200F4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_226350C4C() & 1) == 0)
  {
    return 0;
  }

  sub_2262DA244();
  return sub_22635082C() & 1;
}

unint64_t sub_2263201AC()
{
  result = qword_28137E708[0];
  if (!qword_28137E708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28137E708);
  }

  return result;
}

unint64_t sub_226320200()
{
  v1 = v0;
  sub_22635096C();

  MEMORY[0x22AA7C5B0](*v1, v1[1]);
  MEMORY[0x22AA7C5B0](46, 0xE100000000000000);
  MEMORY[0x22AA7C5B0](v1[2], v1[3]);
  MEMORY[0x22AA7C5B0](540945696, 0xE400000000000000);
  v2 = [*(v0 + 32) resultValueType];
  v3 = [v2 description];

  v4 = sub_22635046C();
  v6 = v5;

  MEMORY[0x22AA7C5B0](v4, v6);

  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_226320320()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_featureConfiguration;
  v2 = sub_22634FCDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for LinkActionProvider(uint64_t a1)
{
  result = qword_28137F608;
  if (!qword_28137F608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226320414(uint64_t a1)
{
  result = sub_22634FCDC();
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

uint64_t sub_2263204E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v4 = type metadata accessor for VisualAction(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22634F55C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22632060C, v2, 0);
}

uint64_t sub_22632060C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_22634F59C();
  sub_22634F54C();
  sub_226321124(&qword_28137E138, MEMORY[0x277D78770], MEMORY[0x277D78778]);
  v5 = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[4];
    v8 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state);
    if (v8)
    {
      v0[2] = v8;
      v9 = sub_226321124(&qword_28137F618, type metadata accessor for LinkActionProvider, &unk_2263550E4);
      v10 = swift_task_alloc();
      v0[12] = v10;
      *(v10 + 16) = v0 + 2;
      *(v10 + 24) = v7;

      v11 = swift_task_alloc();
      v0[13] = v11;
      *v11 = v0;
      v11[1] = sub_226320A88;
      v12 = sub_22632116C;
      v13 = 0x80000002263573C0;
      v14 = MEMORY[0x277D84F78] + 8;
      v15 = v7;
      v16 = v9;
      v17 = 0xD00000000000001ELL;
      v18 = v10;
    }

    else
    {
      v47 = v0[7];
      v20 = *(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
      v21 = v20 + 56;
      v44 = v0[5];
      v45 = v0[6];
      v22 = -1;
      v23 = -1 << *(v20 + 32);
      if (-v23 < 64)
      {
        v22 = ~(-1 << -v23);
      }

      v24 = v22 & *(v20 + 56);
      v25 = (63 - v23) >> 6;
      v48 = v20;
      v11 = swift_bridgeObjectRetain_n();
      v26 = 0;
      v19 = MEMORY[0x277D84F90];
      v46 = v21;
      for (i = v25; v24; v25 = i)
      {
        v50 = v19;
LABEL_15:
        v28 = v0[7];
        v29 = (*(v48 + 48) + 56 * (__clz(__rbit64(v24)) | (v26 << 6)));
        v30 = v29[1];
        v32 = v29[2];
        v31 = v29[3];
        v33 = v29[4];
        v34 = v29[5];
        v49 = v29[6];
        v35 = (v28 + v44[5]);
        *v35 = *v29;
        v35[1] = v30;
        v35[2] = v32;
        v35[3] = v31;
        v35[4] = v33;
        v35[5] = v34;
        v35[6] = v49;
        type metadata accessor for VisualAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        *v28 = v32;
        *(v47 + 8) = v31;
        v36 = MEMORY[0x277D84F98];
        *(v28 + v44[6]) = MEMORY[0x277D84F98];
        *(v28 + v44[7]) = v36;
        *(v28 + v44[8]) = v36;

        swift_bridgeObjectRetain_n();

        v37 = v49;
        v19 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2262DC944(0, v50[2] + 1, 1, v50);
        }

        v39 = v19[2];
        v38 = v19[3];
        if (v39 >= v38 >> 1)
        {
          v19 = sub_2262DC944((v38 > 1), v39 + 1, 1, v19);
        }

        v24 &= v24 - 1;
        v40 = v0[7];
        v19[2] = v39 + 1;
        v11 = sub_2262FEB84(v40, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39);
        v21 = v46;
      }

      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {

          goto LABEL_22;
        }

        v24 = *(v21 + 8 * v27);
        ++v26;
        if (v24)
        {
          v50 = v19;
          v26 = v27;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822007B8](v11, v15, v16, v17, v13, v12, v18, v14);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
LABEL_22:

    v41 = v0[1];

    return v41(v19);
  }
}

uint64_t sub_226320A88()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_226320BB4, v1, 0);
}

uint64_t sub_226320BB4()
{

  v32 = v0[5];
  v1 = *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v29 = v0[6];
  v30 = v0[7];
  v5 = -1;
  v6 = -1 << *(*(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v34 = *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_saveActions);
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v31 = v3;
  v28 = v8;
  v33 = v0;
  if (v7)
  {
    while (1)
    {
      v35 = v11;
LABEL_9:
      v13 = v0[7];
      v14 = (*(v34 + 48) + 56 * (__clz(__rbit64(v7)) | (v10 << 6)));
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[5];
      v20 = v14[6];
      v21 = (v13 + v32[5]);
      *v21 = *v14;
      v21[1] = v15;
      v21[2] = v16;
      v21[3] = v17;
      v21[4] = v18;
      v21[5] = v19;
      v21[6] = v20;
      type metadata accessor for VisualAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v13 = v16;
      *(v30 + 8) = v17;
      v22 = MEMORY[0x277D84F98];
      *(v13 + v32[6]) = MEMORY[0x277D84F98];
      *(v13 + v32[7]) = v22;
      *(v13 + v32[8]) = v22;

      swift_bridgeObjectRetain_n();

      v23 = v20;
      v11 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2262DC944(0, v35[2] + 1, 1, v35);
      }

      v25 = v11[2];
      v24 = v11[3];
      v0 = v33;
      v3 = v31;
      if (v25 >= v24 >> 1)
      {
        v11 = sub_2262DC944((v24 > 1), v25 + 1, 1, v11);
      }

      v7 &= v7 - 1;
      v26 = v33[7];
      v11[2] = v25 + 1;
      result = sub_2262FEB84(v26, v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25);
      v8 = v28;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v35 = v11;
      v10 = v12;
      goto LABEL_9;
    }
  }

  v27 = v0[1];

  return v27(v11);
}

uint64_t sub_226320E64(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793180, &qword_226354E90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2262DD444(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2262DD444((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a3 + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionProvider_state) = *a2;
}

uint64_t sub_226321038(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226316434;

  return sub_2263204E4(v4, a2);
}

uint64_t sub_2263210CC(uint64_t a1)
{
  result = sub_226321124(&qword_28137F618, type metadata accessor for LinkActionProvider, &unk_2263550E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226321124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RankedVisualBundle(uint64_t a1)
{
  result = qword_28137F538;
  if (!qword_28137F538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263211E8(uint64_t a1)
{
  result = sub_22634F51C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22632126C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2263212D0(uint64_t a1, uint64_t a2)
{
  v200 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v180 = &v169 - v4;
  v5 = sub_22634F34C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v179 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v169 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v169 - v18;
  v20 = sub_22634EEFC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v181 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v183 = &v169 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v172 = &v169 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v177 = &v169 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v174 = &v169 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v178 = &v169 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v169 - v34;
  v196 = sub_22635004C();
  v198 = *(v196 - 8);
  v36 = MEMORY[0x28223BE20](v196);
  v38 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v186 = &v169 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v175 = &v169 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v182 = &v169 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v169 - v45;
  sub_22635001C();
  v201 = v21;
  v189 = *(v21 + 16);
  v190 = a1;
  v188 = v21 + 16;
  v189(v35, a1, v20);
  v199 = v6;
  v47 = *(v6 + 16);
  v202 = v5;
  v197 = v6 + 16;
  v194 = v47;
  v47(v19, v200, v5);
  v48 = v195;

  v49 = sub_22635003C();
  v50 = sub_22635072C();

  v51 = os_log_type_enabled(v49, v50);
  v187 = v9;
  v185 = v38;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v203 = v192;
    *v52 = 136315906;
    v53 = sub_226350D6C();
    v55 = sub_226345004(v53, v54, &v203);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_226345004(0xD000000000000017, 0x80000002263575F0, &v203);
    *(v52 + 22) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v56 = sub_226350C1C();
    v58 = v57;
    v193 = *(v201 + 8);
    v193(v35, v20);
    v59 = sub_226345004(v56, v58, &v203);

    *(v52 + 24) = v59;
    *(v52 + 32) = 2080;
    v60 = v202;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v61 = sub_226350C1C();
    v63 = v62;
    v191 = *(v199 + 8);
    v191(v19, v60);
    v64 = sub_226345004(v61, v63, &v203);
    v48 = v195;

    *(v52 + 34) = v64;
    _os_log_impl(&dword_2262B6000, v49, v50, "%s.%s handlerID = %s, customActionIdentity = %s", v52, 0x2Au);
    v65 = v192;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v65, -1, -1);
    MEMORY[0x22AA7D570](v52, -1, -1);

    v192 = *(v198 + 8);
    (v192)(v46, v196);
    v66 = v201;
  }

  else
  {

    v191 = *(v199 + 8);
    v191(v19, v202);
    v67 = v201;
    v193 = *(v201 + 8);
    v193(v35, v20);
    v192 = *(v198 + 8);
    (v192)(v46, v196);
    v66 = v67;
  }

  swift_beginAccess();
  v68 = *(v48 + 112);
  v69 = v189;
  v70 = v190;
  v71 = v184;
  v72 = v186;
  v73 = v183;
  v74 = v182;
  if (!*(v68 + 16) || (v75 = sub_2263395AC(v200), (v76 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_16;
  }

  v77 = v178;
  v69(v178, *(v68 + 56) + *(v66 + 72) * v75, v20);
  swift_endAccess();
  sub_226325D04(&qword_28137FA40, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  if ((sub_22635044C() & 1) == 0)
  {
    sub_22635001C();
    v194(v176, v200, v202);
    v69(v174, v70, v20);
    v69(v177, v77, v20);
    v97 = sub_22635003C();
    LODWORD(v175) = sub_22635073C();
    if (os_log_type_enabled(v97, v175))
    {
      v98 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v203 = v172;
      *v98 = 136315650;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
      v171 = v97;
      v99 = v176;
      v100 = v202;
      v101 = sub_226350C1C();
      v103 = v102;
      v191(v99, v100);
      v104 = sub_226345004(v101, v103, &v203);

      v173 = v98;
      *(v98 + 4) = v104;
      *(v98 + 12) = 2080;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v105 = v174;
      v106 = sub_226350C1C();
      v108 = v107;
      v109 = v193;
      v193(v105, v20);
      v110 = sub_226345004(v106, v108, &v203);
      v73 = v183;
      v70 = v190;
      v111 = v20;
      v72 = v186;

      v112 = v173;
      *(v173 + 14) = v110;
      *(v112 + 11) = 2080;
      v113 = v177;
      v170 = v20;
      v114 = sub_226350C1C();
      v116 = v115;
      v109(v113, v111);
      v117 = sub_226345004(v114, v116, &v203);

      v118 = v173;
      *(v173 + 3) = v117;
      v119 = v171;
      _os_log_impl(&dword_2262B6000, v171, v175, "Attempting to register custom action %s with handler ID %s while it is already registered with handler ID %s. The existing registration will be overwritten.", v118, 0x20u);
      v120 = v172;
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v120, -1, -1);
      v121 = v118;
      v69 = v189;
      MEMORY[0x22AA7D570](v121, -1, -1);

      (v192)(v182, v196);
      v20 = v170;
      v109(v178, v170);
      goto LABEL_15;
    }

    v122 = v193;
    v193(v177, v20);
    v122(v174, v20);
    v191(v176, v202);
    v123 = v74;
LABEL_14:
    (v192)(v123, v196);
    v122(v178, v20);
    goto LABEL_15;
  }

  sub_22635001C();
  v78 = v173;
  v194(v173, v200, v202);
  v79 = v172;
  v69(v172, v70, v20);
  v80 = sub_22635003C();
  v81 = sub_22635071C();
  if (!os_log_type_enabled(v80, v81))
  {

    v122 = v193;
    v193(v79, v20);
    v191(v78, v202);
    v123 = v175;
    goto LABEL_14;
  }

  v82 = swift_slowAlloc();
  v83 = swift_slowAlloc();
  v203 = v83;
  *v82 = 136315394;
  sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
  LODWORD(v182) = v81;
  v84 = v202;
  v85 = sub_226350C1C();
  v86 = v78;
  v87 = v85;
  v89 = v88;
  v191(v86, v84);
  v90 = sub_226345004(v87, v89, &v203);

  *(v82 + 4) = v90;
  *(v82 + 12) = 2080;
  sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v91 = sub_226350C1C();
  v93 = v92;
  v94 = v193;
  v193(v79, v20);
  v95 = sub_226345004(v91, v93, &v203);

  *(v82 + 14) = v95;
  _os_log_impl(&dword_2262B6000, v80, v182, "Attempting to register custom action %s with handler ID %s while it is already registered with the this handler ID. No action will be taken.", v82, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA7D570](v83, -1, -1);
  v96 = v82;
  v69 = v189;
  MEMORY[0x22AA7D570](v96, -1, -1);

  (v192)(v175, v196);
  v94(v178, v20);
  v73 = v183;
  v72 = v186;
  v70 = v190;
LABEL_15:
  v71 = v184;
LABEL_16:
  sub_22635001C();
  v194(v71, v200, v202);
  v69(v73, v70, v20);
  v124 = sub_22635003C();
  v125 = sub_22635071C();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v203 = v127;
    *v126 = 136315394;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v128 = v202;
    v129 = sub_226350C1C();
    v130 = v71;
    v131 = v129;
    v133 = v132;
    v191(v130, v128);
    v134 = sub_226345004(v131, v133, &v203);

    *(v126 + 4) = v134;
    *(v126 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v135 = sub_226350C1C();
    v137 = v136;
    v193(v73, v20);
    v138 = sub_226345004(v135, v137, &v203);

    *(v126 + 14) = v138;
    _os_log_impl(&dword_2262B6000, v124, v125, "Registering custom action %s with handler ID %s...", v126, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v127, -1, -1);
    MEMORY[0x22AA7D570](v126, -1, -1);

    v139 = v186;
  }

  else
  {

    v193(v73, v20);
    v191(v71, v202);
    v139 = v72;
  }

  (v192)(v139, v196);
  v140 = v194;
  v141 = v179;
  v142 = v200;
  v143 = v202;
  v194(v179, v200, v202);
  v144 = v180;
  v145 = v189;
  v146 = v190;
  v189(v180, v190, v20);
  (*(v201 + 56))(v144, 0, 1, v20);
  swift_beginAccess();
  sub_2262DFF14(v144, v141);
  swift_endAccess();
  v147 = v185;
  sub_22635001C();
  v140(v187, v142, v143);
  v148 = v181;
  v145(v181, v146, v20);
  v149 = sub_22635003C();
  v150 = sub_22635071C();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v152 = v20;
    v153 = v148;
    v154 = swift_slowAlloc();
    v203 = v154;
    *v151 = 136315394;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v155 = v187;
    v156 = v202;
    v157 = sub_226350C1C();
    v158 = v155;
    v159 = v157;
    v161 = v160;
    v191(v158, v156);
    v162 = sub_226345004(v159, v161, &v203);

    *(v151 + 4) = v162;
    *(v151 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v163 = sub_226350C1C();
    v165 = v164;
    v193(v153, v152);
    v166 = sub_226345004(v163, v165, &v203);

    *(v151 + 14) = v166;
    _os_log_impl(&dword_2262B6000, v149, v150, "Registered custom action %s with handler ID %s.", v151, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v154, -1, -1);
    MEMORY[0x22AA7D570](v151, -1, -1);

    v167 = v185;
  }

  else
  {

    v193(v148, v20);
    v191(v187, v202);
    v167 = v147;
  }

  return (v192)(v167, v196);
}

uint64_t sub_226322848(unint64_t a1, uint64_t a2)
{
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B58, &qword_226355230);
  MEMORY[0x28223BE20](v154);
  v156 = &v138 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v142 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v155 = &v138 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v160 = &v138 - v11;
  MEMORY[0x28223BE20](v10);
  v161 = &v138 - v12;
  v13 = sub_22634F34C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v141 = &v138 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v140 = &v138 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v138 - v21;
  v23 = sub_22634EEFC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v148 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v143 = &v138 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v151 = &v138 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v138 = &v138 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v138 - v33;
  v35 = sub_22635004C();
  v167 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v149 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v147 = &v138 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v146 = &v138 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v138 - v42;
  sub_22635001C();
  v169 = v24;
  v44 = *(v24 + 16);
  v165 = v24 + 16;
  v166 = a1;
  v168 = v44;
  v44(v34, a1, v23);
  v45 = *(v14 + 16);
  v159 = a2;
  v152 = v45;
  v153 = v14 + 16;
  v45(v22, a2, v13);
  v46 = v164;

  v47 = v46;
  v48 = sub_22635003C();
  v49 = sub_22635072C();

  v50 = os_log_type_enabled(v48, v49);
  v162 = v35;
  v145 = v13;
  v157 = v14;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v170 = v158;
    *v51 = 136315906;
    v52 = sub_226350D6C();
    v54 = sub_226345004(v52, v53, &v170);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_226345004(0xD000000000000019, 0x80000002263575D0, &v170);
    *(v51 + 22) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v55 = sub_226350C1C();
    v57 = v56;
    v163 = *(v169 + 8);
    v163(v34, v23);
    v58 = sub_226345004(v55, v57, &v170);

    *(v51 + 24) = v58;
    *(v51 + 32) = 2080;
    sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v59 = sub_226350C1C();
    v61 = v60;
    v150 = *(v157 + 8);
    v150(v22, v13);
    v62 = sub_226345004(v59, v61, &v170);

    *(v51 + 34) = v62;
    v47 = v164;
    _os_log_impl(&dword_2262B6000, v48, v49, "%s.%s handlerID = %s, customActionIdentity = %s", v51, 0x2Au);
    v63 = v158;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v63, -1, -1);
    MEMORY[0x22AA7D570](v51, -1, -1);

    v158 = *(v167 + 8);
    (v158)(v43, v162);
    v64 = v169;
  }

  else
  {

    v150 = *(v14 + 8);
    v150(v22, v13);
    v65 = v169;
    v163 = *(v169 + 8);
    v163(v34, v23);
    v158 = *(v167 + 8);
    (v158)(v43, v35);
    v64 = v65;
  }

  swift_beginAccess();
  v66 = *(v47 + 112);
  v67 = v156;
  v68 = v160;
  if (*(v66 + 16) && (v69 = sub_2263395AC(v159), (v70 & 1) != 0))
  {
    v71 = *(v66 + 56) + *(v64 + 72) * v69;
    v72 = v161;
    v168(v161, v71, v23);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v72 = v161;
  }

  v74 = *(v64 + 56);
  v74(v72, v73, 1, v23);
  swift_endAccess();
  v168(v68, v166, v23);
  v139 = v74;
  v74(v68, 0, 1, v23);
  v75 = *(v154 + 48);
  sub_226325C94(v72, v67);
  sub_226325C94(v68, v67 + v75);
  v76 = *(v64 + 48);
  v77 = v76(v67, 1, v23);
  v78 = v155;
  if (v77 == 1)
  {
    sub_2262D67D8(v68, &qword_27D793010, &unk_226354CE0);
    sub_2262D67D8(v72, &qword_27D793010, &unk_226354CE0);
    if (v76(v67 + v75, 1, v23) == 1)
    {
      sub_2262D67D8(v67, &qword_27D793010, &unk_226354CE0);
      v79 = v151;
LABEL_19:
      v97 = v146;
      sub_22635001C();
      v98 = v140;
      v99 = v145;
      v152(v140, v159, v145);
      v168(v79, v166, v23);
      v100 = sub_22635003C();
      LODWORD(v161) = sub_22635071C();
      if (os_log_type_enabled(v100, v161))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v170 = v102;
        *v101 = 136315394;
        sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
        v103 = sub_226350C1C();
        v104 = v79;
        v106 = v105;
        v150(v98, v99);
        v107 = sub_226345004(v103, v106, &v170);

        *(v101 + 4) = v107;
        *(v101 + 12) = 2080;
        sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v108 = sub_226350C1C();
        v110 = v109;
        v163(v104, v23);
        v111 = sub_226345004(v108, v110, &v170);

        *(v101 + 14) = v111;
        _os_log_impl(&dword_2262B6000, v100, v161, "Unregistering custom action %s with handler ID %s...", v101, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v102, -1, -1);
        MEMORY[0x22AA7D570](v101, -1, -1);

        v112 = v146;
      }

      else
      {

        v163(v79, v23);
        v150(v98, v99);
        v112 = v97;
      }

      v113 = v162;
      (v158)(v112, v162);
      v114 = v141;
      v115 = v159;
      v116 = v152;
      v152(v141, v159, v99);
      v117 = v142;
      v139(v142, 1, 1, v23);
      swift_beginAccess();
      sub_2262DFF14(v117, v114);
      swift_endAccess();
      v118 = v147;
      sub_22635001C();
      v119 = v144;
      v116(v144, v115, v99);
      v120 = v143;
      v168(v143, v166, v23);
      v121 = sub_22635003C();
      v122 = sub_22635071C();
      v123 = v99;
      if (os_log_type_enabled(v121, v122))
      {
        v124 = v113;
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v170 = v126;
        *v125 = 136315394;
        sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
        v127 = sub_226350C1C();
        v128 = v123;
        v129 = v122;
        v131 = v130;
        v150(v119, v128);
        v132 = sub_226345004(v127, v131, &v170);

        *(v125 + 4) = v132;
        *(v125 + 12) = 2080;
        sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v133 = sub_226350C1C();
        v135 = v134;
        v163(v120, v23);
        v136 = sub_226345004(v133, v135, &v170);

        *(v125 + 14) = v136;
        _os_log_impl(&dword_2262B6000, v121, v129, "Unregistered custom action %s with handler ID %s.", v125, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v126, -1, -1);
        MEMORY[0x22AA7D570](v125, -1, -1);

        v91 = v147;
        v92 = v124;
      }

      else
      {

        v163(v120, v23);
        v150(v119, v99);
        v91 = v118;
        v92 = v113;
      }

      return (v158)(v91, v92);
    }

    goto LABEL_13;
  }

  sub_226325C94(v67, v155);
  v80 = v76(v67 + v75, 1, v23);
  v79 = v151;
  if (v80 == 1)
  {
    sub_2262D67D8(v160, &qword_27D793010, &unk_226354CE0);
    sub_2262D67D8(v161, &qword_27D793010, &unk_226354CE0);
    v163(v78, v23);
LABEL_13:
    sub_2262D67D8(v67, &qword_27D793B58, &qword_226355230);
    goto LABEL_14;
  }

  v93 = v67 + v75;
  v94 = v138;
  (*(v64 + 32))(v138, v93, v23);
  sub_226325D04(&qword_28137FA40, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v95 = sub_22635044C();
  v96 = v163;
  v163(v94, v23);
  sub_2262D67D8(v160, &qword_27D793010, &unk_226354CE0);
  sub_2262D67D8(v161, &qword_27D793010, &unk_226354CE0);
  v96(v78, v23);
  sub_2262D67D8(v67, &qword_27D793010, &unk_226354CE0);
  if (v95)
  {
    goto LABEL_19;
  }

LABEL_14:
  v81 = v149;
  sub_22635001C();
  v82 = v148;
  v168(v148, v166, v23);
  v83 = sub_22635003C();
  v84 = sub_22635071C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v170 = v86;
    *v85 = 136315138;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v87 = sub_226350C1C();
    v89 = v88;
    v163(v82, v23);
    v90 = sub_226345004(v87, v89, &v170);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_2262B6000, v83, v84, "Attempting to unregister custom action with handler ID %s while it is not registered with this handler ID. No action will be taken.", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x22AA7D570](v86, -1, -1);
    MEMORY[0x22AA7D570](v85, -1, -1);
  }

  else
  {

    v163(v82, v23);
  }

  v91 = v81;
  v92 = v162;
  return (v158)(v91, v92);
}

uint64_t sub_226323AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_22634F65C();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_22634F9BC();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = sub_22634F51C();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = sub_22634F63C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v10 = sub_22634EEFC();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = type metadata accessor for VisualAction.Kind(0);
  v5[41] = swift_task_alloc();
  v11 = sub_22634F34C();
  v5[42] = v11;
  v5[43] = *(v11 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v12 = sub_22635004C();
  v5[48] = v12;
  v5[49] = *(v12 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226323EB8, v4, 0);
}

uint64_t sub_226323EB8(uint64_t a1)
{
  v73 = v1;
  sub_22635001C();

  v2 = sub_22635003C();
  v3 = sub_22635072C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[56];
  v6 = v1[48];
  v7 = v1[49];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72 = v9;
    *v8 = 136315394;
    v10 = sub_226350D6C();
    v12 = sub_226345004(v10, v11, &v72);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_226345004(0xD00000000000002ALL, 0x80000002263575A0, &v72);
    _os_log_impl(&dword_2262B6000, v2, v3, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[57] = v13;
  v14 = v1[41];
  v15 = v1[17];
  v16 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v15 + *(v16 + 20), v14);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = v1[47];
    v18 = v1[42];
    v19 = v1[43];
    v20 = v1[41];
    v21 = v1[20];
    v22 = *(v19 + 32);
    v1[58] = v22;
    v1[59] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v17, v20, v18);
    swift_beginAccess();
    v23 = *(v21 + 112);
    if (*(v23 + 16))
    {
      v24 = sub_2263395AC(v1[47]);
      if (v25)
      {
        v26 = v1[39];
        v27 = v1[33];
        v28 = v1[34];
        v29 = v1[20];
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = *(v23 + 56) + *(v28 + 56) * v24;
        v1[60] = v30;
        v1[61] = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v30(v26, v31, v27);
        swift_endAccess();
        v71 = (*(v29 + 120) + **(v29 + 120));
        v32 = swift_task_alloc();
        v1[62] = v32;
        *v32 = v1;
        v32[1] = sub_226324688;
        v33 = v1[39];

        return v71(v33);
      }
    }

    v44 = v1[47];
    v46 = v1[43];
    v45 = v1[44];
    v47 = v1[42];
    swift_endAccess();
    sub_22635001C();
    (*(v46 + 16))(v45, v44, v47);
    v48 = sub_22635003C();
    v49 = sub_22635071C();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v1[52];
    v52 = v1[48];
    v53 = v1[47];
    v55 = v1[43];
    v54 = v1[44];
    v56 = v1[42];
    if (v50)
    {
      v70 = v1[52];
      v57 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72 = v68;
      *v57 = 136315138;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
      v67 = v49;
      v58 = sub_226350C1C();
      v69 = v53;
      v60 = v59;
      v61 = *(v55 + 8);
      v61(v54, v56);
      v62 = sub_226345004(v58, v60, &v72);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2262B6000, v48, v67, "Custom action %s is not registered.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x22AA7D570](v68, -1, -1);
      MEMORY[0x22AA7D570](v57, -1, -1);

      v13(v70, v52);
      v61(v69, v56);
    }

    else
    {

      v63 = *(v55 + 8);
      v63(v54, v56);
      v13(v51, v52);
      v63(v53, v56);
    }

    v40 = v1[16];
    v43 = MEMORY[0x277D78A48];
  }

  else
  {
    sub_226325C38(v1[41]);
    sub_22635001C();
    v35 = sub_22635003C();
    v36 = sub_22635073C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2262B6000, v35, v36, "Visual action kind is not .custom.", v37, 2u);
      MEMORY[0x22AA7D570](v37, -1, -1);
    }

    v38 = v1[51];
    v39 = v1[48];
    v40 = v1[16];

    v13(v38, v39);
    v41 = *MEMORY[0x277D78AE8];
    v42 = sub_22634FB9C();
    (*(*(v42 - 8) + 104))(v40, v41, v42);
    v43 = MEMORY[0x277D78A40];
  }

  v64 = *v43;
  v65 = sub_22634FAEC();
  (*(*(v65 - 8) + 104))(v40, v64, v65);

  v66 = v1[1];

  return v66();
}

uint64_t sub_226324688(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[20];
  v4[63] = a1;

  return MEMORY[0x2822009F8](sub_2263247A8, v5, 0);
}

uint64_t sub_2263247A8(uint64_t a1)
{
  v97 = v1;
  if (v1[63])
  {
    log = v1[13];
    v3 = v1[46];
    v2 = v1[47];
    v4 = v1[42];
    v5 = v1[43];
    v86 = v1[39];
    v89 = v1[60];
    v81 = v1[33];
    v80 = v1[38];
    v6 = v1[28];
    v7 = v1[29];
    v8 = v1[26];
    v9 = v1[27];
    v11 = v1[24];
    v10 = v1[25];
    v12 = v1[18];
    v13 = v1[19];
    v14 = *(v5 + 16);
    v1[64] = v14;
    v1[65] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v3, v2, v4);
    (*(v6 + 16))(v7, v12, v9);
    (*(v10 + 16))(v8, v13, v11);
    sub_22634F62C();
    sub_22635001C();
    v89(v80, v86, v81);
    v15 = sub_22635003C();
    v16 = sub_22635072C();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[57];
    v19 = v1[55];
    v20 = v1[48];
    v21 = v1[38];
    v22 = v1[33];
    v23 = v1[34];
    if (v17)
    {
      v91 = v1[48];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v96 = v25;
      *v24 = 136315138;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v84 = v19;
      v87 = v18;
      v26 = sub_226350C1C();
      v28 = v27;
      v82 = v16;
      v29 = *(v23 + 8);
      v29(v21, v22);
      v30 = sub_226345004(v26, v28, &v96);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2262B6000, v15, v82, "Sending custom action execution request to %s...", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x22AA7D570](v25, -1, -1);
      MEMORY[0x22AA7D570](v24, -1, -1);

      v87(v84, v91);
    }

    else
    {

      v29 = *(v23 + 8);
      v29(v21, v22);
      v18(v19, v20);
    }

    v1[66] = v29;
    ObjectType = swift_getObjectType();
    v60 = swift_task_alloc();
    v1[67] = v60;
    v61 = sub_226325D04(&qword_27D793B48, 255, MEMORY[0x277D78798], MEMORY[0x277D78790]);
    *v60 = v1;
    v60[1] = sub_226325034;
    v62 = v1[32];
    v63 = v1[30];
    v64 = v1[23];

    return MEMORY[0x2821E00A8](v64, v62, ObjectType, v63, log, v61);
  }

  else
  {
    v31 = v1[60];
    v32 = v1[47];
    v33 = v1[45];
    v34 = v1[42];
    v35 = v1[43];
    v36 = v1[39];
    v37 = v1[36];
    v38 = v1[33];
    sub_22635001C();
    (*(v35 + 16))(v33, v32, v34);
    v31(v37, v36, v38);
    v39 = sub_22635003C();
    v92 = sub_22635073C();
    loga = v39;
    v40 = os_log_type_enabled(v39, v92);
    v41 = v1[57];
    v42 = v1[53];
    v43 = v1[48];
    v44 = v1[45];
    v45 = v1[42];
    v46 = v1[43];
    v47 = v1[36];
    v49 = v1[33];
    v48 = v1[34];
    if (v40)
    {
      v90 = v1[53];
      v50 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v96 = v88;
      *v50 = 136315394;
      sub_226325D04(&qword_27D793B38, 255, MEMORY[0x277D78638], MEMORY[0x277D78650]);
      v83 = v43;
      v85 = v41;
      v51 = sub_226350C1C();
      v53 = v52;
      (*(v46 + 8))(v44, v45);
      v54 = sub_226345004(v51, v53, &v96);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_226350C1C();
      v57 = v56;
      (*(v48 + 8))(v47, v49);
      v58 = sub_226345004(v55, v57, &v96);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_2262B6000, loga, v92, "No message sender for custom action %s found with handler ID %s.", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v88, -1, -1);
      MEMORY[0x22AA7D570](v50, -1, -1);

      v85(v90, v83);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      (*(v46 + 8))(v44, v45);
      v41(v42, v43);
    }

    v65 = v1[58];
    v66 = v1[47];
    v67 = v1[42];
    v95 = v1[39];
    v68 = v1[33];
    v69 = v1[34];
    v70 = v1[16];
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B40, &qword_226355220);
    v72 = *(v71 + 48);
    v73 = *(v71 + 64);
    v65(v70, v66, v67);
    (*(v69 + 32))(v70 + v72, v95, v68);
    *(v70 + v73) = 0;
    v74 = *MEMORY[0x277D78AA8];
    v75 = sub_22634FB9C();
    (*(*(v75 - 8) + 104))(v70, v74, v75);
    v76 = *MEMORY[0x277D78A40];
    v77 = sub_22634FAEC();
    (*(*(v77 - 8) + 104))(v70, v76, v77);

    v78 = v1[1];

    return v78();
  }
}

uint64_t sub_226325034()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_226325548;
  }

  else
  {
    v4 = sub_226325160;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226325160(uint64_t a1)
{
  v39 = v1;
  v2 = v1[60];
  v3 = v1[39];
  v4 = v1[37];
  v5 = v1[33];
  sub_22635001C();
  v2(v4, v3, v5);
  v6 = sub_22635003C();
  v7 = sub_22635072C();
  v8 = os_log_type_enabled(v6, v7);
  v36 = v1[66];
  v9 = v1[57];
  v10 = v1[54];
  v11 = v1[48];
  v12 = v1[37];
  v13 = v1[33];
  if (v8)
  {
    v34 = v1[54];
    v14 = swift_slowAlloc();
    v32 = v11;
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = v9;
    v16 = sub_226350C1C();
    v18 = v17;
    v36(v12, v13);
    v19 = sub_226345004(v16, v18, &v38);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2262B6000, v6, v7, "Received custom action execution response from %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    v30(v34, v32);
  }

  else
  {

    v36(v12, v13);
    v9(v10, v11);
  }

  v37 = v1[47];
  v20 = v1[43];
  v33 = v1[66];
  v35 = v1[42];
  v31 = v1[39];
  v22 = v1[32];
  v21 = v1[33];
  v24 = v1[30];
  v23 = v1[31];
  v26 = v1[22];
  v25 = v1[23];
  v27 = v1[21];
  sub_22634F64C();
  swift_unknownObjectRelease();
  (*(v26 + 8))(v25, v27);
  (*(v23 + 8))(v22, v24);
  v33(v31, v21);
  (*(v20 + 8))(v37, v35);

  v28 = v1[1];

  return v28();
}

uint64_t sub_226325548(uint64_t a1)
{
  v62 = v1;
  v2 = v1[68];
  v3 = v1[60];
  v4 = v1[39];
  v5 = v1[35];
  v6 = v1[33];
  sub_22635001C();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22635003C();
  v9 = sub_22635073C();

  if (os_log_type_enabled(v8, v9))
  {
    v58 = v1[50];
    v59 = v1[57];
    v53 = v1[66];
    v56 = v1[48];
    v10 = v1[35];
    v11 = v1[33];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v61 = v13;
    *v12 = 136315394;
    swift_getErrorValue();
    v14 = sub_226350C9C();
    v16 = sub_226345004(v14, v15, &v61);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_226325D04(&qword_28137FA38, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_226350C1C();
    v19 = v18;
    v53(v10, v11);
    v20 = sub_226345004(v17, v19, &v61);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2262B6000, v8, v9, "Error %s occurred while sending custom action execution request to %s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v13, -1, -1);
    MEMORY[0x22AA7D570](v12, -1, -1);

    v59(v58, v56);
  }

  else
  {
    v21 = v1[66];
    v22 = v1[57];
    v23 = v1[50];
    v24 = v1[48];
    v25 = v1[35];
    v26 = v1[33];

    v21(v25, v26);
    v22(v23, v24);
  }

  v49 = v1[64];
  v60 = v1[66];
  v51 = v1[68];
  v50 = v1[60];
  v27 = v1[47];
  v28 = v1[42];
  v29 = v1[43];
  v30 = v1[39];
  v31 = v1[33];
  v55 = v1[32];
  v32 = v1[31];
  v52 = v27;
  v54 = v1[30];
  v33 = v1[16];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B50, &qword_226355228);
  v35 = v34[12];
  v36 = v34[16];
  v57 = (v33 + v34[20]);
  v49(v33, v27, v28);
  v37 = v33 + v35;
  v38 = v30;
  v39 = v31;
  v50(v37, v30, v31);
  *(v33 + v36) = 0;
  swift_getErrorValue();
  v40 = sub_226350C9C();
  v42 = v41;

  swift_unknownObjectRelease();
  (*(v32 + 8))(v55, v54);
  v60(v38, v39);
  (*(v29 + 8))(v52, v28);
  *v57 = v40;
  v57[1] = v42;
  v43 = *MEMORY[0x277D78AB0];
  v44 = sub_22634FB9C();
  (*(*(v44 - 8) + 104))(v33, v43, v44);
  v45 = *MEMORY[0x277D78A40];
  v46 = sub_22634FAEC();
  (*(*(v46 - 8) + 104))(v33, v45, v46);

  v47 = v1[1];

  return v47();
}

BOOL sub_226325AC8(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v5 + 20), v4);
  v6 = swift_getEnumCaseMultiPayload() == 2;
  sub_226325C38(v4);
  return v6;
}

uint64_t sub_226325B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_226323AFC(a1, a2, a3, a4);
}

uint64_t sub_226325C38(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226325C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226325D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_226325D50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v145 = a2;
  v137 = a3;
  v140 = a1;
  v139 = sub_22634EECC();
  v144 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisualAction(0);
  v141 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v147 = (&v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v126 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v126 - v12;
  v14 = sub_22634FB0C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v126 - v19;
  sub_22634F4AC();
  v21 = sub_22634FA8C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_2262D67D8(v20, &qword_27D793018, &unk_2263552F0);
    v23 = 0;
  }

  else
  {
    sub_22634FA6C();
    (*(v22 + 8))(v20, v21);
    v23 = sub_22634FAFC();
    (*(v15 + 8))(v17, v14);
  }

  v143 = v3;
  v135 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
  sub_22632C3D4(v3 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel, v13);
  v24 = sub_22634F47C();
  v25 = *(v24 - 8);
  v133 = *(v25 + 48);
  v134 = v25 + 48;
  if (v133(v13, 1, v24) == 1)
  {
    sub_2262D67D8(v13, &qword_27D792FE0, &unk_226351C10);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v26 = sub_22634F46C();
    v27 = v28;
    (*(v25 + 8))(v13, v24);
  }

  v29 = v143;
  v30 = *(v143 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
  v142 = *(v143 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8);
  if (sub_226326E4C())
  {
    v31 = v29 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus;
    v32 = *(v29 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
    v33 = *(v31 + 8);
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v34 = sub_22634A558();
  v35 = v146;
  v36 = sub_226306440(v23, v26, v27, v30, v142, v32, v33, v34);
  v37 = v35;
  if (v35)
  {
  }

  v127 = v30;
  v126 = v25;
  v129 = v24;
  v39 = v36;

  v40 = v140;
  v41 = *(v140 + 16);
  v42 = MEMORY[0x277D84F90];
  v130 = v39;
  if (v41)
  {
    v128 = 0;
    v148[0] = MEMORY[0x277D84F90];
    sub_226316630(0, v41, 0);
    v43 = v148[0];
    v44 = v40 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v146 = *(v141 + 72);
    v45 = v44;
    v141 = v41;
    do
    {
      v46 = v147;
      sub_22632EDC0(v45, v147, type metadata accessor for VisualAction);
      v47 = sub_2262DBE60();
      v49 = v48;
      sub_22632EE90(v46, type metadata accessor for VisualAction);
      v148[0] = v43;
      v51 = *(v43 + 16);
      v50 = *(v43 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_226316630((v50 > 1), v51 + 1, 1);
        v43 = v148[0];
      }

      *(v43 + 16) = v51 + 1;
      v52 = v43 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      v45 += v146;
      --v41;
    }

    while (v41);
    v131 = v43;
    v148[0] = MEMORY[0x277D84F90];
    v53 = v141;
    sub_226316630(0, v141, 0);
    v42 = v148[0];
    do
    {
      v54 = v147;
      sub_22632EDC0(v44, v147, type metadata accessor for VisualAction);
      v56 = *v54;
      v55 = v54[1];

      sub_22632EE90(v54, type metadata accessor for VisualAction);
      v148[0] = v42;
      v58 = *(v42 + 16);
      v57 = *(v42 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_226316630((v57 > 1), v58 + 1, 1);
        v42 = v148[0];
      }

      *(v42 + 16) = v58 + 1;
      v59 = v42 + 16 * v58;
      *(v59 + 32) = v56;
      *(v59 + 40) = v55;
      v44 += v146;
      --v53;
    }

    while (v53);
    v37 = v128;
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v60 = sub_22630BD70(v42);

  v61 = sub_22632DE60(v60, v145);
  v62 = v61[2];
  v146 = v61;
  v128 = v37;
  if (!v62)
  {
    v63 = MEMORY[0x277D84F90];
    v66 = v144;
    goto LABEL_27;
  }

  v63 = sub_2262DD6B8(v62, 0);
  v64 = sub_2262DEE44(v148, v63 + 4, v62, v61);
  v65 = v148[0];
  v66 = v148[2];

  sub_2262D66F4(v65);
  if (v64 == v62)
  {
    v66 = v144;
    v61 = v146;
LABEL_27:
    v67 = sub_2263270C4(v63);

    v68 = 0;
    v69 = v61 + 7;
    v70 = 1 << *(v61 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v61[7];
    v73 = (v70 + 63) >> 6;
    v141 = v67;
    while (1)
    {
      if (!v72)
      {
        while (1)
        {
          v76 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v76 >= v73)
          {
            break;
          }

          v72 = v69[v76];
          ++v68;
          if (v72)
          {
            v68 = v76;
            goto LABEL_37;
          }
        }

        v97 = v142;
        if (v142)
        {
          v98 = v143;
          __swift_project_boxed_opaque_existential_1((v143 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream), *(v143 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream + 24));
          v99 = v138;
          sub_22634EE7C();
          sub_22634EE5C();
          v101 = v100;
          (v66)[1](v99, v139);
          v102 = sub_22634A630();
          v147 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v131, 0, 0, v127, v97, v102, v101);
        }

        else
        {
          v147 = sub_2262FE100(MEMORY[0x277D84F90]);
          v98 = v143;
        }

        v103 = v135;
        v104 = v136;
        sub_22632C3D4(v98 + v135, v136);
        v105 = v129;
        v106 = v133;
        if (v133(v104, 1, v129) == 1)
        {
          sub_2262D67D8(v104, &qword_27D792FE0, &unk_226351C10);
          v107 = sub_2262FE100(MEMORY[0x277D84F90]);
          v108 = v138;
          v109 = v139;
          v110 = v131;
          v111 = &qword_28137E000;
        }

        else
        {
          sub_22634F46C();
          v112 = *(v126 + 8);
          v112(v104, v105);

          v113 = v132;
          sub_22632C3D4(v98 + v103, v132);
          if (v106(v113, 1, v105) == 1)
          {
            sub_2262D67D8(v113, &qword_27D792FE0, &unk_226351C10);
            v143 = 0;
            v146 = 0;
          }

          else
          {
            v143 = sub_22634F46C();
            v146 = v114;
            v112(v113, v105);
          }

          v108 = v138;
          v109 = v139;
          __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream), *(v98 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream + 24));
          sub_22634EE7C();
          sub_22634EE5C();
          v116 = v115;
          v66 = v144;
          (v144)[1](v108, v109);
          v117 = sub_22634A630();
          v110 = v131;
          v107 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v131, v143, v146, 0, 0, v117, v116);
          v111 = &qword_28137E000;
        }

        __swift_project_boxed_opaque_existential_1((v98 + v111[442]), *(v98 + v111[442] + 24));
        sub_22634EE7C();
        sub_22634EE5C();
        v119 = v118;
        (v66)[1](v108, v109);
        v120 = sub_22634A630();
        v121 = EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(v110, 0, 0, 0, 0, v120, v119);

        v122 = sub_226327348(v140, v130, v137, v147, v107, v121);

        v123 = v128;
        sub_22632A4A0(v122);
        v125 = v124;

        if (!v123)
        {
          v148[0] = v125;

          sub_22632C444(v148, v145);

          return v148[0];
        }

        return result;
      }

LABEL_37:
      v77 = (v61[6] + ((v68 << 10) | (16 * __clz(__rbit64(v72)))));
      v79 = *v77;
      v78 = v77[1];
      v80 = *(v67 + 16);

      if (v80 && (v81 = sub_22633941C(v79, v78), (v82 & 1) != 0))
      {
        v147 = *(*(v67 + 56) + 8 * v81);
      }

      else
      {
        v147 = 0;
      }

      v83 = v145;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *v83;
      v148[0] = v85;
      v86 = sub_22633941C(v79, v78);
      v88 = *(v85 + 16);
      v89 = (v87 & 1) == 0;
      v90 = __OFADD__(v88, v89);
      v91 = v88 + v89;
      if (v90)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v66 = v87;
      if (*(v85 + 24) < v91)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

      v96 = v86;
      sub_226339F9C();
      v86 = v96;
      v67 = v141;
      if (v66)
      {
LABEL_30:
        v74 = v86;

        v75 = v148[0];
        *(*(v148[0] + 56) + 8 * v74) = v147;
        goto LABEL_31;
      }

LABEL_47:
      v75 = v148[0];
      *(v148[0] + 8 * (v86 >> 6) + 64) |= 1 << v86;
      v93 = (v75[6] + 16 * v86);
      *v93 = v79;
      v93[1] = v78;
      *(v75[7] + 8 * v86) = v147;
      v94 = v75[2];
      v90 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v90)
      {
        goto LABEL_64;
      }

      v75[2] = v95;
LABEL_31:
      v72 &= v72 - 1;
      v66 = v144;
      *v145 = v75;
      v61 = v146;
    }

    sub_2263366F4(v91, isUniquelyReferenced_nonNull_native);
    v86 = sub_22633941C(v79, v78);
    if ((v66 & 1) != (v92 & 1))
    {
      goto LABEL_66;
    }

LABEL_46:
    v67 = v141;
    if (v66)
    {
      goto LABEL_30;
    }

    goto LABEL_47;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  sub_226350C8C();
  __break(1u);

  __break(1u);
  return result;
}

double sub_226326AF8@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights;
  v4 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 112);
  v40 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 96);
  v41 = v4;
  v42 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 128);
  v5 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 48);
  v36 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 32);
  v37 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 80);
  v38 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 64);
  v39 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 16);
  v34 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights);
  v35 = v7;
  if (sub_2262D66D8(&v34) == 1)
  {
    sub_226326C0C(v1, &v17);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    sub_22632EDB8(&v25);
    v8 = v32;
    *(v3 + 96) = v31;
    *(v3 + 112) = v8;
    *(v3 + 128) = v33;
    v9 = v28;
    *(v3 + 32) = v27;
    *(v3 + 48) = v9;
    v10 = v30;
    *(v3 + 64) = v29;
    *(v3 + 80) = v10;
    v11 = v26;
    *v3 = v25;
    *(v3 + 16) = v11;
  }

  else
  {
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v20 = v37;
  }

  v12 = v22;
  a1[4] = v21;
  a1[5] = v12;
  v13 = v24;
  a1[6] = v23;
  a1[7] = v13;
  v14 = v18;
  *a1 = v17;
  a1[1] = v14;
  result = *&v19;
  v16 = v20;
  a1[2] = v19;
  a1[3] = v16;
  return result;
}

double sub_226326C0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount);
  v4 = v3 / (sub_22634AC08() + v3);
  v22 = sub_22634ACD8() * (1.0 - v4 + 1.0);
  v29 = sub_22634ADAC() * (1.0 - v4 + 1.0);
  v28 = sub_22634AE80() * (1.0 - v4 + 1.0);
  v21 = v4 * sub_22634AF54();
  v25 = v4 * sub_22634B028();
  v26 = v4 * sub_22634B0FC();
  v27 = v4 * sub_22634B1D0();
  v5 = v4 * sub_22634B2A4();
  v6 = v4 * sub_22634B378();
  v7 = v4 * sub_22634B44C();
  v8 = v4 * sub_22634B520();
  v9 = v4 * sub_22634B5F4();
  v10 = v4 * sub_22634B6C8();
  v24 = v5;
  v23 = (1.0 - v4) * sub_22634B79C();
  sub_2262D95CC();
  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = 0.0;
    goto LABEL_10;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v14 = 0.0;
LABEL_8:
    v17 = v12 - v13;
    v18 = (v11 + 8 * v13 + 32);
    do
    {
      v19 = *v18++;
      v14 = v14 + v19;
      --v17;
    }

    while (v17);
    goto LABEL_10;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v15 = (v11 + 48);
  v14 = 0.0;
  v16 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v14 = v14 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
    v15 += 4;
    v16 -= 4;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_8;
  }

LABEL_10:

  *a2 = v22 / v14;
  *(a2 + 8) = v29 / v14;
  *(a2 + 16) = v28 / v14;
  *(a2 + 24) = v21 / v14;
  *(a2 + 32) = v25 / v14;
  *(a2 + 40) = v26 / v14;
  *(a2 + 48) = v27 / v14;
  *(a2 + 56) = v24 / v14;
  *(a2 + 64) = v6 / v14;
  *(a2 + 72) = v7 / v14;
  *(a2 + 80) = v8 / v14;
  *(a2 + 88) = v9 / v14;
  result = v23 / v14;
  *(a2 + 96) = v10 / v14;
  *(a2 + 104) = v23 / v14;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_226326E4C()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus;
  v2 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus);
  if (v2 == 2)
  {
    LOBYTE(v2) = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus + 8) && (v3 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount), v3 >= sub_22634A488());
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_226326EC4(uint64_t a1)
{
  v3 = sub_22635004C();
  MEMORY[0x28223BE20](v3);
  if (v4)
  {
    return sub_2263080C4(a1, v4);
  }

  else
  {
    return sub_226301FFC(*(v1 + 16));
  }
}

unint64_t sub_2263270C4(uint64_t a1)
{
  v3 = sub_22634EECC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2262FE004(MEMORY[0x277D84F90]);
    v16 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusStream);
    sub_22634EE7C();
    v8 = sub_22634EE8C();
    (*(v4 + 8))(v6, v3);
    v9 = sub_22634EE8C();
    v10 = sub_22635055C();
    aBlock[4] = sub_22632EEF0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22632C078;
    aBlock[3] = &block_descriptor_0;
    v11 = _Block_copy(aBlock);

    [v16 enumerateAppLaunchSessionsBetweenStartDate:v8 endDate:v9 limit:1000 shouldReverse:0 bundleIDsFilter:v10 block:v11];
    _Block_release(v11);

    swift_beginAccess();
    v12 = *(v7 + 16);

    return v12;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];

    return sub_2262FE004(v14);
  }
}

void *sub_226327348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v369 = a6;
  v355 = a5;
  v357 = a4;
  v363 = a3;
  v368 = a2;
  v406 = sub_22635004C();
  v9 = *(v406 - 8);
  MEMORY[0x28223BE20](v406);
  v11 = &v350 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for RankedVisualAction(0);
  v361 = *(v362 - 8);
  MEMORY[0x28223BE20](v362);
  v374 = &v350 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = type metadata accessor for VisualAction.Kind(0);
  v13 = MEMORY[0x28223BE20](v372);
  v370 = &v350 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v356 = &v350 - v16;
  MEMORY[0x28223BE20](v15);
  v358 = &v350 - v17;
  v375 = sub_22634F14C();
  v18 = *(v375 - 8);
  v19 = MEMORY[0x28223BE20](v375);
  v354 = &v350 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v353 = &v350 - v22;
  MEMORY[0x28223BE20](v21);
  v359 = &v350 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v360 = &v350 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v373 = &v350 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v377 = &v350 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v384 = &v350 - v32;
  MEMORY[0x28223BE20](v31);
  v393 = &v350 - v33;
  v436 = sub_22634F0EC();
  v34 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v437 = &v350 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_22634F06C();
  v36 = *(v432 - 8);
  v37 = MEMORY[0x28223BE20](v432);
  v376 = &v350 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v383 = &v350 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v388 = &v350 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v399 = &v350 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v385 = &v350 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v392 = &v350 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v421 = &v350 - v50;
  MEMORY[0x28223BE20](v49);
  v420 = &v350 - v51;
  v371 = type metadata accessor for VisualAction(0);
  v52 = MEMORY[0x28223BE20](v371);
  MEMORY[0x28223BE20](v52);
  v56 = (&v350 - v54);
  v57 = *(a1 + 16);
  if (v57)
  {
    v405 = v55;
    v433 = 0;
    v408 = (v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
    v382 = (v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
    v396 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
    v58 = *(v53 + 80);
    v381 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart;
    v59 = a1 + ((v58 + 32) & ~v58);
    v435 = (v34 + 16);
    v422 = v36;
    v431 = v36 + 32;
    v352 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount;
    v366 = v18 + 16;
    v367 = v18;
    v365 = v18 + 8;
    v404 = (v9 + 8);
    v351 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount;
    v407 = *(v53 + 72);
    v434 = *MEMORY[0x277D78238];
    v60 = *MEMORY[0x277D78288];
    v438 = xmmword_226351C90;
    v378 = MEMORY[0x277D84F90];
    v429 = v7;
    v409 = v11;
    v427 = (&v350 - v54);
    v430 = v60;
    while (1)
    {
      v426 = v57;
      v425 = v59;
      sub_22632EDC0(v59, v56, type metadata accessor for VisualAction);
      v61 = sub_22632ADB0(v56);
      sub_22632B2D8(v56);
      v63 = v62;
      sub_22632E540(v56);
      v65 = v64;
      v66 = v408[1];
      v423 = *v408;
      v67 = 0.0;
      v428 = v66;
      if (v66 == 0.0)
      {
        v97 = 0.0;
      }

      else
      {
        v68 = *(v7 + 16);
        v69 = sub_2262DBE60();
        v71 = v70;
        v72 = *v435;
        v424 = *&v68;
        v419 = *&v72;
        v72(v437, v68 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v436);
        *&v73 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0));
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
        v75 = (*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80);
        v416 = *(*(v74 - 8) + 72);
        v418 = *&v73;
        v76 = swift_allocObject();
        *(v76 + 16) = v438;
        v77 = v76 + v75;
        v417 = v74;
        v78 = (v76 + v75 + *(v74 + 48));
        v79 = sub_22634F0CC();
        v80 = *(v79 - 8);
        v81 = *(v80 + 104);
        v415 = v79;
        v414 = v81;
        v413 = (v80 + 104);
        (v81)(v77, v434);
        *v78 = v69;
        v78[1] = v71;
        v82 = sub_22634F10C();
        v83 = *(v82 - 8);
        v412 = *(v83 + 104);
        v412(v78, v430, v82);
        v411 = *(v83 + 56);
        v411(v78, 0, 1, v82);
        sub_22634F05C();
        v84 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
        v86 = v84[2];
        v85 = v84[3];
        if (v86 >= v85 >> 1)
        {
          v84 = sub_2262DC96C((v85 > 1), v86 + 1, 1, v84);
        }

        v87 = v422;
        v84[2] = v86 + 1;
        v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v89 = *(v87 + 72);
        v410 = *(v87 + 32);
        (v410)(v84 + v88 + v89 * v86, v420, v432);
        (*&v419)(v437, *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v436);
        v90 = swift_allocObject();
        *(v90 + 16) = v438;
        v91 = v90 + v75 + *(v417 + 48);
        v414();
        v92 = v428;
        *v91 = v423;
        *(v91 + 8) = v92;
        v412(v91, v430, v82);
        v411(v91, 0, 1, v82);

        sub_22634F05C();
        v94 = v84[2];
        v93 = v84[3];
        if (v94 >= v93 >> 1)
        {
          v84 = sub_2262DC96C((v93 > 1), v94 + 1, 1, v84);
        }

        v56 = v427;
        v84[2] = v94 + 1;
        (v410)(v84 + v88 + v94 * v89, v421, v432);
        *&v439 = v84;
        v95 = v433;
        v96 = sub_226302514(*&v424, &v439);
        if (v95)
        {
LABEL_24:

          v433 = 0;
          v141 = v409;
          goto LABEL_66;
        }

        v98 = v96;
        v433 = 0;

        v97 = v98;
        v7 = v429;
      }

      v99 = v396;
      v100 = v393;
      sub_22632C3D4(v7 + v396, v393);
      v101 = sub_22634F47C();
      v102 = *(v101 - 8);
      v103 = *(v102 + 48);
      v104 = v103(v100, 1, v101);
      sub_2262D67D8(v100, &qword_27D792FE0, &unk_226351C10);
      v395 = v102 + 48;
      v394 = v103;
      v397 = v101;
      v391 = v102;
      if (v104 != 1)
      {
        v424 = *(v7 + 16);
        v105 = sub_2262DBE60();
        v107 = v106;
        v108 = v384;
        sub_22632C3D4(v7 + v99, v384);
        if (v103(v108, 1, v101) == 1)
        {
          sub_2262D67D8(v108, &qword_27D792FE0, &unk_226351C10);
          v418 = 0.0;
          v419 = 0.0;
        }

        else
        {
          v418 = COERCE_DOUBLE(sub_22634F46C());
          v419 = *&v109;
          (*(v102 + 8))(v108, v101);
        }

        v110 = v434;
        v111 = *v435;
        (*v435)(v437, *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v436);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
        v114 = (*(*(v113 - 8) + 80) + 32) & ~*(*(v113 - 8) + 80);
        v415 = *(*(v113 - 8) + 72);
        v417 = v112;
        v115 = swift_allocObject();
        *(v115 + 16) = v438;
        v116 = v115 + v114;
        v416 = v113;
        v117 = (v115 + v114 + *(v113 + 48));
        v118 = sub_22634F0CC();
        v119 = *(v118 - 8);
        v120 = *(v119 + 104);
        v414 = v118;
        v413 = v120;
        v412 = (v119 + 104);
        (v120)(v116, v110);
        *v117 = v105;
        v117[1] = v107;
        v121 = sub_22634F10C();
        v122 = *(v121 - 8);
        v411 = *(v122 + 104);
        (v411)(v117, v430, v121);
        v410 = *(v122 + 56);
        (v410)(v117, 0, 1, v121);
        sub_22634F05C();
        v123 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
        v125 = v123[2];
        v124 = v123[3];
        if (v125 >= v124 >> 1)
        {
          v123 = sub_2262DC96C((v124 > 1), v125 + 1, 1, v123);
        }

        v126 = v422;
        v123[2] = v125 + 1;
        v127 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v128 = *(v126 + 72);
        v129 = v123 + v127 + v128 * v125;
        v130 = *(v126 + 32);
        (v130)(v129, v392, v432);
        *&v439 = v123;
        if (v419 == 0.0)
        {
          v56 = v427;
        }

        else
        {
          v401 = v128;
          v402 = v127;
          v403 = v130;
          v131 = v111;
          v132 = v419;
          v131(v437, *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v436);
          v133 = swift_allocObject();
          *(v133 + 16) = v438;
          v134 = (v133 + v114 + *(v416 + 48));
          v413();
          *v134 = v418;
          v134[1] = v132;
          (v411)(v134, v430, v121);
          (v410)(v134, 0, 1, v121);
          sub_22634F05C();
          v136 = v123[2];
          v135 = v123[3];
          if (v136 >= v135 >> 1)
          {
            v123 = sub_2262DC96C((v135 > 1), v136 + 1, 1, v123);
          }

          v56 = v427;
          v137 = v403;
          v138 = v402;
          v139 = v401;
          v123[2] = v136 + 1;
          (v137)(v123 + v138 + v136 * v139, v385, v432);
          *&v439 = v123;
        }

        v95 = v433;
        v140 = sub_226302514(*&v424, &v439);
        v7 = v429;
        if (v95)
        {
          goto LABEL_24;
        }

        v142 = v140;
        v433 = 0;

        v67 = v142;
      }

      v424 = *(v7 + 16);
      v143 = sub_2262DBE60();
      v145 = v144;
      if (sub_226326E4C())
      {
        v146 = *v382;
        v147 = v382[1];
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v148 = v434;
      v149 = *&v424;
      v150 = *v435;
      v390 = *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
      v418 = *&v150;
      (v150)(v437);
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
      v153 = *(*(v152 - 8) + 80);
      v154 = (v153 + 32) & ~v153;
      v416 = *(*(v152 - 8) + 72);
      v415 = v153;
      v417 = v151;
      v155 = swift_allocObject();
      *(v155 + 16) = v438;
      v400 = v154;
      v156 = v155 + v154;
      v410 = v152;
      v157 = (v156 + *(v152 + 48));
      v158 = sub_22634F0CC();
      v159 = *(v158 - 8);
      v160 = *(v159 + 104);
      v414 = v158;
      v403 = v160;
      v413 = (v159 + 104);
      (v160)(v156, v148);
      *v157 = v143;
      v157[1] = v145;
      v161 = sub_22634F10C();
      v162 = *(v161 - 8);
      v412 = *(v162 + 104);
      v401 = v162 + 104;
      v163 = v430;
      v412(v157, v430, v161);
      v164 = *(v162 + 56);
      v402 = v162 + 56;
      v165 = v157;
      v166 = v161;
      v411 = v164;
      v164(v165, 0, 1, v161);
      sub_22634F05C();
      v167 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
      v169 = *(v167 + 2);
      v168 = *(v167 + 3);
      if (v169 >= v168 >> 1)
      {
        v167 = sub_2262DC96C((v168 > 1), v169 + 1, 1, v167);
      }

      v170 = v422;
      *(v167 + 2) = v169 + 1;
      v389 = *(v170 + 80);
      v171 = (v389 + 32) & ~v389;
      v419 = *(v170 + 72);
      v172 = &v167[v171 + *&v419 * v169];
      v173 = *(v170 + 32);
      v173(v172, v399, v432);
      *&v439 = v167;
      v174 = v429;
      v398 = v173;
      if (v147)
      {
        (*&v418)(v437, v149 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v436);
        v175 = v400;
        v176 = swift_allocObject();
        *(v176 + 16) = v438;
        v177 = (v176 + v175 + *(v410 + 48));
        v403();
        *v177 = v146;
        v177[1] = v147;
        v412(v177, v163, v161);
        v411(v177, 0, 1, v161);
        sub_22634F05C();
        v179 = *(v167 + 2);
        v178 = *(v167 + 3);
        if (v179 >= v178 >> 1)
        {
          v167 = sub_2262DC96C((v178 > 1), v179 + 1, 1, v167);
        }

        v180 = v398;
        *(v167 + 2) = v179 + 1;
        v180(&v167[v171 + v179 * *&v419], v388, v432);
        *&v439 = v167;
        v149 = *&v424;
        v174 = v429;
      }

      v95 = v433;
      v181 = sub_226302514(v149, &v439);
      v182 = v428;
      if (!v95)
      {
        v379 = v181;

        v387 = v166;
        v386 = v171;
        if (v182 == 0.0)
        {
          sub_22634EE5C();
          v206 = v205;
          v204 = v397;
          v207 = v174;
          goto LABEL_48;
        }

        v183 = sub_2262DBE60();
        v185 = v184;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
        v380 = swift_allocObject();
        *(v380 + 16) = v438;
        (*&v418)(v437, v390, v436);
        v186 = v400;
        v187 = swift_allocObject();
        *(v187 + 16) = v438;
        v188 = v410;
        v189 = (v187 + v186 + *(v410 + 48));
        v190 = v403;
        v403();
        *v189 = v183;
        v189[1] = v185;
        v412(v189, v430, v387);
        v411(v189, 0, 1, v387);
        v433 = v185;

        v191 = v380;
        v192 = v437;
        sub_22634F05C();
        (*&v418)(v192, *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v436);
        v193 = swift_allocObject();
        *(v193 + 16) = v438;
        v194 = v193 + v186 + *(v188 + 48);
        v195 = v430;
        v190();
        v196 = v191;
        v197 = v387;
        v198 = v428;
        *v194 = v423;
        *(v194 + 8) = v198;
        v412(v194, v195, v197);
        v411(v194, 0, 1, v197);

        sub_22634F05C();
        v200 = *(v191 + 2);
        v199 = *(v191 + 3);
        if (v200 >= v199 >> 1)
        {
          v196 = sub_2262DC96C((v199 > 1), v200 + 1, 1, v191);
        }

        v201 = v398;
        *(v196 + 2) = v200 + 1;
        v201(&v196[v386 + v200 * *&v419], v383, v432);
        v448 = v196;

        v203 = sub_2263035CC(v202, &v448, v202);
        v204 = v397;
        if (*(v203 + 16))
        {
          v208 = v397;
          v209 = v367;
          v210 = v359;
          v211 = v375;
          (*(v367 + 16))(v359, v203 + ((*(v209 + 80) + 32) & ~*(v209 + 80)), v375);

          v212 = sub_22634F13C();
          v214 = v213;
          (*(v209 + 8))(v210, v211);
          if (v214 >> 60 != 15)
          {
            sub_22634ED1C();
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            sub_22634ECFC();

            v304 = *&v441;
            v207 = v429;
            sub_22634EE5C();
            v306 = v305;
            sub_2262D66C4(v212, v214);

            v206 = v306 - v304;
            v204 = v208;
            goto LABEL_48;
          }

          v204 = v208;
        }

        else
        {
        }

        v207 = v429;
        sub_22634EE5C();
        v206 = v215;

LABEL_48:
        v216 = v396;
        v217 = v377;
        sub_22632C3D4(v207 + v396, v377);
        v218 = v394;
        if (v394(v217, 1, v204) == 1)
        {
          sub_2262D67D8(v217, &qword_27D792FE0, &unk_226351C10);
          sub_22634EE5C();
          v220 = v219;
          v7 = v207;
          v221 = v430;
LABEL_65:
          v256 = sub_2262DBE60();
          v258 = v257;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
          v259 = swift_allocObject();
          *(v259 + 16) = v438;
          (*&v418)(v437, v390, v436);
          v260 = v400;
          v261 = swift_allocObject();
          *(v261 + 16) = v438;
          v262 = (v261 + v260 + *(v410 + 48));
          v403();
          *v262 = v256;
          v262[1] = v258;
          v263 = v387;
          v412(v262, v221, v387);
          v411(v262, 0, 1, v263);

          sub_22634F05C();
          v448 = v259;

          v265 = sub_2263035CC(v264, &v448, v264);
          v433 = 0;
          if (!*(v265 + 16))
          {

            v56 = v427;
            goto LABEL_78;
          }

          v280 = v367;
          v281 = v354;
          v282 = v375;
          (*(v367 + 16))(v354, v265 + ((*(v280 + 80) + 32) & ~*(v280 + 80)), v375);

          v283 = sub_22634F13C();
          v285 = v284;
          (*(v280 + 8))(v281, v282);
          v56 = v427;
          if (v285 >> 60 == 15)
          {
LABEL_78:
            sub_22634EE5C();
            v423 = v287;
          }

          else
          {
            sub_22634ED1C();
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            v286 = v433;
            sub_22634ECFC();
            if (v286)
            {

              sub_2262D66C4(v283, v285);

              v433 = 0;
              goto LABEL_78;
            }

            v433 = 0;

            v424 = v206;
            v343 = *&v441;
            sub_22634EE5C();
            v345 = v344;
            sub_2262D66C4(v283, v285);

            v423 = v345 - v343;
            v206 = v424;
          }

          v288 = v397;
          v289 = 0.0;
          v424 = 0.0;
          if (v428 != 0.0)
          {
            v290 = sub_2262DBE60();
            if (*(v357 + 16))
            {
              v292 = sub_22633941C(v290, v291);
              v294 = v293;

              if (v294)
              {
                v424 = *(*(v357 + 56) + 8 * v292);
                goto LABEL_88;
              }
            }

            else
            {
            }

            sub_22632EDC0(v56 + *(v371 + 20), v358, type metadata accessor for VisualAction.Kind);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v295 = sub_22634A700();
            }

            else
            {
              v295 = sub_22634A7D0();
            }

            v424 = v295;
            sub_22632EE90(v358, type metadata accessor for VisualAction.Kind);
          }

LABEL_88:
          v296 = v360;
          sub_22632C3D4(v7 + v396, v360);
          v297 = v394(v296, 1, v288);
          sub_2262D67D8(v296, &qword_27D792FE0, &unk_226351C10);
          if (v297 != 1)
          {
            v298 = sub_2262DBE60();
            if (*(v355 + 16))
            {
              v300 = sub_22633941C(v298, v299);
              v302 = v301;

              if (v302)
              {
                v289 = *(*(v355 + 56) + 8 * v300);
                goto LABEL_97;
              }
            }

            else
            {
            }

            sub_22632EDC0(v56 + *(v371 + 20), v356, type metadata accessor for VisualAction.Kind);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v303 = sub_22634A700();
            }

            else
            {
              v303 = sub_22634A7D0();
            }

            v289 = v303;
            sub_22632EE90(v356, type metadata accessor for VisualAction.Kind);
          }

LABEL_97:
          v307 = sub_2262DBE60();
          if (*(v369 + 16))
          {
            v309 = sub_22633941C(v307, v308);
            v311 = v310;

            if (v311)
            {
              v418 = *(*(v369 + 56) + 8 * v309);
LABEL_105:
              v428 = v97;
              v313 = sub_2262DBE60();
              v315 = *(v368 + 16);
              v350 = v65;
              v419 = v289;
              if (v315)
              {
                v316 = sub_22633941C(v313, v314);
                v318 = v317;

                v319 = 0;
                if (v318)
                {
                  v319 = *(*(v368 + 56) + 8 * v316);
                }
              }

              else
              {

                v319 = 0;
              }

              v320 = v63;
              v321 = v363;
              v322 = 0.0;
              v323 = v61;
              if (*(v363 + 16))
              {
                v324 = sub_22633941C(*v56, v56[1]);
                if (v325)
                {
                  v322 = *(*(v321 + 56) + 8 * v324);
                }
              }

              v326 = v379;
              v327 = sub_22632EA30(v206);
              v328 = sub_22632EA30(v220);
              v329 = sub_22632EA30(v423);
              v330 = *(v7 + v352);
              v331 = *(v7 + v351);
              *&v439 = v323;
              *(&v439 + 1) = v320;
              *&v440 = v350;
              *(&v440 + 1) = v428;
              *&v441 = v67;
              *(&v441 + 1) = v326;
              *&v442 = v327;
              *(&v442 + 1) = v328;
              *&v443 = v329;
              *(&v443 + 1) = v424;
              *&v444 = v419;
              *(&v444 + 1) = v418;
              *&v445 = v319;
              *(&v445 + 1) = v322;
              *&v446 = v330;
              *(&v446 + 1) = v331;
              sub_22632EDB8(&v439);
              v332 = v374;
              sub_22632EDC0(v56, v374, type metadata accessor for VisualAction);
              v333 = v362;
              v334 = v332 + *(v362 + 20);
              v335 = v446;
              *(v334 + 96) = v445;
              *(v334 + 112) = v335;
              *(v334 + 128) = v447;
              v337 = v442;
              v336 = v443;
              *(v334 + 32) = v441;
              *(v334 + 48) = v337;
              v338 = v444;
              *(v334 + 64) = v336;
              *(v334 + 80) = v338;
              v339 = v440;
              *v334 = v439;
              *(v334 + 16) = v339;
              *(v332 + *(v333 + 24)) = 0;
              *(v332 + *(v333 + 28)) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v378 = sub_2262DCC74(0, v378[2] + 1, 1, v378);
              }

              v341 = v378[2];
              v340 = v378[3];
              if (v341 >= v340 >> 1)
              {
                v378 = sub_2262DCC74((v340 > 1), v341 + 1, 1, v378);
              }

              v342 = v378;
              v378[2] = v341 + 1;
              sub_22632EE28(v374, v342 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v341, type metadata accessor for RankedVisualAction);
              goto LABEL_70;
            }
          }

          else
          {
          }

          sub_22632EDC0(v56 + *(v371 + 20), v370, type metadata accessor for VisualAction.Kind);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v312 = sub_22634A700();
          }

          else
          {
            v312 = sub_22634A7D0();
          }

          v418 = v312;
          sub_22632EE90(v370, type metadata accessor for VisualAction.Kind);
          goto LABEL_105;
        }

        sub_22634F46C();
        v380 = v391[1];
        (v380)(v217, v204);

        v391 = sub_2262DBE60();
        v433 = v222;
        v223 = v373;
        sub_22632C3D4(v207 + v216, v373);
        if (v218(v223, 1, v204) == 1)
        {
          sub_2262D67D8(v223, &qword_27D792FE0, &unk_226351C10);
          v364 = 0;
          v423 = 0.0;
        }

        else
        {
          v364 = sub_22634F46C();
          v423 = v224;
          (v380)(v223, v204);
        }

        v225 = v418;
        v226 = v410;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
        v227 = v389 | 7;
        v389 = v386 + *&v419;
        v380 = v227;
        v228 = swift_allocObject();
        *(v228 + 16) = v438;
        v229 = v437;
        (*&v225)(v437, v390, v436);
        v230 = v400;
        v231 = swift_allocObject();
        *(v231 + 16) = v438;
        v232 = (v231 + v230 + *(v226 + 48));
        v403();
        v233 = v433;
        *v232 = v391;
        v232[1] = v233;
        v234 = v387;
        v412(v232, v430, v387);
        v235 = v232;
        v236 = v411;
        v411(v235, 0, 1, v234);

        sub_22634F05C();
        v391 = v228;
        v448 = v228;
        v237 = v423;
        if (v423 == 0.0)
        {
          v243 = v430;
          v246 = v391;
        }

        else
        {
          (*&v418)(v229, *&v424 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v436);
          v238 = swift_allocObject();
          *(v238 + 16) = v438;
          v239 = (v238 + v230 + *(v410 + 48));
          v403();
          *v239 = v364;
          *(v239 + 1) = v237;
          v412(v239, v430, v234);
          v236(v239, 0, 1, v234);

          sub_22634F05C();
          v240 = v391;
          v242 = v391[2];
          v241 = v391[3];
          v243 = v430;
          if (v242 >= v241 >> 1)
          {
            v240 = sub_2262DC96C((v241 > 1), v242 + 1, 1, v391);
          }

          v244 = v386;
          v245 = v398;
          v240[2] = v242 + 1;
          v246 = v240;
          v245(v240 + v244 + v242 * *&v419, v376, v432);
          v448 = v246;
        }

        v248 = sub_2263035CC(v247, &v448, v247);
        v391 = v246;
        if (*(v248 + 16))
        {
          v249 = v367;
          v250 = v353;
          v251 = v375;
          (*(v367 + 16))(v353, v248 + ((*(v249 + 80) + 32) & ~*(v249 + 80)), v375);

          v252 = sub_22634F13C();
          v254 = v253;
          (*(v249 + 8))(v250, v251);
          if (v254 >> 60 != 15)
          {
            sub_22634ED1C();
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            sub_22634ECFC();

            v346 = *&v441;
            sub_22634EE5C();
            v348 = v347;
            sub_2262D66C4(v252, v254);

            v220 = v348 - v346;
LABEL_64:

            v7 = v429;
            v221 = v243;
            goto LABEL_65;
          }
        }

        else
        {
        }

        sub_22634EE5C();
        v220 = v255;

        goto LABEL_64;
      }

      v433 = 0;
      v141 = v409;
      v56 = v427;
LABEL_66:
      sub_22634FFBC();
      v266 = v405;
      sub_22632EDC0(v56, v405, type metadata accessor for VisualAction);
      v267 = v95;
      v268 = sub_22635003C();
      v269 = sub_22635073C();

      if (os_log_type_enabled(v268, v269))
      {
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        *&v439 = v272;
        *v270 = 136446466;
        v273 = sub_2262DBE60();
        v275 = v274;
        sub_22632EE90(v266, type metadata accessor for VisualAction);
        v276 = sub_226345004(v273, v275, &v439);

        *(v270 + 4) = v276;
        *(v270 + 12) = 2112;
        v277 = v95;
        v278 = _swift_stdlib_bridgeErrorToNSError();
        *(v270 + 14) = v278;
        *v271 = v278;
        _os_log_impl(&dword_2262B6000, v268, v269, "Unable to featurize action %{public}s: %@", v270, 0x16u);
        sub_2262D67D8(v271, &qword_27D793CC0, qword_226352A00);
        v279 = v271;
        v56 = v427;
        MEMORY[0x22AA7D570](v279, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v272);
        MEMORY[0x22AA7D570](v272, -1, -1);
        MEMORY[0x22AA7D570](v270, -1, -1);
      }

      else
      {

        sub_22632EE90(v266, type metadata accessor for VisualAction);
      }

      (*v404)(v141, v406);
      v7 = v429;
LABEL_70:
      sub_22632EE90(v56, type metadata accessor for VisualAction);
      v59 = v425 + v407;
      v57 = v426 - 1;
      if (v426 == 1)
      {
        return v378;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_22632A4A0(void *a1)
{
  v2 = type metadata accessor for RankedVisualAction(0);
  v3 = MEMORY[0x28223BE20](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  v8 = MEMORY[0x277D84F90];
  v91 = v7;
  v92 = a1;
  v88 = v4;
  v89 = v3;
  if (v7)
  {
    v9 = &v6[*(v3 + 20)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v98 = xmmword_226352020;
    v99 = v11;
    do
    {
      sub_22632EDC0(v10, v6, type metadata accessor for RankedVisualAction);
      v12 = *(v9 + 7);
      v106 = *(v9 + 6);
      v107 = v12;
      v108 = v9[128];
      v13 = *(v9 + 3);
      v102 = *(v9 + 2);
      v103 = v13;
      v14 = *(v9 + 5);
      v104 = *(v9 + 4);
      v105 = v14;
      v15 = *(v9 + 1);
      v100 = *v9;
      v101 = v15;
      if (sub_2262D66D8(&v100) == 1)
      {
        sub_22632EE90(v6, type metadata accessor for RankedVisualAction);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
        v16 = swift_allocObject();
        v17 = v100;
        v18 = v101;
        v16[1] = v98;
        v16[2] = v17;
        v19 = v102;
        v20 = v103;
        v16[3] = v18;
        v16[4] = v19;
        v21 = v104;
        v22 = v105;
        v16[5] = v20;
        v16[6] = v21;
        v23 = v106;
        v16[7] = v22;
        v16[8] = v23;
        sub_22632EE90(v6, type metadata accessor for RankedVisualAction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2262DCDA0(0, v8[2] + 1, 1, v8);
        }

        v25 = v8[2];
        v24 = v8[3];
        if (v25 >= v24 >> 1)
        {
          v8 = sub_2262DCDA0((v24 > 1), v25 + 1, 1, v8);
        }

        v8[2] = v25 + 1;
        v8[v25 + 4] = v16;
        v11 = v99;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  v26 = v96;
  v27 = sub_22632B9DC(v8);
  if (v26)
  {
LABEL_12:

    return;
  }

  v28 = v27;

  if (__OFADD__(v91, 2))
  {
LABEL_83:
    __break(1u);
  }

  else
  {
    v29 = v28[2];
    if (v29 == v91 + 2)
    {
      v87 = 0;
      sub_226326AF8(v109);
      sub_2262D95CC();
      v31 = v30;
      v32 = MEMORY[0x277D84F90];
      *&v100 = MEMORY[0x277D84F90];
      sub_226316610(0, v29, 0);
      v33 = 0;
      v34 = v100;
      v35 = *(v31 + 16);
      v95 = v28 + 4;
      v96 = v35;
      v90 = v31 + 32;
      v93 = v29;
      v94 = v28;
      v97 = v31;
      while (1)
      {
        if (v33 == v29)
        {
          goto LABEL_78;
        }

        if (v33 >= v28[2])
        {
          goto LABEL_79;
        }

        v99 = v34;
        *&v98 = v33;
        v36 = v95[v33];
        v37 = v96 >= *(v36 + 16) ? *(v36 + 16) : v96;
        v110 = v32;

        sub_2263165F0(0, v37, 0);
        v38 = v37;
        v39 = v110;
        if (v37)
        {
          break;
        }

        v42 = v97;
LABEL_32:
        v50 = *(v36 + 16);
        if (v38 != v50)
        {
          v55 = v38 + 4;
          v34 = v99;
          while (1)
          {
            v56 = v55 - 4;
            if (v55 - 4 >= v50)
            {
              break;
            }

            v57 = *(v42 + 16);
            if (v56 == v57)
            {
              goto LABEL_34;
            }

            if (v56 >= v57)
            {
              goto LABEL_75;
            }

            v58 = *(v36 + 8 * v55);
            v59 = *(v42 + 8 * v55);
            v110 = v39;
            v61 = *(v39 + 16);
            v60 = *(v39 + 24);
            if (v61 >= v60 >> 1)
            {
              sub_2263165F0((v60 > 1), v61 + 1, 1);
              v42 = v97;
              v39 = v110;
            }

            *(v39 + 16) = v61 + 1;
            *(v39 + 8 * v61 + 32) = v58 * v59;
            v50 = *(v36 + 16);
            v62 = v55 - 3;
            ++v55;
            if (v62 == v50)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v34 = v99;
LABEL_34:

        *&v100 = v34;
        v52 = *(v34 + 16);
        v51 = *(v34 + 24);
        v53 = v98;
        if (v52 >= v51 >> 1)
        {
          sub_226316610((v51 > 1), v52 + 1, 1);
          v53 = v98;
          v34 = v100;
        }

        v33 = v53 + 1;
        *(v34 + 16) = v52 + 1;
        v54 = v34 + 32;
        *(v34 + 32 + 8 * v52) = v39;
        v29 = v93;
        v28 = v94;
        v32 = MEMORY[0x277D84F90];
        if (v33 == v93)
        {

          v64 = v87;
          v65 = sub_22632EB64(v34);
          if (v64)
          {
            goto LABEL_12;
          }

          if (!v91)
          {

            goto LABEL_12;
          }

          v97 = v66;
          *&v98 = v65;
          v67 = v65 + 32;
          v68 = v66 + 32;

          v69 = 0;
          v99 = v34;
          while (v69 < *(v34 + 16))
          {
            v70 = *(v54 + 8 * v69);
            v71 = *(v70 + 16);
            if (v71)
            {
              v72 = 0;
              v73 = v70 + 32;
              v74 = *(v98 + 16);
              v75 = 0.0;
              do
              {
                if (v74 == v72)
                {
                  break;
                }

                if (v72 >= v74)
                {
                  goto LABEL_76;
                }

                v75 = v75 + (*(v73 + 8 * v72) - *(v67 + 8 * v72)) * (*(v73 + 8 * v72) - *(v67 + 8 * v72));
                ++v72;
              }

              while (v71 != v72);
              v76 = sqrt(v75);
              v77 = 0;
              v78 = *(v97 + 16);
              v79 = 0.0;
              do
              {
                if (v78 == v77)
                {
                  break;
                }

                if (v77 >= v78)
                {
                  goto LABEL_77;
                }

                v79 = v79 + (*(v73 + 8 * v77) - *(v68 + 8 * v77)) * (*(v73 + 8 * v77) - *(v68 + 8 * v77));
                ++v77;
              }

              while (v71 != v77);
            }

            else
            {
              v76 = 0.0;
              v79 = 0.0;
            }

            v80 = sqrt(v79);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v92 = sub_2262E8694(v92);
            }

            v81 = v92;
            if (v69 >= v92[2])
            {
              goto LABEL_81;
            }

            v82 = v80 / (v76 + v80 + 2.22044605e-16);
            v83 = v89;
            v84 = v92 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v69;
            *&v84[*(v89 + 24)] = v82;
            v85 = sub_22634B870();
            if (v69 >= v81[2])
            {
              goto LABEL_82;
            }

            ++v69;
            v84[*(v83 + 28)] = v85 < v82;
            v34 = v99;
            if (v69 == v91)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_80;
        }
      }

      v40 = 0;
      v41 = *(v36 + 16);
      v42 = v97;
      v43 = v90;
      while (v41 != v40)
      {
        if (v40 >= *(v36 + 16))
        {
          goto LABEL_69;
        }

        v44 = *(v42 + 16);
        if (v40 == v44)
        {
          goto LABEL_70;
        }

        if (v40 >= v44)
        {
          goto LABEL_71;
        }

        v45 = *(v36 + 32 + 8 * v40);
        v46 = *(v43 + 8 * v40);
        v110 = v39;
        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          v49 = v38;
          sub_2263165F0((v47 > 1), v48 + 1, 1);
          v38 = v49;
          v43 = v90;
          v42 = v97;
          v39 = v110;
        }

        ++v40;
        *(v39 + 16) = v48 + 1;
        *(v39 + 8 * v48 + 32) = v45 * v46;
        if (v38 == v40)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:

      goto LABEL_12;
    }

    sub_22632E4EC();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();
  }
}

BOOL sub_22632AC40(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for RankedVisualAction(0);
  v7 = *(a1 + *(v6 + 24));
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_22633941C(*a1, a1[1]), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2262DBE60();
  v14 = v13;
  v15 = *(a2 + *(v6 + 24));
  v16 = *a3;
  if (*(*a3 + 16) && (v17 = sub_22633941C(*a2, a2[1]), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2262DBE60();
  if (v7 == v15)
  {
    if (v11 == v19)
    {
      if (v20 == v12 && v21 == v14)
      {

        return 0;
      }

      else
      {
        v23 = sub_226350C4C();

        return v23 & 1;
      }
    }

    else
    {

      return v19 < v11;
    }
  }

  else
  {

    return v15 < v7;
  }
}

double sub_22632ADB0(uint64_t a1)
{
  v3 = sub_22634F34C();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2263500AC();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8))
  {
    v16 = type metadata accessor for VisualAction(0);
    sub_22632EDC0(a1 + *(v16 + 20), v14, type metadata accessor for VisualAction.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22632EE28(v14, v11, type metadata accessor for VisualAction.Kind.SystemTool);
        v19 = sub_2262DA498();
        (*(v36 + 16))(v8, &v11[*(v9 + 20)], v6);
        sub_2262DB424();
        sub_22635091C();
        if (!*(v19 + 16) || (v20 = sub_226339494(v39), (v21 & 1) == 0))
        {

          sub_226315840(v39);
          sub_22632EE90(v11, type metadata accessor for VisualAction.Kind.SystemTool);
          return v15;
        }

        LOBYTE(v15) = *(*(v19 + 56) + v20);
        sub_226315840(v39);
        sub_22632EE90(v11, type metadata accessor for VisualAction.Kind.SystemTool);
        goto LABEL_22;
      }

      v27 = *(v14 + 1);
      v28 = *(v14 + 6);
      v29 = sub_2262DA498();
      v30 = 0x69746E4565766173;
      if (!v27)
      {
        v30 = 0x6E65635365766173;
      }

      v31 = 0xEA00000000007974;
      if (!v27)
      {
        v31 = 0xE900000000000065;
      }

      v38[0] = v30;
      v38[1] = v31;
      sub_22635091C();
      if (*(v29 + 16))
      {
        v32 = sub_226339494(v39);
        if (v33)
        {
          LOBYTE(v15) = *(*(v29 + 56) + v32);

          goto LABEL_21;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = v37;
        (*(v37 + 32))(v5, v14, v3);
        v23 = sub_22634F33C();
        (*(v22 + 8))(v5, v3);
        return v23;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v18 = sub_22634FBEC();
        (*(*(v18 - 8) + 8))(v14, v18);
        return v15;
      }

      v24 = sub_2262DA498();
      strcpy(v38, "VisualSearch");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      sub_22635091C();
      if (*(v24 + 16))
      {
        v25 = sub_226339494(v39);
        if (v26)
        {
          LOBYTE(v15) = *(*(v24 + 56) + v25);
LABEL_21:
          sub_226315840(v39);
LABEL_22:

          return *&v15;
        }
      }
    }

    sub_226315840(v39);
  }

  return v15;
}

uint64_t sub_22632B2D8(uint64_t a1)
{
  v50 = a1;
  v2 = sub_22634F34C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2263500AC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_22634F47C();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
  v22 = v21;
  sub_22632C3D4(v20, v16);
  if ((*(v22 + 48))(v16, 1, v17) == 1)
  {
    return sub_2262D67D8(v16, &qword_27D792FE0, &unk_226351C10);
  }

  v24 = *(v22 + 32);
  v45 = v19;
  v24(v19, v16, v17);
  v25 = type metadata accessor for VisualAction(0);
  sub_22632EDC0(v50 + *(v25 + 20), v13, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v50 = v22;
    if (EnumCaseMultiPayload)
    {
      v37 = *(v13 + 1);
      v38 = *(v13 + 6);
      v39 = v45;
      v40 = sub_2262DA9E0();
      v41 = 0x69746E4565766173;
      if (!v37)
      {
        v41 = 0x6E65635365766173;
      }

      v42 = 0xEA00000000007974;
      if (!v37)
      {
        v42 = 0xE900000000000065;
      }

      v51[0] = v41;
      v51[1] = v42;
      sub_22635091C();
      if (*(v40 + 16))
      {
        sub_226339494(v52);
        if (v43)
        {

          sub_226315840(v52);
          (*(v50 + 8))(v39, v17);
        }
      }

      sub_226315840(v52);
      return (*(v50 + 8))(v39, v17);
    }

    else
    {
      sub_22632EE28(v13, v10, type metadata accessor for VisualAction.Kind.SystemTool);
      v29 = v45;
      v30 = sub_2262DA9E0();
      (*(v46 + 16))(v7, &v10[*(v8 + 20)], v47);
      sub_2262DB424();
      sub_22635091C();
      if (*(v30 + 16))
      {
        sub_226339494(v52);
        if (v31)
        {
          sub_226315840(v52);
          sub_22632EE90(v10, type metadata accessor for VisualAction.Kind.SystemTool);
          (*(v50 + 8))(v29, v17);
        }
      }

      sub_226315840(v52);
      sub_22632EE90(v10, type metadata accessor for VisualAction.Kind.SystemTool);
      return (*(v50 + 8))(v29, v17);
    }
  }

  else
  {
    v27 = v22;
    if (EnumCaseMultiPayload == 2)
    {
      v33 = v48;
      v32 = v49;
      (*(v48 + 32))(v4, v13, v49);
      sub_22634F33C();
      (*(v33 + 8))(v4, v32);
      return (*(v22 + 8))(v45, v17);
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v22 + 8))(v45, v17);
      v28 = sub_22634FBEC();
      return (*(*(v28 - 8) + 8))(v13, v28);
    }

    v34 = v45;
    v35 = sub_2262DA9E0();
    strcpy(v51, "VisualSearch");
    BYTE5(v51[1]) = 0;
    HIWORD(v51[1]) = -5120;
    sub_22635091C();
    if (*(v35 + 16))
    {
      sub_226339494(v52);
      if (v36)
      {
        sub_226315840(v52);
        (*(v27 + 8))(v34, v17);
      }
    }

    sub_226315840(v52);
    return (*(v27 + 8))(v34, v17);
  }
}

void *sub_22632B9DC(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v46 - v7);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  sub_2262D95CC();
  v10 = v9;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_57:
    a1 = sub_2262DCDA0(0, *(a1 + 16) + 1, 1, a1);
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v12 >= v11 >> 1)
  {
    a1 = sub_2262DCDA0((v11 > 1), v12 + 1, 1, a1);
  }

  *(a1 + 16) = v12 + 1;
  *(a1 + 8 * v12 + 32) = v10;
  sub_22632C3D4(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel, v8);
  v13 = sub_22634F47C();
  v14 = (*(*(v13 - 8) + 48))(v8, 1, v13);
  sub_2262D67D8(v8, &qword_27D792FE0, &unk_226351C10);
  v15 = *(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8);
  v16 = 1.0;
  if (v14 == 1)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = 11.0;
  if (v14 == 1)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 11.0;
  }

  if (!v15)
  {
    v18 = 0.0;
  }

  v57 = v18;
  v58 = v19;
  v59 = 0x4026000000000000;
  v60 = 0;
  if (!v15)
  {
    v16 = 0.0;
  }

  v61 = 0;
  v62 = 0;
  v63 = v16;
  v64 = v17;
  v65 = 0x3FF0000000000000;
  v66 = v16;
  v67 = v17;
  v68 = 0x3FF0000000000000;
  v69 = v16;
  v71 = 0;
  v72 = 0;
  v70 = 0x4008000000000000;
  sub_2262D95CC();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v49 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v45 = v20;
    a1 = sub_2262DCDA0((v21 > 1), v49, 1, a1);
    v20 = v45;
  }

  *(a1 + 16) = v49;
  *(a1 + 32 + 8 * v22) = v20;
  v48 = *(*(a1 + 32) + 16);
  if (!v48)
  {
    return a1;
  }

  v46[1] = v3;

  v4 = 0;
  v53 = v22;
  v54 = v22 + 1;
  v8 = a1;
  v47 = a1;
  while (2)
  {
    v50 = v4 + 1;
    v56 = MEMORY[0x277D84F90];
    sub_2263165F0(0, v49, 0);
    v23 = 0;
    v10 = v56;
    do
    {
      v24 = *(a1 + 8 * v23 + 32);
      if (v4 >= *(v24 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v25 = *(v24 + 8 * v4 + 32);
      v56 = v10;
      v27 = *(v10 + 16);
      v26 = *(v10 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2263165F0((v26 > 1), v27 + 1, 1);
        v10 = v56;
      }

      ++v23;
      *(v10 + 16) = v27 + 1;
      *(v10 + 8 * v27 + 32) = v25;
    }

    while (v54 != v23);
    a1 = 0;
    v55 = v27 + 1;
    v51 = (v10 + 48);
    v52 = v10 + 32;
    do
    {
      if (v27 < 3)
      {
        v29 = 0;
        v30 = 0.0;
LABEL_32:
        v35 = v55 - v29;
        v36 = (v52 + 8 * v29);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37 * v37;
          --v35;
        }

        while (v35);
        goto LABEL_34;
      }

      v30 = 0.0;
      v31 = (v27 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v32 = v51;
      do
      {
        v33 = vmulq_f64(v32[-1], v32[-1]);
        v34 = vmulq_f64(*v32, *v32);
        v30 = v30 + v33.f64[0] + v33.f64[1] + v34.f64[0] + v34.f64[1];
        v32 += 2;
        v31 -= 4;
      }

      while (v31);
      v29 = (v27 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      if (v55 != v29)
      {
        goto LABEL_32;
      }

LABEL_34:
      v38 = sqrt(v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v38 == 0.0)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_2262E8680(v8);
        }

        if (a1 >= v8[2])
        {
          goto LABEL_53;
        }

        v3 = v8 + 4;
        v40 = v8[a1 + 4];
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v8[a1 + 4] = v40;
        if ((v41 & 1) == 0)
        {
          v40 = sub_2262E866C(v40);
          v3[a1] = v40;
        }

        if (v4 >= *(v40 + 2))
        {
          goto LABEL_54;
        }

        *&v40[8 * v4 + 32] = 0;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_2262E8680(v8);
        }

        if (a1 >= v8[2])
        {
          goto LABEL_55;
        }

        v3 = v8 + 4;
        v42 = v8[a1 + 4];
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v8[a1 + 4] = v42;
        if ((v43 & 1) == 0)
        {
          v42 = sub_2262E866C(v42);
          v3[a1] = v42;
        }

        if (v4 >= *(v42 + 2))
        {
          goto LABEL_56;
        }

        *&v42[8 * v4 + 32] = *&v42[8 * v4 + 32] / v38;
      }
    }

    while (a1++ != v53);

    v4 = v50;
    a1 = v47;
    if (v50 != v48)
    {
      continue;
    }

    break;
  }

  return v8;
}

uint64_t sub_22632BF00(void *a1, unint64_t a2)
{
  v4 = [a1 bundleID];
  v5 = sub_22635046C();
  v7 = v6;

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  v10 = sub_22633941C(v5, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v11;
  if (v9[3] < v15)
  {
    sub_2263366F4(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_22633941C(v5, v7);
    if ((v2 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_226350C8C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_6:
    *(a2 + 16) = v9;
    if ((v2 & 1) == 0)
    {
      a2 = v10;
      sub_2262E3118(v10, v5, v7, 0, v9);

      v10 = a2;
    }

    v17 = v9[7];
    v18 = *(v17 + 8 * v10);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v14)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v21 = v10;
    sub_226339F9C();
    v10 = v21;
  }

  *(v17 + 8 * v10) = v19;
  swift_endAccess();

  return 1;
}

uint64_t sub_22632C078(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22632C0D0()
{

  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart;
  v2 = sub_22634EECC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_visualContext;
  v4 = sub_22634F51C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2262D67D8(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel, &qword_27D792FE0, &unk_226351C10);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisualActionRanker(uint64_t a1)
{
  result = qword_28137ED98;
  if (!qword_28137ED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22632C270(uint64_t a1)
{
  sub_22634EECC();
  if (v1 <= 0x3F)
  {
    sub_22634F51C();
    if (v2 <= 0x3F)
    {
      sub_2262BA32C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_22632C3D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22632C444(void *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedVisualAction(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2262DF510(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_22632C4FC(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_22632C4FC(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_226350C0C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedVisualAction(0);
        v8 = sub_22635059C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for RankedVisualAction(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_22632C9E4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_22632C634(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_22632C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v53 = type metadata accessor for RankedVisualAction(0);
  v10 = MEMORY[0x28223BE20](v53);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v42 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v42 - v17);
  v44 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v49 = -v20;
    v50 = v19;
    v22 = a1 - a3;
    v43 = v20;
    v23 = v19 + v20 * a3;
    v52 = a5;
    v54 = v14;
LABEL_6:
    v47 = v21;
    v48 = a3;
    v45 = v23;
    v46 = v22;
    while (1)
    {
      sub_22632EDC0(v23, v18, type metadata accessor for RankedVisualAction);
      sub_22632EDC0(v21, v14, type metadata accessor for RankedVisualAction);
      v24 = *(v18 + *(v53 + 24));
      v25 = *a5;
      if (*(*a5 + 16) && (v26 = sub_22633941C(*v18, v18[1]), (v27 & 1) != 0))
      {
        v28 = *(*(v25 + 56) + 8 * v26);
      }

      else
      {
        v28 = 0;
      }

      v29 = sub_2262DBE60();
      v31 = v30;
      v32 = *(v54 + *(v53 + 24));
      v33 = *a5;
      if (*(*a5 + 16) && (v34 = sub_22633941C(*v54, v54[1]), (v35 & 1) != 0))
      {
        v36 = *(*(v33 + 56) + 8 * v34);
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_2262DBE60();
      if (v24 != v32)
      {
        break;
      }

      if (v28 != v36)
      {

        v39 = v36 < v28;
        goto LABEL_22;
      }

      a5 = v52;
      if (v37 == v29 && v38 == v31)
      {

        v14 = v54;
        sub_22632EE90(v54, type metadata accessor for RankedVisualAction);
        result = sub_22632EE90(v18, type metadata accessor for RankedVisualAction);
LABEL_5:
        a3 = v48 + 1;
        v21 = v47 + v43;
        v22 = v46 - 1;
        v23 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return result;
        }

        goto LABEL_6;
      }

      v39 = sub_226350C4C();

LABEL_23:
      v14 = v54;
      sub_22632EE90(v54, type metadata accessor for RankedVisualAction);
      result = sub_22632EE90(v18, type metadata accessor for RankedVisualAction);
      if ((v39 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v50)
      {
        __break(1u);
        return result;
      }

      v40 = v51;
      sub_22632EE28(v23, v51, type metadata accessor for RankedVisualAction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22632EE28(v40, v21, type metadata accessor for RankedVisualAction);
      v21 += v49;
      v23 += v49;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    v39 = v32 < v24;
LABEL_22:
    a5 = v52;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_22632C9E4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v168 = a5;
  v150 = a1;
  v9 = type metadata accessor for RankedVisualAction(0);
  v159 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v153 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v145 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v169 = (&v145 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v145 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v162 = (&v145 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v22);
  v161 = a3;
  if (a3[1] < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_131:
    a3 = *v150;
    if (!*v150)
    {
      goto LABEL_171;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_133;
  }

  v27 = a3[1];
  v147 = (&v145 - v24);
  v148 = v26;
  v163 = v25;
  v146 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v166 = v18;
  v167 = v9;
  while (1)
  {
    v160 = v27;
    v158 = v29;
    if (v28 + 1 >= v27)
    {
      v59 = v28 + 1;
    }

    else
    {
      v30 = *v161;
      v31 = *(v159 + 72);
      a3 = (*v161 + v31 * (v28 + 1));
      v32 = v147;
      sub_22632EDC0(a3, v147, type metadata accessor for RankedVisualAction);
      v164 = v30;
      v33 = v30 + v31 * v28;
      v34 = v28;
      v35 = v148;
      sub_22632EDC0(v33, v148, type metadata accessor for RankedVisualAction);
      LODWORD(v157) = sub_22632AC40(v32, v35, v168);
      if (v6)
      {
        sub_22632EE90(v35, type metadata accessor for RankedVisualAction);
        sub_22632EE90(v32, type metadata accessor for RankedVisualAction);
      }

      v151 = 0;
      sub_22632EE90(v35, type metadata accessor for RankedVisualAction);
      result = sub_22632EE90(v32, type metadata accessor for RankedVisualAction);
      v149 = v34;
      v36 = v34 + 2;
      v37 = v164 + v31 * (v34 + 2);
      v38 = v160;
      v39 = v31;
      v164 = v31;
      while (v38 != v36)
      {
        v41 = v38;
        v42 = v162;
        sub_22632EDC0(v37, v162, type metadata accessor for RankedVisualAction);
        v43 = v163;
        sub_22632EDC0(a3, v163, type metadata accessor for RankedVisualAction);
        v44 = *(v42 + *(v167 + 24));
        v45 = *v168;
        if (*(*v168 + 16) && (v46 = sub_22633941C(*v42, v42[1]), (v47 & 1) != 0))
        {
          v48 = *(*(v45 + 56) + 8 * v46);
        }

        else
        {
          v48 = 0;
        }

        v49 = sub_2262DBE60();
        v51 = v50;
        v52 = *(v43 + *(v167 + 24));
        v53 = *v168;
        if (*(*v168 + 16) && (v54 = sub_22633941C(*v43, v43[1]), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);
        }

        else
        {
          v56 = 0;
        }

        v57 = sub_2262DBE60();
        if (v44 == v52)
        {
          if (v48 == v56)
          {
            if (v57 == v49 && v58 == v51)
            {

              v40 = 0;
            }

            else
            {
              v40 = sub_226350C4C();
            }
          }

          else
          {

            v40 = v56 < v48;
          }
        }

        else
        {

          v40 = v52 < v44;
        }

        v29 = v158;
        sub_22632EE90(v163, type metadata accessor for RankedVisualAction);
        result = sub_22632EE90(v162, type metadata accessor for RankedVisualAction);
        ++v36;
        v39 = v164;
        v37 += v164;
        a3 = (a3 + v164);
        v18 = v166;
        v38 = v41;
        if ((v157 ^ v40))
        {
          v38 = v36 - 1;
          break;
        }
      }

      v6 = v151;
      v28 = v149;
      if ((v157 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v38 < v149)
      {
        goto LABEL_164;
      }

      if (v149 < v38)
      {
        v60 = v39 * (v38 - 1);
        v61 = v38 * v39;
        v62 = v38;
        v63 = v38;
        v64 = v149;
        v65 = v149 * v39;
        do
        {
          if (v64 != --v63)
          {
            v66 = *v161;
            if (!*v161)
            {
              goto LABEL_168;
            }

            a3 = (v66 + v65);
            sub_22632EE28(v66 + v65, v153, type metadata accessor for RankedVisualAction);
            if (v65 < v60 || a3 >= v66 + v61)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22632EE28(v153, v66 + v60, type metadata accessor for RankedVisualAction);
            v6 = v151;
            v39 = v164;
          }

          ++v64;
          v60 -= v39;
          v61 -= v39;
          v65 += v39;
        }

        while (v64 < v63);
        v59 = v62;
        v18 = v166;
        v9 = v167;
        v28 = v149;
      }

      else
      {
LABEL_40:
        v59 = v38;
        v9 = v167;
      }
    }

    v67 = v161[1];
    if (v59 >= v67)
    {
      goto LABEL_51;
    }

    v160 = v59;
    v110 = __OFSUB__(v59, v28);
    v68 = v59 - v28;
    if (v110)
    {
      goto LABEL_161;
    }

    if (v68 < v146)
    {
      break;
    }

    a3 = v160;
    if (v160 < v28)
    {
      goto LABEL_160;
    }

LABEL_81:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v29 + 2) + 1, 1, v29);
      v29 = result;
    }

    v96 = *(v29 + 2);
    v95 = *(v29 + 3);
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      result = sub_2262DCB70((v95 > 1), v96 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = v97;
    v98 = &v29[16 * v96];
    *(v98 + 4) = v28;
    *(v98 + 5) = a3;
    v154 = a3;
    a3 = *v150;
    if (!*v150)
    {
      goto LABEL_170;
    }

    if (v96)
    {
      while (1)
      {
        v99 = v97 - 1;
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v100 = *(v29 + 4);
          v101 = *(v29 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_100:
          if (v103)
          {
            goto LABEL_149;
          }

          v116 = &v29[16 * v97];
          v118 = *v116;
          v117 = *(v116 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_152;
          }

          v122 = &v29[16 * v99 + 32];
          v124 = *v122;
          v123 = *(v122 + 1);
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_156;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              v99 = v97 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v126 = &v29[16 * v97];
        v128 = *v126;
        v127 = *(v126 + 1);
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_114:
        if (v121)
        {
          goto LABEL_151;
        }

        v129 = &v29[16 * v99];
        v131 = *(v129 + 4);
        v130 = *(v129 + 5);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_154;
        }

        if (v132 < v120)
        {
          goto LABEL_3;
        }

LABEL_121:
        v137 = v99 - 1;
        if (v99 - 1 >= v97)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v161)
        {
          goto LABEL_167;
        }

        v138 = *&v29[16 * v137 + 32];
        v139 = *&v29[16 * v99 + 40];
        sub_22632D6D4(*v161 + *(v159 + 72) * v138, *v161 + *(v159 + 72) * *&v29[16 * v99 + 32], *v161 + *(v159 + 72) * v139, a3, v168);
        if (v6)
        {
        }

        if (v139 < v138)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2262DECA8(v29);
        }

        if (v137 >= *(v29 + 2))
        {
          goto LABEL_146;
        }

        v140 = &v29[16 * v137];
        *(v140 + 4) = v138;
        *(v140 + 5) = v139;
        v170 = v29;
        result = sub_2262DEC1C(v99);
        v29 = v170;
        v97 = *(v170 + 2);
        if (v97 <= 1)
        {
          goto LABEL_3;
        }
      }

      v104 = &v29[16 * v97 + 32];
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_147;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_148;
      }

      v111 = &v29[16 * v97];
      v113 = *v111;
      v112 = *(v111 + 1);
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_150;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_153;
      }

      if (v115 >= v107)
      {
        v133 = &v29[16 * v99 + 32];
        v135 = *v133;
        v134 = *(v133 + 1);
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_157;
        }

        if (v102 < v136)
        {
          v99 = v97 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v27 = v161[1];
    v28 = v154;
    if (v154 >= v27)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v28, v146))
  {
    goto LABEL_162;
  }

  if (v28 + v146 >= v67)
  {
    a3 = v67;
  }

  else
  {
    a3 = (v28 + v146);
  }

  if (a3 < v28)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    result = sub_2262DECA8(v29);
    v29 = result;
LABEL_133:
    v170 = v29;
    v141 = *(v29 + 2);
    if (v141 >= 2)
    {
      while (*v161)
      {
        v142 = *&v29[16 * v141];
        v143 = *&v29[16 * v141 + 24];
        sub_22632D6D4(*v161 + *(v159 + 72) * v142, *v161 + *(v159 + 72) * *&v29[16 * v141 + 16], *v161 + *(v159 + 72) * v143, a3, v168);
        if (v6)
        {
        }

        if (v143 < v142)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2262DECA8(v29);
        }

        if (v141 - 2 >= *(v29 + 2))
        {
          goto LABEL_159;
        }

        v144 = &v29[16 * v141];
        *v144 = v142;
        *(v144 + 1) = v143;
        v170 = v29;
        result = sub_2262DEC1C(v141 - 1);
        v29 = v170;
        v141 = *(v170 + 2);
        if (v141 <= 1)
        {
        }
      }

      goto LABEL_169;
    }
  }

  v59 = v160;
  if (v160 == a3)
  {
LABEL_51:
    a3 = v59;
    if (v59 < v28)
    {
      goto LABEL_160;
    }

    goto LABEL_81;
  }

  v151 = v6;
  v69 = *v161;
  v70 = *(v159 + 72);
  v71 = *v161 + v70 * (v160 - 1);
  v72 = -v70;
  v149 = v28;
  v73 = v28 - v160;
  v164 = v69;
  v152 = v70;
  v74 = v69 + v160 * v70;
  v154 = a3;
LABEL_58:
  v155 = v74;
  v156 = v73;
  v75 = v74;
  v157 = v71;
  v76 = v71;
  while (1)
  {
    sub_22632EDC0(v75, v18, type metadata accessor for RankedVisualAction);
    sub_22632EDC0(v76, v169, type metadata accessor for RankedVisualAction);
    v77 = *(v18 + *(v9 + 24));
    v78 = *v168;
    if (*(*v168 + 16) && (v79 = sub_22633941C(*v18, v18[1]), (v80 & 1) != 0))
    {
      v81 = *(*(v78 + 56) + 8 * v79);
    }

    else
    {
      v81 = 0;
    }

    v82 = sub_2262DBE60();
    v84 = v83;
    v85 = *(v169 + *(v9 + 24));
    v86 = *v168;
    if (*(*v168 + 16))
    {
      v87 = sub_22633941C(*v169, v169[1]);
      v89 = (v88 & 1) != 0 ? *(*(v86 + 56) + 8 * v87) : 0;
    }

    else
    {
      v89 = 0;
    }

    v90 = sub_2262DBE60();
    if (v77 == v85)
    {
      if (v81 == v89)
      {
        if (v90 == v82 && v91 == v84)
        {

          sub_22632EE90(v169, type metadata accessor for RankedVisualAction);
          v18 = v166;
          sub_22632EE90(v166, type metadata accessor for RankedVisualAction);
          v9 = v167;
LABEL_57:
          v71 = v157 + v152;
          v73 = v156 - 1;
          a3 = v154;
          v74 = v155 + v152;
          if (++v160 == v154)
          {
            v6 = v151;
            v29 = v158;
            v28 = v149;
            if (v154 < v149)
            {
              goto LABEL_160;
            }

            goto LABEL_81;
          }

          goto LABEL_58;
        }

        v92 = sub_226350C4C();
      }

      else
      {

        v92 = v89 < v81;
      }
    }

    else
    {

      v92 = v85 < v77;
    }

    v9 = v167;
    sub_22632EE90(v169, type metadata accessor for RankedVisualAction);
    v18 = v166;
    result = sub_22632EE90(v166, type metadata accessor for RankedVisualAction);
    if ((v92 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v164)
    {
      break;
    }

    v93 = v165;
    sub_22632EE28(v75, v165, type metadata accessor for RankedVisualAction);
    swift_arrayInitWithTakeFrontToBack();
    sub_22632EE28(v93, v76, type metadata accessor for RankedVisualAction);
    v76 += v72;
    v75 += v72;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
  return result;
}