void sub_20DFDFFF8(NSObject *a1, char *a2, unint64_t isa, uint64_t a4)
{
  v5 = v4;
  v141 = *MEMORY[0x277D85DE8];
  v10 = sub_20E009234();
  MEMORY[0x28223BE20](v10 - 8);
  v134 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v128 - v16;
  v18 = sub_20E008714();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 + 16);
  v23 = (a4 + 32);
  while (v22)
  {
    v24 = *v23++;
    --v22;
    if (v24 == isa)
    {
      return;
    }
  }

  if (os_variant_has_internal_diagnostics() && (v136 = sub_20E0086A4()) != 0)
  {
    v131 = a1;
    if (qword_2811230C8 != -1)
    {
LABEL_72:
      swift_once();
    }

    v25 = sub_20E009094();
    v26 = __swift_project_value_buffer(v25, qword_2811249D0);

    v135 = v26;
    v27 = sub_20E009074();
    v28 = sub_20E009544();

    v29 = os_log_type_enabled(v27, v28);
    v132 = a2;
    v133 = v5;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v139 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_20DF74468(v131, v132, &v139);
      *(v30 + 12) = 2048;
      *(v30 + 14) = isa;
      _os_log_impl(&dword_20DF62000, v27, v28, "Failure while trying to %s, with status Code: %ld", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      a2 = v132;
      MEMORY[0x20F32B3A0](v32, -1, -1);
      v33 = v30;
      v5 = v133;
      MEMORY[0x20F32B3A0](v33, -1, -1);
    }

    (v19[2].isa)(v21, v5, v18);
    v34 = sub_20E009074();
    v35 = sub_20E009544();
    if (os_log_type_enabled(v34, v35))
    {
      v129 = v35;
      v36 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v139 = v128;
      *&v130 = v36;
      *v36 = 136315138;
      sub_20E0086C4();
      v37 = sub_20E008AF4();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v17, 1, v37) == 1)
      {
        sub_20DFE1030(v17);
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v39 = sub_20E008A54();
        v40 = v54;
        (*(v38 + 8))(v17, v37);
      }

      a2 = v132;
      (v19[1].isa)(v21, v18);
      v55 = sub_20DF74468(v39, v40, &v139);

      v56 = v130;
      *(v130 + 4) = v55;
      _os_log_impl(&dword_20DF62000, v34, v129, "Request : %s", v56, 0xCu);
      v57 = v128;
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x20F32B3A0](v57, -1, -1);
      MEMORY[0x20F32B3A0](v56, -1, -1);

      v5 = v133;
    }

    else
    {

      (v19[1].isa)(v21, v18);
    }

    if (v136[2].isa)
    {
      v58 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974);
      if (v59)
      {
        v60 = (v136[7].isa + 16 * v58);
        v62 = *v60;
        v61 = v60[1];

        v63 = sub_20E009074();
        v64 = a2;
        a2 = sub_20E009544();

        if (os_log_type_enabled(v63, a2))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v139 = v66;
          *v65 = 136315394;
          *(v65 + 4) = sub_20DF74468(v131, v64, &v139);
          *(v65 + 12) = 2080;
          v67 = sub_20DF74468(v62, v61, &v139);

          *(v65 + 14) = v67;
          _os_log_impl(&dword_20DF62000, v63, a2, ">>> %s : requestID: %s", v65, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F32B3A0](v66, -1, -1);
          MEMORY[0x20F32B3A0](v65, -1, -1);
        }

        else
        {
        }
      }
    }

    sub_20E0086C4();
    v69 = sub_20E008AF4();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v15, 1, v69) == 1)
    {
      sub_20DFE1030(v15);
    }

    else
    {
      v71 = sub_20E008AA4();
      v73 = v72;
      (*(v70 + 8))(v15, v69);
      if (v73)
      {

        v74 = sub_20E009074();
        v75 = sub_20E009544();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          a2 = swift_slowAlloc();
          *&v139 = a2;
          *v76 = 136315138;
          v77 = sub_20DF74468(v71, v73, &v139);

          *(v76 + 4) = v77;
          _os_log_impl(&dword_20DF62000, v74, v75, "Query : %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(a2);
          MEMORY[0x20F32B3A0](a2, -1, -1);
          v78 = v76;
          v5 = v133;
          MEMORY[0x20F32B3A0](v78, -1, -1);
        }

        else
        {
        }
      }
    }

    v79 = sub_20E009074();
    v80 = sub_20E009544();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20DF62000, v79, v80, "======== Headers =======", v81, 2u);
      MEMORY[0x20F32B3A0](v81, -1, -1);
    }

    v83 = 0;
    v19 = v136 + 8;
    v84 = 1 << LOBYTE(v136[4].isa);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    isa = v85 & v136[8].isa;
    v17 = ((v84 + 63) >> 6);
    *&v82 = 136315394;
    v130 = v82;
    while (isa)
    {
      v18 = v83;
LABEL_54:
      v86 = __clz(__rbit64(isa));
      isa &= isa - 1;
      v87 = (v18 << 10) | (16 * v86);
      v88 = (v136[6].isa + v87);
      v21 = *v88;
      a2 = v88[1];
      v89 = (v136[7].isa + v87);
      v91 = *v89;
      v90 = v89[1];

      v15 = sub_20E009074();
      v92 = sub_20E009544();
      if (os_log_type_enabled(v15, v92))
      {
        v93 = swift_slowAlloc();
        v131 = v15;
        v15 = v93;
        v132 = swift_slowAlloc();
        *&v139 = v132;
        *v15 = v130;
        v21 = sub_20DF74468(v21, a2, &v139);

        *(v15 + 4) = v21;
        *(v15 + 6) = 2080;
        v94 = sub_20DF74468(v91, v90, &v139);

        *(v15 + 14) = v94;
        v95 = v92;
        v96 = v131;
        _os_log_impl(&dword_20DF62000, v131, v95, "%s: %s", v15, 0x16u);
        v97 = v132;
        swift_arrayDestroy();
        MEMORY[0x20F32B3A0](v97, -1, -1);
        MEMORY[0x20F32B3A0](v15, -1, -1);
      }

      else
      {
      }

      v83 = v18;
      v5 = v133;
    }

    while (1)
    {
      v18 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_72;
      }

      if (v18 >= v17)
      {
        break;
      }

      isa = v19[v18].isa;
      ++v83;
      if (isa)
      {
        goto LABEL_54;
      }
    }

    v98 = sub_20E009074();
    v99 = sub_20E009544();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_20DF62000, v98, v99, "========================", v100, 2u);
      MEMORY[0x20F32B3A0](v100, -1, -1);
    }

    v101 = sub_20E0086E4();
    if (v102 >> 60 != 15)
    {
      v103 = v101;
      v104 = v102;
      v105 = objc_opt_self();
      v106 = sub_20E008B64();
      v137 = 0;
      v107 = [v105 JSONObjectWithData:v106 options:0 error:&v137];

      v108 = v137;
      if (v107)
      {
        sub_20E009654();
        swift_unknownObjectRelease();
        sub_20DF77A64(v138, &v139);
        __swift_project_boxed_opaque_existential_1(&v139, v140);
        v109 = sub_20E009974();
        *&v138[0] = 0;
        v110 = [v105 dataWithJSONObject:v109 options:1 error:v138];
        swift_unknownObjectRelease();
        v111 = *&v138[0];
        if (v110)
        {
          v112 = sub_20E008B84();
          v114 = v113;

          sub_20E009214();
          v115 = sub_20E0091F4();
          if (v116)
          {
            v117 = v116;
            v118 = v115;
            v119 = sub_20E009074();
            v120 = sub_20E009544();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              *&v138[0] = v122;
              *v121 = 136315138;
              v123 = sub_20DF74468(v118, v117, v138);

              *(v121 + 4) = v123;
              _os_log_impl(&dword_20DF62000, v119, v120, "Body : %s", v121, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v122);
              MEMORY[0x20F32B3A0](v122, -1, -1);
              MEMORY[0x20F32B3A0](v121, -1, -1);
              sub_20DF64DE8(v103, v104);
              sub_20DF67FFC(v112, v114);
            }

            else
            {
              sub_20DF64DE8(v103, v104);
              sub_20DF67FFC(v112, v114);
            }
          }

          else
          {
            sub_20DF64DE8(v103, v104);
            sub_20DF67FFC(v112, v114);
          }
        }

        else
        {
          v126 = v111;
          v127 = sub_20E008A34();

          swift_willThrow();
          sub_20DF64DE8(v103, v104);
        }

        __swift_destroy_boxed_opaque_existential_0(&v139);
      }

      else
      {
        v124 = v108;
        v125 = sub_20E008A34();

        swift_willThrow();
        sub_20DF64DE8(v103, v104);
      }
    }
  }

  else
  {
    v41 = sub_20E0086A4();
    if (v41)
    {
      v42 = v41;
      if (*(v41 + 16) && (v43 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974), (v44 & 1) != 0))
      {
        v45 = (*(v42 + 56) + 16 * v43);
        v47 = *v45;
        v46 = v45[1];

        if (qword_2811230C8 != -1)
        {
          swift_once();
        }

        v48 = sub_20E009094();
        __swift_project_value_buffer(v48, qword_2811249D0);

        v136 = sub_20E009074();
        v49 = sub_20E009544();

        if (os_log_type_enabled(v136, v49))
        {
          v50 = a1;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v139 = v52;
          *v51 = 136315394;
          *(v51 + 4) = sub_20DF74468(v50, a2, &v139);
          *(v51 + 12) = 2080;
          v53 = sub_20DF74468(v47, v46, &v139);

          *(v51 + 14) = v53;
          _os_log_impl(&dword_20DF62000, v136, v49, ">>> %s : requestID: %s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F32B3A0](v52, -1, -1);
          MEMORY[0x20F32B3A0](v51, -1, -1);
        }

        else
        {

          v68 = v136;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_20DFE0F98()
{
  v0 = sub_20E0086A4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (*(v0 + 16) && (v2 = sub_20DFB85D0(0x7365757165522D58, 0xEB00000000644974), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 16 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_20DFE1030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFE1098()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_20E009964();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v1 = sub_20E009964();
  MEMORY[0x20F32A4B0](v1);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  v2 = sub_20E009964();
  MEMORY[0x20F32A4B0](v2);

  return v4;
}

uint64_t sub_20DFE11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v10 = sub_20E008E54();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  type metadata accessor for RecordsResponse(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = type metadata accessor for GetRequest(0);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_20E008C14();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 176) = *a5;

  return MEMORY[0x2822009F8](sub_20DFE1344, 0, 0);
}

uint64_t sub_20DFE1344()
{
  v39 = v0;
  sub_20DFE2818();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  JWToken.init(jwt:)(&v38, v3);
  if (v4)
  {
LABEL_8:

    v10 = *(v0 + 8);

    return v10();
  }

  v5 = JWToken.expired.getter();

  if (v5)
  {
    if (qword_27C8520B0 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_27C862770);
    v7 = sub_20E009074();
    v8 = sub_20E009544();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20DF62000, v7, v8, "Authorization Token expired. Retry after refreshing token", v9, 2u);
      MEMORY[0x20F32B3A0](v9, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_27C852030 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 176);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = qword_27C862640;
  sub_20DFE7E38();
  v17 = sub_20E0091C4();

  v37 = [v16 codeServiceWithName:v17 databaseScope:1];
  *(v0 + 152) = v37;

  sub_20DF84E08(v13);
  v35 = sub_20E008BA4();
  v36 = v18;
  (*(v14 + 8))(v13, v15);
  v19 = 0xEA0000000000746ELL;
  v20 = 0x696F506567617355;
  if (v12 != 1)
  {
    v20 = 0x6D75536567617355;
    v19 = 0xEC0000007972616DLL;
  }

  if (v12)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x6C61767265746E49;
  }

  if (v12)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xED00006B636F6C42;
  }

  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  v25 = *(v0 + 48);
  v34 = *(v0 + 24);
  v26 = swift_task_alloc();
  *(v26 + 16) = v34;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  *(v26 + 56) = v35;
  *(v26 + 64) = v36;
  *(v26 + 72) = v21;
  *(v26 + 80) = v22;
  sub_20DFE2C24(&qword_27C852AA0, type metadata accessor for GetRequest, &unk_20E00DA78);
  sub_20E008FD4();

  if (qword_27C8520B0 != -1)
  {
    swift_once();
  }

  v27 = sub_20E009094();
  __swift_project_value_buffer(v27, qword_27C862770);
  v28 = sub_20E009074();
  v29 = sub_20E009554();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20DF62000, v28, v29, "Fetching Utility Records from Dropbox", v30, 2u);
    MEMORY[0x20F32B3A0](v30, -1, -1);
  }

  v31 = swift_task_alloc();
  *(v0 + 160) = v31;
  *v31 = v0;
  v31[1] = sub_20DFE18DC;
  v32 = *(v0 + 120);
  v33 = *(v0 + 104);

  return sub_20DF964DC(v33, v32, v37);
}

uint64_t sub_20DFE18DC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_20DFE1D88;
  }

  else
  {
    v2 = sub_20DFE19F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20DFE19F0()
{
  v1 = v0[21];
  sub_20DFE2054(*(v0[13] + 32), *(v0[13] + 40));
  if (v1)
  {
    v2 = v0[19];
    v3 = v0[13];
    sub_20DFE2B78(v0[15], type metadata accessor for GetRequest);

    sub_20DFE2B78(v3, type metadata accessor for RecordsResponse);

    v4 = v0[1];
  }

  else
  {
    v5 = v0[13];
    v6 = *v5;
    v7 = *(*v5 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = v0[10];
      v34 = MEMORY[0x277D84F90];
      sub_20E0097B4();
      sub_20DFE2BD8();
      v12 = *(v9 + 16);
      v11 = v9 + 16;
      v10 = v12;
      v13 = v6 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v33 = *(v11 + 56);
      do
      {
        v14 = v0[11];
        v15 = v0[12];
        v16 = v0[9];
        v10(v15, v13, v16);
        v10(v14, v15, v16);
        sub_20E009594();
        (*(v11 - 8))(v15, v16);
        sub_20E009794();
        sub_20E0097C4();
        sub_20E0097D4();
        sub_20E0097A4();
        v13 += v33;
        --v7;
      }

      while (v7);
      v17 = v34;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v35 = v8;
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(v17 + 16);
        if (v19 >= v20)
        {
LABEL_23:
          __break(1u);
          return;
        }

        v21 = *(v17 + 32 + 8 * v19);
        v22 = v19 + 1;
        if (!v21)
        {
          break;
        }

LABEL_16:
        v19 = v22;
        v25 = v21;
        MEMORY[0x20F32A5D0]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E009444();
        }

        sub_20E009464();
        v8 = v35;
        if (v19 == v18)
        {
          goto LABEL_19;
        }
      }

      v23 = (v17 + 40 + 8 * v19);
      while (v18 != v22)
      {
        if (v20 == v22)
        {
          goto LABEL_23;
        }

        v24 = *v23++;
        v21 = v24;
        ++v22;
        if (v24)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_19:
    v26 = v0[19];
    v27 = v0[15];
    v28 = v0[13];
    v29 = v0[2];

    sub_20DFE2B78(v27, type metadata accessor for GetRequest);
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    sub_20DF67FA8(v30, v31);
    sub_20DFE2B78(v28, type metadata accessor for RecordsResponse);
    *v29 = v8;
    sub_20DF67FFC(0, 0xC000000000000000);
    *(v29 + 8) = v30;
    *(v29 + 16) = v31;
    *(v29 + 24) = v32;

    v4 = v0[1];
  }

  v4();
}

uint64_t sub_20DFE1D88()
{
  v1 = *(v0 + 120);

  sub_20DFE2B78(v1, type metadata accessor for GetRequest);

  v2 = *(v0 + 8);

  return v2();
}

void sub_20DFE1E50(uint64_t a1, uint64_t a2)
{
  if ((sub_20DFE7E38() - 1) >= 2u)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v4 = sub_20E0091C4();
  v5 = [v3 initWithContainerIdentifier:v4 environment:v2];

  qword_27C862638 = v5;
}

void sub_20DFE1EE4()
{
  if (qword_27C852028 != -1)
  {
    swift_once();
  }

  v0 = qword_27C862638;
  v1 = objc_allocWithZone(MEMORY[0x277CBC218]);
  v2 = v0;
  v3 = [v1 initWithContainerID_];

  qword_27C862640 = v3;
}

uint64_t sub_20DFE1F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  v18 = a1[3];
  v19 = a1[4];
  sub_20DF67FA8(a5, a6);
  sub_20DF67FFC(v18, v19);
  a1[3] = a5;
  a1[4] = a6;

  a1[5] = a7;
  a1[6] = a8;

  a1[7] = a9;
  a1[8] = a10;
  return result;
}

void sub_20DFE2054(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        if (qword_27C8520B0 != -1)
        {
          swift_once();
        }

        v22 = sub_20E009094();
        __swift_project_value_buffer(v22, qword_27C862770);
        v23 = sub_20E009074();
        v24 = sub_20E009544();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_20DF62000, v23, v24, "CKFunction | Internal Token Validation Server Error", v25, 2u);
          MEMORY[0x20F32B3A0](v25, -1, -1);
        }

        type metadata accessor for NetworkError(0);
        sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v26 = 500;
        goto LABEL_28;
      }

      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v2 = sub_20E009094();
      __swift_project_value_buffer(v2, qword_27C862770);
      v3 = sub_20E009074();
      v4 = sub_20E009544();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_20DF62000, v3, v4, "CKFunction | Bad Request Error", v5, 2u);
        MEMORY[0x20F32B3A0](v5, -1, -1);
      }

LABEL_27:

      type metadata accessor for NetworkError(0);
      sub_20DFE2C24(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    if (a1 == 5)
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v9 = sub_20E009094();
      __swift_project_value_buffer(v9, qword_27C862770);
      v3 = sub_20E009074();
      v10 = sub_20E009544();
      if (os_log_type_enabled(v3, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_20DF62000, v3, v10, "CKFunction | CloudKit CKRPC Server Error", v11, 2u);
        MEMORY[0x20F32B3A0](v11, -1, -1);
      }

      goto LABEL_27;
    }

LABEL_23:
    if (qword_27C8520B0 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_27C862770);
    v3 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v3, v13, "CKFunction | Uncaught Error", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    goto LABEL_27;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v6 = sub_20E009094();
      __swift_project_value_buffer(v6, qword_27C862770);
      v3 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v3, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v3, v7, "CKFunction | Token Invalid", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }
    }

    else
    {
      if (qword_27C8520B0 != -1)
      {
        swift_once();
      }

      v19 = sub_20E009094();
      __swift_project_value_buffer(v19, qword_27C862770);
      v3 = sub_20E009074();
      v20 = sub_20E009544();
      if (os_log_type_enabled(v3, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_20DF62000, v3, v20, "CKFunction | Subscription Not found. Proceed to offboarding", v21, 2u);
        MEMORY[0x20F32B3A0](v21, -1, -1);
      }
    }

    goto LABEL_27;
  }

  if (qword_27C8520B0 != -1)
  {
    swift_once();
  }

  v15 = sub_20E009094();
  __swift_project_value_buffer(v15, qword_27C862770);
  v16 = sub_20E009074();
  v17 = sub_20E009554();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20DF62000, v16, v17, "No error while fetching data from CloudKit", v18, 2u);
    MEMORY[0x20F32B3A0](v18, -1, -1);
  }
}

void sub_20DFE2818()
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_281123118 != -1)
  {
    swift_once();
  }

  if (byte_281124A78 == 1)
  {
    keyExistsAndHasValidFormat = 0;
    v0 = sub_20E0091C4();
    v1 = sub_20E0091C4();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

    if (keyExistsAndHasValidFormat)
    {
      if (AppBooleanValue)
      {
        if (qword_27C8520B0 != -1)
        {
          swift_once();
        }

        v3 = sub_20E009094();
        __swift_project_value_buffer(v3, qword_27C862770);
        v4 = sub_20E009074();
        v5 = sub_20E009554();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_20DF62000, v4, v5, "Dropbox Error Inducer Enabled", v6, 2u);
          MEMORY[0x20F32B3A0](v6, -1, -1);
        }

        v7 = sub_20E009074();
        v8 = sub_20E009554();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20DF62000, v7, v8, "Dropbox Error Inducer | Checking induced error type.", v9, 2u);
          MEMORY[0x20F32B3A0](v9, -1, -1);
        }

        v17 = 0;
        v10 = sub_20E0091C4();
        v11 = sub_20E0091C4();
        CFPreferencesGetAppIntegerValue(v10, v11, &v17);

        if (!v17 || (sub_20DF8F8C8(), (v13 & 0x100) != 0))
        {
          v14 = sub_20E009074();
          v15 = sub_20E009554();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_20DF62000, v14, v15, "Dropbox Error Inducer type not found in defaults!!", v16, 2u);
            MEMORY[0x20F32B3A0](v16, -1, -1);
          }
        }

        else
        {
          sub_20DFE2054(v12, v13 & 1);
        }
      }
    }
  }
}

uint64_t sub_20DFE2B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20DFE2BD8()
{
  result = qword_27C853478;
  if (!qword_27C853478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C853478);
  }

  return result;
}

uint64_t sub_20DFE2C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20DFE2C6C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = sub_20E009234();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_20E008B64();
  *&v27 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:&v27];

  v9 = v27;
  if (v8)
  {
    sub_20E009654();
    swift_unknownObjectRelease();
    sub_20DF77A64(v26, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v28);
    v10 = sub_20E009974();
    *&v26[0] = 0;
    v11 = [v6 dataWithJSONObject:v10 options:1 error:v26];
    swift_unknownObjectRelease();
    v12 = *&v26[0];
    if (v11)
    {
      v13 = sub_20E008B84();
      v15 = v14;

      sub_20E009214();
      v16 = sub_20E009224();
      (*(v3 + 8))(v5, v2);
      v17 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v18 = sub_20E008B64();
      v19 = [v17 initWithData:v18 encoding:v16];

      sub_20DF67FFC(v13, v15);
      __swift_destroy_boxed_opaque_existential_0(&v27);
      result = v19;
      if (v19)
      {
        return result;
      }
    }

    else
    {
      v23 = v12;
      v24 = sub_20E008A34();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(&v27);
    }
  }

  else
  {
    v21 = v9;
    v22 = sub_20E008A34();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_20DFE2F10()
{
  v0 = sub_20E008CD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008C74();
  v5 = v4;
  sub_20E008C94();
  sub_20E008C74();
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  v9 = v5 - v7;
  if (COERCE__INT64(fabs(v5 - v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v9, 3600 * (v9 / 3600)))
  {
    v10 = v9 % 3600;
    v14 = v9 / 3600;
    v15 = sub_20E009964();
    v16 = v11;
    MEMORY[0x20F32A4B0](14952, 0xE200000000000000);
    v14 = v10 / 60;
    v12 = sub_20E009964();
    MEMORY[0x20F32A4B0](v12);

    MEMORY[0x20F32A4B0](109, 0xE100000000000000);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_20DFE30F8()
{
  v0 = sub_20E008D44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20E008DB4();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E008D34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_20E008D14();
  v12 = sub_20E008D24();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  (*(v1 + 104))(v3, *MEMORY[0x277CC9810], v0);
  sub_20E008D54();
  (*(v1 + 8))(v3, v0);
  v13 = sub_20E008D74();
  (*(v4 + 8))(v6, v17);
  [v11 setCalendar_];

  v14 = sub_20E0091C4();
  [v11 setDateFormat_];

  return v11;
}

uint64_t URLRequest.addBAAHeaders()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_20E009234();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_20E008CD4();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[15] = v5;
  *v5 = v2;
  v5[1] = sub_20DFE3528;

  return sub_20DFE4F70();
}

uint64_t sub_20DFE3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = v3;
  v6 = *v4;
  v5[16] = a1;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20DFE3694, 0, 0);
  }
}

uint64_t sub_20DFE3694()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v44 = v0[9];
  v8 = v0[7];
  v7 = v0[8];
  v9 = sub_20E008714();
  v42 = *(v9 - 8);
  v43 = v9;
  (*(v42 + 16))(v8, v7);
  v10 = v1;

  sub_20DFEEF70();
  sub_20E009254();

  sub_20E008C94();
  sub_20E008C74();
  v12 = v11;
  (*(v2 + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D839F8];
  *(v13 + 16) = xmmword_20E00AB50;
  v15 = MEMORY[0x277D83A80];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v12 * 1000.0;
  v16 = sub_20E009204();
  v18 = v17;
  sub_20E0086D4();
  sub_20E009214();
  v19 = sub_20E0091E4();
  v21 = v20;
  (*(v6 + 8))(v5, v44);
  if (v21 >> 60 == 15)
  {
    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v22 = sub_20E009094();
    __swift_project_value_buffer(v22, qword_27C862650);
    v23 = sub_20E009074();
    v24 = sub_20E009544();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DF62000, v23, v24, "String encoding failed. Returning empty string", v25, 2u);
      MEMORY[0x20F32B3A0](v25, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = sub_20E008B74();
    v27 = v28;
    sub_20DF64DE8(v19, v21);
  }

  v29 = v0[18];
  v30 = v0[16];

  MEMORY[0x20F32A4B0](v16, v18);

  v31 = sub_20DFE3B80(v26, v27);
  v33 = v32;
  v34 = sub_20DFE40A0(v31, v32, v30);
  v36 = v0[16];
  if (v29)
  {
    (*(v42 + 8))(v0[7], v43);

    sub_20DF67FFC(v31, v33);
  }

  else
  {
    v38 = v34;
    v39 = v31;
    v40 = v35;
    sub_20DF67FFC(v39, v33);
    sub_20E008B74();

    MEMORY[0x20F32A4B0](58, 0xE100000000000000);

    MEMORY[0x20F32A4B0](v16, v18);

    sub_20E0086D4();

    sub_20E0086D4();

    sub_20DF67FFC(v38, v40);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_20DFE3B80(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853490, &qword_20E012B40);
  if (swift_dynamicCast())
  {
    sub_20DFE4B08(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_20E0089C4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_20DF66E28(__src, &qword_27C853498, &qword_20E012B48);
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
    v4 = sub_20E009784();
  }

  sub_20DFE4424(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
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
  *&__src[0] = sub_20DFE4A00(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_20DFE44EC(sub_20DFE4AA0, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_20E008B44();
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

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_20DFB9204(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_20E009314();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_20E009344();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_20E009784();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_20DFB9204(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_20E009324();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_20E008B54();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_20E008B54();
    sub_20DF64DE8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_20DF64DE8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_20DF67FA8(*&__src[0], *(&__src[0] + 1));

  sub_20DF67FFC(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_20DFE40A0(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_20E008B64();
  Signature = SecKeyCreateSignature(a3, v4, v5, error);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_20E008B84();
  }

  else
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862698);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_beginAccess();
      v14 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_20DFE4378();
        swift_allocError();
        *v15 = v14;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v12 + 4) = v16;
      *v13 = v17;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to Create Signature: %@", v12, 0xCu);
      sub_20DF66E28(v13, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v13, -1, -1);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    swift_beginAccess();
    v18 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_20DFE4378();
      v8 = swift_allocError();
      *v19 = v18;
    }

    else
    {
      v8 = 0;
    }

    sub_20DFE43D0();
    swift_allocError();
    *v20 = v8;
    *(v20 + 8) = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_20DFE4348(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

unint64_t sub_20DFE4378()
{
  result = qword_27C853480;
  if (!qword_27C853480)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853480);
  }

  return result;
}

unint64_t sub_20DFE43D0()
{
  result = qword_27C853488;
  if (!qword_27C853488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853488);
  }

  return result;
}

uint64_t *sub_20DFE4424@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_20DFF2358(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_20E008944();
      swift_allocObject();
      v8 = sub_20E0088F4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_20E008B34();
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

char *sub_20DFE44EC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_20DF67FFC(v7, v6);
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

    sub_20DF67FFC(v7, v6);
    *v4 = xmmword_20E00D810;
    sub_20DF67FFC(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_20E008904() && __OFSUB__(v7, sub_20E008934()))
      {
LABEL_26:
        __break(1u);
      }

      sub_20E008944();
      swift_allocObject();
      v14 = sub_20E0088E4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_20DFE48FC(v7, v7 >> 32, a1);

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

    sub_20DF67FFC(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_20E00D810;
    sub_20DF67FFC(0, 0xC000000000000000);
    sub_20E008B04();
    result = sub_20DFE48FC(*(v17 + 2), *(v17 + 3), a1);
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

void *sub_20DFE4890(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_20DFE48FC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_20E008904();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_20E008934();
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

  v12 = sub_20E008924();
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

uint64_t sub_20DFE49B0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_20E009724();
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

uint64_t sub_20DFE4A00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_20DFF2338(result);
    }

    else
    {
      sub_20E008944();
      swift_allocObject();
      sub_20E008914();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_20E008B34();
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

void *sub_20DFE4AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_20DFE4890(sub_20DFE4B20, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_20DFE4B08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20DFE4B5C(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_20E0097B4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E009804())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F32A900](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_20E009794();
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20E009804();
    sub_20E0097B4();
  }

  return v9;
}

uint64_t sub_20DFE4CC4(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20E0097B4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20DF6981C(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20E009794();
    sub_20E0097C4();
    sub_20E0097D4();
    sub_20E0097A4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t sub_20DFE4DB0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_20E009714();

      v7 = 0xD00000000000001CLL;
      if (a1)
      {
LABEL_9:
        swift_getErrorValue();
        v3 = sub_20E0099E4();
        v5 = v4;
LABEL_11:
        MEMORY[0x20F32A4B0](v3, v5);

        return v7;
      }
    }

    else
    {
      sub_20E009714();

      v7 = 0xD000000000000021;
      if (a1)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    sub_20E009714();

    v7 = 0xD000000000000024;
    if (a1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000033;
  }
}

uint64_t sub_20DFE4F70()
{

  return MEMORY[0x2822009F8](sub_20DFE4FFC, 0, 0);
}

uint64_t sub_20DFE4FFC()
{
  *(v0 + 440) = 0;
  v1 = sub_20E0091C4();
  v2 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 440));

  if (*(v0 + 440) && AppBooleanValue)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862698);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "User enabled BAA Auth to include Device identifiers", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20E00AB50;
    *(v8 + 32) = sub_20E0091D4();
    *(v8 + 40) = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00D7A0;
  *(inited + 32) = sub_20E0091D4();
  *(inited + 40) = v11;
  v12 = sub_20DFE6814();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 80) = sub_20E0091D4();
  *(inited + 88) = v14;
  v15 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = sub_20E0091D4();
  v16 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v17;
  *(inited + 144) = 60;
  *(inited + 176) = sub_20E0091D4();
  *(inited + 216) = v16;
  *(inited + 184) = v18;
  *(inited + 192) = 1440;
  *(inited + 224) = sub_20E0091D4();
  *(inited + 232) = v19;
  v20 = MEMORY[0x20F32AD20]();
  *(inited + 264) = v15;
  *(inited + 240) = v20 ^ 1;
  *(inited + 272) = sub_20E0091D4();
  *(inited + 280) = v21;
  v22 = sub_20DFE68E8();
  type metadata accessor for SecAccessControl(0);
  *(inited + 312) = v23;
  *(inited + 288) = v22;
  *(inited + 320) = sub_20E0091D4();
  *(inited + 328) = v24;
  *(inited + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  *(inited + 336) = v8;
  v25 = sub_20DF74F30(inited);
  *(v0 + 408) = v25;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852598, &unk_20E00C120);
  swift_arrayDestroy();
  v26 = swift_task_alloc();
  *(v0 + 416) = v26;
  *(v26 + 16) = v25;
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_20DFE5544;

  return MEMORY[0x2822008A0](v0 + 384, 0, 0, 0xD00000000000001ELL, 0x800000020E0172C0, sub_20DFE6BB8, v26, &type metadata for BAAValues);
}

uint64_t sub_20DFE5544()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_20DFE572C;
  }

  else
  {

    v2 = sub_20DFE569C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DFE569C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

uint64_t sub_20DFE572C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DFE57C4()
{
  v0 = sub_20E009574();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E009564();
  MEMORY[0x28223BE20](v4);
  v5 = sub_20E0090B4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_20DFC4D38();
  sub_20E0090A4();
  v7[1] = MEMORY[0x277D84F90];
  sub_20DFE7104(&qword_27C852F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F38, qword_20E0106F0);
  sub_20DFE70A0();
  sub_20E009664();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_20E009584();
  qword_27C862648 = result;
  return result;
}

void sub_20DFE59FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  if (qword_27C852038 != -1)
  {
    swift_once();
  }

  sub_20DFE5C1C(a2);
  v8 = sub_20E009154();

  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_20DFE6BC0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DFE62B8;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v11);
}

uint64_t sub_20DFE5C1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852580, &qword_20E00C108);
    v2 = sub_20E009834();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20DF6981C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_20DF77A64(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20DF77A64(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20DF77A64(v31, v32);
    result = sub_20E009694();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_20DF77A64(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_20DFE5EE4(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a2)
  {
    v5 = a1;
    v6 = sub_20DFE4CC4(a2);
    if (v6)
    {
      v7 = v6;
      if (v6 >> 62)
      {
        if (sub_20E009804())
        {
          goto LABEL_6;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v8 = sub_20DFE6C6C(v7);
        v10 = v9;

        sub_20E008B74();
        sub_20DF67FFC(v8, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
        return sub_20E0094A4();
      }
    }

    else
    {
    }
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v12 = sub_20E009094();
  __swift_project_value_buffer(v12, qword_27C862698);
  v13 = a3;
  v14 = sub_20E009074();
  v15 = sub_20E009544();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a3)
    {
      v18 = a3;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_20DF62000, v14, v15, "Unable to Issue Client Certificate. underlying error: %@", v16, 0xCu);
    sub_20DF66E28(v17, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v17, -1, -1);
    MEMORY[0x20F32B3A0](v16, -1, -1);
  }

  sub_20DFE43D0();
  v21 = swift_allocError();
  *v22 = a3;
  *(v22 + 8) = 2;
  swift_willThrow();
  v23 = a3;
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v24 = sub_20E009094();
  __swift_project_value_buffer(v24, qword_27C862698);
  v25 = v21;
  v26 = sub_20E009074();
  v27 = sub_20E009544();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_20DF62000, v26, v27, "Error while generating BAA key and certificate %@", v28, 0xCu);
    sub_20DF66E28(v29, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v29, -1, -1);
    MEMORY[0x20F32B3A0](v28, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);
  return sub_20E009494();
}

uint64_t sub_20DFE62B8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_20E009424();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void *sub_20DFE636C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_20E008B64();
  v7[0] = 0;
  v3 = [v2 compressedDataUsingAlgorithm:3 error:v7];

  v4 = v7[0];
  if (v3)
  {
    v5 = sub_20E008B84();
  }

  else
  {
    v5 = v4;
    sub_20E008A34();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_20DFE6440(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534B0, &qword_20E012D38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFE72C4();
  sub_20E009A84();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DF756D4(&qword_2811230A8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_20E009944();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20DFE65CC()
{
  sub_20E009A34();
  sub_20E009194();
  return sub_20E009A54();
}

uint64_t sub_20DFE6630(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();
  return sub_20E009A54();
}

uint64_t sub_20DFE667C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_20E009844();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_20DFE66FC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_20E009844();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_20DFE6754(uint64_t a1)
{
  v2 = sub_20DFE72C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFE6790(uint64_t a1)
{
  v2 = sub_20DFE72C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFE67CC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFE7318(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_20DFE6814()
{
  sub_20E009714();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_20E0091D4();
  v4 = v3;

  MEMORY[0x20F32A4B0](v2, v4);

  return 0xD00000000000002ELL;
}

SecAccessControlRef sub_20DFE68E8()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, error);
  if (!result)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v1 = sub_20E009094();
    __swift_project_value_buffer(v1, qword_27C862698);
    v2 = sub_20E009074();
    v3 = sub_20E009544();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_beginAccess();
      v6 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_20DFE7104(&qword_27C853480, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        swift_allocError();
        *v7 = v6;
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v4 + 4) = v8;
      *v5 = v9;
      _os_log_impl(&dword_20DF62000, v2, v3, "Unable to create access Control object for BAA %@", v4, 0xCu);
      sub_20DF66E28(v5, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v5, -1, -1);
      MEMORY[0x20F32B3A0](v4, -1, -1);
    }

    swift_beginAccess();
    v10 = error[0];
    if (error[0])
    {
      type metadata accessor for CFError(0);
      sub_20DFE7104(&qword_27C853480, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v11 = swift_allocError();
      *v12 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_20DFE43D0();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_20DFE6BC0(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534A0, &unk_20E012B58);

  return sub_20DFE5EE4(a1, a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_20DFE6C6C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_20E009804();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_20DF749AC(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x20F32A900](v6, a1);
        v8 = SecCertificateCopyData(v7);
        v9 = sub_20E008B84();
        v11 = v10;

        v12 = sub_20E008B74();
        v14 = v13;
        sub_20DF67FFC(v9, v11);
        swift_unknownObjectRelease();
        v16 = *(v42 + 16);
        v15 = *(v42 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_20DF749AC((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        *(v42 + 16) = v16 + 1;
        v17 = v42 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v4 != v6);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        v20 = SecCertificateCopyData(v19);
        v21 = sub_20E008B84();
        v23 = v22;

        v24 = sub_20E008B74();
        v26 = v25;
        sub_20DF67FFC(v21, v23);

        v28 = *(v42 + 16);
        v27 = *(v42 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_20DF749AC((v27 > 1), v28 + 1, 1);
        }

        *(v42 + 16) = v28 + 1;
        v29 = v42 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        ++v18;
        --v4;
      }

      while (v4);
    }

    v2 = v1;
  }

  sub_20E008774();
  swift_allocObject();
  sub_20E008764();
  sub_20DFE704C();
  v30 = sub_20E008754();
  if (v2)
  {

    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v34 = sub_20E009094();
    __swift_project_value_buffer(v34, qword_27C862698);
    v35 = v2;
    v36 = sub_20E009074();
    v41 = sub_20E009544();

    if (os_log_type_enabled(v36, v41))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_20DF62000, v36, v41, "Error while encoding Cert Chain for BAA. %@", v37, 0xCu);
      sub_20DF66E28(v38, &qword_27C8521E0, &unk_20E011080);
      MEMORY[0x20F32B3A0](v38, -1, -1);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v32 = v30;
    v33 = v31;

    v41 = sub_20DFE636C(v32, v33);
    sub_20DF67FFC(v32, v33);
  }

  return v41;
}

unint64_t sub_20DFE704C()
{
  result = qword_27C8534A8;
  if (!qword_27C8534A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534A8);
  }

  return result;
}

unint64_t sub_20DFE70A0()
{
  result = qword_27C852F40;
  if (!qword_27C852F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852F38, qword_20E0106F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F40);
  }

  return result;
}

uint64_t sub_20DFE7104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DFE715C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFE71A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_19HomeUtilityServices15BAASigningErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_20DFE7210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DFE7258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_20DFE729C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_20DFE72C4()
{
  result = qword_27C8534B8;
  if (!qword_27C8534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534B8);
  }

  return result;
}

void *sub_20DFE7318(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534C0, &qword_20E012D40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFE72C4();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DF756D4(&qword_2811230A0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_20E0098C4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_20DFE74D4()
{
  result = qword_27C8534C8;
  if (!qword_27C8534C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534C8);
  }

  return result;
}

unint64_t sub_20DFE752C()
{
  result = qword_27C8534D0;
  if (!qword_27C8534D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534D0);
  }

  return result;
}

unint64_t sub_20DFE7584()
{
  result = qword_27C8534D8;
  if (!qword_27C8534D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534D8);
  }

  return result;
}

uint64_t sub_20DFE75D8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20E009804())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v23 = MEMORY[0x277D84F90];
    sub_20DF749AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F32A900](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_20DF749AC((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_20DFE7788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[0] = a1;
  v19[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_20DF749EC(0, v10, 0);
  v11 = v21;
  for (i = (a3 + 56); ; i += 4)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    v15 = *i;
    v20[0] = *(i - 3);
    v20[1] = v13;
    v20[2] = v14;
    v20[3] = v15;

    (v19[0])(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_20DF749EC((v16 > 1), v17 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v17 + 1;
    sub_20DFE8CC8(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFE7968()
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

uint64_t sub_20DFE7A18(uint64_t a1)
{
  sub_20E009194();
}

uint64_t sub_20DFE7AB4(uint64_t a1)
{
  sub_20E009A34();
  sub_20E009194();

  return sub_20E009A54();
}

unint64_t sub_20DFE7B60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20DFE8E08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20DFE7B90(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C61;
  v3 = 0x6E7265746E496171;
  v4 = 1953654115;
  if (*v1 != 2)
  {
    v4 = 1685025392;
  }

  if (*v1)
  {
    v3 = 7759204;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_20DFE7C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E0, &qword_20E012EB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20E012EA0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 104) = result;
  qword_281124A80 = v0;
  return result;
}

uint64_t sub_20DFE7D00(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 184);
  v4 = *(a2 + 216);
  v23[10] = *(a2 + 200);
  v23[11] = v4;
  v23[12] = *(a2 + 232);
  v5 = *(a2 + 120);
  v6 = *(a2 + 152);
  v23[6] = *(a2 + 136);
  v23[7] = v6;
  v23[8] = *(a2 + 168);
  v23[9] = v3;
  v7 = *(a2 + 56);
  v8 = *(a2 + 88);
  v23[2] = *(a2 + 72);
  v23[3] = v8;
  v23[4] = *(a2 + 104);
  v23[5] = v5;
  v23[0] = *(a2 + 40);
  v23[1] = v7;
  v20 = *(a2 + 200);
  v21 = *(a2 + 216);
  v22 = *(a2 + 232);
  v16 = *(a2 + 136);
  v17 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = *(a2 + 184);
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  v14 = *(a2 + 104);
  v15 = *(a2 + 120);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  sub_20DF85DAC(v23, v24);
  swift_getAtKeyPath();
  v24[10] = v20;
  v24[11] = v21;
  v24[12] = v22;
  v24[6] = v16;
  v24[7] = v17;
  v24[8] = v18;
  v24[9] = v19;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[0] = v10;
  v24[1] = v11;
  return sub_20DF85E08(v24);
}

uint64_t sub_20DFE7E38()
{
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    v4 = v24;
    v3 = v25;
    if (qword_27C852060 != -1)
    {
      swift_once();
    }

    v5 = sub_20E009094();
    __swift_project_value_buffer(v5, qword_27C862680);

    v6 = sub_20E009074();
    v7 = sub_20E009554();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20DF74468(v4, v3, &v24);
      _os_log_impl(&dword_20DF62000, v6, v7, "Environment override detected. Using user set env value : %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F32B3A0](v9, -1, -1);
      MEMORY[0x20F32B3A0](v8, -1, -1);
    }

    v10 = 0xEA00000000006C61;
    v11 = byte_28252D158;
    if (byte_28252D158 > 1u)
    {
      v13 = 0xE400000000000000;
      if (byte_28252D158 == 2)
      {
        v12 = 1953654115;
      }

      else
      {
        v12 = 1685025392;
      }
    }

    else if (byte_28252D158)
    {
      v13 = 0xE300000000000000;
      v12 = 7759204;
    }

    else
    {
      v12 = 0x6E7265746E496171;
      v13 = 0xEA00000000006C61;
    }

    v24 = v12;
    v25 = v13;
    sub_20DF751E4();
    v14 = sub_20E009614();

    if (!v14 || ((v11 = byte_28252D159, byte_28252D159 > 1u) ? ((v16 = 0xE400000000000000, byte_28252D159 != 2) ? (v15 = 1685025392) : (v15 = 1953654115)) : byte_28252D159 ? (v16 = 0xE300000000000000, v15 = 7759204) : (v15 = 0x6E7265746E496171, v16 = 0xEA00000000006C61), (v24 = v15, v25 = v16, v17 = sub_20E009614(), , !v17) || ((v11 = byte_28252D15A, byte_28252D15A > 1u) ? ((v19 = 0xE400000000000000, byte_28252D15A != 2) ? (v18 = 1685025392) : (v18 = 1953654115)) : byte_28252D15A ? (v19 = 0xE300000000000000, v18 = 7759204) : (v18 = 0x6E7265746E496171, v19 = 0xEA00000000006C61), (v24 = v18, v25 = v19, v20 = sub_20E009614(), , !v20) || ((v11 = byte_28252D15B, byte_28252D15B > 1u) ? ((v10 = 0xE400000000000000, byte_28252D15B != 2) ? (v21 = 1685025392) : (v21 = 1953654115)) : byte_28252D15B ? (v10 = 0xE300000000000000, v21 = 7759204) : (v21 = 0x6E7265746E496171), v24 = v21, v25 = v10, v22 = sub_20E009614(), , !v22))))
    {

      return v11;
    }
  }

  return 3;
}

uint64_t sub_20DFE8294(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v47 - v5);
  v7 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  keyExistsAndHasValidFormat[0] = 0;
  v11 = sub_20E0091C4();
  v12 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v11, v12, keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0] && AppBooleanValue)
  {
    if (qword_2811230D8 != -1)
    {
LABEL_38:
      swift_once();
    }

    v14 = sub_20E009094();
    __swift_project_value_buffer(v14, qword_2811249E8);
    v15 = sub_20E009074();
    v16 = sub_20E009554();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "BAA Auth disabled via defaults override";
    goto LABEL_11;
  }

  sub_20DF9EE34(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20DFE8C40(v6);
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v19 = sub_20E009094();
    __swift_project_value_buffer(v19, qword_2811249E8);
    v15 = sub_20E009074();
    v16 = sub_20E009544();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Unable to retrieve config to check if URL required BAA Auth";
LABEL_11:
    _os_log_impl(&dword_20DF62000, v15, v16, v18, v17, 2u);
    MEMORY[0x20F32B3A0](v17, -1, -1);
LABEL_12:

    return 0;
  }

  sub_20DF85D48(v6, v10);
  keyExistsAndHasValidFormat[0] = 0;
  v21 = sub_20E0091C4();
  v22 = sub_20E0091C4();
  v23 = CFPreferencesGetAppBooleanValue(v21, v22, keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat[0] && v23)
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v25 = sub_20E009094();
    __swift_project_value_buffer(v25, qword_2811249E8);
    v26 = sub_20E009074();
    v27 = sub_20E009554();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Identifier Profile Override detected | BAA Header applied to all Path by profile!";
LABEL_35:
      _os_log_impl(&dword_20DF62000, v26, v27, v29, v28, 2u);
      MEMORY[0x20F32B3A0](v28, -1, -1);
    }

LABEL_36:

    sub_20DF85E5C(v10);
    return 1;
  }

  v48 = v10;
  if (qword_281123150 != -1)
  {
    v24 = swift_once();
  }

  MEMORY[0x28223BE20](v24);
  *(&v47 - 2) = v48;
  v31 = sub_20DFE75D8(sub_20DFE8CA8, (&v47 - 4), v30);
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = 0;
    v35 = (v31 + 40);
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v36 = *(v35 - 1);
      v37 = *v35;
      *keyExistsAndHasValidFormat = a1;
      v52 = a2;
      v49 = v36;
      v50 = v37;
      sub_20DF751E4();

      v38 = sub_20E009644();

      if (v38)
      {
        break;
      }

      ++v34;
      v35 += 2;
      if (v33 == v34)
      {
        goto LABEL_26;
      }
    }

    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v45 = sub_20E009094();
    __swift_project_value_buffer(v45, qword_2811249E8);
    v26 = sub_20E009074();
    v27 = sub_20E009554();
    v46 = os_log_type_enabled(v26, v27);
    v10 = v48;
    if (v46)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "API Path requires BAA Auth Headers";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_26:

  if (qword_2811230D8 != -1)
  {
    swift_once();
  }

  v39 = sub_20E009094();
  __swift_project_value_buffer(v39, qword_2811249E8);
  v40 = sub_20E009074();
  v41 = sub_20E009554();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v48;
  if (v42)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_20DF62000, v40, v41, "API Path does not require BAA Auth Header", v44, 2u);
    MEMORY[0x20F32B3A0](v44, -1, -1);
  }

  sub_20DF85E5C(v43);
  return 0;
}

uint64_t sub_20DFE896C()
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v3 = sub_20E009094();
    __swift_project_value_buffer(v3, qword_2811249E8);
    v4 = sub_20E009074();
    v5 = sub_20E009554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "HMAC Authentication enforced by Defaults override.";
LABEL_12:
      _os_log_impl(&dword_20DF62000, v4, v5, v7, v6, 2u);
      v9 = 1;
LABEL_18:
      MEMORY[0x20F32B3A0](v6, -1, -1);
      goto LABEL_20;
    }
  }

  else
  {
    if (sub_20DFE7E38() > 2u)
    {
      if (qword_2811230D8 != -1)
      {
        swift_once();
      }

      v10 = sub_20E009094();
      __swift_project_value_buffer(v10, qword_2811249E8);
      v4 = sub_20E009074();
      v11 = sub_20E009554();
      if (!os_log_type_enabled(v4, v11))
      {
        v9 = 0;
        goto LABEL_20;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v11, "Current environment does not requires HMAC Authentication.", v6, 2u);
      v9 = 0;
      goto LABEL_18;
    }

    if (qword_2811230D8 != -1)
    {
      swift_once();
    }

    v8 = sub_20E009094();
    __swift_project_value_buffer(v8, qword_2811249E8);
    v4 = sub_20E009074();
    v5 = sub_20E009554();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Current environment requires HMAC Authentication.";
      goto LABEL_12;
    }
  }

  v9 = 1;
LABEL_20:

  return v9;
}

uint64_t sub_20DFE8C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFE8CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DFE8D4C()
{
  result = qword_27C8534F0;
  if (!qword_27C8534F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8534F8, qword_20E013030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8534F0);
  }

  return result;
}

unint64_t sub_20DFE8DB4()
{
  result = qword_27C853500;
  if (!qword_27C853500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853500);
  }

  return result;
}

unint64_t sub_20DFE8E08(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E009844();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20DFE8E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a3;
  v6 = sub_20E008A44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_20E008AF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008AC4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20DF66E28(v12, &qword_27C8520D0, &qword_20E00AB70);
LABEL_11:
    v28 = a1;
    v29 = a2;
    (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
    sub_20DF751E4();
    sub_20E008AE4();
    return (*(v7 + 8))(v9, v6);
  }

  v25 = *(v14 + 32);
  v26 = v3;
  v25(v16, v12, v13);
  sub_20E008AB4();
  if (!v17 || (, sub_20E008A74(), !v18))
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_11;
  }

  if (qword_2811230C8 != -1)
  {
    swift_once();
  }

  v19 = sub_20E009094();
  __swift_project_value_buffer(v19, qword_2811249D0);
  v20 = sub_20E009074();
  v21 = sub_20E009554();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20DF62000, v20, v21, "Full URL Path noticed in path component", v22, 2u);
    MEMORY[0x20F32B3A0](v22, -1, -1);
  }

  return (v25)(v27, v16, v13);
}

uint64_t sub_20DFE91DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v49) = a3;
  v9 = sub_20E0087E4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  v48 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_20E0088D4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008834();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20DF66E28(v18, &qword_27C852F78, &qword_20E010888);
    v23 = sub_20E008AF4();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a4, v5, v23);
    return (*(v24 + 56))(a4, 0, 1, v23);
  }

  (*(v20 + 32))(v22, v18, v19);
  v26 = sub_20E008824();
  if (!v26)
  {
    v46 = v20;
    v47 = v19;
    v49 = a4;
    MEMORY[0x28223BE20](0);
    *(&v43 - 16) = a2 & 1;
    *(&v43 - 1) = v5;
    v30 = sub_20DFE7788(sub_20DFEA690, (&v43 - 4), a1);
    v31 = *(v30 + 16);
    if (v31)
    {
      v44 = v22;
      v45 = v30;
      v32 = v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v33 = *(v48 + 72);
      v34 = v51;
      v35 = (v50 + 48);
      v36 = (v50 + 32);
      v37 = MEMORY[0x277D84F90];
      do
      {
        v38 = v52;
        sub_20DFEA6B4(v32, v52);
        sub_20DFEA724(v38, v14, &qword_27C8534E8, qword_20E013000);
        if ((*v35)(v14, 1, v34) == 1)
        {
          sub_20DF66E28(v14, &qword_27C8534E8, qword_20E013000);
        }

        else
        {
          v39 = *v36;
          (*v36)(v53, v14, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_20DFFAF44(0, v37[2] + 1, 1, v37);
          }

          v41 = v37[2];
          v40 = v37[3];
          if (v41 >= v40 >> 1)
          {
            v37 = sub_20DFFAF44((v40 > 1), v41 + 1, 1, v37);
          }

          v37[2] = v41 + 1;
          v42 = v37 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41;
          v34 = v51;
          v39(v42, v53, v51);
        }

        v32 += v33;
        --v31;
      }

      while (v31);

      v22 = v44;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v20 = v46;
    v19 = v47;
    if (v37[2])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v27 = sub_20DFE9918(v26, a1, a2 & 1, v49 & 1);

  if (!v27[2])
  {
LABEL_5:
  }

LABEL_6:
  v28 = sub_20E0087F4();
  MEMORY[0x20F329A60](v28);
  if (v29)
  {
    sub_20E008814();
  }

  sub_20E008844();
  return (*(v20 + 8))(v22, v19);
}

void sub_20DFE9764()
{
  v0 = sub_20E0087B4();
  __swift_allocate_value_buffer(v0, qword_281124A60);
  __swift_project_value_buffer(v0, qword_281124A60);
  sub_20DFE97B0();
}

void sub_20DFE97B0()
{
  v0 = sub_20E0087B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008784();
  v4 = sub_20E008794();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_20E008B64();
  v8 = [objc_opt_self() characterSetWithBitmapRepresentation_];

  sub_20DF67FFC(v4, v6);
  v9 = sub_20E0091C4();
  [v8 removeCharactersInString_];

  sub_20E0087A4();
}

void *sub_20DFE9918(void *a1, uint64_t a2, int a3, int a4)
{
  v92 = a4;
  v97 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853508, &qword_20E013110);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v87 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v90 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853510, &qword_20E013118);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v100 = (&v85 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853518, &unk_20E013120);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v85 - v19);
  v110 = sub_20E0087E4();
  v21 = MEMORY[0x28223BE20](v110);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v85 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v85 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v109 = &v85 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  v113 = a1;
  v96 = *(a2 + 16);
  if (!v96)
  {

    return a1;
  }

  v95 = a2 + 32;
  v101 = v29;
  v102 = (v29 + 16);
  v106 = (v13 + 56);
  v107 = v20;
  v104 = (v29 + 32);
  v105 = (v13 + 48);
  v108 = (v29 + 8);

  v32 = 0;
  v103 = v18;
  v98 = v31;
  while (1)
  {
    v33 = (v95 + 32 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = v33[3];
    if ((v97 & 1) == 0)
    {
      break;
    }

    v94 = v33[2];
    v111 = v35;
    v112 = v34;
    v37 = qword_281123108;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_20E0087B4();
    v39 = __swift_project_value_buffer(v38, qword_281124A60);
    sub_20DF751E4();
    v93 = v39;
    v35 = sub_20E009604();
    v34 = v40;

    if (v34)
    {
      v99 = v32;
      v111 = v94;
      v112 = v36;
      sub_20E009604();

      goto LABEL_11;
    }

LABEL_4:
    if (++v32 == v96)
    {
      return a1;
    }
  }

  v99 = v32;

LABEL_11:
  sub_20E0087C4();

  v42 = 0;
  v43 = a1[2];
  while (1)
  {
    v44 = v107;
    if (v42 == v43)
    {
      v45 = 1;
      v42 = v43;
    }

    else
    {
      v46 = v101;
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v42 >= a1[2])
      {
        goto LABEL_55;
      }

      v47 = a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v42;
      v48 = *(v12 + 48);
      v49 = v100;
      *v100 = v42;
      (*(v46 + 16))(v49 + v48, v47, v110);
      sub_20DFEA724(v49, v18, &qword_27C853510, &qword_20E013118);
      v45 = 0;
      ++v42;
    }

    (*v106)(v18, v45, 1, v12);
    sub_20DFEA724(v18, v44, &qword_27C853518, &unk_20E013120);
    if ((*v105)(v44, 1, v12) == 1)
    {

      v56 = *v102;
      if ((v92 & 1) == 0)
      {
        v73 = v98;
        v56(v88, v98, v110);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_20DFFAF44(0, a1[2] + 1, 1, a1);
        }

        v75 = a1[2];
        v74 = a1[3];
        v76 = v101;
        if (v75 >= v74 >> 1)
        {
          v84 = sub_20DFFAF44((v74 > 1), v75 + 1, 1, a1);
          v76 = v101;
          a1 = v84;
        }

        v77 = v73;
        v78 = v110;
        v79 = v76;
        (*(v76 + 8))(v77, v110);
        a1[2] = v75 + 1;
        (*(v79 + 32))(a1 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v75, v88, v78);
        v113 = a1;
LABEL_51:
        v32 = v99;
        goto LABEL_4;
      }

      v57 = v98;
      v56(v89, v98, v110);
      v58 = a1[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = a1;
      if (!isUniquelyReferenced_nonNull_native || v58 >= a1[3] >> 1)
      {
        a1 = sub_20DFFAF44(isUniquelyReferenced_nonNull_native, v58 + 1, 1, a1);
        v113 = a1;
      }

      v32 = v99;
      sub_20DFEA78C(0, 0, 1, v89);
      v113 = a1;
      (*v108)(v57, v110);
      goto LABEL_4;
    }

    v50 = *v44;
    v51 = v12;
    v52 = *(v12 + 48);
    v53 = *v104;
    (*v104)(v109, v44 + v52, v110);
    if (sub_20E0087D4() == v35 && v54 == v34)
    {
      break;
    }

    v55 = sub_20E009984();

    if (v55)
    {
      goto LABEL_28;
    }

    result = (*v108)(v109, v110);
    v12 = v51;
    v18 = v103;
  }

LABEL_28:

  v60 = v91;
  sub_20DFEA588(v50, v91);
  v61 = *v108;
  v62 = v110;
  (*v108)(v60, v110);
  result = v61(v109, v62);
  a1 = v113;
  v63 = v113[2];
  v64 = v98;
  if (v50 >= v63)
  {
    v70 = *v102;
    if (v92)
    {
      v70(v87, v98, v110);
      v71 = a1[2];
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v113 = a1;
      if (!v72 || v71 >= a1[3] >> 1)
      {
        a1 = sub_20DFFAF44(v72, v71 + 1, 1, a1);
        v113 = a1;
      }

      v12 = v51;
      v32 = v99;
      v67 = 0;
      v68 = 0;
      v69 = &v114;
      goto LABEL_40;
    }

    v70(v86, v98, v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_20DFFAF44(0, v63 + 1, 1, a1);
    }

    v81 = a1[2];
    v80 = a1[3];
    if (v81 >= v80 >> 1)
    {
      a1 = sub_20DFFAF44((v80 > 1), v81 + 1, 1, a1);
    }

    v82 = v64;
    v83 = v110;
    v61(v82, v110);
    a1[2] = v81 + 1;
    v53(a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v81, v86, v83);
    v113 = a1;
    v12 = v51;
    v18 = v103;
    goto LABEL_51;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = (*v102)(v90, v98, v110);
  v65 = a1[2];
  if (v65 >= v50)
  {
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v113 = a1;
    if (!v66 || v65 >= a1[3] >> 1)
    {
      a1 = sub_20DFFAF44(v66, v65 + 1, 1, a1);
      v113 = a1;
    }

    v12 = v51;
    v32 = v99;
    v67 = v50;
    v68 = v50;
    v69 = &v115;
LABEL_40:
    sub_20DFEA78C(v67, v68, 1, *(v69 - 32));
    v113 = a1;
    v61(v64, v110);
    v18 = v103;
    goto LABEL_4;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_20DFEA394@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = qword_281123108;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_20E0087B4();
  __swift_project_value_buffer(v5, qword_281124A60);
  sub_20DF751E4();
  sub_20E009604();
  v7 = v6;

  if (v7)
  {
    sub_20E009604();

LABEL_7:
    sub_20E0087C4();

    v8 = sub_20E0087E4();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  v10 = sub_20E0087E4();
  (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_20DFEA588@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DFFC594(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_20E0087E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20DFEA6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFEA724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_20DFEA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_20E0087E4();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

  if (v18 < 1)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_20DF66E28(v25, &qword_27C853508, &qword_20E013110);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20DFEA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v14;
  v8[23] = a6;
  v8[24] = a7;
  v8[21] = a4;
  v8[22] = a5;
  v8[19] = a2;
  v8[20] = a3;
  v8[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853520, &qword_20E013138);
  v8[27] = swift_task_alloc();
  v9 = type metadata accessor for NetworkError(0);
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v10 = sub_20E008CD4();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v8[36] = swift_task_alloc();
  v11 = sub_20E008714();
  v8[37] = v11;
  v8[38] = *(v11 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFEAB78, 0, 0);
}

uint64_t sub_20DFEAB78()
{
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  v0[41] = v1;
  v0[42] = __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009554();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Verifying TAF OTP....", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_20DFEAD04;
  v6 = v0[36];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];

  return sub_20DFF446C(v6, v9, v7, v8);
}

uint64_t sub_20DFEAD04()
{

  return MEMORY[0x2822009F8](sub_20DFEAE2C, 0, 0);
}

uint64_t sub_20DFEAE2C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "Unable to create request URL for TAF Account Verification | OTP.", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v7 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v2 + 32);
    v10(*(v0 + 320), v3, v1);
    if (os_variant_has_internal_diagnostics())
    {
      *(v0 + 392) = 0;
      v11 = sub_20E0091C4();
      v12 = sub_20E0091C4();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v11, v12, (v0 + 392));

      if (*(v0 + 392))
      {
        if (AppBooleanValue)
        {
          v14 = *(v0 + 312);
          v15 = *(v0 + 320);
          v16 = *(v0 + 296);
          v17 = *(v0 + 304);
          (*(v17 + 16))(v14, v15, v16);
          sub_20E0086D4();
          (*(v17 + 8))(v15, v16);
          v10(v15, v14, v16);
          v18 = sub_20E009074();
          v19 = sub_20E009554();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_20DF62000, v18, v19, "Adding additional OTP override header in verify request.", v20, 2u);
            MEMORY[0x20F32B3A0](v20, -1, -1);
          }
        }
      }
    }

    sub_20DFDF8DC(0xD000000000000018, 0x800000020E017420, 0xD00000000000002BLL, 0x800000020E017440);
    sub_20E008CC4();
    v21 = swift_task_alloc();
    *(v0 + 352) = v21;
    *v21 = v0;
    v21[1] = sub_20DFEB2B4;
    v22 = *(v0 + 320);

    return MEMORY[0x28211ECF8](v22, 0);
  }
}

uint64_t sub_20DFEB2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {
    v6 = sub_20DFEC390;
  }

  else
  {
    v6 = sub_20DFEB3F8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFEB3F8()
{
  v111 = v0;
  v110[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);

  v6 = sub_20DFE0F98();
  v8 = v7;
  (*(v4 + 16))(v2, v1, v5);

  sub_20E008C94();
  sub_20E008BB4();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v3, v5);
  v11(v2, v5);
  v12 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v15 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 24) = v15;
  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  *(v0 + 48) = v14;
  *(v0 + 56) = v13;
  *(v0 + 64) = 2;
  *(v0 + 72) = v12;
  sub_20E004C78();
  sub_20DFEC91C(v0 + 16);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    if (qword_27C852070 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(*(v0 + 328), qword_27C8626B0);
      v36 = sub_20E009074();
      v37 = sub_20E009544();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_20DF62000, v36, v37, "Unable to process TAF Account Verification(OTP) response from Utility.", v38, 2u);
        MEMORY[0x20F32B3A0](v38, -1, -1);
      }

      v39 = *(v0 + 368);
      v29 = *(v0 + 376);
      v40 = *(v0 + 360);
      v31 = *(v0 + 280);
      v32 = *(v0 + 248);

      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v34 = swift_allocError();
      *v41 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v40, v39);
      goto LABEL_44;
    }

LABEL_70:
    swift_once();
    goto LABEL_13;
  }

  v17 = v16;
  v109 = v11;
  v18 = *(v0 + 320);
  v19 = *(v0 + 280);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  v23 = *(v0 + 376);
  sub_20DFC6D90(v18, [v17 statusCode], v21, v20, v19, v22);
  sub_20DFDFFF8(0xD000000000000018, 0x800000020E017470, [v17 statusCode], &unk_28252DEE8);
  v24 = [v17 statusCode];
  if (v24 > 409)
  {
    switch(v24)
    {
      case 410:
        v63 = sub_20E009074();
        v64 = sub_20E009544();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_20DF62000, v63, v64, "Passcode | Expired", v65, 2u);
          MEMORY[0x20F32B3A0](v65, -1, -1);
        }

        v28 = *(v0 + 368);
        v29 = *(v0 + 376);
        v30 = *(v0 + 360);
        v31 = *(v0 + 280);
        v32 = *(v0 + 248);

        sub_20DFEC8C8();
        v34 = swift_allocError();
        v35 = 7;
        goto LABEL_42;
      case 429:
        v76 = sub_20E009074();
        v77 = sub_20E009544();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_20DF62000, v76, v77, "Passcode | Too Many requests", v78, 2u);
          MEMORY[0x20F32B3A0](v78, -1, -1);
        }

        v28 = *(v0 + 368);
        v29 = *(v0 + 376);
        v30 = *(v0 + 360);
        v31 = *(v0 + 280);
        v32 = *(v0 + 248);

        sub_20DFEC8C8();
        v34 = swift_allocError();
        v35 = 5;
        goto LABEL_42;
      case 500:
        v42 = sub_20E009074();
        v43 = sub_20E009544();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_20DF62000, v42, v43, "Internal Server Error", v44, 2u);
          MEMORY[0x20F32B3A0](v44, -1, -1);
        }

        v28 = *(v0 + 368);
        v29 = *(v0 + 376);
        v30 = *(v0 + 360);
        v31 = *(v0 + 280);
        v32 = *(v0 + 248);

        sub_20DFEC8C8();
        v34 = swift_allocError();
        v35 = 6;
        goto LABEL_42;
    }

    goto LABEL_34;
  }

  if (v24 != 201)
  {
    if (v24 == 400)
    {
      v72 = sub_20E009074();
      v73 = sub_20E009544();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_20DF62000, v72, v73, "BAD REQUEST | Check request", v74, 2u);
        MEMORY[0x20F32B3A0](v74, -1, -1);
      }

      v28 = *(v0 + 368);
      v29 = *(v0 + 376);
      v30 = *(v0 + 360);
      v31 = *(v0 + 280);
      v32 = *(v0 + 248);

      sub_20DFEC8C8();
      v34 = swift_allocError();
      *v75 = 0;
      goto LABEL_43;
    }

    if (v24 == 401)
    {
      v25 = sub_20E009074();
      v26 = sub_20E009544();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20DF62000, v25, v26, "Unauthorized | Incorrect passcode.", v27, 2u);
        MEMORY[0x20F32B3A0](v27, -1, -1);
      }

      v28 = *(v0 + 368);
      v29 = *(v0 + 376);
      v30 = *(v0 + 360);
      v31 = *(v0 + 280);
      v32 = *(v0 + 248);

      sub_20DFEC8C8();
      v34 = swift_allocError();
      v35 = 1;
LABEL_42:
      *v33 = v35;
LABEL_43:
      swift_willThrow();
      sub_20DF67FFC(v30, v28);

LABEL_44:
      v11(v31, v32);
LABEL_45:
      *(v0 + 120) = v34;
      v79 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
      v80 = swift_dynamicCast();
      v81 = *(v0 + 320);
      v82 = *(v0 + 296);
      v83 = *(v0 + 304);
      if (v80)
      {
        v84 = *(v0 + 128);
        sub_20DFEC8C8();
        swift_allocError();
        *v85 = v84;
      }

      else
      {
        sub_20DFFF4B4(v34);
      }

      swift_willThrow();

      (*(v83 + 8))(v81, v82);

      v86 = *(v0 + 8);
      goto LABEL_49;
    }

LABEL_34:
    v66 = *(v0 + 376);
    v67 = sub_20E009074();
    v68 = sub_20E009544();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 376);
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      *(v70 + 4) = [v17 statusCode];

      _os_log_impl(&dword_20DF62000, v67, v68, "Request failed : Status Code %ld", v70, 0xCu);
      MEMORY[0x20F32B3A0](v70, -1, -1);
      v71 = *(v0 + 376);
    }

    else
    {

      v71 = *(v0 + 376);
      v67 = v71;
    }

    v88 = *(v0 + 360);
    v89 = *(v0 + 368);
    v106 = *(v0 + 248);
    v107 = *(v0 + 280);

    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v34 = swift_allocError();
    *v90 = [v17 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v88, v89);

LABEL_57:
    v109(v107, v106);
    goto LABEL_45;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 328), qword_27C8626B0);
  v45 = sub_20E009074();
  v46 = sub_20E009554();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_20DF62000, v45, v46, "TAF Account Verification(OTP) succeeded!", v47, 2u);
    MEMORY[0x20F32B3A0](v47, -1, -1);
  }

  v48 = *(v0 + 384);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFEC970();
  sub_20E008724();
  v49 = v48;

  if (v48)
  {
LABEL_27:
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_20DF62000, v50, v51, "TAF Account Verification(OTP) failed | Decoding Error", v52, 2u);
      MEMORY[0x20F32B3A0](v52, -1, -1);
    }

    v53 = *(v0 + 232);

    *(v0 + 136) = v49;
    v54 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v55 = swift_dynamicCast();
    v56 = *(v53 + 56);
    v58 = *(v0 + 368);
    v57 = *(v0 + 376);
    v59 = *(v0 + 360);
    v106 = *(v0 + 248);
    v107 = *(v0 + 280);
    if (v55)
    {
      v60 = *(v0 + 240);
      v61 = *(v0 + 216);
      v56(v61, 0, 1, *(v0 + 224));
      sub_20DFEC9C4(v61, v60);
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v34 = swift_allocError();
      sub_20DFECA28(v60, v62);
      swift_willThrow();
      sub_20DF67FFC(v59, v58);

      sub_20DFB2F60(v60);
    }

    else
    {
      v91 = *(v0 + 216);
      v56(v91, 1, 1, *(v0 + 224));
      sub_20DF66E28(v91, &qword_27C853520, &qword_20E013138);
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v34 = swift_allocError();
      *v92 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v59, v58);
    }

    goto LABEL_57;
  }

  v108 = *(v0 + 112);
  if (*(v0 + 88))
  {
    v104 = *(v0 + 88);
    v105 = *(v0 + 80);
LABEL_60:

    goto LABEL_61;
  }

  if (*(v0 + 104))
  {
    v105 = *(v0 + 96);

    goto LABEL_60;
  }

  if (!*(v0 + 112))
  {
    v100 = sub_20E009074();
    v101 = sub_20E009544();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v110[0] = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_20DF74468(0xD000000000000035, 0x800000020E017490, v110);
      _os_log_impl(&dword_20DF62000, v100, v101, "TAF Account Verification(OTP) failed | %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x20F32B3A0](v103, -1, -1);
      MEMORY[0x20F32B3A0](v102, -1, -1);
    }

    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v49 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_27;
  }

  v104 = 0;
  v105 = *(v0 + 96);
LABEL_61:
  v93 = *(v0 + 376);
  v94 = *(v0 + 320);
  v96 = *(v0 + 296);
  v95 = *(v0 + 304);
  v97 = *(v0 + 280);
  v98 = *(v0 + 248);
  v99 = *(v0 + 144);
  sub_20DF67FFC(*(v0 + 360), *(v0 + 368));

  v109(v97, v98);
  (*(v95 + 8))(v94, v96);

  *v99 = v108;
  v99[1] = v105;
  v99[2] = v104;

  v86 = *(v0 + 8);
LABEL_49:

  return v86();
}

uint64_t sub_20DFEC390()
{
  (*(v0[32] + 8))(v0[35], v0[31]);
  v1 = v0[48];
  v0[15] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[38];
  if (v3)
  {
    v7 = v0[16];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v6 + 8))(v4, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DFEC54C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853548, &qword_20E013220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFEE474();
  sub_20E009A84();
  v13 = 0;
  sub_20E0098D4();
  if (!v2)
  {
    v12 = 1;
    sub_20E0098D4();
    v11 = *(v3 + 32);
    v10[15] = 2;
    type metadata accessor for UtilitySubscriptionTokenSet();
    sub_20DFEE4C8(&qword_27C852898, type metadata accessor for UtilitySubscriptionTokenSet, &protocol conformance descriptor for UtilitySubscriptionTokenSet);
    sub_20E009904();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20DFEC764()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x7365526E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_20DFEC7C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DFEE0D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DFEC7F0(uint64_t a1)
{
  v2 = sub_20DFEE474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFEC82C(uint64_t a1)
{
  v2 = sub_20DFEE474();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFEC868@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFEE200(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_20DFEC8C8()
{
  result = qword_27C853528;
  if (!qword_27C853528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853528);
  }

  return result;
}

unint64_t sub_20DFEC970()
{
  result = qword_27C853530;
  if (!qword_27C853530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853530);
  }

  return result;
}

uint64_t sub_20DFEC9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFECA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DFECA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_20E008CD4();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v6[23] = swift_task_alloc();
  v8 = sub_20E008714();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFECC38, 0, 0);
}

uint64_t sub_20DFECC38()
{
  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  v0[28] = v1;
  v0[29] = __swift_project_value_buffer(v1, qword_27C8626C8);
  v2 = sub_20E009074();
  v3 = sub_20E009554();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Initiate TAF OTP....", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_20DFECDC0;
  v6 = v0[23];
  v7 = v0[12];

  return sub_20DFF3F58(v6, v7);
}

uint64_t sub_20DFECDC0()
{

  return MEMORY[0x2822009F8](sub_20DFECEE8, 0, 0);
}

uint64_t sub_20DFECEE8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "Unable to create request URL for TAF Account Verification | OTP.", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v7 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8(0);
  }

  else
  {
    v10 = *(v2 + 32);
    v10(*(v0 + 216), v3, v1);
    if (os_variant_has_internal_diagnostics())
    {
      *(v0 + 272) = 0;
      v11 = sub_20E0091C4();
      v12 = sub_20E0091C4();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v11, v12, (v0 + 272));

      if (*(v0 + 272))
      {
        if (AppBooleanValue)
        {
          v14 = *(v0 + 208);
          v15 = *(v0 + 216);
          v16 = *(v0 + 192);
          v17 = *(v0 + 200);
          (*(v17 + 16))(v14, v15, v16);
          sub_20E0086D4();
          (*(v17 + 8))(v15, v16);
          v10(v15, v14, v16);
          v18 = sub_20E009074();
          v19 = sub_20E009554();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_20DF62000, v18, v19, "Adding additional OTP override header in initiate request.", v20, 2u);
            MEMORY[0x20F32B3A0](v20, -1, -1);
          }
        }
      }
    }

    sub_20DFDF8DC(0xD000000000000018, 0x800000020E0174F0, 0xD000000000000027, 0x800000020E017510);
    sub_20E008CC4();
    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    v21[1] = sub_20DFED364;
    v22 = *(v0 + 216);

    return MEMORY[0x28211ECF8](v22, 0);
  }
}

uint64_t sub_20DFED364(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 256) = a3;
  *(v7 + 264) = v3;

  if (v3)
  {
    v8 = sub_20DFEDE6C;
  }

  else
  {
    sub_20DF67FFC(a1, a2);
    v8 = sub_20DFED4C0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DFED4C0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);

  v6 = sub_20DFE0F98();
  v8 = v7;
  (*(v4 + 16))(v2, v1, v5);

  sub_20E008C94();
  sub_20E008BB4();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v3, v5);
  v11(v2, v5);
  v12 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = v15;
  *(v0 + 32) = v6;
  *(v0 + 40) = v8;
  *(v0 + 48) = v14;
  *(v0 + 56) = v13;
  *(v0 + 64) = 1;
  *(v0 + 72) = v12;
  sub_20E004C78();
  sub_20DFEC91C(v0 + 16);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    if (qword_27C852070 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(*(v0 + 224), qword_27C8626B0);
      v32 = sub_20E009074();
      v33 = sub_20E009544();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_20DF62000, v32, v33, "Unable to process TAF Account Verification(OTP) response from Utility.", v34, 2u);
        MEMORY[0x20F32B3A0](v34, -1, -1);
      }

      v28 = *(v0 + 256);

      type metadata accessor for NetworkError(0);
      sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      v30 = swift_allocError();
      *v35 = 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_29;
    }

LABEL_48:
    swift_once();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = *(v0 + 216);
  v19 = *(v0 + 176);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 256);
  sub_20DFC6D90(v18, [v17 statusCode], v21, v20, v19, v22);
  v24 = [v17 statusCode];
  if (v24 > 403)
  {
    switch(v24)
    {
      case 404:
        v40 = sub_20E009074();
        v41 = sub_20E009544();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_20DF62000, v40, v41, "Invalid Factor | OTP Expired session.", v42, 2u);
          MEMORY[0x20F32B3A0](v42, -1, -1);
        }

        v28 = *(v0 + 256);

        sub_20DFEC8C8();
        v30 = swift_allocError();
        v31 = 8;
        goto LABEL_27;
      case 429:
        v43 = sub_20E009074();
        v44 = sub_20E009544();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_20DF62000, v43, v44, "Too Many Request | User requested too many OTP verification for the same account.", v45, 2u);
          MEMORY[0x20F32B3A0](v45, -1, -1);
        }

        v28 = *(v0 + 256);

        sub_20DFEC8C8();
        v30 = swift_allocError();
        v31 = 5;
        goto LABEL_27;
      case 500:
        v25 = sub_20E009074();
        v26 = sub_20E009544();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_20DF62000, v25, v26, "Internal Server Error", v27, 2u);
          MEMORY[0x20F32B3A0](v27, -1, -1);
        }

        v28 = *(v0 + 256);

        sub_20DFEC8C8();
        v30 = swift_allocError();
        v31 = 6;
LABEL_27:
        *v29 = v31;
LABEL_28:
        swift_willThrow();

LABEL_29:
        v11(*(v0 + 176), *(v0 + 144));
        *(v0 + 80) = v30;
        v46 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
        v47 = swift_dynamicCast();
        v48 = *(v0 + 216);
        v49 = *(v0 + 192);
        v50 = *(v0 + 200);
        if (v47)
        {
          v51 = *(v0 + 88);
          sub_20DFEC8C8();
          swift_allocError();
          *v52 = v51;
        }

        else
        {
          sub_20DFFF4B4(v30);
        }

        swift_willThrow();

        (*(v50 + 8))(v48, v49);

        v53 = *(v0 + 8);
        v54 = 0;
        goto LABEL_33;
    }

LABEL_41:
    v65 = *(v0 + 256);
    v66 = sub_20E009074();
    v67 = sub_20E009544();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 256);
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = [v17 statusCode];

      _os_log_impl(&dword_20DF62000, v66, v67, "Request failed : Status Code %ld", v69, 0xCu);
      MEMORY[0x20F32B3A0](v69, -1, -1);
      v28 = *(v0 + 256);
    }

    else
    {

      v28 = *(v0 + 256);
      v66 = v28;
    }

    type metadata accessor for NetworkError(0);
    sub_20DFEE4C8(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v30 = swift_allocError();
    *v70 = [v17 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  if (v24 != 204)
  {
    if (v24 == 400)
    {
      v36 = sub_20E009074();
      v37 = sub_20E009544();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_20DF62000, v36, v37, "BAD REQUEST | Check request", v38, 2u);
        MEMORY[0x20F32B3A0](v38, -1, -1);
      }

      v28 = *(v0 + 256);

      sub_20DFEC8C8();
      v30 = swift_allocError();
      *v39 = 0;
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v71 = v11;
  __swift_project_value_buffer(*(v0 + 224), qword_27C8626B0);
  v56 = sub_20E009074();
  v57 = sub_20E009554();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_20DF62000, v56, v57, "TAF Account Verification(OTP) Initiated successfully!", v58, 2u);
    MEMORY[0x20F32B3A0](v58, -1, -1);
  }

  v59 = *(v0 + 256);
  v60 = *(v0 + 216);
  v61 = *(v0 + 192);
  v62 = *(v0 + 200);
  v63 = *(v0 + 176);
  v64 = *(v0 + 144);

  v71(v63, v64);
  (*(v62 + 8))(v60, v61);

  v53 = *(v0 + 8);
  v54 = 1;
LABEL_33:

  return v53(v54);
}

uint64_t sub_20DFEDE6C()
{
  v1 = v0[33];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v0[10] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v3 = swift_dynamicCast();
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = v0[11];
    sub_20DFEC8C8();
    swift_allocError();
    *v8 = v7;
  }

  else
  {
    sub_20DFFF4B4(v1);
  }

  swift_willThrow();

  (*(v6 + 8))(v4, v5);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_20DFEE010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20DFEE06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20DFEE0D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_20E009984() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020E014AC0 == a2 || (sub_20E009984() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526E656B6F74 && a2 == 0xED000065736E6F70)
  {

    return 2;
  }

  else
  {
    v6 = sub_20E009984();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20DFEE200@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853538, &qword_20E013218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFEE474();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v9 = sub_20E009854();
  v11 = v10;
  v20 = v9;
  v23 = 1;
  v12 = sub_20E009854();
  v14 = v13;
  v19 = v12;
  type metadata accessor for UtilitySubscriptionTokenSet();
  v22 = 2;
  sub_20DFEE4C8(&qword_27C8528A8, type metadata accessor for UtilitySubscriptionTokenSet, &protocol conformance descriptor for UtilitySubscriptionTokenSet);
  sub_20E009884();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

unint64_t sub_20DFEE474()
{
  result = qword_27C853540;
  if (!qword_27C853540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853540);
  }

  return result;
}

uint64_t sub_20DFEE4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20DFEE524()
{
  result = qword_27C853550;
  if (!qword_27C853550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853550);
  }

  return result;
}

unint64_t sub_20DFEE57C()
{
  result = qword_27C853558;
  if (!qword_27C853558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853558);
  }

  return result;
}

unint64_t sub_20DFEE5D4()
{
  result = qword_27C853560;
  if (!qword_27C853560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853560);
  }

  return result;
}

uint64_t sub_20DFEE628@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20E008714();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20DFE896C())
  {
    if (qword_2811230F8 != -1)
    {
      swift_once();
    }

    v45 = v1;
    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_281124A30);
    v8 = sub_20E009074();
    v9 = sub_20E009554();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Adding HMAC Auth header to request", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    v11 = sub_20DFE7E38();
    v46 = sub_20DFFD8B4(*(&off_277E1AF08 + v11), &unk_28252D160);
    v13 = v12;
    v14 = sub_20E0091C4();
    v15 = sub_20E0091C4();
    v16 = CFPreferencesCopyAppValue(v14, v15);

    if (v16)
    {
      v50 = v16;
      if (swift_dynamicCast())
      {

        v13 = v49;
        v46 = v48;
        if (qword_281123100 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v7, qword_281124A48);
        v17 = sub_20E009074();
        v18 = sub_20E009554();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_20DF62000, v17, v18, "HMAC Secret Key overridden via defaults", v19, 2u);
          MEMORY[0x20F32B3A0](v19, -1, -1);
        }
      }
    }

    v34 = sub_20E0091C4();
    v35 = sub_20E0091C4();
    v36 = CFPreferencesCopyAppValue(v34, v35);

    if (v36)
    {
      v50 = v36;
      v37 = swift_dynamicCast();
      v38 = v45;
      if (v37)
      {
        v39 = v45;

        v41 = v48;
        v40 = v49;
        if (qword_281123100 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v7, qword_281124A48);
        v42 = sub_20E009074();
        v43 = sub_20E009554();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_20DF62000, v42, v43, "HMAC Secret Value overridden via defaults", v44, 2u);
          MEMORY[0x20F32B3A0](v44, -1, -1);
        }

        v38 = v39;
      }

      else
      {
        v40 = 0xE100000000000000;
        v41 = 49;
      }
    }

    else
    {
      v40 = 0xE100000000000000;
      v41 = 49;
      v38 = v45;
    }

    (*(v47 + 16))(v6, v38, v4);
    sub_20E0086D4();
    sub_20DFF20F8();
    sub_20E0086D4();

    sub_20DFEF1D0(v46, v13, v41, v40, a1);

    return (*(v47 + 8))(v6, v4);
  }

  else
  {
    if (qword_2811230F8 != -1)
    {
      swift_once();
    }

    v20 = sub_20E009094();
    __swift_project_value_buffer(v20, qword_281124A30);
    v21 = sub_20E009074();
    v22 = sub_20E009554();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48 = v24;
      *v23 = 136315138;
      v25 = sub_20DFE7E38();
      v26 = 0xEA00000000006C61;
      v27 = 0x6E7265746E496171;
      v28 = 1953654115;
      if (v25 != 2)
      {
        v28 = 1685025392;
      }

      if (v25)
      {
        v27 = 7759204;
        v26 = 0xE300000000000000;
      }

      if (v25 <= 1)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v25 <= 1)
      {
        v30 = v26;
      }

      else
      {
        v30 = 0xE400000000000000;
      }

      v31 = sub_20DF74468(v29, v30, &v48);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_20DF62000, v21, v22, "Current connected env %s does not require HMAC Auth", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F32B3A0](v24, -1, -1);
      MEMORY[0x20F32B3A0](v23, -1, -1);
    }

    (*(v47 + 16))(a1, v2, v4);
    v32 = *(v47 + 56);

    return v32(a1, 0, 1, v4);
  }
}

uint64_t sub_20DFEED38()
{
  sub_20E0090F4();
  sub_20DFF2518(&qword_27C853590, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v0 = sub_20E009134();
  v2 = sub_20DFF1CBC(v0, v1);

  v3 = v2[2];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_20DF749AC(0, v3, 0);
    v4 = 32;
    v5 = v19;
    v6 = MEMORY[0x277D84B78];
    v7 = MEMORY[0x277D84BC0];
    do
    {
      v8 = *(v2 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20E00AB50;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_20E009204();
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        v15 = v11;
        sub_20DF749AC((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0, MEMORY[0x277D83958]);
  v16 = sub_20E0091A4();

  return v16;
}

uint64_t sub_20DFEEF70()
{
  v0 = sub_20E009144();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_20E0090F4();
  v4 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E0086E4();
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
  }

  sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_20E0090E4();
  sub_20DF67FA8(v9, v10);
  sub_20DFF1E24(v9, v10, v3);
  sub_20DF67FFC(v9, v10);
  sub_20E0090D4();
  (*(v1 + 8))(v3, v0);
  v11 = sub_20DFEED38();
  sub_20DF67FFC(v9, v10);
  (*(v4 + 8))(v6, v13[0]);
  return v11;
}

uint64_t sub_20DFEF1D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_20E008CD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E008C94();
  sub_20E008C74();
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D839F8];
  *(v18 + 16) = xmmword_20E00AB50;
  v20 = MEMORY[0x277D83A80];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v17 * 1000.0;
  v21 = sub_20E009204();
  v32[1] = a3;
  sub_20DFEF588(a1, a2, a3, a4, v21, v22);
  if (v23)
  {
    v24 = sub_20E008714();
    v25 = *(v24 - 8);
    (*(v25 + 16))(a5, v6, v24);
    sub_20E0086D4();

    sub_20E0086D4();

    sub_20E0086D4();
    return (*(v25 + 56))(a5, 0, 1, v24);
  }

  else
  {

    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v27 = sub_20E009094();
    __swift_project_value_buffer(v27, qword_27C862650);
    v28 = sub_20E009074();
    v29 = sub_20E009544();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20DF62000, v28, v29, "Unable to generate HMAC Signature", v30, 2u);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

    v31 = sub_20E008714();
    return (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
  }
}

uint64_t sub_20DFEF588(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a5;
  v108 = a3;
  v109 = a4;
  v114 = a1;
  v115 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853568, &unk_20E013370);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v119 = &v102 - v9;
  v120 = sub_20E009114();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F78, &qword_20E010888);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = &v102 - v12;
  v13 = sub_20E009234();
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v102 - v17;
  v19 = sub_20E008AF4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0086C4();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20DF66E28(v18, &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852040 != -1)
    {
      swift_once();
    }

    v23 = sub_20E009094();
    __swift_project_value_buffer(v23, qword_27C862650);
    v24 = sub_20E009074();
    v25 = sub_20E009544();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "Unable to retrieve URL from request.", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    return 0;
  }

  else
  {
    v105 = v8;
    v28 = *(v20 + 32);
    v104 = v19;
    v28(v22, v18, v19);
    sub_20E008684();
    v106 = v7;
    v103 = v20;
    if (v29)
    {
      sub_20E009254();
    }

    sub_20E008A84();
    v102 = sub_20E009254();
    v110 = v30;

    v31 = sub_20E0086A4();
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = MEMORY[0x277D84F98];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v32;
    sub_20DF8564C(v107, a6, 0xD00000000000001BLL, 0x800000020E0175D0, isUniquelyReferenced_nonNull_native);
    v34 = v123;
    v35 = v109;

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v34;
    sub_20DF8564C(v108, v35, 0xD00000000000001BLL, 0x800000020E017610, v36);
    v37 = sub_20DFF02A0(v123);
    v108 = v38;
    v109 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_20E00E010;
    sub_20E009214();
    v40 = sub_20E0091E4();
    v42 = v41;
    v43 = v113;
    v44 = *(v112 + 8);
    v44(v15, v113);
    v116 = v22;
    if (v42 >> 60 == 15)
    {
      if (qword_27C852040 != -1)
      {
        swift_once();
      }

      v45 = sub_20E009094();
      __swift_project_value_buffer(v45, qword_27C862650);
      v46 = sub_20E009074();
      v47 = sub_20E009544();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_20DF62000, v46, v47, "String encoding failed. Returning empty string", v48, 2u);
        MEMORY[0x20F32B3A0](v48, -1, -1);
      }

      v49 = 0;
      v50 = 0xE000000000000000;
    }

    else
    {
      v49 = sub_20E008B74();
      v50 = v51;
      sub_20DF64DE8(v40, v42);
    }

    *(v39 + 32) = v49;
    *(v39 + 40) = v50;
    sub_20E009214();
    v52 = sub_20E0091E4();
    v54 = v53;
    v44(v15, v43);
    if (v54 >> 60 == 15)
    {
      v55 = v111;
      if (qword_27C852040 != -1)
      {
        swift_once();
      }

      v56 = sub_20E009094();
      __swift_project_value_buffer(v56, qword_27C862650);
      v57 = sub_20E009074();
      v58 = sub_20E009544();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_20DF62000, v57, v58, "String encoding failed. Returning empty string", v59, 2u);
        MEMORY[0x20F32B3A0](v59, -1, -1);
      }

      v60 = 0;
      v61 = 0xE000000000000000;
    }

    else
    {
      v60 = sub_20E008B74();
      v61 = v62;
      sub_20DF64DE8(v52, v54);
      v55 = v111;
    }

    *(v39 + 48) = v60;
    *(v39 + 56) = v61;
    sub_20E008834();
    v63 = sub_20E0088D4();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v55, 1, v63) == 1)
    {
      sub_20DF66E28(v55, &qword_27C852F78, &qword_20E010888);
    }

    else
    {
      v65 = sub_20E008804();
      v67 = v66;
      (*(v64 + 8))(v55, v63);
      if (v67)
      {
        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          sub_20E009214();
          v69 = sub_20E0091E4();
          v71 = v70;
          v44(v15, v43);
          if (v71 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v72 = sub_20E009094();
            __swift_project_value_buffer(v72, qword_27C862650);
            v73 = sub_20E009074();
            v74 = sub_20E009544();
            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&dword_20DF62000, v73, v74, "String encoding failed. Returning empty string", v75, 2u);
              MEMORY[0x20F32B3A0](v75, -1, -1);
            }

            v76 = 0;
            v77 = 0xE000000000000000;
          }

          else
          {
            v76 = sub_20E008B74();
            v77 = v78;
            sub_20DF64DE8(v69, v71);
          }

          v80 = *(v39 + 16);
          v79 = *(v39 + 24);
          if (v80 >= v79 >> 1)
          {
            v39 = sub_20DFFAE38((v79 > 1), v80 + 1, 1, v39);
          }

          *(v39 + 16) = v80 + 1;
          v81 = v39 + 16 * v80;
          *(v81 + 32) = v76;
          *(v81 + 40) = v77;
        }

        else
        {
        }
      }
    }

    v83 = *(v39 + 16);
    v82 = *(v39 + 24);
    if (v83 >= v82 >> 1)
    {
      v39 = sub_20DFFAE38((v82 > 1), v83 + 1, 1, v39);
    }

    *(v39 + 16) = v83 + 1;
    v84 = v39 + 16 * v83;
    v85 = v108;
    *(v84 + 32) = v109;
    *(v84 + 40) = v85;
    v123 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0, MEMORY[0x277D83958]);
    v86 = sub_20E0091A4();
    v88 = v87;

    v89 = sub_20DFE3B80(v86, v88);
    v113 = v89;
    v91 = v90;
    v92 = v115;

    v123 = sub_20DFE3B80(v114, v92);
    v124 = v93;
    v94 = v117;
    sub_20E009104();
    v123 = v89;
    v124 = v91;
    sub_20E009144();
    sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_20DFF22E4();
    v95 = v119;
    sub_20E009124();
    v96 = v106;
    v125 = v106;
    v126 = sub_20DFC4DDC(&qword_27C853578, &qword_27C853568, &unk_20E013370, MEMORY[0x277CC53C0]);
    v97 = __swift_allocate_boxed_opaque_existential_0(&v123);
    v98 = v105;
    (*(v105 + 16))(v97, v95, v96);
    __swift_project_boxed_opaque_existential_1(&v123, v125);
    sub_20E0089C4();
    v99 = v121;
    v100 = v122;
    __swift_destroy_boxed_opaque_existential_0(&v123);
    v101 = sub_20E008B74();
    sub_20DF67FFC(v99, v100);
    sub_20DF67FFC(v113, v91);

    (*(v98 + 8))(v95, v96);
    (*(v118 + 8))(v94, v120);
    (*(v103 + 8))(v116, v104);
    return v101;
  }
}

uint64_t sub_20DFF02A0(uint64_t a1)
{
  v2 = sub_20E009234();
  v47 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v52 = 0xE000000000000000;
  v5 = *(a1 + 16);
  v44 = v3;
  if (v5)
  {
    v6 = sub_20DFFB47C(v5, 0);
    v7 = sub_20DFF1B64(&v49, v6 + 4, v5, a1);
    v8 = v49;

    sub_20DFF2510(v8);
    if (v7 != v5)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v44;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v49 = v6;
  sub_20DFF0F88(&v49);
  v9 = *(v49 + 2);
  if (v9)
  {
    ++v47;
    v43 = v49;
    v10 = (v49 + 40);
    do
    {
      if (*(a1 + 16))
      {
        v15 = *(v10 - 1);
        v14 = *v10;

        v16 = sub_20DFB85D0(v15, v14);
        if (v17)
        {
          v18 = (*(a1 + 56) + 16 * v16);
          v19 = v18[1];
          v45 = *v18;
          v46 = v19;

          v20 = v48;
          sub_20E009214();
          v21 = sub_20E0091E4();
          v23 = v22;
          v24 = *v47;
          (*v47)(v20, v2);
          if (v23 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v25 = sub_20E009094();
            __swift_project_value_buffer(v25, qword_27C862650);
            v26 = sub_20E009074();
            v27 = sub_20E009544();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&dword_20DF62000, v26, v27, "String encoding failed. Returning empty string", v28, 2u);
              v29 = v28;
              v2 = v44;
              MEMORY[0x20F32B3A0](v29, -1, -1);
            }

            v30 = 0;
            v31 = 0xE000000000000000;
          }

          else
          {
            v30 = sub_20E008B74();
            v31 = v32;
            sub_20DF64DE8(v21, v23);
          }

          v49 = v30;
          v50 = v31;
          MEMORY[0x20F32A4B0](124, 0xE100000000000000);
          MEMORY[0x20F32A4B0](v49, v50);

          v33 = v48;
          sub_20E009214();
          v34 = sub_20E0091E4();
          v36 = v35;
          v24(v33, v2);
          if (v36 >> 60 == 15)
          {
            if (qword_27C852040 != -1)
            {
              swift_once();
            }

            v37 = sub_20E009094();
            __swift_project_value_buffer(v37, qword_27C862650);
            v38 = sub_20E009074();
            v39 = sub_20E009544();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_20DF62000, v38, v39, "String encoding failed. Returning empty string", v40, 2u);
              v41 = v40;
              v2 = v44;
              MEMORY[0x20F32B3A0](v41, -1, -1);
            }

            v11 = 0;
            v13 = 0xE000000000000000;
          }

          else
          {
            v11 = sub_20E008B74();
            v13 = v12;
            sub_20DF64DE8(v34, v36);
          }

          v49 = v11;
          v50 = v13;
          MEMORY[0x20F32A4B0](124, 0xE100000000000000);
          MEMORY[0x20F32A4B0](v49, v50);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);

    return v51;
  }

  else
  {

    return 0;
  }
}

char *sub_20DFF077C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
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

char *sub_20DFF0888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
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

void *sub_20DFF097C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853598, &unk_20E013398);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8534E8, qword_20E013000) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20DFF0B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8535A0, &qword_20E0133A8);
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

void *sub_20DFF0C8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DFF0DC0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853588, &unk_20E013388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_20DFF0EF4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_20DFF2358(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_20DFF2410(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_20DFF248C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_20DFF0F88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DFF20E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_20DFF0FF4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_20DFF0FF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20E009954();
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
        v5 = sub_20E009454();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_20DFF11BC(v7, v8, a1, v4);
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
    return sub_20DFF10EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DFF10EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_20E009984(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DFF11BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_20DFF1A4C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_20DFF1798((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_20E009984();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_20E009984();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20DFF1A60(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_20DFF1A60((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_122:
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
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_20DFF1798((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_20DFF1A4C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_20DFF19C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_20E009984(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_20DFF1798(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_20E009984() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_20E009984() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_20DFF19C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DFF1A4C(v3);
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

char *sub_20DFF1A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C853580, &unk_20E013720);
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

void *sub_20DFF1B64(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20DFF1CBC(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20DFF1E24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_20E009144();
      sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_20E0090C4();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_20DFF2004(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_20DFF2004(v5, v6);
  }

  sub_20E009144();
  sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_20E0090C4();
}

uint64_t sub_20DFF2004(uint64_t a1, uint64_t a2)
{
  result = sub_20E008904();
  if (!result || (result = sub_20E008934(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_20E008924();
      sub_20E009144();
      sub_20DFF2518(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_20E0090C4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFF20F8()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredLanguages];
  if (!v1)
  {
    sub_20E009424();
    v1 = sub_20E009414();
  }

  v2 = [v0 minimizedLanguagesFromLanguages_];

  v3 = sub_20E009424();
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = 28261;
    goto LABEL_10;
  }

  v5 = *(v3 + 32);

  if (v4 == 1)
  {
LABEL_10:

    return v5;
  }

  v7 = (v3 + 56);
  v8 = 1;
  v9 = 9;
  while (v8 < v4)
  {
    ++v8;
    v11 = *(v7 - 1);
    v10 = *v7;

    MEMORY[0x20F32A4B0](v11, v10);
    MEMORY[0x20F32A4B0](0x2E303D713BLL, 0xE500000000000000);
    v12 = sub_20E009964();
    MEMORY[0x20F32A4B0](v12);

    MEMORY[0x20F32A4B0](44, 0xE100000000000000);

    v4 = *(v3 + 16);
    v7 += 2;
    --v9;
    if (v8 == v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20DFF22E4()
{
  result = qword_27C853570;
  if (!qword_27C853570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C853570);
  }

  return result;
}

unint64_t sub_20DFF2338(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DFF2358(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_20DFF2410(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_20E008944();
  swift_allocObject();
  result = sub_20E0088F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20E008B34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_20DFF248C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_20E008944();
  swift_allocObject();
  result = sub_20E0088F4();
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

uint64_t sub_20DFF2518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DFF2560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v7[10] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[14] = v10;
  *v10 = v7;
  v10[1] = sub_20DFF2698;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DFF2698()
{

  return MEMORY[0x2822009F8](sub_20DFF2794, 0, 0);
}

uint64_t sub_20DFF2794()
{
  KeyPath = swift_getKeyPath();
  v0[15] = KeyPath;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_20DFF2854;
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  return sub_20DF66FB0(v3, v8, v9, v6, v7, v4, v5, KeyPath);
}

uint64_t sub_20DFF2854()
{

  return MEMORY[0x2822009F8](sub_20DFF296C, 0, 0);
}

uint64_t sub_20DFF296C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626E0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for TokenSet Generation", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD00000000000001DLL, 0x800000020E017630, 0xD00000000000002ELL, 0x800000020E017650);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_20DFF2C28;
    v12 = v0[13];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFF2C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = v3;

  if (v3)
  {
    v6 = sub_20DFCC4C4;
  }

  else
  {
    v6 = sub_20DFF2D40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFF2D40()
{
  v113 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v27 = sub_20E009094();
    __swift_project_value_buffer(v27, qword_27C8626E0);
    v28 = sub_20E009074();
    v29 = sub_20E009544();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20DF62000, v28, v29, "Unable to process Address Verification Response.", v30, 2u);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

    v31 = *(v0 + 152);
    v32 = *(v0 + 160);
    v33 = *(v0 + 144);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    *v37 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v33, v31);
    goto LABEL_53;
  }

  v2 = v1;
  v3 = *(v0 + 160);
  sub_20DFDFFF8(0xD000000000000016, 0x800000020E017680, [v2 statusCode], &unk_28252DF10);
  v4 = [v2 statusCode];
  if (v4 > 411)
  {
    if (v4 == 412)
    {
      if (*(v0 + 48))
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v62 = sub_20E009094();
        __swift_project_value_buffer(v62, qword_27C8626E0);
        v63 = sub_20E009074();
        v64 = sub_20E009544();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v112[0] = v66;
          *v65 = 136315138;
          *(v65 + 4) = sub_20DF74468(0xD000000000000051, 0x800000020E017700, v112);
          _os_log_impl(&dword_20DF62000, v63, v64, "%s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x20F32B3A0](v66, -1, -1);
          MEMORY[0x20F32B3A0](v65, -1, -1);
        }
      }

      else
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v95 = sub_20E009094();
        __swift_project_value_buffer(v95, qword_27C8626E0);
        v63 = sub_20E009074();
        v96 = sub_20E009544();
        if (os_log_type_enabled(v63, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v112[0] = v98;
          *v97 = 136315138;
          *(v97 + 4) = sub_20DF74468(0xD000000000000056, 0x800000020E0176A0, v112);
          _os_log_impl(&dword_20DF62000, v63, v96, "%s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x20F32B3A0](v98, -1, -1);
          MEMORY[0x20F32B3A0](v97, -1, -1);
        }
      }

      v99 = *(v0 + 152);
      v100 = *(v0 + 160);
      v101 = *(v0 + 144);
      v103 = *(v0 + 96);
      v102 = *(v0 + 104);
      v104 = *(v0 + 88);
      type metadata accessor for NetworkError(0);
      sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v101, v99);

      (*(v103 + 8))(v102, v104);
      goto LABEL_54;
    }

    if (v4 != 429)
    {
      if (v4 == 500)
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v38 = sub_20E009094();
        __swift_project_value_buffer(v38, qword_27C8626E0);
        v39 = sub_20E009074();
        v40 = sub_20E009544();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_20DF62000, v39, v40, "Internal Server Error", v41, 2u);
          MEMORY[0x20F32B3A0](v41, -1, -1);
        }

        v43 = *(v0 + 152);
        v42 = *(v0 + 160);
        v44 = *(v0 + 144);
        v45 = *(v0 + 96);
        v107 = *(v0 + 88);
        v110 = *(v0 + 104);

        type metadata accessor for NetworkError(0);
        sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
        swift_allocError();
        *v46 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v44, v43);

        (*(v45 + 8))(v110, v107);
        goto LABEL_54;
      }

      goto LABEL_39;
    }

    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v79 = sub_20E009094();
    __swift_project_value_buffer(v79, qword_27C8626E0);
    v76 = sub_20E009074();
    v80 = sub_20E009544();
    if (os_log_type_enabled(v76, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20DF62000, v76, v80, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v81, 2u);
      MEMORY[0x20F32B3A0](v81, -1, -1);
    }

    goto LABEL_52;
  }

  if (v4 != 201)
  {
    if (v4 != 400)
    {
      if (v4 == 401)
      {
        if (qword_27C852080 != -1)
        {
          swift_once();
        }

        v5 = sub_20E009094();
        __swift_project_value_buffer(v5, qword_27C8626E0);
        v6 = sub_20E009074();
        v7 = sub_20E009544();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v112[0] = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_20DF74468(0xD000000000000068, 0x800000020E017760, v112);
          _os_log_impl(&dword_20DF62000, v6, v7, "%s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          MEMORY[0x20F32B3A0](v9, -1, -1);
          MEMORY[0x20F32B3A0](v8, -1, -1);
        }

        v10 = *(v0 + 160);
        v11 = sub_20E009074();
        v12 = sub_20E009534();

        v13 = os_log_type_enabled(v11, v12);
        v15 = *(v0 + 152);
        v14 = *(v0 + 160);
        v16 = *(v0 + 144);
        v17 = *(v0 + 96);
        v18 = *(v0 + 104);
        v19 = *(v0 + 88);
        if (v13)
        {
          v109 = *(v0 + 152);
          v20 = swift_slowAlloc();
          v106 = v16;
          v21 = swift_slowAlloc();
          v112[0] = v21;
          *v20 = 136315138;
          v22 = [v2 allHeaderFields];
          v105 = v17;
          sub_20E009164();

          v23 = sub_20E009174();
          v25 = v24;

          v26 = sub_20DF74468(v23, v25, v112);

          *(v20 + 4) = v26;
          _os_log_impl(&dword_20DF62000, v11, v12, "Headers: %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x20F32B3A0](v21, -1, -1);
          MEMORY[0x20F32B3A0](v20, -1, -1);

          type metadata accessor for NetworkError(0);
          sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_20DF67FFC(v106, v109);

          (*(v105 + 8))(v18, v19);
        }

        else
        {

          type metadata accessor for NetworkError(0);
          sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_20DF67FFC(v16, v15);

          (*(v17 + 8))(v18, v19);
        }

        goto LABEL_54;
      }

LABEL_39:
      if (qword_27C852070 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 160);
      v68 = sub_20E009094();
      __swift_project_value_buffer(v68, qword_27C8626B0);
      v69 = v67;
      v70 = sub_20E009074();
      v71 = sub_20E009544();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = *(v0 + 160);
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = [v2 statusCode];

        _os_log_impl(&dword_20DF62000, v70, v71, "Request failed : Status Code %ld", v73, 0xCu);
        MEMORY[0x20F32B3A0](v73, -1, -1);
        v74 = *(v0 + 160);
      }

      else
      {

        v74 = *(v0 + 160);
        v70 = v74;
      }

      v87 = *(v0 + 144);
      v86 = *(v0 + 152);
      v88 = *(v0 + 96);
      v108 = *(v0 + 88);
      v111 = *(v0 + 104);

      type metadata accessor for NetworkError(0);
      sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
      swift_allocError();
      *v89 = [v2 statusCode];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v87, v86);

      (*(v88 + 8))(v111, v108);
      goto LABEL_54;
    }

    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v75 = sub_20E009094();
    __swift_project_value_buffer(v75, qword_27C8626E0);
    v76 = sub_20E009074();
    v77 = sub_20E009544();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_20DF62000, v76, v77, "BAD REQUEST | Check request", v78, 2u);
      MEMORY[0x20F32B3A0](v78, -1, -1);
    }

LABEL_52:
    v82 = *(v0 + 152);
    v32 = *(v0 + 160);
    v83 = *(v0 + 144);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);

    type metadata accessor for NetworkError(0);
    sub_20DFF3F10(&qword_281123200, type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v83, v82);

LABEL_53:
    (*(v35 + 8))(v34, v36);
LABEL_54:

    v84 = *(v0 + 8);

    return v84();
  }

  if (qword_27C852080 != -1)
  {
    swift_once();
  }

  v47 = sub_20E009094();
  __swift_project_value_buffer(v47, qword_27C8626E0);
  v48 = sub_20E009074();
  v49 = sub_20E009554();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_20DF62000, v48, v49, "Address Verification Response received", v50, 2u);
    MEMORY[0x20F32B3A0](v50, -1, -1);
  }

  v51 = *(v0 + 168);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  type metadata accessor for UtilitySubscriptionTokenSet();
  sub_20DFF3F10(&qword_27C8528A8, type metadata accessor for UtilitySubscriptionTokenSet, &protocol conformance descriptor for UtilitySubscriptionTokenSet);
  sub_20E008724();
  if (v51)
  {
    v52 = v51;

    v53 = sub_20E009074();
    v54 = sub_20E009544();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20DF62000, v53, v54, "Error while decoding response from server", v55, 2u);
      MEMORY[0x20F32B3A0](v55, -1, -1);
    }

    v56 = *(v0 + 152);
    v57 = *(v0 + 160);
    v58 = *(v0 + 144);
    v60 = *(v0 + 96);
    v59 = *(v0 + 104);
    v61 = *(v0 + 88);

    sub_20DFFE0B0(v52);
    swift_willThrow();
    sub_20DF67FFC(v58, v56);

    (*(v60 + 8))(v59, v61);
    goto LABEL_54;
  }

  v90 = *(v0 + 152);
  v91 = *(v0 + 160);
  v92 = *(v0 + 144);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_20DF67FFC(v92, v90);
  v93 = *(v0 + 16);

  v94 = *(v0 + 8);

  return v94(v93);
}

uint64_t sub_20DFF3F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DFF3F58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20E008D04();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20E008714();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v2[10] = swift_task_alloc();
  v5 = sub_20E008AF4();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFF4114, 0, 0);
}

uint64_t sub_20DFF4114()
{
  if (*(v0[3] + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 56))
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[10];

    sub_20E008AC4();

    if ((*(v2 + 48))(v3, 1, v1) != 1)
    {
      v12 = v0[13];
      v11 = v0[14];
      v13 = v0[11];
      v14 = v0[12];
      v15 = v0[9];
      v16 = v0[8];
      v18 = v0[5];
      v17 = v0[6];
      v21 = v0[4];
      v22 = v0[2];
      v23 = v0[7];
      (*(v14 + 32))(v11, v0[10], v13);
      (*(v14 + 16))(v12, v11, v13);
      sub_20E0086B4();
      sub_20E008694();
      sub_20E008CF4();
      sub_20E008CE4();
      (*(v18 + 8))(v17, v21);
      sub_20E009254();

      sub_20E0086D4();

      sub_20E005CA0(0, v22);
      (*(v16 + 8))(v15, v23);
      (*(v14 + 8))(v11, v13);
      goto LABEL_10;
    }

    sub_20DF66E28(v0[10], &qword_27C8520D0, &qword_20E00AB70);
  }

  if (qword_27C852078 != -1)
  {
    swift_once();
  }

  v4 = sub_20E009094();
  __swift_project_value_buffer(v4, qword_27C8626C8);
  v5 = sub_20E009074();
  v6 = sub_20E009544();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate send OTP URL for TAF Flow.", v7, 2u);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[2];

  (*(v9 + 56))(v10, 1, 1, v8);
LABEL_10:

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DFF446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_20E008D04();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_20E008714();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v4[21] = swift_task_alloc();
  v7 = sub_20E008AF4();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFF4658, 0, 0);
}

uint64_t sub_20DFF4658()
{
  if (!*(*(v0 + 96) + OBJC_IVAR____TtC19HomeUtilityServices21TAFVerificationFactor__factor + 56))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  sub_20E008AC4();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 168), &qword_27C8520D0, &qword_20E00AB70);
LABEL_4:
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626C8);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate verify OTP URL for TAF Flow.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = *(v0 + 88);

    (*(v9 + 56))(v10, 1, 1, v8);
    goto LABEL_16;
  }

  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  (*(*(v0 + 184) + 32))(*(v0 + 200), *(v0 + 168), *(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x65646F4373736170;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v11;

  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  v14 = objc_opt_self();
  v15 = sub_20E009154();

  *(v0 + 80) = 0;
  v16 = [v14 dataWithJSONObject:v15 options:0 error:v0 + 80];

  v17 = *(v0 + 80);
  if (v16)
  {
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 160);
    v44 = *(v0 + 152);
    v23 = *(v0 + 136);
    v45 = *(v0 + 144);
    v24 = *(v0 + 128);
    v42 = *(v0 + 120);
    v43 = *(v0 + 88);
    v25 = sub_20E008B84();
    v41 = v26;

    (*(v20 + 16))(v19, v18, v21);
    sub_20E0086B4();
    sub_20E008694();
    sub_20DF67FA8(v25, v41);
    sub_20E0086F4();
    sub_20E008CF4();
    sub_20E008CE4();
    (*(v24 + 8))(v23, v42);
    sub_20E009254();

    sub_20E0086D4();

    sub_20E005CA0(1, v43);
    sub_20DF67FFC(v25, v41);
    (*(v44 + 8))(v22, v45);
    (*(v20 + 8))(v18, v21);
  }

  else
  {
    v27 = v17;
    v28 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852078 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_27C8626C8);
    v30 = sub_20E009074();
    v31 = sub_20E009544();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Unable to encode TAF OTP Passcode", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    v33 = *(v0 + 200);
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 144);
    v37 = *(v0 + 152);
    v38 = *(v0 + 88);

    (*(v35 + 8))(v33, v34);
    (*(v37 + 56))(v38, 1, 1, v36);
  }

LABEL_16:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_20DFF54A8(int a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  (*(v5 + 2))(v5, 0, 0);
  _Block_release(v5);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t UtilitySubscriptionService.createUtilitySubscription(serviceLocation:accessToken:siteID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFF5550, 0, 0);
}

uint64_t sub_20DFF5550()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_serviceLocationID);
  v3 = *v1;
  v2 = v1[1];
  v4 = (*(v0[6] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[7] = v6;

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_20DFF5668;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_20DF873C4(v3, v2, v10, v8, v5, v6, v9);
}

uint64_t sub_20DFF5668(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFAA7FC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_20DFF596C(void *a1, uint64_t a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v6[6] = sub_20E0091D4();
  v6[7] = v10;
  v11 = a1;
  v12 = a4;
  v13 = a6;

  return MEMORY[0x2822009F8](sub_20DFF5A14, 0, 0);
}

uint64_t sub_20DFF5A14()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_serviceLocationID);
  v3 = *v1;
  v2 = v1[1];
  v4 = (*(v0[4] + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) + OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config);
  v5 = *v4;
  v6 = v4[1];
  v0[8] = v6;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_20DFF5B2C;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[3];

  return sub_20DF873C4(v3, v2, v8, v9, v5, v6, v10);
}

uint64_t sub_20DFF5B2C(void *a1)
{
  v4 = *v2;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20DFF5CC4, 0, 0);
  }

  else
  {
    v6 = v4[4];
    v5 = v4[5];
    v7 = v4[2];
    v8 = v4[3];

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v9 = v4[1];

    return v9();
  }
}