uint64_t sub_2236F9644(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F9664, v1, 0);
}

uint64_t sub_2236F9664()
{
  v39 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v38[0] = v10;
    v12 = 0x8000000223734360;
    v13 = 0xD00000000000001FLL;
    v14 = 0x6C616E6946707274;
    v15 = 0xEC00000064657A69;
    if (v11 != 3)
    {
      v14 = 0xD000000000000010;
      v15 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x696C616974696E69;
    if (v11)
    {
      v16 = 0x6E69766965636572;
    }

    v17 = 0xEB0000000064657ALL;
    if (v11)
    {
      v17 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    if (v11 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v12;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, v38);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 24);
  v24 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && !*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_25;
  }

  v25 = sub_22372B6E8();

  if (v25)
  {
LABEL_27:
    *(v23 + v24) = 1;
    v27 = *(v0 + 8);
    goto LABEL_28;
  }

  if (*(v23 + v24) <= 1u && *(v23 + v24))
  {
LABEL_25:

    goto LABEL_27;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
    goto LABEL_27;
  }

  v29 = sub_22372AC88();
  v30 = sub_22372B278();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = 0xEB0000000064657ALL;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    v34 = *(v23 + v24);
    if (v34 <= 1)
    {
      v35 = 0x696C616974696E69;
      if (*(v23 + v24))
      {
        v35 = 0x6E69766965636572;
        v31 = 0xED00007350525467;
      }
    }

    else if (v34 == 2)
    {
      v31 = 0x8000000223734360;
      v35 = 0xD00000000000001FLL;
    }

    else if (v34 == 3)
    {
      v35 = 0x6C616E6946707274;
      v31 = 0xEC00000064657A69;
    }

    else
    {
      v35 = 0xD000000000000010;
      v31 = 0x8000000223734390;
    }

    v36 = sub_223623274(v35, v31, v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_223620000, v29, v30, "Received TRPCandidateRequestMessage when state: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x223DE8A80](v33, -1, -1);
    MEMORY[0x223DE8A80](v32, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v37 = xmmword_223732A20;
  *(v37 + 16) = 4;
  swift_willThrow();
  v27 = *(v0 + 8);
LABEL_28:

  return v27();
}

uint64_t sub_2236F9CBC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_223729F08();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F9EC0, v1, 0);
}

uint64_t sub_2236F9EC0()
{
  v139 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = &unk_28132B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v138[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    if (!*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v17 = 0x696C616974696E69;
    }

    v18 = 0xED00007350525467;
    if (!*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v18 = 0xEB0000000064657ALL;
    }

    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = 0xEB0000000064657ALL;
    v23 = *(v0 + 112);
    v24 = sub_223623274(v19, v20, v138);

    *(v9 + 14) = v24;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v6 = &unk_28132B000;
  }

  else
  {
    v22 = 0xEB0000000064657ALL;
  }

  v25 = *(v0 + 112);
  v26 = sub_22372AC88();
  v27 = sub_22372B288();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v138[0] = v29;
    *v28 = 136446210;
    v30 = sub_223728CF8();
    v32 = sub_223623274(v30, v31, v138);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_223620000, v26, v27, "Received NLTRPCandidateMessage for trpId: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x223DE8A80](v29, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  v33 = *(v0 + 120);
  v34 = v6[311];
  if (*(v33 + v34) <= 1u && *(v33 + v34))
  {
  }

  else
  {
    v35 = sub_22372B6E8();

    if ((v35 & 1) == 0)
    {

      v77 = sub_22372AC88();
      v78 = sub_22372B278();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v138[0] = v80;
        *v79 = 136315138;
        v81 = *(v33 + v34);
        if (v81 <= 1)
        {
          if (*(v33 + v34))
          {
            v82 = 0x6E69766965636572;
            v22 = 0xED00007350525467;
          }

          else
          {
            v82 = 0x696C616974696E69;
          }
        }

        else if (v81 == 2)
        {
          v22 = 0x8000000223734360;
          v82 = 0xD00000000000001FLL;
        }

        else if (v81 == 3)
        {
          v82 = 0x6C616E6946707274;
          v22 = 0xEC00000064657A69;
        }

        else
        {
          v22 = 0x8000000223734390;
          v82 = 0xD000000000000010;
        }

        v101 = sub_223623274(v82, v22, v138);

        *(v79 + 4) = v101;
        _os_log_impl(&dword_223620000, v77, v78, "Received NLTRPCandidateMessage when state: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x223DE8A80](v80, -1, -1);
        MEMORY[0x223DE8A80](v79, -1, -1);
      }

      v93 = 0;
      v94 = 4;
      v91 = 2;
      goto LABEL_53;
    }
  }

  v36 = *(v0 + 120);
  v37 = sub_223728CF8();
  v39 = v38;
  v40 = v36 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v41 = *(v40 + 8);
  if (!*(v41 + 16))
  {

    goto LABEL_40;
  }

  v42 = sub_2236261A0(v37, v39);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_40:
    v83 = *(v0 + 112);
    v84 = sub_22372AC88();
    v85 = sub_22372B278();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v138[0] = v87;
      *v86 = 136315138;
      v88 = sub_223728CF8();
      v90 = sub_223623274(v88, v89, v138);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_223620000, v84, v85, "No TRP cache found for trpId = %s. Could not cache NLTRPCandidateMessage", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x223DE8A80](v87, -1, -1);
      MEMORY[0x223DE8A80](v86, -1, -1);
    }

    v91 = sub_223728CF8();
    v93 = v92;
    v94 = 0;
LABEL_53:
    sub_223657180();
    swift_allocError();
    *v102 = v91;
    *(v102 + 8) = v93;
    *(v102 + 16) = v94;
    swift_willThrow();

    v103 = *(v0 + 8);
    goto LABEL_54;
  }

  v46 = *(v0 + 232);
  v45 = *(v0 + 240);
  v137 = v40;
  v47 = *(v0 + 224);
  v136 = *(v0 + 216);
  v48 = *(v0 + 208);
  v49 = *(v0 + 112);
  sub_22370BCAC(*(v41 + 56) + *(v47 + 72) * v42, v46);
  sub_22370BE08(v46, v45);
  v50 = *(v45 + 24);
  v51 = v49;

  *(v45 + 24) = v49;
  v52 = sub_223728CF8();
  v54 = v53;
  sub_22370BCAC(v45, v48);
  (*(v47 + 56))(v48, 0, 1, v136);
  swift_beginAccess();
  sub_223714400(v48, v52, v54);
  swift_endAccess();
  v55 = v51;
  v56 = sub_22372AC88();
  v57 = sub_22372B268();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v138[0] = v59;
    *v58 = 136315138;
    v60 = sub_223728CF8();
    v62 = sub_223623274(v60, v61, v138);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_223620000, v56, v57, "Caching NLTRPCandidateMessage for id %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x223DE8A80](v59, -1, -1);
    MEMORY[0x223DE8A80](v58, -1, -1);
  }

  v63 = *(v0 + 120);
  sub_2236453C4(*(v0 + 240), type metadata accessor for RootRequestController.TRPCache);
  v64 = &unk_28132B000;
  if (*(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
  {
    v65 = *(v0 + 200);
    v66 = *(v0 + 168);
    v67 = *(v0 + 152);
    v68 = *(v0 + 128);
    v69 = *(v0 + 136);
    v70 = *(v0 + 120);
    v71 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType;
    swift_beginAccess();
    (*(v69 + 104))(v65, *MEMORY[0x277D5CF28], v68);
    (*(v69 + 56))(v65, 0, 1, v68);
    v72 = *(v67 + 48);
    sub_223634890(v70 + v71, v66, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v65, v66 + v72, &qword_27D08E9D0, &qword_22372D1E0);
    v73 = *(v69 + 48);
    if (v73(v66, 1, v68) == 1)
    {
      v74 = *(v0 + 128);
      sub_223626478(*(v0 + 200), &qword_27D08E9D0, &qword_22372D1E0);
      v75 = v73(v66 + v72, 1, v74);
      v64 = &unk_28132B000;
      if (v75 == 1)
      {
        sub_223626478(*(v0 + 168), &qword_27D08E9D0, &qword_22372D1E0);
        v76 = v137;
LABEL_58:
        if ((*(v76 + 2) & 1) == 0)
        {
          v111 = sub_2237282B8();
          sub_223708F50(v111);
        }

        goto LABEL_60;
      }
    }

    else
    {
      v95 = *(v0 + 128);
      sub_223634890(*(v0 + 168), *(v0 + 192), &qword_27D08E9D0, &qword_22372D1E0);
      v96 = v73(v66 + v72, 1, v95);
      v97 = *(v0 + 192);
      v98 = *(v0 + 200);
      if (v96 != 1)
      {
        v105 = *(v0 + 168);
        v107 = *(v0 + 136);
        v106 = *(v0 + 144);
        v108 = *(v0 + 128);
        (*(v107 + 32))(v106, v66 + v72, v108);
        sub_223623428(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
        v109 = sub_22372AFC8();
        v110 = *(v107 + 8);
        v110(v106, v108);
        sub_223626478(v98, &qword_27D08E9D0, &qword_22372D1E0);
        v110(v97, v108);
        sub_223626478(v105, &qword_27D08E9D0, &qword_22372D1E0);
        v76 = v137;
        v64 = &unk_28132B000;
        if ((v109 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v99 = *(v0 + 128);
      v100 = *(v0 + 136);
      sub_223626478(*(v0 + 200), &qword_27D08E9D0, &qword_22372D1E0);
      (*(v100 + 8))(v97, v99);
      v64 = &unk_28132B000;
    }

    sub_223626478(*(v0 + 168), &qword_27D08F740, &unk_223731DC0);
  }

LABEL_60:
  v112 = *(v0 + 184);
  v114 = *(v0 + 152);
  v113 = *(v0 + 160);
  v115 = *(v0 + 128);
  v116 = *(v0 + 136);
  v117 = *(v0 + 120);
  v118 = v64[322];
  swift_beginAccess();
  (*(v116 + 104))(v112, *MEMORY[0x277D5CF40], v115);
  (*(v116 + 56))(v112, 0, 1, v115);
  v119 = *(v114 + 48);
  sub_223634890(v117 + v118, v113, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v112, v113 + v119, &qword_27D08E9D0, &qword_22372D1E0);
  v120 = *(v116 + 48);
  if (v120(v113, 1, v115) == 1)
  {
    v121 = *(v0 + 128);
    sub_223626478(*(v0 + 184), &qword_27D08E9D0, &qword_22372D1E0);
    if (v120(v113 + v119, 1, v121) == 1)
    {
      sub_223626478(*(v0 + 160), &qword_27D08E9D0, &qword_22372D1E0);
LABEL_67:
      v134 = sub_223728CF8();
      sub_2237007C8(v134, v135);

      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v122 = *(v0 + 128);
  sub_223634890(*(v0 + 160), *(v0 + 176), &qword_27D08E9D0, &qword_22372D1E0);
  v123 = v120(v113 + v119, 1, v122);
  v124 = *(v0 + 176);
  v125 = *(v0 + 184);
  if (v123 == 1)
  {
    v126 = *(v0 + 128);
    v127 = *(v0 + 136);
    sub_223626478(*(v0 + 184), &qword_27D08E9D0, &qword_22372D1E0);
    (*(v127 + 8))(v124, v126);
LABEL_65:
    sub_223626478(*(v0 + 160), &qword_27D08F740, &unk_223731DC0);
    goto LABEL_68;
  }

  v128 = *(v0 + 160);
  v130 = *(v0 + 136);
  v129 = *(v0 + 144);
  v131 = *(v0 + 128);
  (*(v130 + 32))(v129, v113 + v119, v131);
  sub_223623428(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v132 = sub_22372AFC8();
  v133 = *(v130 + 8);
  v133(v129, v131);
  sub_223626478(v125, &qword_27D08E9D0, &qword_22372D1E0);
  v133(v124, v131);
  sub_223626478(v128, &qword_27D08E9D0, &qword_22372D1E0);
  if (v132)
  {
    goto LABEL_67;
  }

LABEL_68:

  v103 = *(v0 + 8);
LABEL_54:

  return v103();
}

uint64_t sub_2236FAEAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236FAECC, v1, 0);
}

uint64_t sub_2236FAECC()
{
  v46 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v12 = 0x8000000223734360;
    v13 = 0xD00000000000001FLL;
    v14 = 0x6C616E6946707274;
    v15 = 0xEC00000064657A69;
    if (v11 != 3)
    {
      v14 = 0xD000000000000010;
      v15 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x6E69766965636572;
    if (!*(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v16 = 0x696C616974696E69;
    }

    v17 = 0xED00007350525467;
    if (!*(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v17 = 0xEB0000000064657ALL;
    }

    if (*(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    if (v11 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v12;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, v45);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 24);
  v24 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_30;
  }

  v25 = sub_22372B6E8();

  if (v25)
  {
LABEL_31:
    *(v23 + v24) = 3;
    v36 = sub_223728CF8();
    v38 = v37;
    v39 = sub_223728AA8();
    sub_223707B00(v36, v38, v39, v40);

    goto LABEL_32;
  }

  if (*(v23 + v24) == 2)
  {
LABEL_30:

    goto LABEL_31;
  }

  v26 = 0x8000000223734360;
  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_31;
  }

  v28 = sub_22372AC88();
  v29 = sub_22372B278();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    v45[0] = v31;
    *v30 = 136315138;
    v33 = *(v23 + v24);
    if (v33 <= 1)
    {
      if (*(v23 + v24))
      {
        v35 = 0x6E69766965636572;
        v26 = 0xED00007350525467;
      }

      else
      {
        v26 = 0xEB0000000064657ALL;
        v35 = 0x696C616974696E69;
      }
    }

    else
    {
      if (v33 != 2)
      {
        v34 = v31;
        if (v33 == 3)
        {
          v35 = 0x6C616E6946707274;
          v26 = 0xEC00000064657A69;
        }

        else
        {
          v26 = 0x8000000223734390;
          v35 = 0xD000000000000010;
        }

        goto LABEL_41;
      }

      v35 = 0xD00000000000001FLL;
    }

    v34 = v32;
LABEL_41:
    v43 = sub_223623274(v35, v26, v45);

    *(v30 + 4) = v43;
    _os_log_impl(&dword_223620000, v28, v29, "Received ExecutionFinalizedMessage when state: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v44 = xmmword_223732A20;
  *(v44 + 16) = 4;
  swift_willThrow();
LABEL_32:
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2236FB560(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FB580, v1, 0);
}

uint64_t sub_2236FB580()
{
  v53 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = &unk_28132B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v18 = 0xED00007350525467;
    }

    else
    {
      v17 = 0x696C616974696E69;
      v18 = 0xEB0000000064657ALL;
    }

    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 40);
    v23 = sub_223623274(v19, v20, v52);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v6 = &unk_28132B000;
  }

  else
  {
  }

  v24 = *(v0 + 48);
  v25 = v6[311];
  if (*(v24 + v25) <= 1u && *(v24 + v25))
  {

LABEL_23:
    v27 = *(v0 + 40);
    v28 = *(v0 + 48) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
    *(v28 + 48) = &off_2836C7098;
    v30 = v27;

    v31 = sub_223729BF8();
    v33 = v32;
    v34 = sub_223708590(v31, v32);
    if (v34)
    {
      v35 = v34;
      sub_2236FC334(v31, v33, v34);
    }

    else
    {

      v43 = sub_22372AC88();
      v44 = sub_22372B268();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v52[0] = v46;
        *v45 = 136315138;
        v47 = sub_223623274(v31, v33, v52);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_223620000, v43, v44, "TTResponse not received for userLevelTRPCandidateId %s yet.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x223DE8A80](v46, -1, -1);
        MEMORY[0x223DE8A80](v45, -1, -1);
      }

      else
      {
      }
    }

    v48 = *(v0 + 8);
    goto LABEL_41;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
    goto LABEL_23;
  }

  v36 = 0xEB0000000064657ALL;

  v37 = sub_22372AC88();
  v38 = sub_22372B278();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315138;
    v41 = *(v24 + v25);
    if (v41 <= 1)
    {
      if (*(v24 + v25))
      {
        v42 = 0x6E69766965636572;
        v36 = 0xED00007350525467;
      }

      else
      {
        v42 = 0x696C616974696E69;
      }
    }

    else if (v41 == 2)
    {
      v36 = 0x8000000223734360;
      v42 = 0xD00000000000001FLL;
    }

    else if (v41 == 3)
    {
      v42 = 0x6C616E6946707274;
      v36 = 0xEC00000064657A69;
    }

    else
    {
      v42 = 0xD000000000000010;
      v36 = 0x8000000223734390;
    }

    v49 = sub_223623274(v42, v36, v52);

    *(v39 + 4) = v49;
    _os_log_impl(&dword_223620000, v37, v38, "Received StoppedListeningForSpeechContinuationForPlannerMessage when state: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v50 = xmmword_223732A20;
  *(v50 + 16) = 4;
  swift_willThrow();
  v48 = *(v0 + 8);
LABEL_41:

  return v48();
}

uint64_t sub_2236FBC80(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FBCA0, v1, 0);
}

uint64_t sub_2236FBCA0()
{
  v51 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = &unk_28132B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
    {
      v18 = 0xED00007350525467;
    }

    else
    {
      v17 = 0x696C616974696E69;
      v18 = 0xEB0000000064657ALL;
    }

    if (*(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 40);
    v23 = sub_223623274(v19, v20, v50);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v6 = &unk_28132B000;
  }

  else
  {
  }

  v24 = *(v0 + 48);
  v25 = v6[311];
  if (*(v24 + v25) <= 1u && *(v24 + v25))
  {

LABEL_23:
    v27 = *(v0 + 40);
    v28 = *(v0 + 48) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
    *(v28 + 48) = &off_2836C7088;
    v30 = v27;

    v31 = sub_223729B58();
    v33 = v32;
    v34 = sub_223708590(v31, v32);
    if (v34)
    {
      v35 = v34;
      sub_2236FC334(v31, v33, v34);
    }

    else
    {

      v43 = sub_22372AC88();
      v44 = sub_22372B288();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_223620000, v43, v44, "TTResponse not received for the lastTrpId yet.", v45, 2u);
        MEMORY[0x223DE8A80](v45, -1, -1);
      }
    }

    v46 = *(v0 + 8);
    goto LABEL_41;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
    goto LABEL_23;
  }

  v36 = 0xEB0000000064657ALL;

  v37 = sub_22372AC88();
  v38 = sub_22372B278();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v39 = 136315138;
    v41 = *(v24 + v25);
    if (v41 <= 1)
    {
      if (*(v24 + v25))
      {
        v42 = 0x6E69766965636572;
        v36 = 0xED00007350525467;
      }

      else
      {
        v42 = 0x696C616974696E69;
      }
    }

    else if (v41 == 2)
    {
      v36 = 0x8000000223734360;
      v42 = 0xD00000000000001FLL;
    }

    else if (v41 == 3)
    {
      v42 = 0x6C616E6946707274;
      v36 = 0xEC00000064657A69;
    }

    else
    {
      v42 = 0xD000000000000010;
      v36 = 0x8000000223734390;
    }

    v47 = sub_223623274(v42, v36, v50);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_223620000, v37, v38, "Received  StoppedListeningForSpeechContinuationMessage when state: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v48 = xmmword_223732A20;
  *(v48 + 16) = 4;
  swift_willThrow();
  v46 = *(v0 + 8);
LABEL_41:

  return v46();
}

void sub_2236FC334(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v118 = sub_223727F38();
  v8 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v9);
  v98 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9A0, &qword_223732F18);
  MEMORY[0x28223BE20](v110, v11);
  v109 = &v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v117 = &v91 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v91 - v22;
  v24 = type metadata accessor for RootRequestController.TRPCache(0);
  v113 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v112 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v111 = &v91 - v29;
  if ((*(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) & 1) == 0)
  {
    v75 = a1;
    v76 = a2;
    v77 = a3;
LABEL_24:
    sub_2236FCE70(v75, v76, v77);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v92 = a1;
  v93 = a2;
  v30 = sub_22372AC98();
  v31 = __swift_project_value_buffer(v30, qword_28132B680);

  v95 = v31;
  v32 = sub_22372AC88();
  v33 = sub_22372B268();

  v34 = os_log_type_enabled(v32, v33);
  v96 = v4;
  v101 = v17;
  v116 = v23;
  v94 = a3;
  v115 = v8;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v119 = v36;
    *v35 = 136315138;
    swift_beginAccess();

    v38 = MEMORY[0x223DE7B80](v37, MEMORY[0x277D837D0]);
    v40 = v39;

    v41 = sub_223623274(v38, v40, &v119);

    *(v35 + 4) = v41;
    v4 = v96;
    _os_log_impl(&dword_223620000, v32, v33, "Searching for selected TRP within default endpointed trpIds: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x223DE8A80](v36, -1, -1);
    MEMORY[0x223DE8A80](v35, -1, -1);
  }

  v42 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v43 = *(v42 + 16);
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_31:
    v85 = v93;

    v86 = sub_22372AC88();
    v87 = sub_22372B268();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v120 = v89;
      *v88 = 136315138;
      v90 = v92;
      *(v88 + 4) = sub_223623274(v92, v85, &v120);
      _os_log_impl(&dword_223620000, v86, v87, "Could not find any selected TRPs. Continuing with default behavior with trpId: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x223DE8A80](v89, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);

      v77 = v94;
    }

    else
    {

      v77 = v94;
      v90 = v92;
    }

    v75 = v90;
    v76 = v85;
    goto LABEL_24;
  }

  v107 = (v115 + 56);
  v106 = *MEMORY[0x277D5CAE8];
  v105 = (v115 + 104);
  v45 = (v115 + 48);
  v97 = (v115 + 32);
  v100 = (v115 + 8);

  v46 = (v43 + 16 * v44 + 24);
  v47 = &unk_22372D180;
  v48 = v111;
  v108 = v43;
  v102 = v42;
  v104 = v45;
  while (1)
  {
    if (v44 > *(v43 + 16))
    {
      __break(1u);
LABEL_30:

      goto LABEL_31;
    }

    v49 = *(v42 + 8);
    if (*(v49 + 16))
    {
      break;
    }

LABEL_10:
    v46 -= 2;
    if (!--v44)
    {
      goto LABEL_30;
    }
  }

  v50 = v47;
  v51 = *(v46 - 1);
  v52 = *v46;

  v53 = sub_2236261A0(v51, v52);
  if ((v54 & 1) == 0)
  {
LABEL_9:

    v47 = v50;
    goto LABEL_10;
  }

  v55 = *(v49 + 56);
  v56 = v112;
  sub_22370BCAC(v55 + *(v113 + 72) * v53, v112);
  sub_22370BE08(v56, v48);
  v57 = *(v48 + 16);
  if (!v57)
  {
    sub_2236453C4(v48, type metadata accessor for RootRequestController.TRPCache);
    goto LABEL_9;
  }

  v114 = v52;
  v103 = v51;
  v58 = v57;
  v59 = v116;
  v115 = v58;
  sub_223727F48();
  v60 = *v107;
  v61 = v118;
  (*v107)(v59, 0, 1, v118);
  v62 = v117;
  (*v105)(v117, v106, v61);
  v60(v62, 0, 1, v61);
  v63 = v109;
  v64 = *(v110 + 48);
  sub_223634890(v59, v109, &unk_27D08F7A0, v50);
  sub_223634890(v62, v63 + v64, &unk_27D08F7A0, v50);
  v65 = *v104;
  if ((*v104)(v63, 1, v61) != 1)
  {
    v68 = v50;
    v69 = v101;
    sub_223634890(v63, v101, &unk_27D08F7A0, v68);
    if (v65(v63 + v64, 1, v118) != 1)
    {
      v70 = v63 + v64;
      v71 = v118;
      v72 = v98;
      (*v97)(v98, v70, v118);
      sub_223623428(&unk_27D08F9A8, MEMORY[0x277D5CAF8], MEMORY[0x277D5CB00]);
      v99 = sub_22372AFC8();
      v73 = *v100;
      (*v100)(v72, v71);
      v74 = v73;
      v47 = &unk_22372D180;
      sub_223626478(v117, &unk_27D08F7A0, &unk_22372D180);
      sub_223626478(v116, &unk_27D08F7A0, &unk_22372D180);
      v74(v69, v71);
      sub_223626478(v63, &unk_27D08F7A0, &unk_22372D180);
      v48 = v111;
      v43 = v108;
      v67 = v114;
      v78 = v115;
      if (v99)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v47 = &unk_22372D180;
    sub_223626478(v117, &unk_27D08F7A0, &unk_22372D180);
    sub_223626478(v116, &unk_27D08F7A0, &unk_22372D180);
    (*v100)(v69, v118);
    v48 = v111;
LABEL_20:
    sub_223626478(v63, &qword_27D08F9A0, &qword_223732F18);
    v43 = v108;
    v78 = v115;
LABEL_22:
    sub_2236453C4(v48, type metadata accessor for RootRequestController.TRPCache);

    v42 = v102;
    goto LABEL_10;
  }

  sub_223626478(v117, &unk_27D08F7A0, v50);
  sub_223626478(v116, &unk_27D08F7A0, v50);
  v66 = v65(v63 + v64, 1, v118);
  v48 = v111;
  v67 = v114;
  v47 = v50;
  if (v66 != 1)
  {
    goto LABEL_20;
  }

  sub_223626478(v63, &unk_27D08F7A0, &unk_22372D180);
  v78 = v115;
LABEL_25:

  v79 = sub_22372AC88();
  v80 = sub_22372B268();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v120 = v82;
    *v81 = 136315138;
    v83 = v103;
    *(v81 + 4) = sub_223623274(v103, v67, &v120);
    _os_log_impl(&dword_223620000, v79, v80, "Found most recent selected as well as default endpointed TRPID: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x223DE8A80](v82, -1, -1);
    v84 = v81;
    v48 = v111;
    MEMORY[0x223DE8A80](v84, -1, -1);
  }

  else
  {

    v83 = v103;
  }

  sub_2236FCE70(v83, v67, v78);
  sub_2236453C4(v48, type metadata accessor for RootRequestController.TRPCache);
}

void sub_2236FCE70(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = a1;
  v4 = v3;
  v7 = sub_223727F38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  v12 = __swift_project_value_buffer(v11, qword_28132B680);

  v13 = sub_22372AC88();
  v14 = sub_22372B268();

  v15 = os_log_type_enabled(v13, v14);
  v76 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v74 = v8;
    v17 = v4;
    v18 = a3;
    v19 = v7;
    v20 = v12;
    v21 = a2;
    v22 = v16;
    v23 = swift_slowAlloc();
    v79[0] = v23;
    *v22 = 136315138;
    v24 = v21;
    v12 = v20;
    v7 = v19;
    a3 = v18;
    v4 = v17;
    v8 = v74;
    *(v22 + 4) = sub_223623274(v78, v24, v79);
    _os_log_impl(&dword_223620000, v13, v14, "Really handling StoppedListeningForSpeechContinuationMessage now with trpId: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223DE8A80](v23, -1, -1);
    MEMORY[0x223DE8A80](v22, -1, -1);
  }

  MEMORY[0x28223BE20](v25, v26);
  *(&v69 - 2) = v4;
  *(&v69 - 1) = a3;
  v27 = objc_allocWithZone(sub_223729718());
  v28 = sub_2237296B8();
  if (v28)
  {
    v29 = v28;
    v30 = sub_22372AC88();
    v31 = sub_22372B268();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_223620000, v30, v31, "Going to post MitigationDecisionFinalizedMessage", v32, 2u);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
    if ((sub_223729D88() & 1) == 0)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v43 = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  v33 = v75;
  sub_223727F48();
  v34 = sub_2236FDA84();
  (*(v8 + 8))(v33, v7);
  if (v34)
  {

    v35 = sub_22372AC88();
    v36 = sub_22372B288();
    v37 = os_log_type_enabled(v35, v36);
    v71 = v12;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79[0] = v39;
      *v38 = 136315650;
      *(v38 + 4) = sub_223623274(v4[14], v4[15], v79);
      *(v38 + 12) = 1024;
      v40 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      *(v38 + 14) = v40[4];
      *(v38 + 18) = 1024;
      *(v38 + 20) = *v40;

      _os_log_impl(&dword_223620000, v35, v36, "mitigating for a request with requestId %s that's isActive - %{BOOL}d and isFlexibleFollowup - %{BOOL}d", v38, 0x18u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x223DE8A80](v39, -1, -1);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }

    else
    {
    }

    v75 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestControllerMitigationHandler);
    v44 = v4[14];
    v45 = v4[15];
    v46 = v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v49 = v4[16];
    v50 = v4[17];
    v51 = sub_2237273B8();
    v52 = *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v70 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
    v73 = v51;
    v74 = v49;
    v72 = v53;
    if (v52 <= 1)
    {
      if (v52)
      {
        v54 = 0xED00007350525467;
        v55 = 0x6E69766965636572;
      }

      else
      {
        v54 = 0xEB0000000064657ALL;
        v55 = 0x696C616974696E69;
      }
    }

    else if (v52 == 2)
    {
      v54 = 0x8000000223734360;
      v55 = 0xD00000000000001FLL;
    }

    else if (v52 == 3)
    {
      v54 = 0xEC00000064657A69;
      v55 = 0x6C616E6946707274;
    }

    else
    {
      v55 = 0xD000000000000010;
      v54 = 0x8000000223734390;
    }

    v56 = v47 | v48;
    if (v56)
    {
      sub_2236ECFDC(v44, v45);
    }

    else
    {
      sub_2236ECD8C(v44, v45);
      sub_2236ED384(v44, v45);
    }

    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v57 = sub_22372A648();
    __swift_project_value_buffer(v57, qword_28132B6C8);
    v58 = swift_allocObject();
    v58[2] = v55;
    v58[3] = v54;
    v59 = v78;
    v58[4] = v78;
    v60 = v76;
    v61 = v73;
    v62 = v74;
    v58[5] = v76;
    v58[6] = v62;
    v58[7] = v50;
    v58[8] = v61;
    v58[9] = v72;
    v58[10] = v44;
    v58[11] = v45;
    v63 = v60;

    sub_22372A628();

    sub_2236C4E3C(1, v44, v45);
    if (v56)
    {

      v64 = sub_22372AC88();
      v65 = sub_22372B268();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v80 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_223623274(v44, v45, &v80);
        _os_log_impl(&dword_223620000, v64, v65, "redacting logs for force mitigated request - %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x223DE8A80](v67, -1, -1);
        MEMORY[0x223DE8A80](v66, -1, -1);
      }

      sub_2236C495C(5, v44, v45);
    }

    v68 = v77;
    sub_223707B00(v59, v63, 0, 0);
    if (!v68)
    {
      *(v4 + v70) = 3;
    }
  }

  else
  {
    v41 = v76;
    v42 = v78;
    if (*(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
    {
      sub_2236FDCE8(v78, v76);
    }

    *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) = 2;
    sub_223702888(v42, v41);
  }
}

uint64_t sub_2236FD6DC(uint64_t a1, char *a2, uint64_t a3)
{
  v29[1] = a3;
  v4 = sub_223727F38();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v29[0] = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v29 - v18;
  v20 = *MEMORY[0x277D5CDE8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2237296E8();

  sub_2237296C8();
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v24 = sub_223727408();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v15, &a2[v23], v24);
  (*(v25 + 56))(v15, 0, 1, v24);
  sub_223729708();

  sub_2237296F8();
  sub_223727F48();
  v26 = v29[0];
  (*(v5 + 104))(v29[0], *MEMORY[0x277D5CAE0], v4);
  sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8], MEMORY[0x277D5CB08]);
  sub_22372B0F8();
  sub_22372B0F8();
  v27 = *(v5 + 8);
  v27(v26, v4);
  v27(v11, v4);
  return sub_2237296D8();
}

BOOL sub_2236FDA84()
{
  v1 = sub_223727F38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled);
  v7 = *(v2 + 104);
  v7(v5, *MEMORY[0x277D5CAE0], v1);
  v8 = (v2 + 8);
  if (v6 == 1)
  {
    sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8], MEMORY[0x277D5CB08]);
    sub_22372B0F8();
    sub_22372B0F8();
    v9 = *v8;
    (*v8)(v5, v1);
    if (v12 == v11)
    {
      return 1;
    }

    v7(v5, *MEMORY[0x277D5CAF0], v1);
    sub_22372B0F8();
    sub_22372B0F8();
    v9(v5, v1);
  }

  else
  {
    sub_223623428(&qword_28132B5C8, MEMORY[0x277D5CAF8], MEMORY[0x277D5CB08]);
    sub_22372B0F8();
    sub_22372B0F8();
    (*v8)(v5, v1);
  }

  return v12 == v11;
}

void sub_2236FDCE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223708394(a1, a2);
  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = v11;
  v14 = v12;
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 8))(ObjectType, v14);
  if (!*(v16 + 16))
  {

    goto LABEL_17;
  }

  sub_223634890(v16 + 32, &aBlock, &qword_27D08F7B0, &qword_22372DD30);

  v17 = aBlock;
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v18 = [v17 speechPackage];
  if (!v18)
  {

    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 recognition];
  if (!v20 || (v51 = a2, v21 = v20, v22 = [v20 aceRecognition], v21, !v22))
  {

LABEL_16:
    goto LABEL_17;
  }

  v23 = [v22 utterances];
  if (v23)
  {
    v24 = v23;
    v49 = v19;
    v50 = v22;
    sub_223630584(0, &unk_281328D98, 0x277D477A8);
    v25 = sub_22372B128();

    if (v25 >> 62)
    {
      v26 = sub_22372B558();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v51;

    if (v26)
    {
      v51 = v17;
      v28 = [objc_allocWithZone(MEMORY[0x277D47740]) init];
      sub_2237273F8();
      sub_2237273B8();
      (*(v7 + 8))(v10, v6);
      v29 = sub_22372AFD8();

      [v28 setAceId_];

      v30 = v28;
      v31 = sub_22372AFD8();
      [v30 setRefId_];

      [v30 setEager_];
      [v30 setRecognition_];
      v32 = sub_22372AFD8();
      [v30 setSessionId_];

      v33 = sub_22372AFD8();
      [v30 setResultId_];

      v34 = v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
      swift_beginAccess();
      if (*(v34 + 4) == 1)
      {
        v35 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper);
        if ([v35 respondsToSelector_])
        {
          v36 = swift_allocObject();
          *(v36 + 16) = a1;
          *(v36 + 24) = v27;
          v53[3] = sub_22370BFF8;
          v53[4] = v36;
          aBlock = MEMORY[0x277D85DD0];
          v53[0] = 1107296256;
          v53[1] = sub_22365AC5C;
          v53[2] = &block_descriptor_6;
          v37 = _Block_copy(&aBlock);
          v30 = v30;

          [v35 handleSpeechRecognized:v30 completion:v37];
          _Block_release(v37);
        }

        else
        {
        }
      }

      else
      {
        v42 = *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand);
        *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand) = v30;
        v43 = v30;

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v44 = sub_22372AC98();
        __swift_project_value_buffer(v44, qword_28132B680);

        v45 = sub_22372AC88();
        v46 = sub_22372B268();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_223623274(a1, v27, &aBlock);
          _os_log_impl(&dword_223620000, v45, v46, "Not sending SpeechRecognized for TRP ID: %s yet because request is still in candidate state", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          MEMORY[0x223DE8A80](v48, -1, -1);
          MEMORY[0x223DE8A80](v47, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
  }

LABEL_17:
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v38 = sub_22372AC98();
  __swift_project_value_buffer(v38, qword_28132B680);
  v39 = sub_22372AC88();
  v40 = sub_22372B278();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_223620000, v39, v40, "Could not extract aceRecognition, cannot send SpeechRecognized", v41, 2u);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }
}

void sub_2236FE3E4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  __swift_project_value_buffer(v7, qword_28132B680);

  v8 = a2;
  oslog = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_223623274(a3, a4, &v17);
    *(v10 + 12) = 2080;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v13 = sub_22372B038();
    v15 = sub_223623274(v13, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_223620000, oslog, v9, "Sent SpeechRecognized for TRP ID: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236FE5D0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FE5F0, v1, 0);
}

uint64_t sub_2236FE5F0()
{
  v34 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = &unk_28132B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v33 = v11;
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    v18 = 0xED00007350525467;
    if (!v12)
    {
      v17 = 0x696C616974696E69;
      v18 = 0xEB0000000064657ALL;
    }

    if (v12 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 40);
    v23 = sub_223623274(v19, v20, &v33);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v6 = &unk_28132B000;
  }

  else
  {
  }

  v24 = *(v0 + 48);
  v25 = v6[311];
  v26 = *(v24 + v25);
  if (v26 >= 4)
  {
  }

  else
  {
    v27 = sub_22372B6E8();

    if ((v27 & 1) == 0)
    {
      v28 = *(v0 + 48);
      sub_223644B14();
      if ((*(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) & 1) == 0)
      {
        v29 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
        v30 = v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
        swift_beginAccess();
        sub_223644DFC(*(v30 + 5), (*(v30 + 4) & 1) == 0);
      }

      *(v24 + v25) = 4;
    }
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2236FEA20(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236FEA40, v1, 0);
}

uint64_t sub_2236FEA40()
{
  v46 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = &unk_28132B000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v45 = v11;
    v13 = 0x8000000223734360;
    v14 = 0xD00000000000001FLL;
    v15 = 0x6C616E6946707274;
    v16 = 0xEC00000064657A69;
    if (v12 != 3)
    {
      v15 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v12 != 2)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6E69766965636572;
    v18 = 0xED00007350525467;
    if (!v12)
    {
      v17 = 0x696C616974696E69;
      v18 = 0xEB0000000064657ALL;
    }

    if (v12 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14;
    }

    if (v12 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v11;
    v22 = *(v0 + 40);
    v23 = sub_223623274(v19, v20, &v45);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v9, 0x16u);
    sub_223626478(v10, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v6 = &unk_28132B000;
  }

  else
  {
  }

  v24 = *(v0 + 48);
  v25 = v6[311];
  v26 = *(v24 + v25);
  if (v26 >= 4)
  {

    goto LABEL_38;
  }

  v27 = sub_22372B6E8();

  if (v27)
  {
    goto LABEL_38;
  }

  v28 = *(v0 + 48);
  sub_223644B14();
  __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
  v29 = v28 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  sub_2236BBF34(*(v29 + 5), (*(v29 + 4) & 1) == 0);
  v44 = *(v29 + 24);
  if (!v44)
  {
    goto LABEL_35;
  }

  v43 = v24;
  if (*(v24 + v25) <= 1u && *(v24 + v25))
  {
    v31 = v44;
    goto LABEL_29;
  }

  v30 = sub_22372B6E8();
  v42 = v44;

  if (v30)
  {
LABEL_31:
    v33 = sub_22372AC88();
    v34 = sub_22372B268();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_223620000, v33, v34, "Posting TRPFinalizedMessage because request was canceled", v35, 2u);
      MEMORY[0x223DE8A80](v35, -1, -1);
    }

    v36 = v44;
    v37 = sub_223728CF8();
    v39 = v38;

    sub_223707B00(v37, v39, 0, 0);

    v24 = v43;
    goto LABEL_35;
  }

  if (*(v24 + v25) == 2)
  {
LABEL_29:

    goto LABEL_31;
  }

  v32 = sub_22372B6E8();

  if (v32)
  {
    goto LABEL_31;
  }

LABEL_35:
  if ((*(v29 + 4) & 1) == 0)
  {
    sub_2236C456C(*(*(v0 + 48) + 112), *(*(v0 + 48) + 120));
  }

  *(v24 + v25) = 4;
LABEL_38:
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2236FF144()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message:%@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236FF304()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message:%@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236FF4A4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2237287C8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F980, &qword_223732F10);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236FF684, v1, 0);
}

uint64_t sub_2236FF684()
{
  v68 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message: %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[9];

  v11 = sub_223728BC8();
  v13 = v12;
  v14 = v10 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v15 = *(v14 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_223637D3C(0, *(v15 + 2) + 1, 1, v15);
    *(v14 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_223637D3C((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v11;
  *(v19 + 5) = v13;
  *(v14 + 16) = v15;
  swift_endAccess();

  v20 = sub_22372AC88();
  v21 = sub_22372B268();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v67 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_223623274(v11, v13, &v67);
    _os_log_impl(&dword_223620000, v20, v21, "Appended default endpointed trpId: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x223DE8A80](v23, -1, -1);
    MEMORY[0x223DE8A80](v22, -1, -1);
  }

  v24 = *(v14 + 8);
  if (*(v24 + 16))
  {
    v25 = sub_2236261A0(v11, v13);
    if (v26)
    {
      v27 = v0[20];
      v28 = v0[21];
      v66 = v11;
      v29 = v0[18];
      v30 = v0[19];
      v31 = v0[17];
      v63 = v0[16];
      v64 = v0[13];
      v60 = v0[14];
      v61 = v0[11];
      v62 = v0[10];
      sub_22370BCAC(*(v24 + 56) + *(v30 + 72) * v25, v27);
      sub_22370BE08(v27, v28);
      *(v28 + *(v29 + 32)) = 1;
      sub_22370BCAC(v28, v31);
      (*(v30 + 56))(v31, 0, 1, v29);
      swift_beginAccess();

      sub_223714400(v31, v66, v13);
      swift_endAccess();
      v32 = *(v29 + 28);
      (*(v61 + 104))(v63, *MEMORY[0x277D5CB80], v62);
      (*(v61 + 56))(v63, 0, 1, v62);
      v33 = v28 + v32;
      v34 = *(v64 + 48);
      sub_223634890(v33, v60, &unk_27D08F900, &qword_223733FF0);
      sub_223634890(v63, v60 + v34, &unk_27D08F900, &qword_223733FF0);
      v35 = *(v61 + 48);
      if (v35(v60, 1, v62) == 1)
      {
        v36 = v0[10];
        sub_223626478(v0[16], &unk_27D08F900, &qword_223733FF0);
        if (v35(v60 + v34, 1, v36) == 1)
        {
          sub_223626478(v0[14], &unk_27D08F900, &qword_223733FF0);
          v37 = v66;
LABEL_23:
          v54 = sub_22372AC88();
          v55 = sub_22372B268();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_223620000, v54, v55, "NLRequestRoute already set to sirixFallback. Sending TRPCandidateReadyForExecutionMessage", v56, 2u);
            MEMORY[0x223DE8A80](v56, -1, -1);
          }

          sub_223703638(v37, v13);
          goto LABEL_26;
        }
      }

      else
      {
        v43 = v0[10];
        sub_223634890(v0[14], v0[15], &unk_27D08F900, &qword_223733FF0);
        v44 = v35(v60 + v34, 1, v43);
        v46 = v0[15];
        v45 = v0[16];
        if (v44 != 1)
        {
          v65 = v0[14];
          v50 = v0[11];
          v49 = v0[12];
          v51 = v0[10];
          (*(v50 + 32))(v49, v60 + v34, v51);
          sub_223623428(&qword_27D08F988, MEMORY[0x277D5CBA8], MEMORY[0x277D5CBB0]);
          v52 = sub_22372AFC8();
          v53 = *(v50 + 8);
          v53(v49, v51);
          sub_223626478(v45, &unk_27D08F900, &qword_223733FF0);
          v53(v46, v51);
          v37 = v66;
          sub_223626478(v65, &unk_27D08F900, &qword_223733FF0);
          if (v52)
          {
            goto LABEL_23;
          }

LABEL_26:
          v57 = v0[21];
          sub_22370192C(v37, v13);

          sub_2236453C4(v57, type metadata accessor for RootRequestController.TRPCache);
          goto LABEL_27;
        }

        v47 = v0[10];
        v48 = v0[11];
        sub_223626478(v0[16], &unk_27D08F900, &qword_223733FF0);
        (*(v48 + 8))(v46, v47);
      }

      sub_223626478(v0[14], &qword_27D08F980, &qword_223732F10);
      v37 = v66;
      goto LABEL_26;
    }
  }

  v38 = sub_22372AC88();
  v39 = sub_22372B278();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v67 = v41;
    *v40 = 136315138;
    v42 = sub_223623274(v11, v13, &v67);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_223620000, v38, v39, "TRP Cache not found for TRP Id: %s received with SpeechStopDetectedMessage", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x223DE8A80](v41, -1, -1);
    MEMORY[0x223DE8A80](v40, -1, -1);
  }

  else
  {
  }

LABEL_27:

  v58 = v0[1];

  return v58();
}

uint64_t sub_2236FFEE4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_2237287C8();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22370007C, v1, 0);
}

uint64_t sub_22370007C()
{
  v75 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received message: %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  sub_2237287D8();
  *(v0 + 64) = sub_22372B038();
  *(v0 + 72) = v10;
  v11 = sub_223637E48();
  v12 = MEMORY[0x223DE7E10](40, 0xE100000000000000, 1, 0, MEMORY[0x277D837D0], v11);

  if (!v12[2])
  {
    goto LABEL_10;
  }

  v13 = *(v0 + 80);

  v14 = sub_22372AC88();
  v15 = sub_22372B288();

  if (!os_log_type_enabled(v14, v15))
  {

LABEL_10:

    goto LABEL_11;
  }

  v16 = swift_slowAlloc();
  result = swift_slowAlloc();
  v74[0] = result;
  *v16 = 136446466;
  if (!v12[2])
  {
    __break(1u);
    return result;
  }

  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v73 = result;

  v22 = MEMORY[0x223DE7AB0](v18, v19, v20, v21);
  v24 = v23;

  v25 = sub_223623274(v22, v24, v74);

  *(v16 + 4) = v25;
  *(v16 + 12) = 2082;
  v26 = sub_223728848();
  v28 = sub_223623274(v26, v27, v74);

  *(v16 + 14) = v28;
  _os_log_impl(&dword_223620000, v14, v15, "Received routingDecision: %{public}s for trpId: %{public}s", v16, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v73, -1, -1);
  MEMORY[0x223DE8A80](v16, -1, -1);

LABEL_11:
  v29 = *(v0 + 88);
  v30 = sub_223728848();
  v32 = v31;
  v33 = (v29 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  swift_beginAccess();
  v34 = v33[1];
  if (!*(v34 + 16))
  {

    goto LABEL_15;
  }

  v35 = sub_2236261A0(v30, v32);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_15:
    v48 = *(v0 + 80);
    v49 = sub_22372AC88();
    v50 = sub_22372B268();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v74[0] = v52;
      *v51 = 136315138;
      v53 = sub_223728848();
      v55 = sub_223623274(v53, v54, v74);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_223620000, v49, v50, "No TRP cached for TRP Id: %s received with NLRoutingDecisionMessage", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x223DE8A80](v52, -1, -1);
      MEMORY[0x223DE8A80](v51, -1, -1);
    }

    goto LABEL_18;
  }

  v38 = *(v0 + 152);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v41 = *(v0 + 120);
  v70 = *(v0 + 112);
  v71 = *(v0 + 144);
  v42 = *(v0 + 104);
  v72 = *(v0 + 96);
  sub_22370BCAC(*(v34 + 56) + *(v41 + 72) * v35, v40);
  sub_22370BE08(v40, v39);
  sub_2237287D8();
  (*(v38 + 56))(v42, 0, 1, v71);
  sub_2236719F4(v42, v39 + *(v70 + 28), &unk_27D08F900, &qword_223733FF0);
  v43 = sub_223728848();
  v45 = v44;
  sub_22370BCAC(v39, v72);
  (*(v41 + 56))(v72, 0, 1, v70);
  swift_beginAccess();
  sub_223714400(v72, v43, v45);
  swift_endAccess();
  v46 = sub_223728848();
  sub_2237007C8(v46, v47);
  v57 = *(v0 + 136);
  v58 = *(v0 + 112);

  if (*(v57 + *(v58 + 32)) == 1)
  {
    v59 = sub_223728848();
    sub_223703638(v59, v60);
  }

  v61 = sub_223728848();
  sub_22370192C(v61, v62);

  v63 = v33[5];
  if (v63)
  {
    v64 = v33[6];
    ObjectType = swift_getObjectType();
    v66 = *(v64 + 8);
    v67 = v63;
    v68 = v66(ObjectType, v64);
    sub_223702888(v68, v69);
  }

  sub_2236453C4(*(v0 + 136), type metadata accessor for RootRequestController.TRPCache);
LABEL_18:

  v56 = *(v0 + 8);

  return v56();
}

void sub_2237007C8(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v165 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v164 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v156 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v156 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v156 - v21;
  v167 = sub_2237287C8();
  v172 = *(v167 - 8);
  v24 = MEMORY[0x28223BE20](v167, v23);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v169 = &v156 - v28;
  v166 = type metadata accessor for RootRequestController.TRPCache(0);
  v171 = *(v166 - 8);
  v30 = MEMORY[0x28223BE20](v166, v29);
  v32 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v173 = &v156 - v34;
  v168 = v2;
  v35 = (v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  swift_beginAccess();
  v36 = v35[1];
  if (*(v36 + 16))
  {
    v37 = sub_2236261A0(a1, a2);
    if (v38)
    {
      v163 = a1;
      v39 = *(v171 + 72);
      sub_22370BCAC(*(v36 + 56) + v39 * v37, v32);
      v40 = v32;
      v41 = v173;
      sub_22370BE08(v40, v173);
      v42 = *v41;
      if (!*v41)
      {
        sub_223657180();
        swift_allocError();
        *v59 = v163;
        *(v59 + 8) = a2;
        *(v59 + 16) = 0;
        swift_willThrow();

LABEL_65:
        v52 = v41;
        goto LABEL_66;
      }

      v43 = *(v41 + 8);
      v161 = v39;
      v162 = v43;
      if (*(v168 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
      {
        sub_223634890(v41 + *(v166 + 28), v22, &unk_27D08F900, &qword_223733FF0);
        v44 = v167;
        if ((*(v172 + 48))(v22, 1, v167) == 1)
        {
          v45 = v42;
          sub_223626478(v22, &unk_27D08F900, &qword_223733FF0);
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v46 = sub_22372AC98();
          __swift_project_value_buffer(v46, qword_28132B680);

          v47 = sub_22372AC88();
          v48 = sub_22372B268();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = v41;
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v174 = v51;
            *v50 = 136315138;
            *(v50 + 4) = sub_223623274(v163, a2, &v174);
            _os_log_impl(&dword_223620000, v47, v48, "No NLRoutingDecisionMsg for TRP Id: %s received with NLTRPCandidateMessage", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v51);
            MEMORY[0x223DE8A80](v51, -1, -1);
            MEMORY[0x223DE8A80](v50, -1, -1);

            v52 = v49;
          }

          else
          {

            v52 = v41;
          }

          goto LABEL_66;
        }

        v73 = v22;
        v74 = *(v172 + 32);
        v74(v26, v73, v44);
        v74(v169, v26, v44);
        v41 = v173;
        v60 = v44;
        v61 = *(v173 + 24);
        if (!v61)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v60 = v167;
        (*(v172 + 104))(v169, *MEMORY[0x277D5CB80], v167);
        v61 = *(v41 + 24);
        if (!v61)
        {
LABEL_20:
          v75 = qword_281328E58;
          v76 = v42;
          if (v75 != -1)
          {
            swift_once();
          }

          v77 = sub_22372AC98();
          __swift_project_value_buffer(v77, qword_28132B680);

          v78 = sub_22372AC88();
          v79 = sub_22372B268();

          v80 = os_log_type_enabled(v78, v79);
          v81 = v163;
          if (v80)
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v174 = v83;
            *v82 = 136315138;
            *(v82 + 4) = sub_223623274(v81, a2, &v174);
            _os_log_impl(&dword_223620000, v78, v79, "No NLTrpCandidateMsg for TRP Id: %s received with NLRoutingDecisionMessage", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v83);
            MEMORY[0x223DE8A80](v83, -1, -1);
            v84 = v82;
            v41 = v173;
            MEMORY[0x223DE8A80](v84, -1, -1);
          }

          v85 = v169;
          sub_223657180();
          swift_allocError();
          *v86 = v81;
          *(v86 + 8) = a2;
          *(v86 + 16) = 0;
          swift_willThrow();

          (*(v172 + 8))(v85, v60);
          goto LABEL_65;
        }
      }

      ObjectType = swift_getObjectType();
      v63 = v162;
      v159 = v162[1];
      v64 = v42;

      v65 = v61;
      v160 = v64;
      v66 = v159(ObjectType, v63);
      v67 = sub_2237282B8();
      v68 = v65;
      sub_223728D08();

      v69 = sub_22372A548();
      (*(*(v69 - 8) + 56))(v18, 0, 1, v69);
      sub_2237282C8();
      v70 = v169;
      v71 = v170;
      sub_223706664(v163, a2, v66, v67, v18, v14, v169);
      v170 = v71;
      if (v71)
      {

        sub_223626478(v14, &qword_27D08E978, &qword_22372D170);
        sub_223626478(v18, &unk_27D08E990, &qword_22372FCF0);
        (*(v172 + 8))(v70, v167);
        v52 = v173;
LABEL_66:
        sub_2236453C4(v52, type metadata accessor for RootRequestController.TRPCache);
        return;
      }

      v162 = v68;
      v163 = v72;
      v87 = v70;

      sub_223626478(v14, &qword_27D08E978, &qword_22372D170);
      sub_223626478(v18, &unk_27D08E990, &qword_22372FCF0);
      v88 = v35[5];
      if (!v88)
      {

        v109 = v172;
        v41 = v173;
        v110 = v167;
        v111 = v87;
LABEL_64:
        (*(v109 + 8))(v111, v110);
        goto LABEL_65;
      }

      v89 = v35[6];
      v90 = qword_281328E58;
      v91 = v88;
      if (v90 != -1)
      {
        swift_once();
      }

      v92 = sub_22372AC98();
      v158 = __swift_project_value_buffer(v92, qword_28132B680);
      v93 = sub_22372AC88();
      v94 = sub_22372B268();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_223620000, v93, v94, "Found StoppedListeningForSpeechContinuationMessage in cache", v95, 2u);
        MEMORY[0x223DE8A80](v95, -1, -1);
      }

      v96 = swift_getObjectType();
      v97 = *(v89 + 8);
      v159 = v91;
      v98 = v97(v96, v89);
      v100 = v99;
      v163 = v163;
      v102 = sub_223728CF8();
      v103 = v101;
      if (v98 == v102 && v100 == v101 || (sub_22372B6E8() & 1) != 0)
      {

        v104 = v163;

        v105 = v159;
        v106 = v97(v96, v89);
        v107 = v170;
        sub_2236FC334(v106, v108, v104);
        if (v107)
        {

          (*(v172 + 8))(v169, v167);
          v52 = v173;
          goto LABEL_66;
        }

        v109 = v172;
        v41 = v173;
        v110 = v167;
        v111 = v169;
        goto LABEL_64;
      }

      v157 = v102;
      v112 = v35[1];
      if (*(v112 + 16))
      {
        v113 = sub_2236261A0(v98, v100);
        v115 = v114;

        v116 = v165;
        if (v115)
        {
          v117 = *(v112 + 56) + v113 * v161;
          v118 = v164;
          sub_22370BCAC(v117, v164);
          v119 = 0;
          goto LABEL_44;
        }

        v119 = 1;
      }

      else
      {

        v119 = 1;
        v116 = v165;
      }

      v118 = v164;
LABEL_44:
      v120 = v171;
      v121 = *(v171 + 56);
      v122 = v166;
      v121(v118, v119, 1, v166);
      v123 = *(v120 + 48);
      v171 = v120 + 48;
      if (v123(v118, 1, v122))
      {
        v124 = 0;
        v165 = 0;
      }

      else
      {
        v125 = (v118 + *(v122 + 36));
        v124 = *v125;
        v165 = v125[1];
      }

      sub_223626478(v118, &qword_27D08F928, &unk_223732ED0);
      v126 = v35[1];
      if (*(v126 + 16))
      {
        v127 = sub_2236261A0(v157, v103);
        v129 = v128;

        if (v129)
        {
          sub_22370BCAC(*(v126 + 56) + v127 * v161, v116);
          v130 = 0;
          goto LABEL_52;
        }
      }

      else
      {
      }

      v130 = 1;
LABEL_52:
      v131 = v170;
      v109 = v172;
      v132 = v166;
      v121(v116, v130, 1, v166);
      if (v123(v116, 1, v132))
      {
        sub_223626478(v116, &qword_27D08F928, &unk_223732ED0);
        v41 = v173;
        v133 = v160;
        if (v165)
        {
          v134 = v169;
          goto LABEL_55;
        }
      }

      else
      {
        v136 = v124;
        v137 = (v116 + *(v132 + 36));
        v138 = *v137;
        v139 = v137[1];

        sub_223626478(v116, &qword_27D08F928, &unk_223732ED0);
        v41 = v173;
        v133 = v160;
        v140 = v165;
        if (v165)
        {
          v134 = v169;
          if (v139)
          {
            if (v136 == v138 && v165 == v139)
            {
            }

            else
            {
              v143 = sub_22372B6E8();

              if ((v143 & 1) == 0)
              {

                v155 = v163;

                goto LABEL_56;
              }
            }

            v144 = sub_22372AC88();
            v145 = sub_22372B288();

            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v174 = v147;
              *v146 = 136315138;
              v148 = sub_223623274(v136, v140, &v174);

              *(v146 + 4) = v148;
              v134 = v169;
              _os_log_impl(&dword_223620000, v144, v145, "MUX: Proceeding to reallyHandleStoppedListening because the lastTrpId in the StoppedListeningMessage and the trpId in the TTResponseMessage belong to the same top-level trpID: %s", v146, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v147);
              v149 = v147;
              v41 = v173;
              MEMORY[0x223DE8A80](v149, -1, -1);
              v150 = v146;
              v131 = v170;
              MEMORY[0x223DE8A80](v150, -1, -1);
            }

            else
            {
            }

            v151 = v163;
            v152 = sub_223728CF8();
            v154 = v153;

            sub_2236FC334(v152, v154, v151);
            if (v131)
            {

              (*(v109 + 8))(v134, v167);
              goto LABEL_65;
            }

            goto LABEL_57;
          }

LABEL_55:

          v135 = v163;
LABEL_56:

LABEL_57:
          v110 = v167;
          v111 = v134;
          goto LABEL_64;
        }
      }

      v141 = v169;

      v142 = v163;

      v110 = v167;
      v111 = v141;
      goto LABEL_64;
    }
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v53 = sub_22372AC98();
  __swift_project_value_buffer(v53, qword_28132B680);

  v54 = sub_22372AC88();
  v55 = sub_22372B268();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v174 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_223623274(a1, a2, &v174);
    _os_log_impl(&dword_223620000, v54, v55, "No TRP cached for TRP Id: %s received with NLRoutingDecisionMessage or NLTRPCandidateMessage", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x223DE8A80](v57, -1, -1);
    MEMORY[0x223DE8A80](v56, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v58 = a1;
  *(v58 + 8) = a2;
  *(v58 + 16) = 0;
  swift_willThrow();
}

void sub_22370192C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v96 = &v88 - v7;
  v8 = sub_2237287C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223727F38();
  v14 = *(v13 - 8);
  v97 = v13;
  v98 = v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v99 = &v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v31 = &v88 - v30;
  if (*(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) == 1)
  {
    v93 = v12;
    v94 = v29;
    v90 = v2;
    v32 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v33 = *(v32 + 8);
    v34 = *(v33 + 16);
    v95 = a1;
    v91 = v9;
    v92 = v8;
    if (v34 && (v35 = sub_2236261A0(a1, a2), (v36 & 1) != 0))
    {
      v37 = v35;
      v89 = *(v33 + 56);
      v38 = type metadata accessor for RootRequestController.TRPCache(0);
      v39 = *(v38 - 8);
      sub_22370BCAC(v89 + *(v39 + 72) * v37, v31);
      (*(v39 + 56))(v31, 0, 1, v38);
    }

    else
    {
      v38 = type metadata accessor for RootRequestController.TRPCache(0);
      (*(*(v38 - 8) + 56))(v31, 1, 1, v38);
    }

    type metadata accessor for RootRequestController.TRPCache(0);
    v40 = *(v38 - 8);
    v41 = *(v40 + 48);
    if (v41(v31, 1, v38))
    {
      sub_223626478(v31, &qword_27D08F928, &unk_223732ED0);
LABEL_12:
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v48 = sub_22372AC98();
      __swift_project_value_buffer(v48, qword_28132B680);

      v49 = sub_22372AC88();
      v50 = sub_22372B268();

      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_17;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v100 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_223623274(v95, a2, &v100);
      v53 = "SpeechStopDetected not received for trpId = %s, cannot post IntermediateTRPStateMessage";
LABEL_16:
      _os_log_impl(&dword_223620000, v49, v50, v53, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x223DE8A80](v52, -1, -1);
      MEMORY[0x223DE8A80](v51, -1, -1);
LABEL_17:

      return;
    }

    v42 = v31[*(v38 + 32)];
    sub_223626478(v31, &qword_27D08F928, &unk_223732ED0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_12;
    }

    v43 = *(v32 + 8);
    if (*(v43 + 16) && (v44 = sub_2236261A0(v95, a2), (v45 & 1) != 0))
    {
      v46 = v40;
      sub_22370BCAC(*(v43 + 56) + *(v40 + 72) * v44, v27);
      v47 = 0;
    }

    else
    {
      v47 = 1;
      v46 = v40;
    }

    v54 = *(v46 + 56);
    v54(v27, v47, 1, v38);
    if (v41(v27, 1, v38) || (v56 = *(v27 + 2)) == 0)
    {
      sub_223626478(v27, &qword_27D08F928, &unk_223732ED0);
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v55 = sub_22372AC98();
      __swift_project_value_buffer(v55, qword_28132B680);

      v49 = sub_22372AC88();
      v50 = sub_22372B268();

      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_17;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v100 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_223623274(v95, a2, &v100);
      v53 = "MitigationDecision not yet received for trpId = %s, cannot post IntermediateTRPStateMessage yet";
      goto LABEL_16;
    }

    v89 = v54;
    v57 = v56;
    sub_223626478(v27, &qword_27D08F928, &unk_223732ED0);
    sub_223727F48();

    (*(v98 + 32))(v99, v18, v97);
    v58 = *(v32 + 8);
    if (*(v58 + 16) && (v59 = sub_2236261A0(v95, a2), (v60 & 1) != 0))
    {
      sub_22370BCAC(*(v58 + 56) + *(v40 + 72) * v59, v94);
      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    v62 = v94;
    v89(v94, v61, 1, v38);
    v63 = v41(v62, 1, v38);
    v64 = v93;
    if (v63)
    {
      sub_223626478(v62, &qword_27D08F928, &unk_223732ED0);
      v65 = v96;
      (*(v91 + 56))(v96, 1, 1, v92);
    }

    else
    {
      v66 = v62 + *(v38 + 28);
      v65 = v96;
      sub_223634890(v66, v96, &unk_27D08F900, &qword_223733FF0);
      sub_223626478(v62, &qword_27D08F928, &unk_223732ED0);
      v68 = v91;
      v67 = v92;
      if ((*(v91 + 48))(v65, 1, v92) != 1)
      {
        v74 = (*(v68 + 32))(v64, v65, v67);
        MEMORY[0x28223BE20](v74, v75);
        v76 = v95;
        *(&v88 - 6) = v90;
        *(&v88 - 5) = v76;
        v77 = v99;
        *(&v88 - 4) = a2;
        *(&v88 - 3) = v77;
        *(&v88 - 2) = v64;
        v78 = objc_allocWithZone(sub_223728D98());
        v79 = sub_223728D18();
        if (v79)
        {
          v80 = v79;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v81 = sub_22372AC98();
          __swift_project_value_buffer(v81, qword_28132B680);
          v82 = sub_22372AC88();
          v83 = sub_22372B268();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_223620000, v82, v83, "Going to post IntermediateTRPStateMessage", v84, 2u);
            MEMORY[0x223DE8A80](v84, -1, -1);
          }

          __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
          sub_223729D88();
        }

        else
        {
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v85 = sub_22372AC98();
          __swift_project_value_buffer(v85, qword_28132B680);
          v80 = sub_22372AC88();
          v86 = sub_22372B278();
          if (os_log_type_enabled(v80, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_223620000, v80, v86, "Could not build IntermediateTRPStateMessage", v87, 2u);
            MEMORY[0x223DE8A80](v87, -1, -1);
          }
        }

        (*(v68 + 8))(v93, v67);
        goto LABEL_38;
      }
    }

    sub_223626478(v65, &unk_27D08F900, &qword_223733FF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v69 = sub_22372AC98();
    __swift_project_value_buffer(v69, qword_28132B680);

    v70 = sub_22372AC88();
    v71 = sub_22372B268();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v100 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_223623274(v95, a2, &v100);
      _os_log_impl(&dword_223620000, v70, v71, "RoutingDecision not yet received for trpId = %s, cannot post IntermediateTRPStateMessage yet", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x223DE8A80](v73, -1, -1);
      MEMORY[0x223DE8A80](v72, -1, -1);
    }

LABEL_38:
    (*(v98 + 8))(v99, v97);
  }
}

uint64_t sub_2237024B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = v34 - v21;
  v23 = *MEMORY[0x277D5CDE8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  sub_223728D68();

  sub_223728D28();
  v26 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v27 = sub_223727408();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v18, &a2[v26], v27);
  (*(v28 + 56))(v18, 0, 1, v27);
  sub_223728D88();

  sub_223728D78();

  sub_223728D38();
  v29 = sub_223727F38();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v14, v35, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  sub_223728D58();
  v31 = sub_2237287C8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v10, v36, v31);
  (*(v32 + 56))(v10, 0, 1, v31);
  return sub_223728D48();
}

void sub_223702888(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v93 = &v84 - v7;
  v8 = sub_2237287C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v84 - v19;
  v21 = sub_223727F38();
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v30 = &v84 - v29;
  if (*(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) == 1)
  {
    v86 = v9;
    v87 = v8;
    v89 = v28;
    v90 = v27;
    v31 = v2;
    v32 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    swift_beginAccess();
    v33 = *(v32 + 8);
    v34 = *(v33 + 16);
    v88 = v30;
    v91 = a1;
    v92 = a2;
    v85 = v12;
    if (v34 && (v35 = sub_2236261A0(a1, a2), (v36 & 1) != 0))
    {
      v37 = v35;
      v38 = *(v33 + 56);
      v39 = type metadata accessor for RootRequestController.TRPCache(0);
      v40 = *(v39 - 8);
      sub_22370BCAC(v38 + *(v40 + 72) * v37, v20);
      (*(v40 + 56))(v20, 0, 1, v39);
    }

    else
    {
      v39 = type metadata accessor for RootRequestController.TRPCache(0);
      (*(*(v39 - 8) + 56))(v20, 1, 1, v39);
    }

    type metadata accessor for RootRequestController.TRPCache(0);
    v41 = *(v39 - 8);
    v42 = *(v41 + 48);
    if (!v42(v20, 1, v39))
    {
      v50 = *(v20 + 2);
      if (v50)
      {
        v51 = v50;
        sub_223626478(v20, &qword_27D08F928, &unk_223732ED0);
        sub_223727F48();

        (*(v89 + 32))(v88, v25, v90);
        v52 = *(v32 + 8);
        if (*(v52 + 16))
        {
          v53 = sub_2236261A0(v91, v92);
          v54 = v93;
          if (v55)
          {
            sub_22370BCAC(*(v52 + 56) + *(v41 + 72) * v53, v17);
            v56 = 0;
          }

          else
          {
            v56 = 1;
          }
        }

        else
        {
          v56 = 1;
          v54 = v93;
        }

        (*(v41 + 56))(v17, v56, 1, v39);
        if (v42(v17, 1, v39))
        {
          sub_223626478(v17, &qword_27D08F928, &unk_223732ED0);
          (*(v86 + 56))(v54, 1, 1, v87);
          v57 = v88;
        }

        else
        {
          sub_223634890(&v17[*(v39 + 28)], v54, &unk_27D08F900, &qword_223733FF0);
          sub_223626478(v17, &qword_27D08F928, &unk_223732ED0);
          v59 = v86;
          v58 = v87;
          v60 = (*(v86 + 48))(v54, 1, v87);
          v57 = v88;
          if (v60 != 1)
          {
            v69 = v85;
            v70 = (*(v59 + 32))(v85, v54, v58);
            MEMORY[0x28223BE20](v70, v71);
            v73 = v91;
            v72 = v92;
            *(&v84 - 6) = v31;
            *(&v84 - 5) = v73;
            *(&v84 - 4) = v72;
            *(&v84 - 3) = v57;
            *(&v84 - 2) = v69;
            v74 = objc_allocWithZone(sub_223728218());
            v75 = sub_223728198();
            if (v75)
            {
              v76 = v75;
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v77 = sub_22372AC98();
              __swift_project_value_buffer(v77, qword_28132B680);
              v78 = sub_22372AC88();
              v79 = sub_22372B268();
              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                *v80 = 0;
                _os_log_impl(&dword_223620000, v78, v79, "Going to post FinalTRPStateMessage", v80, 2u);
                MEMORY[0x223DE8A80](v80, -1, -1);
              }

              __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v31 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
              sub_223729D88();
            }

            else
            {
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v81 = sub_22372AC98();
              __swift_project_value_buffer(v81, qword_28132B680);
              v76 = sub_22372AC88();
              v82 = sub_22372B278();
              if (os_log_type_enabled(v76, v82))
              {
                v83 = swift_slowAlloc();
                *v83 = 0;
                _os_log_impl(&dword_223620000, v76, v82, "Could not build FinalTRPStateMessage", v83, 2u);
                MEMORY[0x223DE8A80](v83, -1, -1);
              }
            }

            (*(v59 + 8))(v69, v58);
            goto LABEL_26;
          }
        }

        sub_223626478(v54, &unk_27D08F900, &qword_223733FF0);
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v61 = sub_22372AC98();
        __swift_project_value_buffer(v61, qword_28132B680);
        v62 = v92;

        v63 = sub_22372AC88();
        v64 = sub_22372B268();

        v65 = os_log_type_enabled(v63, v64);
        v66 = v91;
        if (v65)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v94 = v68;
          *v67 = 136315138;
          *(v67 + 4) = sub_223623274(v66, v62, &v94);
          _os_log_impl(&dword_223620000, v63, v64, "RoutingDecision not yet received for trpId = %s, cannot post FinalTRPStateMessage yet", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v68);
          MEMORY[0x223DE8A80](v68, -1, -1);
          MEMORY[0x223DE8A80](v67, -1, -1);
        }

LABEL_26:
        (*(v89 + 8))(v57, v90);
        return;
      }
    }

    sub_223626478(v20, &qword_27D08F928, &unk_223732ED0);
    v43 = v91;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v44 = sub_22372AC98();
    __swift_project_value_buffer(v44, qword_28132B680);
    v45 = v92;

    v46 = sub_22372AC88();
    v47 = sub_22372B268();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v94 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_223623274(v43, v45, &v94);
      _os_log_impl(&dword_223620000, v46, v47, "MitigationDecision not yet received for trpId = %s, cannot post FinalTRPStateMessage yet", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223DE8A80](v49, -1, -1);
      MEMORY[0x223DE8A80](v48, -1, -1);
    }
  }
}

uint64_t sub_223703268(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = v34 - v21;
  v23 = *MEMORY[0x277D5CDE8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  sub_2237281E8();

  sub_2237281A8();
  v26 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v27 = sub_223727408();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v18, &a2[v26], v27);
  (*(v28 + 56))(v18, 0, 1, v27);
  sub_223728208();

  sub_2237281F8();

  sub_2237281B8();
  v29 = sub_223727F38();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v14, v35, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  sub_2237281D8();
  v31 = sub_2237287C8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v10, v36, v31);
  (*(v32 + 56))(v10, 0, 1, v31);
  return sub_2237281C8();
}

void sub_223703638(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, &v18);
    _os_log_impl(&dword_223620000, v7, v8, "Sending TRPCandidateReadyForExecutionMessage for trpId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  MEMORY[0x28223BE20](v11, v12);
  v13 = objc_allocWithZone(sub_223729948());
  v14 = sub_2237298E8();
  if (v14)
  {
    v15 = v14;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
    sub_223729D88();
  }

  else
  {
    v15 = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, v15, v16, "Could not init TRPCandidateReadyForExecutionMessage", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }
  }
}

uint64_t sub_223703898(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223729918();

  sub_2237298F8();
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8, &a2[v16], v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  sub_223729938();

  sub_223729928();

  return sub_223729908();
}

void sub_223703AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v176 = a3;
  v177 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v172 = &v155[-v11];
  v175 = sub_22372A1D8();
  v173 = *(v175 - 8);
  v13 = MEMORY[0x28223BE20](v175, v12);
  v15 = &v155[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v170 = &v155[-v18];
  MEMORY[0x28223BE20](v17, v19);
  v174 = &v155[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v155[-v23];
  v25 = sub_223727408();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v178 = &v155[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  if (*(v29 + 3))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v30 = sub_22372AC98();
    __swift_project_value_buffer(v30, qword_28132B680);
    v31 = sub_22372AC88();
    v32 = sub_22372B288();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_12;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_223620000, v31, v32, "Already sent activation signal. Not activating again", v33, 2u);
LABEL_11:
    MEMORY[0x223DE8A80](v33, -1, -1);
LABEL_12:

    return;
  }

  v171 = a2;
  sub_2237273A8();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_28132B680);
    v35 = v171;

    v31 = sub_22372AC88();
    v36 = sub_22372B278();

    if (!os_log_type_enabled(v31, v36))
    {
      goto LABEL_12;
    }

    v33 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v179 = v37;
    *v33 = 136315138;
    *(v33 + 4) = sub_223623274(a1, v35, &v179);
    _os_log_impl(&dword_223620000, v31, v36, "Could not generate UUID from requestId: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x223DE8A80](v37, -1, -1);
    goto LABEL_11;
  }

  v165 = v15;
  v168 = v29;
  v167 = v5;
  v169 = v26;
  (*(v26 + 32))(v178, v24, v25);
  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v38 = sub_22372A648();
  v39 = __swift_project_value_buffer(v38, qword_28132B6C8);
  v40 = swift_allocObject();
  v41 = v176;
  v42 = v177;
  v40[2] = v6;
  v40[3] = v41;
  v40[4] = v42;
  v40[5] = a1;
  v43 = v171;
  v40[6] = v171;

  v164 = v39;
  sub_22372A628();

  sub_2236C50D0(a1, v43, v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F948, &unk_223732EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22372E090;
  if (!*(MEMORY[0x277CEF080] + 64))
  {
    __break(1u);
    return;
  }

  v45 = inited;
  v179 = *(MEMORY[0x277CEF080] + 64);
  sub_223630584(0, &qword_27D08F950, 0x277CCACA8);
  sub_22370BE84();
  sub_22372B438();
  *(v45 + 96) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v45 + 72));
  (*(v169 + 16))(boxed_opaque_existential_1, v178, v25);
  v47 = sub_223690B44(v45);
  swift_setDeallocating();
  sub_223626478(v45 + 32, &unk_27D08F110, &unk_22372FB40);
  v48 = swift_allocObject();
  v48[2] = a1;
  v48[3] = v43;
  v48[4] = v6;
  v48[5] = v41;
  v48[6] = v42;
  v49 = v168;
  if (*(v168 + 2) == 1)
  {
    v50 = v48;
    v51 = qword_281328E58;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_22372AC98();
    __swift_project_value_buffer(v52, qword_28132B680);
    v53 = sub_22372AC88();
    v54 = sub_22372B268();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_223620000, v53, v54, "Activating for siri prompt", v55, 2u);
      MEMORY[0x223DE8A80](v55, -1, -1);
    }

    v56 = v49 + *(type metadata accessor for RootRequestController.RequestContext(0) + 64);
    v57 = v169;
    if (*(v56 + 8) == 1)
    {
      v69 = mach_absolute_time();
    }

    else
    {
      v69 = *v56;
    }

    v70 = *(v49 + 56);
    v71 = *(v49 + 64);

    sub_22370ECA4(v69, v70, v71, v47, sub_22370BEEC, v50);

    (*(v57 + 8))(v178, v25);
    *(v49 + 3) = 1;
    return;
  }

  v162 = v47;
  v166 = v6;
  v163 = v48;
  v161 = v25;
  v58 = type metadata accessor for RootRequestController.RequestContext(0);
  v59 = v49 + *(v58 + 60);
  v60 = v172;
  sub_223634890(v59, v172, &unk_27D08F8D0, &qword_223732CC8);
  v61 = v173;
  v62 = v175;
  if ((*(v173 + 48))(v60, 1, v175) != 1)
  {
    v160 = a1;
    v72 = v174;
    (*(v61 + 32))(v174, v60, v62);
    v73 = qword_281328E58;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_22372AC98();
    v75 = __swift_project_value_buffer(v74, qword_28132B680);
    v76 = v170;
    v159 = *(v61 + 16);
    v159(v170, v72, v62);
    v158 = v75;
    v77 = sub_22372AC88();
    v78 = sub_22372B268();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v157 = v58;
      v80 = v179;
      *v79 = 136315138;
      v156 = v78;
      v81 = sub_22372A1C8();
      v83 = v82;
      v172 = *(v61 + 8);
      (v172)(v76, v62);
      v84 = sub_223623274(v81, v83, &v179);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_223620000, v77, v156, "audioRecordType: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      v85 = v80;
      v58 = v157;
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v79, -1, -1);
    }

    else
    {

      v172 = *(v61 + 8);
      (v172)(v76, v62);
    }

    v86 = v62;
    v87 = v171;
    v88 = v165;
    v89 = v174;
    v159(v165, v174, v62);
    v90 = (*(v61 + 88))(v88, v62);
    if (v90 == *MEMORY[0x277D5D080])
    {
      v91 = v168;
      v92 = v168 + *(v58 + 64);
      v93 = v163;
      if ((*(v92 + 8) & 1) == 0)
      {
        v94 = *(v168 + 64);
        if (v94)
        {
          v95 = *v92;
          v96 = *(v168 + 56);

          sub_22370EEF4(v95, v96, v94, v162, sub_22370BEEC, v93);
LABEL_44:

LABEL_45:
          v102 = v172;
          v87 = v171;
LABEL_46:
          *(v91 + 3) = 1;
          v103 = swift_allocObject();
          v104 = v176;
          v105 = v177;
          v103[2] = v166;
          v103[3] = v104;
          v106 = v160;
          v103[4] = v105;
          v103[5] = v106;
          v103[6] = v87;

          sub_22372A628();

          (v102)(v89, v86);
          (*(v169 + 8))(v178, v161);
          return;
        }
      }

      v107 = v58;

      v108 = sub_22372AC88();
      v109 = sub_22372B278();

      if (os_log_type_enabled(v108, v109))
      {
LABEL_54:
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v181 = v125;
        *v124 = 136315394;
        v126 = *(v107 + 64);
        v127 = v168;
        v128 = v168 + v126;
        v129 = *v128;
        LOBYTE(v128) = *(v128 + 8);
        v179 = v129;
        LOBYTE(v180) = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F968, &unk_223732F00);
        v130 = sub_22372B038();
        v132 = sub_223623274(v130, v131, &v181);

        *(v124 + 4) = v132;
        *(v124 + 12) = 2080;
        v133 = *(v127 + 64);
        v179 = *(v127 + 56);
        v180 = v133;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
        v134 = sub_22372B038();
        v136 = sub_223623274(v134, v135, &v181);
        v89 = v174;

        *(v124 + 14) = v136;
        _os_log_impl(&dword_223620000, v108, v109, "Could not send UI activation since hostTime: %s and deviceId: %s", v124, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v125, -1, -1);
        MEMORY[0x223DE8A80](v124, -1, -1);

LABEL_61:
        *(v127 + 3) = 1;
        v141 = swift_allocObject();
        v142 = v176;
        v143 = v177;
        v141[2] = v166;
        v141[3] = v142;
        v144 = v160;
        v141[4] = v143;
        v141[5] = v144;
        v141[6] = v171;

        sub_22372A628();

        v145 = v89;
        v146 = v175;
        goto LABEL_62;
      }
    }

    else
    {
      v97 = v163;
      if (v90 == *MEMORY[0x277D5D088])
      {
        v91 = v168;
        v98 = v168 + *(v58 + 64);
        if ((*(v98 + 8) & 1) == 0)
        {
          v99 = *(v168 + 64);
          if (v99)
          {
            v100 = *v98;
            v101 = *(v168 + 56);

            sub_22370F12C(v100, v101, v99, v162, sub_22370BEEC, v97);
            goto LABEL_44;
          }
        }

        v107 = v58;

        v108 = sub_22372AC88();
        v109 = sub_22372B278();

        if (os_log_type_enabled(v108, v109))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v90 == *MEMORY[0x277D5D098])
        {
          v110 = v168 + *(v58 + 64);
          if ((*(v110 + 8) & 1) == 0)
          {
            sub_22370F364(*v110, v162, sub_22370BEEC, v163);

            v91 = v168;
            v102 = v172;
            goto LABEL_46;
          }

          v111 = v58;

          v112 = sub_22372AC88();
          v113 = sub_22372B278();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v181 = v115;
            *v114 = 136315138;
            v116 = *(v111 + 64);
            v117 = v168;
            v118 = v168 + v116;
            v119 = *v118;
            LOBYTE(v118) = *(v118 + 8);
            v179 = v119;
            LOBYTE(v180) = v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F968, &unk_223732F00);
            v120 = sub_22372B038();
            v122 = sub_223623274(v120, v121, &v181);

            *(v114 + 4) = v122;
            v89 = v174;
            _os_log_impl(&dword_223620000, v112, v113, "Could not send UI activation since hostTime: %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v115);
            MEMORY[0x223DE8A80](v115, -1, -1);
            v123 = v114;
            v86 = v175;
            MEMORY[0x223DE8A80](v123, -1, -1);
          }

          else
          {

            v117 = v168;
          }

          *(v117 + 3) = 1;
          v151 = swift_allocObject();
          v152 = v176;
          v153 = v177;
          v151[2] = v166;
          v151[3] = v152;
          v154 = v160;
          v151[4] = v153;
          v151[5] = v154;
          v151[6] = v171;

          sub_22372A628();

          v145 = v89;
          v146 = v86;
LABEL_62:
          (v172)(v145, v146);
          (*(v169 + 8))(v178, v161);
          return;
        }

        if (v90 != *MEMORY[0x277D5D090])
        {
          v147 = *MEMORY[0x277D5D0A0];
          v148 = v90;
          v149 = mach_absolute_time();
          sub_22370F7A0(v149, 0, 0, v162, sub_22370BEEC, v97);

          v150 = v148 == v147;
          v86 = v175;
          v91 = v168;
          v102 = v172;
          v87 = v171;
          if (!v150)
          {
            (v172)(v165, v175);
          }

          goto LABEL_46;
        }

        v91 = v168;
        v137 = v168 + *(v58 + 64);
        if ((*(v137 + 8) & 1) == 0)
        {
          v138 = *(v168 + 64);
          if (v138)
          {
            v139 = *v137;
            v140 = *(v168 + 56);

            sub_22370F568(v139, v140, v138, v162, sub_22370BEEC, v97);

            v86 = v175;
            goto LABEL_45;
          }
        }

        v107 = v58;

        v108 = sub_22372AC88();
        v109 = sub_22372B278();

        if (os_log_type_enabled(v108, v109))
        {
          goto LABEL_54;
        }
      }
    }

    v127 = v168;
    goto LABEL_61;
  }

  sub_223626478(v60, &unk_27D08F8D0, &qword_223732CC8);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v63 = sub_22372AC98();
  __swift_project_value_buffer(v63, qword_28132B680);
  v64 = sub_22372AC88();
  v65 = sub_22372B278();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v161;
  if (v66)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_223620000, v64, v65, "Could not send UI activation since audioRecordType has not been received yet", v68, 2u);
    MEMORY[0x223DE8A80](v68, -1, -1);
  }

  (*(v169 + 8))(v178, v67);
}

uint64_t sub_2237053BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2237322A0;
  v11 = v10 + v9;
  v12 = (v10 + v9 + *(v7 + 48));
  sub_22372A568();
  *v12 = 0xD000000000000017;
  v12[1] = 0x8000000223734650;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_22372A5A8();
  *v13 = 0xD00000000000001DLL;
  v13[1] = 0x8000000223736DD0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_22372A608();
  v15 = __swift_project_value_buffer(v14, qword_28132BA28);
  (*(*(v14 - 8) + 16))(v11 + 2 * v8, v15, v14);
  v16 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v17 = 0xEB0000000064657ALL;
  v18 = 0x696C616974696E69;
  v19 = 0x8000000223734360;
  v20 = 0xD00000000000001FLL;
  v21 = 0xEC00000064657A69;
  v22 = 0x6C616E6946707274;
  if (v16 != 3)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000223734390;
  }

  if (v16 != 2)
  {
    v20 = v22;
    v19 = v21;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v18 = 0x6E69766965636572;
    v17 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  v25 = (v11 + 2 * v8 + *(v7 + 48));
  MEMORY[0x223DE7AD0](v23, v24);

  *v25 = 0;
  v25[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a3)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = (v11 + 3 * v8 + *(v7 + 48));

  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v11 + 4 * v8 + *(v7 + 48));
  sub_22372A578();
  v30 = *(a1 + 136);
  *v29 = *(a1 + 128);
  v29[1] = v30;
  v31 = (v11 + 5 * v8 + *(v7 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v31 = sub_22372B6B8();
  v31[1] = v32;
  v33 = (v11 + 6 * v8 + *(v7 + 48));
  sub_22372A5E8();
  *v33 = a4;
  v33[1] = a5;

  return v10;
}

void sub_223705784(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B680);
  v12 = a1;

  v13 = sub_22372AC88();
  v14 = sub_22372B268();

  if (os_log_type_enabled(v13, v14))
  {
    v27 = a5;
    v15 = a6;
    v16 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v17 = 138412546;
    *(v17 + 4) = v12;
    *v18 = a1;
    *(v17 + 12) = 2080;
    v20 = v12;
    *(v17 + 14) = sub_223623274(a2, a3, &v29);
    _os_log_impl(&dword_223620000, v13, v14, "AFSiriActivation result: %@ for requestId: %s", v17, 0x16u);
    sub_223626478(v18, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DE8A80](v19, -1, -1);
    v21 = v17;
    a4 = v16;
    a6 = v15;
    a5 = v27;
    MEMORY[0x223DE8A80](v21, -1, -1);
  }

  if (a1)
  {
    v22 = [v12 error];
    if (v22)
    {
      v23 = v22;
      if (qword_281328E80 != -1)
      {
        swift_once();
      }

      v24 = sub_22372A648();
      __swift_project_value_buffer(v24, qword_28132B6C8);
      v25 = swift_allocObject();
      v25[2] = v23;
      v25[3] = a4;
      v25[4] = a5;
      v25[5] = a6;
      v25[6] = a2;
      v25[7] = a3;

      v26 = v23;

      sub_22372A628();
    }
  }
}

uint64_t sub_223705A68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_223732A40;
  v39 = v11;
  v12 = v11 + v10;
  v13 = (v11 + v10 + *(v8 + 48));
  sub_22372A568();
  *v13 = 0xD000000000000017;
  v13[1] = 0x8000000223734650;
  v14 = (v12 + v9 + *(v8 + 48));
  sub_22372A5A8();
  *v14 = 0xD00000000000001CLL;
  v14[1] = 0x8000000223736D70;
  v15 = (v12 + 2 * v9 + *(v8 + 48));
  sub_22372A588();
  swift_getErrorValue();
  *v15 = sub_22372B738();
  v15[1] = v16;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v17 = sub_22372A608();
  v18 = __swift_project_value_buffer(v17, qword_28132BA28);
  (*(*(v17 - 8) + 16))(v12 + 3 * v9, v18, v17);
  v19 = *(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v20 = 0xEB0000000064657ALL;
  v21 = 0x696C616974696E69;
  v22 = 0x8000000223734360;
  v23 = 0xD00000000000001FLL;
  v24 = 0xEC00000064657A69;
  v25 = 0x6C616E6946707274;
  if (v19 != 3)
  {
    v25 = 0xD000000000000010;
    v24 = 0x8000000223734390;
  }

  if (v19 != 2)
  {
    v23 = v25;
    v22 = v24;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v21 = 0x6E69766965636572;
    v20 = 0xED00007350525467;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v26 = v21;
  }

  else
  {
    v26 = v23;
  }

  if (*(a2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v27 = v20;
  }

  else
  {
    v27 = v22;
  }

  v28 = (v12 + 3 * v9 + *(v8 + 48));
  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a4)
  {
    v29 = a3;
  }

  else
  {
    v29 = 0;
  }

  if (a4)
  {
    v30 = a4;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = (v12 + 4 * v9 + *(v8 + 48));

  MEMORY[0x223DE7AD0](v29, v30);

  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v12 + 5 * v9 + *(v8 + 48));
  sub_22372A578();
  v33 = *(a2 + 136);
  *v32 = *(a2 + 128);
  v32[1] = v33;
  v34 = (v12 + 6 * v9 + *(v8 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v34 = sub_22372B6B8();
  v34[1] = v35;
  v36 = (v12 - v9 + 8 * v9 + *(v8 + 48));
  sub_22372A5E8();
  *v36 = a5;
  v36[1] = a6;

  return v39;
}

uint64_t sub_223705E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a8;
  v76 = a7;
  v73 = a6;
  v74 = a5;
  v71 = a2;
  v72 = a4;
  v77 = a11;
  v69 = a10;
  v70 = a3;
  v68 = a9;
  v80 = a12;
  v81 = a13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v67 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v79 = &v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v78 = &v67 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v67 - v25;
  v27 = sub_223727F38();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v67 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = &v67 - v38;
  v40 = *MEMORY[0x277D5CDE8];
  v41 = sub_223729DE8();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v39, v40, v41);
  v43 = v41;
  v44 = v27;
  v45 = v68;
  (*(v42 + 56))(v39, 0, 1, v43);
  v46 = v69;
  sub_223727FE8();

  sub_223727F88();
  v47 = sub_223727408();
  v48 = *(v47 - 8);
  (*(v48 + 16))(v35, v72, v47);
  (*(v48 + 56))(v35, 0, 1, v47);
  sub_223728018();

  sub_223728008();

  sub_223727FA8();
  v49 = v77;
  (*(v28 + 104))(v31, **(&unk_2784DFE30 + v77), v44);
  (*(v28 + 16))(v26, v31, v44);
  (*(v28 + 56))(v26, 0, 1, v44);
  sub_223727FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F938, &qword_223732EE0);
  inited = swift_initStackObject();
  v51 = inited;
  *(inited + 32) = v45;
  v52 = inited + 32;
  *(inited + 16) = xmmword_22372E090;
  v53 = 2;
  if (v49 == 1)
  {
    v53 = 3;
  }

  *(inited + 40) = v46;
  *(inited + 48) = v53;
  swift_bridgeObjectRetain_n();
  sub_22368F33C(v51);
  swift_setDeallocating();
  sub_223626478(v52, &qword_27D08F940, &qword_223732EE8);
  sub_223727F98();
  sub_223634890(v80, v78, &unk_27D08E990, &qword_22372FCF0);
  sub_223727FF8();
  sub_223634890(v81, v79, &qword_27D08E978, &qword_22372D170);
  sub_223727FD8();
  if (v49 == 1)
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v54 = sub_22372AC98();
    __swift_project_value_buffer(v54, qword_28132B680);
    v55 = sub_22372AC88();
    v56 = sub_22372B288();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_223620000, v55, v56, "setting tcuMappedNLResponse as nil since we got forceMitigated response from TTProxy", v57, 2u);
LABEL_16:
      MEMORY[0x223DE8A80](v57, -1, -1);
    }
  }

  else if (*(a14 + 16) && (v58 = sub_2236261A0(v45, v46), (v59 & 1) != 0) && (v60 = *(*(a14 + 56) + 8 * v58)) != 0)
  {
    v55 = v60;
    v61 = v67;
    sub_22372A338();
    v62 = sub_22372A358();
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    sub_223727FC8();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v63 = sub_22372AC98();
    __swift_project_value_buffer(v63, qword_28132B680);

    v55 = sub_22372AC88();
    v64 = sub_22372B268();

    if (os_log_type_enabled(v55, v64))
    {
      v57 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v82 = v65;
      *v57 = 136315138;
      *(v57 + 4) = sub_223623274(v45, v46, &v82);
      _os_log_impl(&dword_223620000, v55, v64, "TTProxy returned a TCU ID - %s that does not have nl response information in NLTRPCandidateMesage", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x223DE8A80](v65, -1, -1);
      goto LABEL_16;
    }
  }

  return (*(v28 + 8))(v31, v44);
}

void sub_223706664(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v166 = a6;
  v179 = a5;
  v174 = a4;
  v176 = a2;
  v177 = a3;
  v182 = a1;
  v164 = sub_223727F38();
  MEMORY[0x28223BE20](v164, v10);
  v163 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v162 = &v157 - v14;
  v160 = type metadata accessor for RootRequestController.TRPCache(0);
  v159 = *(v160 - 8);
  v16 = MEMORY[0x28223BE20](v160, v15);
  v158 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v161 = &v157 - v19;
  v172 = type metadata accessor for TTProxyInput(0);
  MEMORY[0x28223BE20](v172, v20);
  v178 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v165 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v168 = &v157 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v157 - v30;
  v32 = sub_2237287C8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v37 = sub_22372AC98();
  v38 = __swift_project_value_buffer(v37, qword_28132B680);
  v39 = *(v33 + 16);
  v173 = a7;
  v169 = v39;
  v170 = v33 + 16;
  v39(v36, a7, v32);
  v181 = v38;
  v40 = sub_22372AC88();
  v41 = sub_22372B268();
  v42 = os_log_type_enabled(v40, v41);
  v183 = v31;
  v171 = v32;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v180 = v7;
    v45 = v44;
    v185[0] = v44;
    *v43 = 136315138;
    v46 = sub_2237287B8();
    v48 = v47;
    (*(v33 + 8))(v36, v32);
    v49 = sub_223623274(v46, v48, v185);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_223620000, v40, v41, "creating TT-Input with nlRoutingDecision:%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v50 = v45;
    v8 = v180;
    MEMORY[0x223DE8A80](v50, -1, -1);
    v31 = v183;
    MEMORY[0x223DE8A80](v43, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v36, v32);
  }

  v51 = v186;
  v52 = __swift_project_boxed_opaque_existential_1((v186 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager), *(v186 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager + 24));
  v53 = *(v51 + 120);
  v54 = *(*v52 + 24);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v180 = v57;
  *(&v157 - 4) = v57;
  *(&v157 - 3) = v53;
  *(&v157 - 2) = v58;
  MEMORY[0x28223BE20](v56, v59);
  *(&v157 - 2) = sub_22370BD70;
  *(&v157 - 1) = v60;
  os_unfair_lock_lock(v54 + 4);
  sub_22363107C(v61);
  v167 = v8;
  v62 = v54 + 4;
  if (!v8)
  {
    os_unfair_lock_unlock(v62);
    v63 = v31;
    v64 = v168;
    sub_223634890(v63, v168, &qword_27D08F930, &qword_223733380);
    v65 = sub_22372AC88();
    v66 = sub_22372B268();
    v67 = os_log_type_enabled(v65, v66);
    v175 = v53;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v185[0] = v69;
      *v68 = 136315138;
      v70 = v165;
      sub_223634890(v64, v165, &qword_27D08F930, &qword_223733380);
      v71 = type metadata accessor for RequestState(0);
      if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
      {
        sub_223626478(v70, &qword_27D08F930, &qword_223733380);
        v72 = 0xE900000000000064;
        v73 = 0x656E696665646E75;
      }

      else
      {
        v74 = v70;
        v73 = sub_22371A5E0();
        v72 = v75;
        sub_2236453C4(v74, type metadata accessor for RequestState);
      }

      sub_223626478(v64, &qword_27D08F930, &qword_223733380);
      v76 = sub_223623274(v73, v72, v185);

      *(v68 + 4) = v76;
      _os_log_impl(&dword_223620000, v65, v66, "activeRequestState: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x223DE8A80](v69, -1, -1);
      MEMORY[0x223DE8A80](v68, -1, -1);
    }

    else
    {

      sub_223626478(v64, &qword_27D08F930, &qword_223733380);
    }

    v77 = v179;
    v78 = v186;
    v79 = (v186 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
    swift_beginAccess();
    v80 = *v79;
    v81 = v79[1];
    v168 = v79;
    v82 = v79[2];
    v83 = v172;
    v84 = v178;
    sub_223634890(v77, v178 + *(v172 + 40), &unk_27D08E990, &qword_22372FCF0);
    v169(v84 + *(v83 + 44), v173, v171);
    v85 = v183;
    sub_223634890(v183, v84 + *(v83 + 48), &qword_27D08F930, &qword_223733380);
    v86 = v175;
    *v84 = v180;
    *(v84 + 8) = v86;
    *(v84 + 16) = v80;
    *(v84 + 17) = v81;
    v87 = v182;
    v89 = v176;
    v88 = v177;
    *(v84 + 24) = v182;
    *(v84 + 32) = v89;
    *(v84 + 40) = v88;
    *(v84 + 48) = v82;
    *(v84 + 56) = v174;
    __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy), *(v78 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy + 24));

    v90 = sub_22370FA34(v84);
    if ((v92 & 0x100) != 0)
    {
      v184[0] = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
      swift_willThrowTypedImpl();
      sub_2236453C4(v84, type metadata accessor for TTProxyInput);
      v121 = v85;
    }

    else
    {
      v93 = v78;
      v94 = MEMORY[0x28223BE20](v90, v91);
      *(&v157 - 14) = v95;
      *(&v157 - 13) = v96;
      v97 = v179;
      v98 = v180;
      *(&v157 - 12) = v99;
      *(&v157 - 11) = v98;
      *(&v157 - 10) = v86;
      *(&v157 - 9) = v87;
      *(&v157 - 8) = v89;
      *(&v157 - 7) = v94;
      *(&v157 - 6) = v100;
      *(&v157 - 40) = v101;
      v102 = v166;
      *(&v157 - 4) = v97;
      *(&v157 - 3) = v102;
      *(&v157 - 2) = v103;
      v104 = v94;
      v105 = v101;
      v106 = v100;
      objc_allocWithZone(sub_223728028());

      v174 = sub_223727F78();
      if (v174)
      {
        v172 = v106;
        v173 = v104;
        LODWORD(v179) = v105;
        v107 = v168;
        v108 = *(v168 + 1);
        if (*(v108 + 16) && (v109 = sub_2236261A0(v182, v89), (v110 & 1) != 0))
        {
          v111 = v159;
          v112 = *(v108 + 56) + *(v159 + 72) * v109;
          v113 = v158;
          sub_22370BCAC(v112, v158);
          v114 = v161;
          sub_22370BE08(v113, v161);
          v115 = *(v114 + 16);
          v116 = v174;
          v117 = v174;

          *(v114 + 16) = v116;
          v118 = v162;
          sub_22370BCAC(v114, v162);
          (*(v111 + 56))(v118, 0, 1, v160);
          v107 = v168;
          v98 = v180;
          swift_beginAccess();
          sub_223714400(v118, v182, v89);
          swift_endAccess();
          sub_2236453C4(v114, type metadata accessor for RootRequestController.TRPCache);
          v119 = v183;
          v120 = v93;
        }

        else
        {

          v122 = sub_22372AC88();
          v123 = sub_22372B278();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v184[0] = v125;
            *v124 = 136315138;
            *(v124 + 4) = sub_223623274(v182, v89, v184);
            _os_log_impl(&dword_223620000, v122, v123, "No TRP cache found for trpId = %s. Could not cache TTResponseMessage", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v125);
            v126 = v125;
            v120 = v186;
            MEMORY[0x223DE8A80](v126, -1, -1);
            v127 = v124;
            v119 = v183;
            MEMORY[0x223DE8A80](v127, -1, -1);
          }

          else
          {
            v120 = v93;

            v119 = v183;
          }
        }

        if (*v107)
        {
          v129 = v182;
          if (v179 == 1)
          {
LABEL_30:
            v131 = v174;
            if (qword_281328E80 != -1)
            {
              swift_once();
            }

            v132 = sub_22372A648();
            __swift_project_value_buffer(v132, qword_28132B6C8);
            v133 = swift_allocObject();
            v134 = v172;
            v135 = v173;
            *(v133 + 16) = v120;
            *(v133 + 24) = v135;
            *(v133 + 32) = v134;
            *(v133 + 40) = v179;
            v137 = v176;
            v136 = v177;
            *(v133 + 48) = v129;
            *(v133 + 56) = v137;
            *(v133 + 64) = v136;

            sub_22372A628();

            v138 = v131;
            v139 = sub_22372AC88();
            v140 = sub_22372B268();

            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              *v141 = 138412290;
              *(v141 + 4) = v138;
              *v142 = v131;
              v143 = v138;
              _os_log_impl(&dword_223620000, v139, v140, "Posting TTResponseMessage = %@", v141, 0xCu);
              sub_223626478(v142, &unk_27D08F250, &unk_22372D1D0);
              MEMORY[0x223DE8A80](v142, -1, -1);
              MEMORY[0x223DE8A80](v141, -1, -1);
            }

            v144 = v138;
            v145 = sub_22372AC88();
            v146 = sub_22372B288();

            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v184[0] = v148;
              *v147 = 136446466;
              sub_223727F48();
              v149 = sub_22372B038();
              v151 = sub_223623274(v149, v150, v184);

              *(v147 + 4) = v151;
              *(v147 + 12) = 2082;
              v152 = sub_223728CF8();
              v154 = sub_223623274(v152, v153, v184);

              *(v147 + 14) = v154;
              v120 = v186;
              _os_log_impl(&dword_223620000, v145, v146, "Posting TTResponseMessage with mitigationDecision: %{public}s for trpId: %{public}s", v147, 0x16u);
              swift_arrayDestroy();
              v155 = v148;
              v119 = v183;
              MEMORY[0x223DE8A80](v155, -1, -1);
              MEMORY[0x223DE8A80](v147, -1, -1);
            }

            __swift_project_boxed_opaque_existential_1((v120 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v120 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
            if (sub_223729D88())
            {
              sub_22370192C(v182, v137);
              sub_2236453C4(v178, type metadata accessor for TTProxyInput);
              sub_223626478(v119, &qword_27D08F930, &qword_223733380);
              return;
            }

            type metadata accessor for RequestControllerBridgeInternalErrors(0);
            sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
            swift_allocError();
            *v156 = v144;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_2236453C4(v178, type metadata accessor for TTProxyInput);
            v121 = v119;
            goto LABEL_39;
          }
        }

        else
        {
          v129 = v182;
          if (v107[1] != 1 || v179 == 1)
          {
            goto LABEL_30;
          }
        }

        v130 = v167;
        sub_223703AD0(v98, v175, v129, v176);
        v167 = v130;
        if (v130)
        {
          sub_22370BDE0(v173, v172, v179, 0);

          sub_2236453C4(v178, type metadata accessor for TTProxyInput);
          sub_223626478(v119, &qword_27D08F930, &qword_223733380);
          return;
        }

        goto LABEL_30;
      }

      sub_22370BDE0(v104, v106, v105, 0);
      sub_223657180();
      swift_allocError();
      *v128 = xmmword_22372CE90;
      *(v128 + 16) = 4;
      swift_willThrow();
      sub_2236453C4(v178, type metadata accessor for TTProxyInput);
      v121 = v183;
    }

LABEL_39:
    sub_223626478(v121, &qword_27D08F930, &qword_223733380);
    return;
  }

  os_unfair_lock_unlock(v62);
  __break(1u);
}

uint64_t sub_223707740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_223732A40;
  v13 = v12 + v11;
  v14 = (v13 + *(v9 + 48));
  sub_22372A568();
  *v14 = 0xD000000000000017;
  v14[1] = 0x8000000223734650;
  v15 = (v13 + v10 + *(v9 + 48));
  sub_22372A5A8();
  *v15 = 0xD000000000000015;
  v15[1] = 0x8000000223736DF0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v16 = sub_22372A608();
  v17 = __swift_project_value_buffer(v16, qword_28132BA28);
  (*(*(v16 - 8) + 16))(v13 + 2 * v10, v17, v16);
  v18 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v19 = 0xEB0000000064657ALL;
  v20 = 0x696C616974696E69;
  v21 = 0x8000000223734360;
  v22 = 0xD00000000000001FLL;
  v23 = 0xEC00000064657A69;
  v24 = 0x6C616E6946707274;
  if (v18 != 3)
  {
    v24 = 0xD000000000000010;
    v23 = 0x8000000223734390;
  }

  if (v18 != 2)
  {
    v22 = v24;
    v21 = v23;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v20 = 0x6E69766965636572;
    v19 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v25 = v20;
  }

  else
  {
    v25 = v22;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  v27 = (v13 + 2 * v10 + *(v9 + 48));
  MEMORY[0x223DE7AD0](v25, v26);

  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v13 + 3 * v10 + *(v9 + 48));
  sub_22372A5B8();
  *v28 = a2;
  v28[1] = a3;
  v29 = (v13 + 4 * v10 + *(v9 + 48));

  sub_22372A5C8();
  *v29 = a5;
  v29[1] = a6;
  v30 = (v13 + 5 * v10 + *(v9 + 48));

  sub_22372A578();
  v31 = a1[17];
  *v30 = a1[16];
  v30[1] = v31;
  v32 = (v13 + 6 * v10 + *(v9 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v32 = sub_22372B6B8();
  v32[1] = v33;
  v34 = (v13 - v10 + 8 * v10 + *(v9 + 48));
  sub_22372A5E8();
  v35 = a1[15];
  *v34 = a1[14];
  v34[1] = v35;

  return v12;
}

uint64_t sub_223707B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(sub_223728108());
  v6 = sub_223728098();
  if (!v6)
  {
    sub_223657180();
    swift_allocError();
    *v18 = xmmword_22372CE90;
    *(v18 + 16) = 4;
    return swift_willThrow();
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
  if ((sub_223729D88() & 1) == 0)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v19 = v7;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v8 = v7;
  v9 = sub_223729D38();
  v11 = v10;

  v12 = sub_223728088();
  sub_2236C470C(v9, v11, v12, v13);

  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v14 = sub_22372A648();
  __swift_project_value_buffer(v14, qword_28132B6C8);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v8;
  v16 = v8;

  sub_22372A628();
}

uint64_t sub_223707D60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v22 - v13;
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_2237280D8();

  sub_2237280C8();

  sub_2237280E8();
  v18 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v19 = sub_223727408();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, &a2[v18], v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_2237280F8();

  sub_2237280A8();

  return sub_2237280B8();
}

uint64_t sub_223707FB8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A40;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0x6946505254626372;
  v8[1] = 0xEF64657A696C616ELL;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  sub_22372A5B8();
  v21 = sub_223728078();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (v6 + 3 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v21, v23);

  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v6 + 4 * v3 + *(v2 + 48));
  sub_22372A5C8();
  *v25 = sub_223728088();
  v25[1] = v26;
  v27 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A578();
  v28 = a1[17];
  *v27 = a1[16];
  v27[1] = v28;
  v29 = (v6 + 6 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v29 = sub_22372B6B8();
  v29[1] = v30;
  v31 = (v6 - v3 + 8 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v32 = a1[15];
  *v31 = a1[14];
  v31[1] = v32;

  return v5;
}

id sub_223708394(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v21 - v7);
  v9 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v10 = *(v9 + 8);
  if (*(v10 + 16) && (v11 = sub_2236261A0(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for RootRequestController.TRPCache(0);
    v16 = *(v15 - 8);
    sub_22370BCAC(v14 + *(v16 + 72) * v13, v8);
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for RootRequestController.TRPCache(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  type metadata accessor for RootRequestController.TRPCache(0);
  v17 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  v18 = 0;
  if (!v17)
  {
    v18 = *v8;
    v19 = *v8;
  }

  sub_223626478(v8, &qword_27D08F928, &unk_223732ED0);
  return v18;
}

void *sub_223708590(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v10 = *(v9 + 8);
  if (*(v10 + 16) && (v11 = sub_2236261A0(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for RootRequestController.TRPCache(0);
    v16 = *(v15 - 8);
    sub_22370BCAC(v14 + *(v16 + 72) * v13, v8);
    (*(v16 + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for RootRequestController.TRPCache(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  type metadata accessor for RootRequestController.TRPCache(0);
  v17 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  v18 = 0;
  if (!v17)
  {
    v18 = *(v8 + 2);
    v19 = v18;
  }

  sub_223626478(v8, &qword_27D08F928, &unk_223732ED0);
  return v18;
}

void sub_223708784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) == 1)
  {
    v5 = objc_allocWithZone(sub_2237294B8());
    v6 = sub_223729458();
    if (!v6)
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v7 = sub_22372AC98();
      __swift_project_value_buffer(v7, qword_28132B680);
      v8 = sub_22372AC88();
      v9 = sub_22372B278();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Could not create StartRootCandidateRequestMessage";
LABEL_16:
      _os_log_impl(&dword_223620000, v8, v9, v11, v10, 2u);
      MEMORY[0x223DE8A80](v10, -1, -1);
LABEL_17:

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  else
  {
    v12 = objc_allocWithZone(sub_223728EC8());
    v6 = sub_223728E68();
    if (!v6)
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v16 = sub_22372AC98();
      __swift_project_value_buffer(v16, qword_28132B680);
      v8 = sub_22372AC88();
      v9 = sub_22372B278();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_17;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Could not create StartCandidateRequestMessage";
      goto LABEL_16;
    }
  }

  v13 = v6;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v4 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
  v14 = v13;
  if (sub_223729D88())
  {
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v15 = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_223708AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223729488();

  sub_223729478();
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, a4, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_2237294A8();

  sub_223729498();
  swift_beginAccess();
  return sub_223729468();
}

uint64_t sub_223708D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223728E98();

  sub_223728E88();
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, a4, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_223728EB8();

  sub_223728EA8();
  swift_beginAccess();
  return sub_223728E78();
}

void sub_223708F50(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22370B69C(a1);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);

    v8 = sub_22372AC88();
    v9 = sub_22372B268();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_223623274(v5, v6, &v30);
      _os_log_impl(&dword_223620000, v8, v9, "Language detected = %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x223DE8A80](v11, -1, -1);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }

    if (v5 == sub_22372A558() && v6 == v12)
    {
    }

    else
    {
      v17 = sub_22372B6E8();

      if ((v17 & 1) == 0)
      {

        return;
      }
    }

    v18 = sub_22372AC88();
    v19 = sub_22372B268();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223620000, v18, v19, "Non english language detected", v20, 2u);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    MEMORY[0x28223BE20](v21, v22);
    v23 = objc_allocWithZone(sub_223729898());
    v24 = sub_223729838();

    if (v24)
    {
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher), *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher + 24));
      if (sub_223729D88())
      {
        if (qword_281328E80 != -1)
        {
          swift_once();
        }

        v25 = sub_22372A648();
        __swift_project_value_buffer(v25, qword_28132B6C8);
        v26 = swift_allocObject();
        *(v26 + 16) = v2;
        *(v26 + 24) = v24;

        v27 = v24;
        sub_22372A628();

        return;
      }

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623428(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v29 = v24;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_223657180();
      swift_allocError();
      *v28 = xmmword_22372CE90;
      *(v28 + 16) = 4;
    }

    swift_willThrow();
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  __swift_project_value_buffer(v13, qword_28132B680);
  v14 = sub_22372AC88();
  v15 = sub_22372B268();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_223620000, v14, v15, "No language detected", v16, 2u);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }
}

uint64_t sub_223709420(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223729868();

  sub_223729858();

  sub_223729878();
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId;
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v8, &a2[v16], v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  sub_223729888();

  return sub_223729848();
}

uint64_t sub_223709658(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2237322A0;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001ELL;
  v8[1] = 0x8000000223736D30;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;
  v27 = (v6 + 6 * v3 + *(v2 + 48));

  sub_22372A598();
  *v27 = sub_223729828();
  v27[1] = v28;
  return v5;
}

uint64_t sub_2237099E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F55E0(a1);
}

uint64_t sub_223709A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F5A7C(a1);
}

uint64_t sub_223709B0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_2236F5F18(a1);
}

uint64_t sub_223709BA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF124(a1);
}

uint64_t sub_223709C34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2C4(a1);
}

uint64_t sub_223709CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2C4(a1);
}

uint64_t sub_223709D5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F63B4(a1);
}

uint64_t sub_223709DF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7910(a1);
}

uint64_t sub_223709E84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7C08(a1);
}

uint64_t sub_223709F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F9CBC(a1);
}

uint64_t sub_223709FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FAEAC(a1);
}

uint64_t sub_22370A040(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FB560(a1);
}

uint64_t sub_22370A0D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FBC80(a1);
}

uint64_t sub_22370A168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F8A3C(a1);
}

uint64_t sub_22370A1FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FE5D0(a1);
}

uint64_t sub_22370A290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FEA20(a1);
}

uint64_t sub_22370A324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF2E4(a1);
}

uint64_t sub_22370A3B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

uint64_t sub_22370A44C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

uint64_t sub_22370A4E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF4A4(a1);
}

uint64_t sub_22370A574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FFEE4(a1);
}

uint64_t sub_22370A608(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F9644(a1);
}

uint64_t sub_22370A69C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236F7F00(a1);
}

uint64_t sub_22370A730(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236FF484(a1);
}

void sub_22370A7F8(uint64_t a1)
{
  sub_223727408();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RootRequestController.RequestContext(319);
    if (v2 <= 0x3F)
    {
      sub_22370B01C(319, &qword_28132B530, MEMORY[0x277D5CF58]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RootRequestController.RequestControllerState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RootRequestController.RequestControllerState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22370AB2C(uint64_t a1)
{
  sub_22370AD64(319);
  if (v1 <= 0x3F)
  {
    sub_22370AE40(319, &qword_281328DE0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22370ADEC(319, &qword_281329538, &unk_27D08F8E0, &qword_223732CE8);
      if (v3 <= 0x3F)
      {
        sub_22370ADEC(319, qword_281329E18, &unk_27D08F8F0, &unk_223732CF0);
        if (v4 <= 0x3F)
        {
          sub_22370AE40(319, &qword_281328DF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22370B01C(319, &qword_28132B510, MEMORY[0x277D5D0A8]);
            if (v6 <= 0x3F)
            {
              sub_22370AE40(319, &qword_281328CD8, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22370B01C(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
                if (v8 <= 0x3F)
                {
                  sub_22370B01C(319, &unk_28132B4F8, MEMORY[0x277D5D118]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_22370AD64(uint64_t a1)
{
  if (!qword_281328E18)
  {
    type metadata accessor for RootRequestController.TRPCache(255);
    v1 = sub_22372AF78();
    if (!v2)
    {
      atomic_store(v1, &qword_281328E18);
    }
  }
}

void sub_22370ADEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22372B3A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22370AE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22370AEB8(uint64_t a1)
{
  sub_22370ADEC(319, &qword_281329538, &unk_27D08F8E0, &qword_223732CE8);
  if (v1 <= 0x3F)
  {
    sub_22370B01C(319, &qword_28132B5C0, MEMORY[0x277D5CB10]);
    if (v2 <= 0x3F)
    {
      sub_22370B01C(319, &qword_28132B5A8, MEMORY[0x277D5CB30]);
      if (v3 <= 0x3F)
      {
        sub_22370B01C(319, &qword_28132B590, MEMORY[0x277D5CBA8]);
        if (v4 <= 0x3F)
        {
          sub_22370AE40(319, &qword_281328DF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22370B01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22370B074()
{
  result = qword_27D08F910;
  if (!qword_27D08F910)
  {
    result = swift_getWitnessTable(aEs, &type metadata for RootRequestController.RequestControllerState, v0, v1);
    atomic_store(result, &qword_27D08F910);
  }

  return result;
}

uint64_t sub_22370B0C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2237322A0;
  v11 = v10 + v9;
  v12 = (v10 + v9 + *(v7 + 48));
  sub_22372A568();
  *v12 = 0xD000000000000017;
  v12[1] = 0x8000000223734650;
  v13 = (v11 + v8 + *(v7 + 48));
  sub_22372A5A8();
  *v13 = 0xD00000000000001BLL;
  v13[1] = 0x8000000223736DB0;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_22372A608();
  v15 = __swift_project_value_buffer(v14, qword_28132BA28);
  (*(*(v14 - 8) + 16))(v11 + 2 * v8, v15, v14);
  v16 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v17 = 0xEB0000000064657ALL;
  v18 = 0x696C616974696E69;
  v19 = 0x8000000223734360;
  v20 = 0xD00000000000001FLL;
  v21 = 0xEC00000064657A69;
  v22 = 0x6C616E6946707274;
  if (v16 != 3)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000223734390;
  }

  if (v16 != 2)
  {
    v20 = v22;
    v19 = v21;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v18 = 0x6E69766965636572;
    v17 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  v25 = (v11 + 2 * v8 + *(v7 + 48));
  MEMORY[0x223DE7AD0](v23, v24);

  *v25 = 0;
  v25[1] = 0xE000000000000000;
  sub_22372A5C8();
  if (a3)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = (v11 + 3 * v8 + *(v7 + 48));

  MEMORY[0x223DE7AD0](v26, v27);

  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v11 + 4 * v8 + *(v7 + 48));
  sub_22372A578();
  v30 = *(a1 + 136);
  *v29 = *(a1 + 128);
  v29[1] = v30;
  v31 = (v11 + 5 * v8 + *(v7 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v31 = sub_22372B6B8();
  v31[1] = v32;
  v33 = (v11 + 6 * v8 + *(v7 + 48));
  sub_22372A5E8();
  *v33 = a4;
  v33[1] = a5;

  return v10;
}

void *sub_22370B490(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22370B520(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        goto LABEL_25;
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_25;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      sub_223630584(0, &qword_281328D10, 0x277D82BB8);
      return sub_22372B368() & 1;
    }

    return 0;
  }

  if (a3 != 3)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 4 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 4 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 3)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_25:

  return sub_22372B6E8();
}

uint64_t sub_22370B69C(uint64_t a1)
{
  v2 = sub_223727728();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v45 - v17;
  sub_2236F5150(a1);
  if (!v20 || (v21 = v19, , !v21))
  {
    if (qword_281328E58 == -1)
    {
LABEL_9:
      v29 = sub_22372AC98();
      __swift_project_value_buffer(v29, qword_28132B680);
      v30 = sub_22372AC88();
      v31 = sub_22372B268();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_223620000, v30, v31, "tcuMappedNLResponse is empty", v32, 2u);
        MEMORY[0x223DE8A80](v32, -1, -1);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  sub_22372A208();
  v22 = sub_223727758();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v18, 1, v22) != 1)
  {
    v33 = sub_223727738();
    (*(v23 + 8))(v18, v22);
    v34 = *(v33 + 16);
    if (!v34)
    {

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v39 = sub_22372AC98();
      __swift_project_value_buffer(v39, qword_28132B680);
      v25 = sub_22372AC88();
      v26 = sub_22372B268();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_20;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "No predicted language found in LVC output";
      goto LABEL_19;
    }

    v46 = v14;
    v47 = v21;
    v35 = *(v3 + 16);
    v48 = v33 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v49 = v35;
    (v35)(v11);
    v50 = v34;
    if (v34 == 1)
    {
LABEL_14:

      v36 = v46;
      (*(v3 + 32))(v46, v11, v2);
      v37 = sub_223727708();

      (*(v3 + 8))(v36, v2);
      return v37;
    }

    v40 = 1;
    while (v40 < *(v33 + 16))
    {
      v49(v7, v48 + *(v3 + 72) * v40, v2);
      sub_223727718();
      v42 = v41;
      sub_223727718();
      v43 = *(v3 + 8);
      if (v42 >= v44)
      {
        v43(v7, v2);
      }

      else
      {
        v43(v11, v2);
        (*(v3 + 32))(v11, v7, v2);
      }

      if (v50 == ++v40)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_223626478(v18, &qword_27D08F920, qword_223730410);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v24 = sub_22372AC98();
  __swift_project_value_buffer(v24, qword_28132B680);
  v25 = sub_22372AC88();
  v26 = sub_22372B268();
  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_20;
  }

  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = "Empty LVC prediction";
LABEL_19:
  _os_log_impl(&dword_223620000, v25, v26, v28, v27, 2u);
  MEMORY[0x223DE8A80](v27, -1, -1);
LABEL_20:

  return 0;
}

unint64_t sub_22370BC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_22372B5F8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22370BCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22370BDE0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_22370BE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22370BE84()
{
  result = qword_27D08F958;
  if (!qword_27D08F958)
  {
    v3 = sub_223630584(255, &qword_27D08F950, 0x277CCACA8);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27D08F958);
  }

  return result;
}

uint64_t objectdestroy_94Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22370C058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.TRPCache(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges04RootA16ControllerErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22370C0E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22370C130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22370C174(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22370C1B0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v40 = v0;
    v3 = [v2 views];
    if (v3)
    {
      v4 = v3;
      sub_223630584(0, &qword_281328D00, 0x277D47140);
      v5 = sub_22372B128();

      if (!(v5 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_4:
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_21:

        return 0;
      }
    }

    v6 = sub_22372B558();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DE7ED0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 listenAfterSpeaking];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 BOOLValue];

          if (v13)
          {
LABEL_22:

            return 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_21;
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
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v0;
    v17 = [v15 listenAfterSpeaking];
    if (v17)
    {
LABEL_18:
      v18 = v17;
      v19 = [v17 BOOLValue];

      return v19;
    }

LABEL_25:

    return 0;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v16 = v0;
    v17 = [v22 listenAfterSpeaking];
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v23 = result;
    v38 = v0;
    v24 = [v23 callbacks];
    if (v24)
    {
      v25 = v24;
      sub_223630584(0, &qword_27D08F9B8, 0x277D476F0);
      v26 = sub_22372B128();
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v39 = v26;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
LABEL_68:

        return 0;
      }

LABEL_34:
      v28 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x223DE7ED0](v28, v39);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v28 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v29 = *(v39 + 32 + 8 * v28);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        v40 = v29;
        v31 = [v29 commands];
        if (v31)
        {
          v32 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
          v33 = sub_22372B128();
        }

        else
        {
          v33 = MEMORY[0x277D84F90];
        }

        if (v33 >> 62)
        {
          v34 = sub_22372B558();
          if (v34)
          {
LABEL_44:
            v35 = 0;
            do
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DE7ED0](v35, v33);
                v36 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                swift_unknownObjectRetain();
                v36 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v37 = sub_22370C1B0();
                swift_unknownObjectRelease();
                if (v37)
                {

                  goto LABEL_22;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              ++v35;
            }

            while (v36 != v34);
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_44;
          }
        }

        if (v28 == v27)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v27 = sub_22372B558();
    if (!v27)
    {
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  return result;
}

uint64_t sub_22370C6B8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 dialogPhase];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22372AFE8();
      v8 = v7;

      v9 = sub_22372AFE8();
      if (v8)
      {
        if (v6 == v9 && v8 == v10)
        {
          v12 = 1;
        }

        else
        {
          v12 = sub_22372B6E8();
        }

        return v12 & 1;
      }
    }

    else
    {
      sub_22372AFE8();
    }

LABEL_51:
    v12 = 0;
    return v12 & 1;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_51;
  }

  v14 = v13;
  v30 = v0;
  v15 = [v14 callbacks];
  if (v15)
  {
    v16 = v15;
    sub_223630584(0, &qword_27D08F9B8, 0x277D476F0);
    v17 = sub_22372B128();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v17 >> 62)
  {
    goto LABEL_49;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_50:

    goto LABEL_51;
  }

LABEL_19:
  v19 = 0;
  while ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x223DE7ED0](v19, v17);
    v21 = __OFADD__(v19++, 1);
    if (v21)
    {
      goto LABEL_44;
    }

LABEL_24:
    v31 = v20;
    v22 = [v20 commands];
    if (v22)
    {
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F280, &qword_22372FD98);
      v24 = sub_22372B128();

      if (!(v24 >> 62))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_26:
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }
    }

    v25 = sub_22372B558();
    if (v25)
    {
LABEL_27:
      v26 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DE7ED0](v26, v24);
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          swift_unknownObjectRetain();
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            v18 = sub_22372B558();
            if (!v18)
            {
              goto LABEL_50;
            }

            goto LABEL_19;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v28 = sub_22370C6B8();
          swift_unknownObjectRelease();
          if (v28)
          {
            goto LABEL_45;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v26;
      }

      while (v27 != v25);
    }

LABEL_20:

    if (v19 == v18)
    {
      goto LABEL_50;
    }
  }

  if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

  v20 = *(v17 + 32 + 8 * v19);
  v21 = __OFADD__(v19++, 1);
  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_44:
  __break(1u);
LABEL_45:

  v12 = 1;
  return v12 & 1;
}

uint64_t RemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v34 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 56))(v20, 1, 1, v7);
  v21 = *(v17 + 28);
  v20[v21] = 2;
  a1(v20);
  sub_22364FCB0(v20, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_223660FAC(v6);
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_27D097088);
    v23 = sub_22372AC88();
    v24 = sub_22372B278();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136446210;
      v35[1] = v34;
      swift_getMetatypeMetadata();
      v27 = sub_22372B038();
      v29 = sub_223623274(v27, v28, v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_223620000, v23, v24, "Could not build %{public}s: Builder has missing required fields", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    sub_22370D814(v20);
    type metadata accessor for RemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v31 = *(v8 + 32);
    v31(v15, v6, v7);
    *(v1 + qword_28132B768) = v20[v21];
    (*(v8 + 16))(v1 + qword_28132B758, v15, v7);
    sub_2237273F8();
    v31(v1 + qword_28132B760, v12, v7);
    v32 = sub_223727518();
    (*(v8 + 8))(v15, v7);
    sub_22370D814(v20);
    return v32;
  }
}

uint64_t RemoteIntelligenceSessionMessage.init(from:)(void *a1)
{
  v3 = sub_223727408();
  v28 = *(v3 - 8);
  v29 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9C0, &qword_223733048);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - v14;
  v16 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_22370DED8();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v25 = v32;
    type metadata accessor for RemoteIntelligenceSessionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v28;
    v27 = v12;
    v31[0] = 0;
    sub_2236C6ED8(&qword_27D08ED50, MEMORY[0x277CC9618]);
    v18 = v29;
    sub_22372B648();
    v20 = v11;
    v26 = *(v17 + 32);
    v26(v32 + qword_28132B758, v10, v18);
    v31[0] = 1;
    sub_22372B648();
    v21 = v32;
    v26(v32 + qword_28132B760, v7, v18);
    v31[0] = 2;
    v22 = sub_22372B638() & 1;
    v23 = v27;
    *(v21 + qword_28132B768) = v22;
    v24 = v30;
    sub_223623934(v30, v31);
    v25 = sub_223727508();
    (*(v23 + 8))(v15, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v25;
}

uint64_t sub_22370D2DC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F9D0, &unk_223733050);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22370DED8();
  sub_22372B7E8();
  v15 = 0;
  sub_223727408();
  sub_2236C6ED8(&unk_28132B610, MEMORY[0x277CC95F8]);
  sub_22372B6A8();
  if (!v2)
  {
    v14 = 1;
    sub_22372B6A8();
    v13 = *(v1 + qword_28132B768);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
    sub_22370DF2C();
    sub_22372B6A8();
    sub_223727528();
    v10 = sub_223727538();
    v10(a1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  return v0;
}

uint64_t sub_22370D634()
{
  BYTE8(v6) = 0;
  sub_22372B458();
  MEMORY[0x223DE7AD0](0x6567617373656D3CLL, 0xEE00203A65707954);
  v1 = sub_2237274F8();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x67617373656D202CLL, 0xED0000203A644965);
  sub_223727408();
  sub_2236C6ED8(&qword_28132B600, MEMORY[0x277CC9628]);
  v2 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v2);

  MEMORY[0x223DE7AD0](0x6F6973736573202CLL, 0xED0000203A64496ELL);
  v3 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v3);

  MEMORY[0x223DE7AD0](0xD000000000000018, 0x8000000223737EC0);
  *&v6 = *(v0 + qword_28132B768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
  v4 = sub_22372B038();
  MEMORY[0x223DE7AD0](v4);

  MEMORY[0x223DE7AD0](62, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t sub_22370D814(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22370D890()
{
  v1 = 0x496567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_22370D8F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22370E28C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22370D924(uint64_t a1)
{
  v2 = sub_22370DED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22370D960(uint64_t a1)
{
  v2 = sub_22370DED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceSessionMessage.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28132B758;
  v4 = sub_223727408();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteIntelligenceSessionMessage.Builder.optedInToDataSharing.setter(char a1)
{
  result = type metadata accessor for RemoteIntelligenceSessionMessage.Builder(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_22370DB7C()
{
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v3 = v0 + qword_28132B760;

  return v5(v3, v2);
}

uint64_t RemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22370DD04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22370DD78(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_223623274(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22370DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA08, &unk_223733200);
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

_BYTE **sub_22370DEC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_22370DED8()
{
  result = qword_27D08F9C8;
  if (!qword_27D08F9C8)
  {
    result = swift_getWitnessTable(asc_2237331AC, &type metadata for RemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F9C8);
  }

  return result;
}

unint64_t sub_22370DF2C()
{
  result = qword_27D08F9D8;
  if (!qword_27D08F9D8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F3E0, &unk_223730480);
    v4[0] = MEMORY[0x277D839B8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27D08F9D8);
  }

  return result;
}

uint64_t sub_22370DFA8(uint64_t a1)
{
  result = sub_223727408();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22370E0F0(uint64_t a1)
{
  sub_22369BEEC(319);
  if (v1 <= 0x3F)
  {
    sub_223671CDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22370E188()
{
  result = qword_27D08F9F0;
  if (!qword_27D08F9F0)
  {
    result = swift_getWitnessTable(aEo, &type metadata for RemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F9F0);
  }

  return result;
}

unint64_t sub_22370E1E0()
{
  result = qword_27D08F9F8;
  if (!qword_27D08F9F8)
  {
    result = swift_getWitnessTable(byte_2237330F4, &type metadata for RemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F9F8);
  }

  return result;
}

unint64_t sub_22370E238()
{
  result = qword_27D08FA00;
  if (!qword_27D08FA00)
  {
    result = swift_getWitnessTable(byte_22373311C, &type metadata for RemoteIntelligenceSessionMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08FA00);
  }

  return result;
}

uint64_t sub_22370E28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223737F40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22372B6E8();

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

void sub_22370E3E0(uint64_t a1@<X8>)
{
  v3 = [v1 dialogs];
  if (!v3)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_54:
    *a1 = v17;
    *(a1 + 8) = v18;
    *(a1 + 16) = v3;
    *(a1 + 24) = v16;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    return;
  }

  v49 = a1;
  sub_223630584(0, &qword_27D08FA10, 0x277D47288);
  v4 = sub_22372B128();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_24:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v5 = sub_22372B558();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_4:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DE7ED0](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = [v9 content];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    v12 = v11;
    sub_22370E8FC(&v53);
    v50 = v53;
    v44 = v56;
    v45 = v55;
    v47 = v54;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_223711248(0, v7[2] + 1, 1, v7);
    }

    v14 = v7[2];
    v13 = v7[3];
    if (v14 >= v13 >> 1)
    {
      v7 = sub_223711248((v13 > 1), v14 + 1, 1, v7);
    }

    v7[2] = v14 + 1;
    v15 = &v7[8 * v14];
    v15[2] = v50;
    v15[3] = v47;
    v15[4] = v45;
    v15[5] = v44;
  }

  while (v6 != v5);
LABEL_25:

  v19 = v7[2];

  if (v19)
  {
    v20 = 0;
    v21 = v7 + 4;
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = &v21[8 * v20];
      v24 = v20;
      while (1)
      {
        if (v24 >= v7[2])
        {
          __break(1u);
          goto LABEL_56;
        }

        v26 = v23[2];
        v25 = v23[3];
        v27 = v23[1];
        v53 = *v23;
        v54 = v27;
        v55 = v26;
        v56 = v25;
        v28 = v53;
        v20 = v24 + 1;
        sub_22370EB50(&v53, v52);

        if (*(&v28 + 1))
        {
          break;
        }

        v23 += 4;
        ++v24;
        if (v19 == v20)
        {
          goto LABEL_39;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_223637D3C(0, *(v22 + 2) + 1, 1, v22);
      }

      v21 = v7 + 4;
      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        v22 = sub_223637D3C((v29 > 1), v30 + 1, 1, v22);
      }

      *(v22 + 2) = v30 + 1;
      *&v22[16 * v30 + 32] = v28;
    }

    while (v19 - 1 != v24);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_39:

  *&v53 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_2236348F8();
  v48 = sub_22372AFA8();
  v46 = v31;

  v32 = v7[2];
  if (!v32)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_53:

    *&v53 = v51;
    v3 = sub_22372AFA8();
    v16 = v43;

    a1 = v49;
    v17 = v48;
    v18 = v46;
    goto LABEL_54;
  }

  v33 = 0;
  v34 = v7 + 4;
  v51 = MEMORY[0x277D84F90];
LABEL_41:
  v35 = &v34[8 * v33];
  v36 = v33;
  while (v36 < v7[2])
  {
    v38 = v35[2];
    v37 = v35[3];
    v39 = v35[1];
    v53 = *v35;
    v54 = v39;
    v55 = v38;
    v56 = v37;
    v33 = v36 + 1;
    v40 = v39;
    sub_22370EB50(&v53, v52);

    if (*(&v40 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_223637D3C(0, *(v51 + 2) + 1, 1, v51);
      }

      v42 = *(v51 + 2);
      v41 = *(v51 + 3);
      if (v42 >= v41 >> 1)
      {
        v51 = sub_223637D3C((v41 > 1), v42 + 1, 1, v51);
      }

      *(v51 + 2) = v42 + 1;
      *&v51[16 * v42 + 32] = v40;
      v34 = v7 + 4;
      if (v32 - 1 != v36)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    }

    v35 += 4;
    ++v36;
    if (v32 == v33)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  __break(1u);
}

double sub_22370E8FC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_223727198();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22372AFE8();
    v13 = v12;

    v28 = v11;
    v29 = v13;
    sub_223727188();
    sub_223637E48();
    v14 = sub_22372B3B8();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v2 speakableTextOverride];
  if (v17)
  {
    v18 = v17;
    v19 = sub_22372AFE8();
    v21 = v20;

    v28 = v19;
    v29 = v21;
    sub_223727188();
    sub_223637E48();
    v22 = sub_22372B3B8();
    v24 = v23;
    (*(v5 + 8))(v8, v4);

    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v16)
    {
LABEL_6:
      v25 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v25 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25)
      {

        v14 = 0;
        v16 = 0;
      }

      if (!v24)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  v14 = 0;
  if (!v24)
  {
LABEL_18:

    v22 = v14;
    v24 = v16;
    goto LABEL_19;
  }

LABEL_14:
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_18;
  }

LABEL_19:
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v22;
  *(a1 + 24) = v24;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_22370EB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22370EC38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_22370ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD000000000000041, 0x8000000223737FD0, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_7;
  v16 = _Block_copy(v17);

  AFSiriActivationSiriPrompt();
  _Block_release(v16);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22370EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004ALL, 0x8000000223738020, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_16_0;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationHearst();
  _Block_release(v16);
}

void sub_22370F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004ALL, 0x8000000223738070, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_19;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationJarvis();
  _Block_release(v16);
}

void sub_22370F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(0xD00000000000004ELL, 0x80000002237380C0, v13);
    _os_log_impl(&dword_223620000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = sub_22372AF48();
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22370EC38;
  v13[3] = &block_descriptor_22_0;
  v12 = _Block_copy(v13);

  AFSiriActivationTriggerless();
  _Block_release(v12);
}

void sub_22370F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD00000000000004DLL, 0x8000000223738110, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_25;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversationHoneycomb();
  _Block_release(v16);
}

void sub_22370F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_223623274(0xD000000000000044, 0x8000000223738160, v17);
    _os_log_impl(&dword_223620000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (a3)
  {
    v14 = sub_22372AFD8();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_22372AF48();
  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22370EC38;
  v17[3] = &block_descriptor_28;
  v16 = _Block_copy(v17);

  AFSiriActivationContinuousConversation();
  _Block_release(v16);
}

uint64_t sub_22370FA34(char *a1)
{
  v2 = sub_2237113AC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_22372AB08();
    if (v5)
    {
      sub_223711748();
      v6 = swift_allocError();
      *v7 = 1;
      sub_22371179C(v4);

      return v6;
    }

    else
    {
      v14 = sub_2237117A8(a1, v4);
      if (v15)
      {
        v16 = v14;
        sub_22371179C(v4);

        return v16;
      }

      else
      {
        sub_223711748();
        v17 = swift_allocError();
        *v18 = 2;
        sub_22371179C(v4);

        return v17;
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v9 = sub_22372AC98();
    __swift_project_value_buffer(v9, qword_28132B680);
    v10 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v10, v11, "Error generating TTRequest from TTProxyInput", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }

    sub_223711748();
    result = swift_allocError();
    *v13 = 3;
  }

  return result;
}

void sub_22370FC3C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v187 = a2;
  v191 = a4;
  v6 = sub_22372AA98();
  v185 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v178 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v167 = &v158 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v174 = &v158 - v14;
  v177 = sub_22372A098();
  v186 = *(v177 - 8);
  v16 = MEMORY[0x28223BE20](v177, v15);
  v166 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v175 = &v158 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v158 - v22;
  v182 = type metadata accessor for RequestState(0);
  v24 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v25);
  v27 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_2237287C8();
  v184 = *(v194 - 8);
  v29 = MEMORY[0x28223BE20](v194, v28);
  v183 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v193 = &v158 - v32;
  v33 = sub_22372A3C8();
  v192 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v158 - v39;
  v41 = sub_22372A548();
  v188 = *(v41 - 8);
  v189 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v181 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [a1 tcuId];
  if (v44)
  {
    v173 = v6;
    v45 = v44;
    v190 = sub_22372AFE8();
    v195 = v46;

    v176 = a1;
    v47 = [a1 speechPackage];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 recognition];

      if (v49)
      {
        v50 = [v49 oneBestTranscript];

        v165 = v27;
        v171 = v24;
        if (v50)
        {
          v180 = sub_22372AFE8();
          v52 = v51;
        }

        else
        {
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v61 = sub_22372AC98();
          __swift_project_value_buffer(v61, qword_28132B680);
          v62 = sub_22372AC88();
          v63 = sub_22372B288();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = a3;
            v65 = v23;
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_223620000, v62, v63, "Empty utterance from speech package", v66, 2u);
            v67 = v66;
            v23 = v65;
            a3 = v64;
            MEMORY[0x223DE8A80](v67, -1, -1);
          }

          v180 = 0;
          v52 = 0xE000000000000000;
        }

        v68 = v189;
        v69 = *(a3 + 56);
        if (*(v69 + 16) && (v70 = sub_2236261A0(v190, v195), (v71 & 1) != 0) && (v72 = *(*(v69 + 56) + 8 * v70)) != 0)
        {
          v73 = v72;
          v170 = sub_22372A1E8();
        }

        else
        {
          v170 = MEMORY[0x277D84F90];
        }

        v169 = type metadata accessor for TTProxyInput(0);
        sub_223634890(a3 + *(v169 + 40), v40, &unk_27D08E990, &qword_22372FCF0);
        v74 = v188;
        v75 = (*(v188 + 48))(v40, 1, v68);
        v179 = v52;
        v172 = a3;
        if (v75 == 1)
        {
          sub_223626478(v40, &unk_27D08E990, &qword_22372FCF0);
          v76 = MEMORY[0x277D84F90];
          v168 = MEMORY[0x277D84F90];
          v192 = MEMORY[0x277D84F90];
          v77 = v184;
          v78 = v195;
          goto LABEL_52;
        }

        (*(v74 + 32))(v181, v40, v68);
        v79 = v187[3];
        v80 = v187[4];
        v81 = __swift_project_boxed_opaque_existential_1(v187, v79);
        v82 = *MEMORY[0x277D5D1A0];
        v83 = v192;
        v161 = v192[13];
        v161(v36, v82, v33);
        v162 = v81;
        v164 = v79;
        v163 = v80;
        sub_22372A4F8();
        v84 = v83[1];
        v192 = v83 + 1;
        v84(v36, v33);
        if (v198)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA38, &unk_223733390);
          if (swift_dynamicCast())
          {
            v85 = v196;
            goto LABEL_30;
          }
        }

        else
        {
          sub_223626478(&v197, &unk_27D08F750, &qword_22372C960);
        }

        v85 = MEMORY[0x277D84F90];
LABEL_30:
        v86 = qword_281328E58;

        if (v86 != -1)
        {
          swift_once();
        }

        v87 = sub_22372AC98();
        v88 = __swift_project_value_buffer(v87, qword_28132B680);

        v160 = v88;
        v89 = sub_22372AC88();
        v90 = sub_22372B268();

        v91 = os_log_type_enabled(v89, v90);
        v159 = v23;
        v187 = v85;
        if (v91)
        {
          v92 = swift_slowAlloc();
          v93 = v84;
          v94 = swift_slowAlloc();
          v197 = v94;
          *v92 = 136315138;
          v95 = sub_2237275E8();
          v96 = MEMORY[0x223DE7B80](v85, v95);
          v98 = v97;

          v99 = sub_223623274(v96, v98, &v197);

          *(v92 + 4) = v99;
          _os_log_impl(&dword_223620000, v89, v90, "From SessionState activeTasks: %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v94);
          v100 = v94;
          v84 = v93;
          MEMORY[0x223DE8A80](v100, -1, -1);
          MEMORY[0x223DE8A80](v92, -1, -1);
        }

        else
        {
        }

        v161(v36, *MEMORY[0x277D5D1B0], v33);
        v101 = v181;
        sub_22372A4F8();
        v84(v36, v33);
        if (v198)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA38, &unk_223733390);
          if (swift_dynamicCast())
          {
            v102 = v196;
LABEL_40:

            v103 = sub_22372AC88();
            v104 = sub_22372B268();
            v105 = os_log_type_enabled(v103, v104);
            v168 = v102;
            if (v105)
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v197 = v107;
              *v106 = 136315138;
              v108 = sub_2237275E8();
              v109 = MEMORY[0x223DE7B80](v102, v108);
              v158 = v36;
              v110 = v101;
              v111 = v84;
              v113 = v112;

              v114 = sub_223623274(v109, v113, &v197);
              v84 = v111;
              v101 = v110;
              v36 = v158;

              *(v106 + 4) = v114;
              _os_log_impl(&dword_223620000, v103, v104, "From SessionState executedTasks: %s", v106, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v107);
              MEMORY[0x223DE8A80](v107, -1, -1);
              MEMORY[0x223DE8A80](v106, -1, -1);
            }

            else
            {
            }

            v161(v36, *MEMORY[0x277D5D1D0], v33);
            sub_22372A4F8();
            v84(v36, v33);
            if (v198)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA30, &qword_223733388);
              v115 = swift_dynamicCast();
              v78 = v195;
              v52 = v179;
              if (v115)
              {
                v116 = v196;
              }

              else
              {
                v116 = MEMORY[0x277D84F90];
              }
            }

            else
            {
              sub_223626478(&v197, &unk_27D08F750, &qword_22372C960);
              v116 = MEMORY[0x277D84F90];
              v78 = v195;
              v52 = v179;
            }

            v117 = sub_22372AC88();
            v118 = sub_22372B268();
            v119 = os_log_type_enabled(v117, v118);
            v192 = v116;
            if (v119)
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v197 = v121;
              *v120 = 136315138;
              v122 = sub_2237276F8();
              v123 = MEMORY[0x223DE7B80](v116, v122);
              v125 = v124;

              v126 = sub_223623274(v123, v125, &v197);

              *(v120 + 4) = v126;
              _os_log_impl(&dword_223620000, v117, v118, "From SessionState systemDialogActs: %s", v120, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v121);
              MEMORY[0x223DE8A80](v121, -1, -1);
              MEMORY[0x223DE8A80](v120, -1, -1);
            }

            else
            {
            }

            (*(v188 + 8))(v101, v189);
            a3 = v172;
            v77 = v184;
            v23 = v159;
            v76 = v187;
LABEL_52:
            if (qword_281328E58 != -1)
            {
              swift_once();
            }

            v127 = sub_22372AC98();
            __swift_project_value_buffer(v127, qword_28132B680);

            v128 = sub_22372AC88();
            v129 = sub_22372B268();

            v130 = os_log_type_enabled(v128, v129);
            v187 = v76;
            if (v130)
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v197 = v132;
              *v131 = 136315394;
              *(v131 + 4) = sub_223623274(v190, v78, &v197);
              *(v131 + 12) = 2080;
              *(v131 + 14) = sub_223623274(v180, v52, &v197);
              _os_log_impl(&dword_223620000, v128, v129, "creating candidate for TTManager with tcuId - %s, utterance - %s", v131, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DE8A80](v132, -1, -1);
              MEMORY[0x223DE8A80](v131, -1, -1);
            }

            v133 = v182;
            v134 = v169;
            v135 = *(v77 + 16);
            v135(v193, a3 + *(v169 + 44), v194);
            sub_223634890(a3 + *(v134 + 48), v23, &qword_27D08F930, &qword_223733380);
            v136 = (*(v171 + 48))(v23, 1, v133);
            v137 = v176;
            v138 = v186;
            if (v136 == 1)
            {
              sub_223626478(v23, &qword_27D08F930, &qword_223733380);
              goto LABEL_60;
            }

            v139 = v165;
            sub_2237126F8(v23, v165);
            v140 = v174;
            sub_223634890(v139 + *(v133 + 20), v174, &unk_27D08E9C0, &qword_223731E30);
            v141 = v177;
            if ((*(v138 + 48))(v140, 1, v177) == 1)
            {
              sub_22371275C(v139);
              sub_223626478(v140, &unk_27D08E9C0, &qword_223731E30);
LABEL_60:
              v142 = [v137 speechEvent];
              if (v142 > 16)
              {
                if (v142 == 17)
                {
                  v143 = v191;
                  v144 = MEMORY[0x277D61948];
                  goto LABEL_74;
                }

                if (v142 == 30)
                {
                  v143 = v191;
                  v144 = MEMORY[0x277D61938];
                  goto LABEL_74;
                }
              }

              else
              {
                if (v142 == 1)
                {
                  v143 = v191;
                  v144 = MEMORY[0x277D61928];
                  goto LABEL_74;
                }

                if (v142 == 8)
                {
                  v143 = v191;
                  v144 = MEMORY[0x277D61930];
LABEL_74:
                  (*(v185 + 104))(v178, *v144, v173);
                  v149 = [v137 siriIntendedInfo];
                  v151 = v193;
                  v150 = v194;
                  v135(v183, v193, v194);
                  sub_22372AA78();
                  (*(v77 + 8))(v151, v150);
                  v152 = sub_22372AA88();
                  (*(*(v152 - 8) + 56))(v143, 0, 1, v152);
                  return;
                }
              }

              v143 = v191;
              v144 = MEMORY[0x277D61940];
              goto LABEL_74;
            }

            v145 = v175;
            (*(v138 + 32))(v175, v140, v141);
            (*(v138 + 16))(v166, v145, v141);
            sub_22372AAE8();
            swift_allocObject();
            sub_22372AAD8();
            v146 = v176;
            v147 = [v176 speechEvent];
            if (v147 > 16)
            {
              if (v147 == 17)
              {
                v148 = MEMORY[0x277D61948];
                goto LABEL_81;
              }

              if (v147 == 30)
              {
                v148 = MEMORY[0x277D61938];
                goto LABEL_81;
              }
            }

            else
            {
              if (v147 == 1)
              {
                v148 = MEMORY[0x277D61928];
                goto LABEL_81;
              }

              if (v147 == 8)
              {
                v148 = MEMORY[0x277D61930];
LABEL_81:
                (*(v185 + 104))(v167, *v148, v173);
                v153 = [v146 siriIntendedInfo];
                v155 = v193;
                v154 = v194;
                v135(v183, v193, v194);
                v156 = v191;
                sub_22372AA78();
                (*(v186 + 8))(v175, v177);
                (*(v77 + 8))(v155, v154);
                sub_22371275C(v165);
                v157 = sub_22372AA88();
                (*(*(v157 - 8) + 56))(v156, 0, 1, v157);
                return;
              }
            }

            v148 = MEMORY[0x277D61940];
            goto LABEL_81;
          }
        }

        else
        {
          sub_223626478(&v197, &unk_27D08F750, &qword_22372C960);
        }

        v102 = MEMORY[0x277D84F90];
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v53 = sub_22372AC98();
    __swift_project_value_buffer(v53, qword_28132B680);
    v54 = sub_22372AC88();
    v55 = sub_22372B278();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_223620000, v54, v55, "unable to read tcuId from trpCandidateMessage - tcuPackage", v56, 2u);
      MEMORY[0x223DE8A80](v56, -1, -1);
    }

    v57 = sub_22372AA88();
    v58 = *(*(v57 - 8) + 56);
    v59 = v57;
    v60 = v191;

    v58(v60, 1, 1, v59);
  }
}

void *sub_223711248(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F800, &qword_2237325F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22371137C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2237113AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA20, &unk_223733360);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = sub_22372AA88();
  v8 = MEMORY[0x28223BE20](v6, v7);
  result = MEMORY[0x28223BE20](v8, v9);
  v25 = &v22 - v13;
  v14 = a1[5];
  v29 = *(v14 + 16);
  if (v29)
  {
    v15 = 0;
    v16 = v14 + 32;
    v27 = (v11 + 48);
    v28 = v12;
    v26 = (v11 + 32);
    v17 = MEMORY[0x277D84F90];
    v23 = v11;
    v24 = a1;
    v22 = v14;
    while (v15 < *(v14 + 16))
    {
      sub_223634890(v16, &v30, &qword_27D08F7B0, &qword_22372DD30);
      sub_22370FC3C(v30, v31, a1, v5);
      sub_223626478(&v30, &qword_27D08F7B0, &qword_22372DD30);
      if ((*v27)(v5, 1, v6) == 1)
      {
        result = sub_223626478(v5, &qword_27D08FA20, &unk_223733360);
      }

      else
      {
        v18 = v25;
        v19 = *v26;
        (*v26)(v25, v5, v6);
        v19(v28, v18, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2236385B0(0, v17[2] + 1, 1, v17, &qword_27D08FA28, &unk_223733370, MEMORY[0x277D61920]);
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v17 = sub_2236385B0((v20 > 1), v21 + 1, 1, v17, &qword_27D08FA28, &unk_223733370, MEMORY[0x277D61920]);
        }

        v17[2] = v21 + 1;
        result = (v19)(v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, v28, v6);
        a1 = v24;
        v14 = v22;
      }

      ++v15;
      v16 += 48;
      if (v29 == v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    objc_allocWithZone(sub_22372AAB8());

    return sub_22372AAA8();
  }

  return result;
}