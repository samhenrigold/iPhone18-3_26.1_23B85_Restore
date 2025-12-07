uint64_t sub_1B4ED077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return SessionMonitor.handleSessionDeactivated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionDeactivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 8);
  v6 = sub_1B4F68274();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED08B0, v6, v5);
}

uint64_t sub_1B4ED08B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B4ED0998;

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0998()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1B4E4D8A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1B4DEDE88;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B4ED0AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SessionMonitor.handleSessionUpdated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 8);
  v6 = sub_1B4F68274();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0BE8, v6, v5);
}

uint64_t sub_1B4ED0BE8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B4ED0660;

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = sub_1B4F678C4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for SessionMonitorState(0, AssociatedTypeWitness, v8, v9);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v11 = sub_1B4F68274();
  v5[19] = v11;
  v5[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0EB4, v11, v10);
}

uint64_t sub_1B4ED0EB4()
{
  v91 = v0;
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v0[11] + 32))(v0[15], v0[18], v0[10]);
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v35 = v0[14];
    v36 = v0[15];
    v37 = v0[13];
    v38 = v0[10];
    v39 = v0[11];
    v40 = v0[3];
    v41 = sub_1B4F67C54();
    __swift_project_value_buffer(v41, qword_1EDB6DF00);
    v42 = *(v39 + 16);
    v42(v35, v36, v38);
    v42(v37, v40, v38);
    v43 = sub_1B4F67C34();
    v44 = sub_1B4F685C4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[14];
    v47 = v0[15];
    v48 = v0[13];
    v49 = v0[10];
    v50 = v0[11];
    if (v45)
    {
      v51 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v90 = v88;
      *v51 = 136315650;
      v52 = sub_1B4F68F84();
      v85 = v44;
      v54 = sub_1B4DC4F88(v52, v53, &v90);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = sub_1B4F676B4();
      v57 = v56;
      v58 = *(v50 + 8);
      v58(v46, v49);
      v59 = sub_1B4DC4F88(v55, v57, &v90);

      *(v51 + 14) = v59;
      *(v51 + 22) = 2080;
      v60 = sub_1B4F676B4();
      v62 = v61;
      v58(v48, v49);
      v63 = sub_1B4DC4F88(v60, v62, &v90);

      *(v51 + 24) = v63;
      _os_log_impl(&dword_1B4DC2000, v43, v85, "[%s] Currently waiting for session: %s. Unexpected new session: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v88, -1, -1);
      MEMORY[0x1B8C831D0](v51, -1, -1);

      v58(v47, v49);
    }

    else
    {

      v70 = *(v50 + 8);
      v70(v48, v49);
      v70(v46, v49);
      v70(v47, v49);
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[7] + 32))(v0[9], v0[18], v0[6]);
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = v0[3];
    v10 = sub_1B4F67C54();
    __swift_project_value_buffer(v10, qword_1EDB6DF00);
    (*(v7 + 16))(v6, v5, v8);
    (*(v3 + 16))(v2, v9, v4);
    v11 = sub_1B4F67C34();
    v12 = sub_1B4F685C4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[9];
    v17 = v0[10];
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    if (v13)
    {
      v84 = v0[12];
      v87 = v0[9];
      v21 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v90 = v86;
      *v21 = 136315650;
      v22 = sub_1B4F68F84();
      v83 = v12;
      v24 = sub_1B4DC4F88(v22, v23, &v90);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = (*(AssociatedConformanceWitness + 8))(v20, AssociatedConformanceWitness);
      v27 = *(v19 + 8);
      v27(v18, v20);
      v28 = *(v26 + 16);
      v29 = *(v26 + 24);

      v30 = sub_1B4DC4F88(v28, v29, &v90);

      *(v21 + 14) = v30;
      *(v21 + 22) = 2080;
      v31 = sub_1B4F676B4();
      v33 = v32;
      (*(v15 + 8))(v84, v17);
      v34 = sub_1B4DC4F88(v31, v33, &v90);

      *(v21 + 24) = v34;
      _os_log_impl(&dword_1B4DC2000, v11, v83, "[%s] Currently active session: %s. Unexpected new session: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v86, -1, -1);
      MEMORY[0x1B8C831D0](v21, -1, -1);

      v27(v87, v20);
    }

    else
    {

      (*(v15 + 8))(v14, v17);
      v69 = *(v19 + 8);
      v69(v18, v20);
      v69(v16, v20);
    }

LABEL_22:

    v82 = v0[1];

    return v82();
  }

  if (((*(v0[5] + 56))(v0[3], v0[4]) & 1) == 0)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v71 = sub_1B4F67C54();
    __swift_project_value_buffer(v71, qword_1EDB6DF00);
    v72 = sub_1B4F67C34();
    v73 = sub_1B4F685E4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v90 = v75;
      *v74 = 136315138;
      v76 = sub_1B4F68F84();
      v78 = sub_1B4DC4F88(v76, v77, &v90);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_1B4DC2000, v72, v73, "[%s] Waiting for session update before starting", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1B8C831D0](v75, -1, -1);
      MEMORY[0x1B8C831D0](v74, -1, -1);
    }

    v79 = v0[17];
    v81 = v0[4];
    v80 = v0[5];
    (*(v0[11] + 16))(v79, v0[3], v0[10]);
    swift_storeEnumTagMultiPayload();
    (*(v80 + 40))(v79, v81, v80);
    goto LABEL_22;
  }

  v89 = (*(v0[5] + 64) + **(v0[5] + 64));
  v64 = swift_task_alloc();
  v0[21] = v64;
  *v64 = v0;
  v64[1] = sub_1B4ED17DC;
  v65 = v0[4];
  v66 = v0[5];
  v67 = v0[3];

  return v89(v67, v65, v66);
}

uint64_t sub_1B4ED17DC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1B4ED19D8;
  }

  else
  {
    v5 = sub_1B4ED1918;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ED1918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4ED19D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4ED1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = sub_1B4F678C4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = sub_1B4F65504();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for SessionMonitorState(0, AssociatedTypeWitness, v9, v10);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v12 = sub_1B4F68274();
  v5[23] = v12;
  v5[24] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED1CE4, v12, v11);
}

uint64_t sub_1B4ED1CE4()
{
  v135 = v0;
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (qword_1EDB6DEF8 != -1)
      {
        swift_once();
      }

      v77 = v0[19];
      v78 = v0[15];
      v79 = v0[16];
      v80 = v0[3];
      v81 = sub_1B4F67C54();
      __swift_project_value_buffer(v81, qword_1EDB6DF00);
      (*(v79 + 16))(v77, v80, v78);
      v82 = sub_1B4F67C34();
      v83 = sub_1B4F685C4();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v0[19];
      v86 = v0[15];
      v87 = v0[16];
      if (v84)
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v134 = v89;
        *v88 = 136315394;
        v90 = sub_1B4F68F84();
        v92 = sub_1B4DC4F88(v90, v91, &v134);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2080;
        v93 = sub_1B4F65444();
        v95 = v94;
        (*(v87 + 8))(v85, v86);
        v96 = sub_1B4DC4F88(v93, v95, &v134);

        *(v88 + 14) = v96;
        _os_log_impl(&dword_1B4DC2000, v82, v83, "[%s] Can't update session that doesn't exist: %s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v89, -1, -1);
        MEMORY[0x1B8C831D0](v88, -1, -1);
      }

      else
      {

        (*(v87 + 8))(v85, v86);
      }

      goto LABEL_38;
    }

    v2 = v0[6];
    (*(v0[7] + 32))(v0[9], v0[22], v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = *(AssociatedConformanceWitness + 8);
    v5 = v4(v2, AssociatedConformanceWitness);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);

    if (v7 == sub_1B4F65444() && v6 == v8)
    {
    }

    else
    {
      v10 = sub_1B4F68D54();

      if ((v10 & 1) == 0)
      {
        v124 = v4;
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v12 = v0[16];
        v11 = v0[17];
        v13 = v0[15];
        v126 = v0[8];
        v129 = v0[9];
        v15 = v0[6];
        v14 = v0[7];
        v16 = v0[3];
        v17 = sub_1B4F67C54();
        __swift_project_value_buffer(v17, qword_1EDB6DF00);
        (*(v12 + 16))(v11, v16, v13);
        (*(v14 + 16))(v126, v129, v15);
        v18 = sub_1B4F67C34();
        v127 = sub_1B4F685C4();
        v19 = os_log_type_enabled(v18, v127);
        v21 = v0[16];
        v20 = v0[17];
        v130 = v0[15];
        v22 = v0[8];
        v23 = v0[9];
        v25 = v0[6];
        v24 = v0[7];
        if (v19)
        {
          v119 = v0[6];
          log = v18;
          v26 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v134 = v122;
          *v26 = 136315650;
          v27 = sub_1B4F68F84();
          v121 = v23;
          v29 = sub_1B4DC4F88(v27, v28, &v134);

          *(v26 + 4) = v29;
          *(v26 + 12) = 2080;
          v30 = sub_1B4F65444();
          v32 = v31;
          (*(v21 + 8))(v20, v130);
          v33 = sub_1B4DC4F88(v30, v32, &v134);

          *(v26 + 14) = v33;
          *(v26 + 22) = 2080;
          v34 = v124(v119, AssociatedConformanceWitness);
          v35 = *(v24 + 8);
          v35(v22, v119);
          v36 = *(v34 + 16);
          v37 = *(v34 + 24);

          v38 = sub_1B4DC4F88(v36, v37, &v134);

          *(v26 + 24) = v38;
          _os_log_impl(&dword_1B4DC2000, log, v127, "[%s] Can't update session %s while active for session %s", v26, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v122, -1, -1);
          MEMORY[0x1B8C831D0](v26, -1, -1);

          v35(v121, v119);
        }

        else
        {

          v116 = *(v24 + 8);
          v116(v22, v25);
          (*(v21 + 8))(v20, v130);
          v116(v23, v25);
        }

        goto LABEL_38;
      }
    }

    v132 = (*(v0[5] + 72) + **(v0[5] + 72));
    v97 = swift_task_alloc();
    v0[27] = v97;
    *v97 = v0;
    v97[1] = sub_1B4ED2B9C;
    v98 = v0[9];
    v99 = v0[4];
    v100 = v0[5];
    v101 = v0[3];

    return v132(v101, v98, v99, v100);
  }

  else
  {
    (*(v0[11] + 32))(v0[14], v0[22], v0[10]);
    v39 = sub_1B4F65444();
    v41 = v40;
    if (v39 == sub_1B4F676B4() && v41 == v42)
    {
    }

    else
    {
      v44 = sub_1B4F68D54();

      if ((v44 & 1) == 0)
      {
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v45 = v0[18];
        v46 = v0[15];
        v47 = v0[16];
        v48 = v0[14];
        v50 = v0[11];
        v49 = v0[12];
        v51 = v0[10];
        v52 = v0[3];
        v53 = sub_1B4F67C54();
        __swift_project_value_buffer(v53, qword_1EDB6DF00);
        (*(v47 + 16))(v45, v52, v46);
        (*(v50 + 16))(v49, v48, v51);
        v54 = sub_1B4F67C34();
        v55 = sub_1B4F685C4();
        v56 = os_log_type_enabled(v54, v55);
        v57 = v0[18];
        v59 = v0[15];
        v58 = v0[16];
        v60 = v0[14];
        v61 = v0[11];
        v62 = v0[12];
        v63 = v0[10];
        if (v56)
        {
          v128 = v55;
          v131 = v0[14];
          v64 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v134 = v125;
          *v64 = 136315650;
          v65 = sub_1B4F68F84();
          v123 = v63;
          v67 = sub_1B4DC4F88(v65, v66, &v134);

          *(v64 + 4) = v67;
          *(v64 + 12) = 2080;
          v68 = sub_1B4F65444();
          v70 = v69;
          (*(v58 + 8))(v57, v59);
          v71 = sub_1B4DC4F88(v68, v70, &v134);

          *(v64 + 14) = v71;
          *(v64 + 22) = 2080;
          v72 = sub_1B4F676B4();
          v74 = v73;
          v75 = *(v61 + 8);
          v75(v62, v123);
          v76 = sub_1B4DC4F88(v72, v74, &v134);

          *(v64 + 24) = v76;
          _os_log_impl(&dword_1B4DC2000, v54, v128, "[%s] Can't update session %s while waiting for session %s", v64, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v125, -1, -1);
          MEMORY[0x1B8C831D0](v64, -1, -1);

          v75(v131, v123);
        }

        else
        {

          v117 = *(v61 + 8);
          v117(v62, v63);
          (*(v58 + 8))(v57, v59);
          v117(v60, v63);
        }

        goto LABEL_38;
      }
    }

    v103 = v0[21];
    v104 = v0[13];
    v105 = v0[10];
    v106 = v0[11];
    v108 = v0[4];
    v107 = v0[5];
    static Session.+ infix(_:_:)(v104);
    (*(v106 + 16))(v103, v104, v105);
    swift_storeEnumTagMultiPayload();
    (*(v107 + 40))(v103, v108, v107);
    if (((*(v107 + 56))(v104, v108, v107) & 1) == 0)
    {
      v113 = v0[14];
      v114 = v0[10];
      v115 = *(v0[11] + 8);
      v115(v0[13], v114);
      v115(v113, v114);
LABEL_38:

      v118 = v0[1];

      return v118();
    }

    v133 = (*(v0[5] + 64) + **(v0[5] + 64));
    v109 = swift_task_alloc();
    v0[25] = v109;
    *v109 = v0;
    v109[1] = sub_1B4ED2950;
    v110 = v0[13];
    v111 = v0[4];
    v112 = v0[5];

    return v133(v110, v111, v112);
  }
}

uint64_t sub_1B4ED2950()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1B4ED2DD0;
  }

  else
  {
    v5 = sub_1B4ED2A8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ED2A8C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[13], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4ED2B9C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1B4ED2EEC;
  }

  else
  {
    v5 = sub_1B4ED2CD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ED2CD8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4ED2DD0()
{
  v1 = *(v0[11] + 8);
  v1(v0[13], v0[10]);
  v1(v0[14], v0[10]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B4ED2EEC()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4ED2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = sub_1B4F678C4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for SessionMonitorState(0, AssociatedTypeWitness, v8, v9);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v11 = sub_1B4F68274();
  v5[21] = v11;
  v5[22] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED31EC, v11, v10);
}

uint64_t sub_1B4ED31EC()
{
  v143 = v0;
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v0[11] + 32))(v0[16], v0[20], v0[10]);
    v39 = sub_1B4F676B4();
    v41 = v40;
    if (v39 == sub_1B4F676B4() && v41 == v42)
    {
    }

    else
    {
      v44 = sub_1B4F68D54();

      if ((v44 & 1) == 0)
      {
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v45 = v0[16];
        v47 = v0[13];
        v46 = v0[14];
        v48 = v0[10];
        v49 = v0[11];
        v50 = v0[3];
        v51 = sub_1B4F67C54();
        __swift_project_value_buffer(v51, qword_1EDB6DF00);
        v52 = *(v49 + 16);
        v52(v46, v50, v48);
        v52(v47, v45, v48);
        v53 = sub_1B4F67C34();
        v54 = sub_1B4F685C4();
        v55 = os_log_type_enabled(v53, v54);
        v56 = v0[16];
        v58 = v0[13];
        v57 = v0[14];
        v59 = v0[10];
        v60 = v0[11];
        if (v55)
        {
          v61 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v142 = v139;
          *v61 = 136315650;
          v62 = sub_1B4F68F84();
          v133 = v54;
          v64 = sub_1B4DC4F88(v62, v63, &v142);

          *(v61 + 4) = v64;
          *(v61 + 12) = 2080;
          v65 = sub_1B4F676B4();
          v67 = v66;
          v68 = *(v60 + 8);
          v68(v57, v59);
          v69 = sub_1B4DC4F88(v65, v67, &v142);

          *(v61 + 14) = v69;
          *(v61 + 22) = 2080;
          v70 = sub_1B4F676B4();
          v72 = v71;
          v68(v58, v59);
          v73 = sub_1B4DC4F88(v70, v72, &v142);

          *(v61 + 24) = v73;
          _os_log_impl(&dword_1B4DC2000, v53, v133, "[%s] Can't end session %s while waiting for session %s", v61, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v139, -1, -1);
          MEMORY[0x1B8C831D0](v61, -1, -1);

          v68(v56, v59);
        }

        else
        {

          v127 = *(v60 + 8);
          v127(v58, v59);
          v127(v57, v59);
          v127(v56, v59);
        }

        goto LABEL_37;
      }
    }

    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v100 = v0[15];
    v101 = v0[10];
    v102 = v0[11];
    v103 = v0[3];
    v104 = sub_1B4F67C54();
    __swift_project_value_buffer(v104, qword_1EDB6DF00);
    (*(v102 + 16))(v100, v103, v101);
    v105 = sub_1B4F67C34();
    v106 = sub_1B4F685E4();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v0[15];
    v109 = v0[10];
    v110 = v0[11];
    if (v107)
    {
      v136 = v0[10];
      v111 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = v141;
      *v111 = 136315394;
      v112 = sub_1B4F68F84();
      v114 = sub_1B4DC4F88(v112, v113, &v142);

      *(v111 + 4) = v114;
      *(v111 + 12) = 2080;
      v115 = sub_1B4F676B4();
      v117 = v116;
      v118 = *(v110 + 8);
      v118(v108, v136);
      v119 = sub_1B4DC4F88(v115, v117, &v142);

      *(v111 + 14) = v119;
      _os_log_impl(&dword_1B4DC2000, v105, v106, "[%s] Ending session: %s", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v141, -1, -1);
      MEMORY[0x1B8C831D0](v111, -1, -1);
    }

    else
    {

      v118 = *(v110 + 8);
      v118(v108, v109);
    }

    v120 = v0[19];
    v121 = v0[16];
    v122 = v0[10];
    v124 = v0[4];
    v123 = v0[5];
    swift_storeEnumTagMultiPayload();
    (*(v123 + 40))(v120, v124, v123);
    v118(v121, v122);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v74 = v0[17];
    v75 = v0[10];
    v76 = v0[11];
    v77 = v0[3];
    v78 = sub_1B4F67C54();
    __swift_project_value_buffer(v78, qword_1EDB6DF00);
    (*(v76 + 16))(v74, v77, v75);
    v79 = sub_1B4F67C34();
    v80 = sub_1B4F685C4();
    v81 = os_log_type_enabled(v79, v80);
    v82 = v0[17];
    v83 = v0[10];
    v84 = v0[11];
    if (v81)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v142 = v86;
      *v85 = 136315394;
      v87 = sub_1B4F68F84();
      v89 = sub_1B4DC4F88(v87, v88, &v142);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      v90 = sub_1B4F676B4();
      v92 = v91;
      (*(v84 + 8))(v82, v83);
      v93 = sub_1B4DC4F88(v90, v92, &v142);

      *(v85 + 14) = v93;
      _os_log_impl(&dword_1B4DC2000, v79, v80, "[%s] Can't end session that was never started: %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v86, -1, -1);
      MEMORY[0x1B8C831D0](v85, -1, -1);
    }

    else
    {

      (*(v84 + 8))(v82, v83);
    }

    goto LABEL_37;
  }

  v2 = v0[6];
  (*(v0[7] + 32))(v0[9], v0[20], v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 8);
  v5 = v4(v2, AssociatedConformanceWitness);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  if (v7 == sub_1B4F676B4() && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B4F68D54();

    if ((v10 & 1) == 0)
    {
      v132 = v4;
      if (qword_1EDB6DEF8 != -1)
      {
        swift_once();
      }

      v12 = v0[11];
      v11 = v0[12];
      v13 = v0[10];
      v14 = v0[7];
      v134 = v0[8];
      v137 = v0[9];
      v15 = v0[6];
      v16 = v0[3];
      v17 = sub_1B4F67C54();
      __swift_project_value_buffer(v17, qword_1EDB6DF00);
      (*(v12 + 16))(v11, v16, v13);
      (*(v14 + 16))(v134, v137, v15);
      v18 = sub_1B4F67C34();
      v135 = sub_1B4F685C4();
      v19 = os_log_type_enabled(v18, v135);
      v21 = v0[11];
      v20 = v0[12];
      v22 = v0[9];
      v138 = v0[10];
      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];
      if (v19)
      {
        v128 = v0[6];
        log = v18;
        v26 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v142 = v131;
        *v26 = 136315650;
        v27 = sub_1B4F68F84();
        v130 = v22;
        v29 = sub_1B4DC4F88(v27, v28, &v142);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        v30 = sub_1B4F676B4();
        v32 = v31;
        (*(v21 + 8))(v20, v138);
        v33 = sub_1B4DC4F88(v30, v32, &v142);

        *(v26 + 14) = v33;
        *(v26 + 22) = 2080;
        v34 = v132(v128, AssociatedConformanceWitness);
        v35 = *(v24 + 8);
        v35(v23, v128);
        v36 = *(v34 + 16);
        v37 = *(v34 + 24);

        v38 = sub_1B4DC4F88(v36, v37, &v142);

        *(v26 + 24) = v38;
        _os_log_impl(&dword_1B4DC2000, log, v135, "[%s] Can't end session %s while active for session %s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v131, -1, -1);
        MEMORY[0x1B8C831D0](v26, -1, -1);

        v35(v130, v128);
      }

      else
      {

        v126 = *(v24 + 8);
        v126(v23, v25);
        (*(v21 + 8))(v20, v138);
        v126(v22, v25);
      }

LABEL_37:

      v125 = v0[1];

      return v125();
    }
  }

  v140 = (*(v0[5] + 80) + **(v0[5] + 80));
  v94 = swift_task_alloc();
  v0[23] = v94;
  *v94 = v0;
  v94[1] = sub_1B4ED3E9C;
  v95 = v0[9];
  v96 = v0[4];
  v97 = v0[5];
  v98 = v0[3];

  return v140(v98, v95, v96, v97);
}

uint64_t sub_1B4ED3E9C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1B4ED40CC;
  }

  else
  {
    v5 = sub_1B4ED3FD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B4ED3FD8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4ED40CC()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4ED41C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED0CD0(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED2FF0(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED1A98(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4408(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1B4F678C4() - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_1B4ED4564(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1B4F678C4() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (*(v9 + 64) > v8)
  {
    v8 = *(v9 + 64);
  }

  v10 = v8 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t dispatch thunk of SessionMonitor.startSession(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.sessionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.endSession(session:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.playbackUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.activityRingsUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.workoutDeviceConnectionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 104) + **(a4 + 104));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionActivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionDeactivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t XPCServerClientDisconnected.processName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t XPCServerClientDisconnected.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1B4ED52B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B4ED5310(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MultiUserSessionConnected.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionConnected.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionConnected(uint64_t a1)
{
  result = qword_1EDB6E768;
  if (!qword_1EDB6E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCStreamEventReceived.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B4ED5514(uint64_t a1, int a2)
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

uint64_t sub_1B4ED555C(uint64_t result, int a2, int a3)
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

uint64_t MultiUserCelebrationRequested.init(celebration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MultiUserCelebrationRequested.celebration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66464();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MultiUserCelebrationRequested(uint64_t a1)
{
  result = qword_1EB8F6488;
  if (!qword_1EB8F6488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED5700(uint64_t a1)
{
  result = sub_1B4F66464();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TrainerEventStarted.trainerEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainerEventStarted.init(trainerEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for TrainerEventStarted(uint64_t a1)
{
  result = qword_1EB8F6498;
  if (!qword_1EB8F6498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.__allocating_init(identifier:signpostID:poster:telemetryEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  v13 = v12 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  v14 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v15 = sub_1B4F67BA4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a4, v15);
  *(v12 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = a6;
  v17 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v18 = sub_1B4F67BD4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v12 + v17, a5, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  (*(v19 + 8))(a5, v18);
  (*(v16 + 8))(a4, v15);
  *(v20 + 16) = 0;
  *(v12 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v20;
  return v12;
}

uint64_t Signpost.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF388((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v3 = sub_1B4F67BD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v5 = sub_1B4F67BA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_1EDB702A0;
  if (!qword_1EDB702A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED5BA0(uint64_t a1)
{
  result = sub_1B4F67BD4();
  if (v2 <= 0x3F)
  {
    result = sub_1B4F67BA4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4ED5CB8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1B4ED5D08(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B4ED5D5C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B4ED5D74(void *result, int a2)
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

uint64_t static String.read(from:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B4F67F64();
  v5 = [a1 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1B4F67F74();

  return v6;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_1B4ED5F94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B4ED78E4(a1, a2, a3, MEMORY[0x1E69E6530]);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_1B4ED5FCC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_1B4F67F64();
  [a1 setInteger:v5 forKey:v6];
}

Swift::Void __swiftcall UInt64.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_1B4F68F34();
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

uint64_t sub_1B4ED60DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B4ED78E4(a1, a2, a3, MEMORY[0x1E69E76D8]);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_1B4ED6114(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B4F68F34();
  v5 = sub_1B4F67F64();
  [a1 setObject:v4 forKey:v5];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

void sub_1B4ED6204(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_1B4F67F64();
  [a1 setBool:v5 forKey:v6];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_1B4F67F64();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

void sub_1B4ED62F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_1B4F67F64();
  [a1 setDouble:v6 forKey:v5];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_1B4F67F64();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_1B4ED6404@<X0>(uint64_t a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  result = sub_1B4ED7484(a2, a3, a4);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1B4ED6434(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7 = sub_1B4F67F64();
  LODWORD(v6) = v5;
  [a1 setFloat:v7 forKey:v6];
}

void sub_1B4ED64C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_1B4F67F64();
  [a1 setObject:v7 forKey:v8];
}

uint64_t sub_1B4ED654C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = _s10Foundation4DataV13SeymourClientE4read4from3keyACSgSo14NSUserDefaultsC_SStFZ_0(a2, a3, a4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1B4ED658C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_1B4F67F64();
  [a1 setObject:v8 forKey:v9];
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v22, v21, v18);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    return (*(v10 + 8))(v12, a4);
  }

  (*(v15 + 32))(v20, v12, v14);
  (*(a5 + 16))(a1, a2, a3, v14, a5);
  return (*(v15 + 8))(v20, v14);
}

uint64_t static Array<A>.read(from:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1B4F67F64();
  v8 = [a1 valueForKey_];

  if (v8)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    swift_getAssociatedTypeWitness();
    sub_1B4F68254();
    v9 = swift_dynamicCast();
    if (v9)
    {
      *&v16[0] = v13;
      MEMORY[0x1EEE9AC00](v9, v10);
      swift_getWitnessTable();
      v11 = sub_1B4F680E4();

      return v11;
    }
  }

  else
  {
    sub_1B4DDA43C(v16);
  }

  return 0;
}

uint64_t sub_1B4ED69C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  return sub_1B4F68154();
}

void Array<A>.write(to:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v8 = sub_1B4F68254();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1B4E6CE74(sub_1B4ED79E8, v14, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  v12 = sub_1B4F681B4();

  v13 = sub_1B4F67F64();
  [a1 setObject:v12 forKey:v13];
}

uint64_t sub_1B4ED6BF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = static Array<A>.read(from:key:)(a1, a2, a3, *(a4 + 16), *(a5 - 8), *(a5 - 16));
  *a6 = result;
  return result;
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v51 = a1;
  v52 = a7;
  v12 = sub_1B4F687D4();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v50 = &v46 - v14;
  v49 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1B4F687D4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v46 - v28;
  v30 = *(a6 + 8);
  v31 = v51;
  v46 = a2;
  v51 = a3;
  v32 = a6;
  v34 = v33;
  v30(v31, a2, a3, AssociatedTypeWitness, v32, v27);
  if ((*(v34 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v20, v16);
    return (*(*(a4 - 8) + 56))(v52, 1, 1, a4);
  }

  else
  {
    v36 = v52;
    (*(v34 + 32))(v29, v20, AssociatedTypeWitness);
    (*(v34 + 16))(v24, v29, AssociatedTypeWitness);
    v37 = v50;
    sub_1B4F68154();
    v38 = *(a4 - 8);
    if ((*(v38 + 48))(v37, 1, a4) == 1)
    {
      v49 = v34;
      (*(v47 + 8))(v37, v48);
      if (qword_1EDB724A8 != -1)
      {
        swift_once();
      }

      v39 = sub_1B4F67C54();
      __swift_project_value_buffer(v39, qword_1EDB72490);
      v40 = v51;

      v41 = sub_1B4F67C34();
      v42 = sub_1B4F685C4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = v29;
        v45 = swift_slowAlloc();
        v53 = v45;
        *v43 = 141558274;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_1B4DC4F88(v46, v40, &v53);
        _os_log_impl(&dword_1B4DC2000, v41, v42, "Couldn't parse user default %{mask.hash}s.", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x1B8C831D0](v45, -1, -1);
        MEMORY[0x1B8C831D0](v43, -1, -1);

        (*(v49 + 8))(v44, AssociatedTypeWitness);
      }

      else
      {

        (*(v49 + 8))(v29, AssociatedTypeWitness);
      }

      return (*(v38 + 56))(v36, 1, 1, a4);
    }

    else
    {
      (*(v34 + 8))(v29, AssociatedTypeWitness);
      (*(v38 + 32))(v36, v37, a4);
      return (*(v38 + 56))(v36, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v17 - v14;
  sub_1B4F68144();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

BOOL sub_1B4ED72B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_1B4F689B4();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _s10Foundation4DataV13SeymourClientE4read4from3keyACSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B4F67F64();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4DDA43C(v10);
    return 0;
  }
}

unint64_t sub_1B4ED7484(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B4F67F64();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
    goto LABEL_16;
  }

  sub_1B4F68894();
  swift_unknownObjectRelease();
  sub_1B4DC4F2C(v35, v34);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v8 = 0;
    v9 = *v33;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  sub_1B4DC4F2C(v35, v34);
  if (!swift_dynamicCast())
  {
    sub_1B4DC4F2C(v35, v34);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v8 = 0;
      v11 = *v33;
      v9 = v11;
      return LODWORD(v9) | ((v8 & 1) << 32);
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4F67C54();
    __swift_project_value_buffer(v12, qword_1EDB72490);
    sub_1B4DC4F2C(v35, v34);
    sub_1B4DC4F2C(v35, v33);

    v13 = sub_1B4F67C34();
    v14 = sub_1B4F685C4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1B4DC4F88(a2, a3, &v32);
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      swift_getDynamicType();
      v17 = sub_1B4F68F84();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v20 = sub_1B4DC4F88(v17, v19, &v32);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v22 = MEMORY[0x1EEE9AC00](v21, v21);
      (*(v24 + 16))(&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_1B4F67F94();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v28 = sub_1B4DC4F88(v25, v27, &v32);

      *(v15 + 24) = v28;
      _os_log_impl(&dword_1B4DC2000, v13, v14, "Couldn't parse Float at %s with type %s and value %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v16, -1, -1);
      MEMORY[0x1B8C831D0](v15, -1, -1);

      v29 = v35;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v29 = v33;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
LABEL_16:
    v9 = 0.0;
    v8 = 1;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  LODWORD(v34[0]) = 0;
  v10 = sub_1B4ED72B8(v33[0], v33[1], v34, MEMORY[0x1E69E7CE0], sub_1B4ED7A44);

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v9 = *v34;
  if (!v10)
  {
    v9 = 0.0;
  }

  v8 = !v10;
  return LODWORD(v9) | ((v8 & 1) << 32);
}

uint64_t sub_1B4ED78E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B4F67F64();
  v6 = [a1 valueForKey_];

  if (v6)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4DDA43C(v11);
    return 0;
  }
}

_BYTE *sub_1B4ED7A9C@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *SessionToken.__allocating_init(sessionIdentifier:state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = a3 & 1;
  v6[4] = v7;
  return v6;
}

SeymourClient::SessionToken::State_optional __swiftcall SessionToken.State.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B4F68C34();

  if (v1 == 1)
  {
    v2.value = SeymourClient_SessionToken_State_inactive;
  }

  else
  {
    v2.value = SeymourClient_SessionToken_State_unknownDefault;
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

uint64_t SessionToken.State.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6576697463616E69;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1B4ED7C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6576697463616E69;
  }

  else
  {
    v3 = 0x657669746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6576697463616E69;
  }

  else
  {
    v5 = 0x657669746361;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4F68D54();
  }

  return v8 & 1;
}

uint64_t sub_1B4ED7CD0()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED7D50(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4ED7DBC(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED7E38@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4F68C34();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B4ED7E98(uint64_t *a1@<X8>)
{
  v2 = 0x657669746361;
  if (*v1)
  {
    v2 = 0x6576697463616E69;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SessionToken.sessionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *SessionToken.init(sessionIdentifier:state:)(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = a1;
  v3[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = a3 & 1;
  v3[4] = v5;
  return v3;
}

uint64_t SessionToken.deinit()
{

  return v0;
}

uint64_t SessionToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SessionToken.hash(into:)()
{
  v1 = v0[4];
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16))
  {
    v2 = 0x6576697463616E69;
  }

  else
  {
    v2 = 0x657669746361;
  }

  if (*(v1 + 16))
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  os_unfair_lock_unlock((v1 + 20));
  v6 = v0[2];
  v7 = v0[3];

  MEMORY[0x1B8C818C0](v2, v3);

  v4 = MEMORY[0x1B8C81930](v6, v7);

  return MEMORY[0x1B8C82740](v4);
}

uint64_t SessionToken.hashValue.getter()
{
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED80DC()
{
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED8144(uint64_t a1)
{
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient12SessionTokenC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4];
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  v6 = a2[4];
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v5)
  {
    v8 = 0x6576697463616E69;
  }

  else
  {
    v8 = 0x657669746361;
  }

  if (v5)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v7)
  {
    v10 = 0x6576697463616E69;
  }

  else
  {
    v10 = 0x657669746361;
  }

  if (v7)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_1B4F68D54();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  return sub_1B4F68D54();
}

unint64_t sub_1B4ED82B8()
{
  result = qword_1EB8F64A8;
  if (!qword_1EB8F64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F64A8);
  }

  return result;
}

unint64_t sub_1B4ED8310()
{
  result = qword_1EB8F64B0;
  if (!qword_1EB8F64B0)
  {
    type metadata accessor for SessionToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F64B0);
  }

  return result;
}

uint64_t ArchivedSessionHealthKitStatistics.workoutIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4ED8500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4ED8548(uint64_t result, int a2, int a3)
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

uint64_t sub_1B4ED8598@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B4ED9618;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B4DEA370(v4, v5);
}

uint64_t sub_1B4ED8638(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B4ED95F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B4DEA370(v3, v4);
  return sub_1B4DD2C78(v8, v9);
}

uint64_t DispatchTimer.onFire.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v2 = *v1;
  sub_1B4DEA370(*v1, v1[1]);
  return v2;
}

uint64_t DispatchTimer.onFire.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B4DD2C78(v6, v7);
}

uint64_t DispatchTimer.__allocating_init(fireInterval:leewayInterval:queue:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v7 = 0;
  v7[1] = 0;
  *(v6 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v6 + 16) = a3;
  v8 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v9 = sub_1B4F67D44();
  (*(*(v9 - 8) + 32))(v6 + v8, a1, v9);
  *(v6 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = a2;
  return v6;
}

uint64_t DispatchTimer.init(fireInterval:leewayInterval:queue:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v6 = 0;
  v6[1] = 0;
  *(v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v3 + 16) = a3;
  v7 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v8 = sub_1B4F67D44();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = a2;
  return v3;
}

uint64_t DispatchTimer.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v4 = sub_1B4F67D44();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  sub_1B4DD2C78(*(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire), *(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire + 8));
  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall DispatchTimer.cancel()()
{
  v1 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
  }

  *(v0 + v1) = 0;

  swift_unknownObjectRelease();
}

uint64_t DispatchTimer.__deallocating_deinit()
{
  DispatchTimer.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DispatchTimer.schedule()()
{
  v0 = sub_1B4F67D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - v7;
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  sub_1B4ED8C48(v8);
  v9(v8, v0);
}

uint64_t sub_1B4ED8C48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67D54();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4F67D74();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F68684();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1B4F67D44();
  v17 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    ObjectType = swift_getObjectType();
    v22 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
    sub_1B4DD48A4(v20);
    swift_unknownObjectRetain();
    MEMORY[0x1B8C81FE0](a1, v20, v1 + v22, ObjectType);
    swift_unknownObjectRelease();
    return (*(v17 + 8))(v20, v37);
  }

  else
  {
    v32 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
    v30 = sub_1B4DD44F4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B4ED9640(v24);
    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
    sub_1B4ED9698();
    sub_1B4F688A4();
    v25 = sub_1B4F68694();
    (*(v13 + 8))(v16, v12);
    v26 = swift_getObjectType();
    v27 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B4ED96FC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_9;
    v28 = _Block_copy(aBlock);

    sub_1B4DD4588(v26);
    sub_1B4DD458C();
    sub_1B4F686B4();
    _Block_release(v28);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v11, v34);

    v29 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
    sub_1B4DD48A4(v20);
    MEMORY[0x1B8C81FE0](v31, v20, v2 + v29, v26);
    (*(v17 + 8))(v20, v37);
    sub_1B4F686E4();
    *(v2 + v32) = v25;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1B4ED90DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4ED9134();
  }

  return result;
}

uint64_t sub_1B4ED9134()
{
  v1 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v2 = v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire;
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v4(v6);
    return sub_1B4DD2C78(v4, v5);
  }

  return result;
}

uint64_t sub_1B4ED91F4()
{
  v1 = (*v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v2 = *v1;
  sub_1B4DEA370(*v1, v1[1]);
  return v2;
}

uint64_t sub_1B4ED9254(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B4DD2C78(v6, v7);
}

uint64_t sub_1B4ED931C()
{
  v0 = sub_1B4F67D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  sub_1B4F67D84();
  sub_1B4F67DB4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  sub_1B4ED8C48(v8);
  return (v9)(v8, v0);
}

uint64_t sub_1B4ED9434()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(*v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
  }

  *(v1 + v2) = 0;

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for DispatchTimer(uint64_t a1)
{
  result = qword_1EB8F64B8;
  if (!qword_1EB8F64B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED9504(uint64_t a1)
{
  result = sub_1B4F67D44();
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

unint64_t sub_1B4ED9640(double a1)
{
  result = qword_1EDB71448;
  if (!qword_1EDB71448)
  {
    sub_1B4F68684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71448);
  }

  return result;
}

unint64_t sub_1B4ED9698()
{
  result = qword_1EDB71478;
  if (!qword_1EDB71478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71478);
  }

  return result;
}

uint64_t WorkoutUpdated.workout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F679A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for WorkoutUpdated(uint64_t a1)
{
  result = qword_1EDB6F020;
  if (!qword_1EDB6F020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutUpdated.init(workout:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F679A4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for WorkoutUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

BOOL CommunityScores.isEmpty.getter()
{
  v0 = *(sub_1B4F65A74() + 16);

  if (!v0)
  {
    return 1;
  }

  v1 = *(sub_1B4F65A54() + 16);

  if (!v1)
  {
    return 1;
  }

  v2 = *(sub_1B4F65A64() + 16);

  if (!v2)
  {
    return 1;
  }

  v3 = *(sub_1B4F65A84() + 16);

  return v3 == 0;
}

unsigned __int8 *BuildVersion.init(rawValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6138, &qword_1B4F784C8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - v12;
  v14 = sub_1B4F64F44();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v57 = a2;
  v54 = 46;
  v55 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v19 = sub_1B4F68844();
  if (!v19[2])
  {

LABEL_73:
    v46 = 1;
    return (*(v15 + 56))(a3, v46, 1, v14);
  }

  v53 = a3;
  v21 = v19[4];
  v20 = v19[5];

  v23 = HIBYTE(v20) & 0xF;
  v24 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v25 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    goto LABEL_66;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    v27 = sub_1B4F40DF0(v21, v20, 10);
    v45 = v51;
LABEL_65:

    if (v45)
    {
LABEL_66:

      v46 = 1;
      a3 = v53;
      return (*(v15 + 56))(a3, v46, 1, v14);
    }

    v47 = (v15 + 48);
    if (v27 >= 2026)
    {
      sub_1B4EDABD8(a1, a2, v13);
      v50 = (*v47)(v13, 1, v14);
      a3 = v53;
      if (v50)
      {
        v49 = v13;
        goto LABEL_72;
      }
    }

    else
    {
      sub_1B4EDA51C(a1, a2, v9);
      v48 = (*v47)(v9, 1, v14);
      a3 = v53;
      if (v48)
      {
        v49 = v9;
LABEL_72:
        sub_1B4EB33D0(v49);
        goto LABEL_73;
      }

      v13 = v9;
    }

    sub_1B4EB3438(v13, v18);
    sub_1B4EB3438(v18, a3);
    v46 = 0;
    return (*(v15 + 56))(a3, v46, 1, v14);
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B4F68A34();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v34 = result + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                goto LABEL_63;
              }

              v36 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_63;
              }

              v27 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                goto LABEL_63;
              }

              ++v34;
              if (!--v23)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_82;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v27 = 0;
        if (result)
        {
          while (1)
          {
            v40 = *result - 48;
            if (v40 > 9)
            {
              goto LABEL_63;
            }

            v41 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_63;
            }

            v27 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v27 = 0;
      LOBYTE(v23) = 1;
      goto LABEL_64;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        v27 = 0;
        if (result)
        {
          v28 = result + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_63;
            }

            v30 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_63;
            }

            v27 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              goto LABEL_63;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v23) = 0;
LABEL_64:
        LOBYTE(v54) = v23;
        v45 = v23;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v56 = v21;
  v57 = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v42 = &v56;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v44 + v43;
          if (__OFADD__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v23)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = &v56 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_81;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v37 = &v56 + 1;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v27;
        if ((v27 * 10) >> 64 != (10 * v27) >> 63)
        {
          break;
        }

        v27 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        ++v37;
        if (!--v23)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t BuildVersion.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return sub_1B4ED9E98();
  }

  else
  {
    return sub_1B4EDA1E0();
  }
}

uint64_t sub_1B4ED9E98()
{
  v1 = sub_1B4F65244();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0[4];
  v6 = sub_1B4F68D04();
  v8 = v7;
  v9 = v0[6];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v0[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v27 = 46;
    v28 = 0xE100000000000000;
    MEMORY[0x1B8C818C0]();
    v12 = v27;
    v11 = v28;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  v27 = v6;
  v28 = v8;

  MEMORY[0x1B8C818C0](v12, v11);

  v26[0] = 46;
  v26[1] = 0xE100000000000000;
  sub_1B4DCAC7C();
  v13 = sub_1B4F68844();

  sub_1B4F64F44();
  sub_1B4F651D4();
  sub_1B4EDB2D0(&qword_1EB8F60C8, MEMORY[0x1E69CB290]);
  v14 = sub_1B4F67F54();
  v15 = *(v2 + 8);
  v15(v5, v1);
  if (v14)
  {
    goto LABEL_14;
  }

  sub_1B4F65214();
  v16 = sub_1B4F67F54();
  v15(v5, v1);
  if (v16)
  {
    goto LABEL_14;
  }

  v17 = sub_1B4EB27BC();
  if (v18)
  {
    goto LABEL_14;
  }

  v27 = v17;
  result = sub_1B4F68D04();
  v21 = *(v13 + 16);
  if (v21)
  {
    v22 = result;
    v23 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13;
    if (!isUniquelyReferenced_nonNull_native || v21 >= *(v13 + 24) >> 1)
    {
      v13 = sub_1B4E7884C(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v13);
      v27 = v13;
    }

    sub_1B4EDC05C(v21 - 1, v21 - 1, 1, v22, v23);

LABEL_14:
    v26[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E21468(&qword_1EDB6DB98, &qword_1EB8F52A8, &qword_1B4F72730, MEMORY[0x1E69E6310]);
    v25 = sub_1B4F67F34();

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EDA1E0()
{
  v1 = sub_1B4F65244();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64F44();
  sub_1B4F651D4();
  sub_1B4EDB2D0(&qword_1EB8F6538, MEMORY[0x1E69CB298]);
  sub_1B4F68144();
  sub_1B4F68144();
  (*(v2 + 8))(v5, v1);
  if (v22 == v24)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    v6 = *v0;
    if (*(v0 + 8))
    {
      v6 = 0;
    }

    v24 = v6;
    v7 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v7);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v8 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v8 = 0;
    }

    v24 = v8;
    v9 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v9);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v24 = *(v0 + 32);
    v10 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v10);
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    v11 = *v0;
    if (*(v0 + 8))
    {
      v11 = 0;
    }

    v24 = v11;
    v12 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v12);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v13 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v13 = 0;
    }

    v24 = v13;
    v14 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v14);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v24 = *(v0 + 32);
    v15 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v15);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v16 = sub_1B4EB27BC();
    v18 = 31337;
    if ((v17 & 1) == 0)
    {
      v18 = v16;
    }

    v24 = v18;
    v19 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v19);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    MEMORY[0x1B8C818C0](*(v0 + 40), *(v0 + 48));
  }

  return v22;
}

unsigned __int8 *sub_1B4EDA51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F65244();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1B4F64F44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65 = a1;
  *(&v65 + 1) = a2;
  v68 = 46;
  v69 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v13 = sub_1B4F68844();

  v15 = v13[2];
  if (!v15)
  {
    goto LABEL_64;
  }

  v64 = v12;
  v17 = v13[4];
  v16 = v13[5];
  v18 = HIBYTE(v16) & 0xF;
  v19 = v17 & 0xFFFFFFFFFFFFLL;
  if (!((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v17 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_64;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {

    sub_1B4F40DF0(v17, v16, 10);
    v47 = v46;

    if (v47)
    {
      goto LABEL_64;
    }

    goto LABEL_66;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {
    *&v65 = v13[4];
    *(&v65 + 1) = v16 & 0xFFFFFFFFFFFFFFLL;
    if (v17 == 43)
    {
      if (!v18)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (--v18)
      {
        v34 = 0;
        v35 = &v65 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          ++v35;
          if (!--v18)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v17 == 45)
    {
      if (!v18)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (--v18)
      {
        v26 = 0;
        v27 = &v65 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v26 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v18)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v18)
    {
      v41 = 0;
      v42 = &v65;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        ++v42;
        if (!--v18)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B4F68A34();
  }

  v21 = *result;
  if (v21 == 43)
  {
    if (v19 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v18 = v19 - 1;
    if (v19 == 1)
    {
      goto LABEL_62;
    }

    v30 = 0;
    if (result)
    {
      v31 = result + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          goto LABEL_62;
        }

        v33 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_62;
        }

        v30 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_62;
        }

        ++v31;
        if (!--v18)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_54;
  }

  if (v21 == 45)
  {
    if (v19 < 1)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v18 = v19 - 1;
    if (v19 == 1)
    {
      goto LABEL_62;
    }

    v22 = 0;
    if (result)
    {
      v23 = result + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          goto LABEL_62;
        }

        v25 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          goto LABEL_62;
        }

        v22 = v25 - v24;
        if (__OFSUB__(v25, v24))
        {
          goto LABEL_62;
        }

        ++v23;
        if (!--v18)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_54:
    LOBYTE(v18) = 0;
    goto LABEL_63;
  }

  if (v19)
  {
    v38 = 0;
    if (result)
    {
      while (1)
      {
        v39 = *result - 48;
        if (v39 > 9)
        {
          goto LABEL_62;
        }

        v40 = 10 * v38;
        if ((v38 * 10) >> 64 != (10 * v38) >> 63)
        {
          goto LABEL_62;
        }

        v38 = v40 + v39;
        if (__OFADD__(v40, v39))
        {
          goto LABEL_62;
        }

        ++result;
        if (!--v19)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  LOBYTE(v18) = 1;
LABEL_63:
  LOBYTE(v68) = v18;
  if (v18)
  {
LABEL_64:

    v45 = 1;
    return (*(v9 + 56))(a3, v45, 1, v8);
  }

LABEL_66:
  v63 = v8;
  v48 = v13[2];
  if (v48 >= 3)
  {
    if (v15 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = v15 - 2;
    }

    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v62 = a3;
      if (v48 >= v49)
      {
        v50 = v49 != 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B4F6CF50;
        v52 = (2 * v49) | 1;
        v53 = &v13[2 * v48 + 4];
        v54 = *(v53 - 8);
        *(inited + 32) = *(v53 - 16);
        *(inited + 40) = v54;
        *&v65 = v13;
        *(&v65 + 1) = v13 + 4;
        v66 = v50;
        v67 = v52;

        sub_1B4EDB494(inited);
        v61 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
        sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998, MEMORY[0x1E69E6958]);
        result = sub_1B4F67F34();
        if (v48 - 2 < v13[2])
        {
          v55 = &v13[2 * v48];
          v56 = *v55;
          v57 = v55[1];

          v58 = sub_1B4F404B4(v56, v57);
          sub_1B4EB2768(v58, v59 & 1);
          v60 = v64;
          sub_1B4F64F24();
          swift_unknownObjectRelease();
          a3 = v62;
          v8 = v63;
LABEL_79:
          sub_1B4EB3438(v60, a3);
          v45 = 0;
          return (*(v9 + 56))(a3, v45, 1, v8);
        }

        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v48 != 2)
  {

    goto LABEL_78;
  }

  if (v15 <= 2)
  {
    *&v65 = v13;
    *(&v65 + 1) = v13 + 4;
    v66 = 1;
    v67 = (2 * v15) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998, MEMORY[0x1E69E6958]);
    sub_1B4F67F34();

LABEL_78:
    v8 = v63;
    sub_1B4F651D4();
    v60 = v64;
    sub_1B4F64F24();
    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B4EDABD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F65244();
  v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v66 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v63 - v11;
  v13 = sub_1B4F64F44();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v69 = a2;
  v72 = 46;
  v73 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v18 = sub_1B4F68844();

  v20 = v18[2];
  if (v20 < 3 || ((v64 = v6, v23 = v18[4], v22 = v18[5], v24 = HIBYTE(v22) & 0xF, v25 = v23 & 0xFFFFFFFFFFFFLL, (v22 & 0x2000000000000000) != 0) ? (v26 = HIBYTE(v22) & 0xF) : (v26 = v23 & 0xFFFFFFFFFFFFLL), !v26))
  {

    v21 = 1;
    return (*(v14 + 56))(a3, v21, 1, v13);
  }

  v65 = a3;
  if ((v22 & 0x1000000000000000) != 0)
  {

    v28 = sub_1B4F40DF0(v23, v22, 10);
    v62 = v61;

    if (v62)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    v68 = v23;
    v69 = v22 & 0xFFFFFFFFFFFFFFLL;
    if (v23 == 43)
    {
      if (!v24)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (--v24)
      {
        v28 = 0;
        v38 = &v68 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v23 == 45)
    {
      if (!v24)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (--v24)
      {
        v28 = 0;
        v32 = &v68 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v24)
    {
      v28 = 0;
      v43 = &v68;
      while (1)
      {
        v44 = *v43 - 48;
        if (v44 > 9)
        {
          break;
        }

        v45 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          break;
        }

        v28 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          break;
        }

        ++v43;
        if (!--v24)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    result = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B4F68A34();
  }

  v27 = *result;
  if (v27 == 43)
  {
    if (v25 < 1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v24 = v25 - 1;
    if (v25 == 1)
    {
      goto LABEL_63;
    }

    v28 = 0;
    if (result)
    {
      v35 = result + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          goto LABEL_63;
        }

        v37 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          goto LABEL_63;
        }

        v28 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          goto LABEL_63;
        }

        ++v35;
        if (!--v24)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_55;
  }

  if (v27 == 45)
  {
    if (v25 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v24 = v25 - 1;
    if (v25 == 1)
    {
      goto LABEL_63;
    }

    v28 = 0;
    if (result)
    {
      v29 = result + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          goto LABEL_63;
        }

        v31 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          goto LABEL_63;
        }

        v28 = v31 - v30;
        if (__OFSUB__(v31, v30))
        {
          goto LABEL_63;
        }

        ++v29;
        if (!--v24)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_55:
    LOBYTE(v24) = 0;
    goto LABEL_64;
  }

  if (v25)
  {
    v28 = 0;
    if (result)
    {
      while (1)
      {
        v41 = *result - 48;
        if (v41 > 9)
        {
          goto LABEL_63;
        }

        v42 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          goto LABEL_63;
        }

        v28 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v25)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v28 = 0;
  LOBYTE(v24) = 1;
LABEL_64:
  LOBYTE(v72) = v24;
  if (v24)
  {
LABEL_66:

    v21 = 1;
    a3 = v65;
    return (*(v14 + 56))(a3, v21, 1, v13);
  }

LABEL_65:
  if (v28 < 2026)
  {
    goto LABEL_66;
  }

  if (v18[2] < 2uLL)
  {
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v46 = v18[6];
  v47 = v18[7];

  result = sub_1B4F404B4(v46, v47);
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = result;
  }

  v63[1] = v49;
  if (v18[2] < 3uLL)
  {
    goto LABEL_86;
  }

  v50 = v18[8];
  v51 = v18[9];

  result = sub_1B4F404B4(v50, v51);
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = result;
  }

  if (v20 == 3)
  {

    sub_1B4F651D4();
    sub_1B4F64F34();
LABEL_80:
    a3 = v65;
    sub_1B4EB3438(v17, v65);
    v21 = 0;
    return (*(v14 + 56))(a3, v21, 1, v13);
  }

  v63[0] = v53;
  if (v18[2] < 4uLL)
  {
    goto LABEL_91;
  }

  v54 = v18[10];
  v55 = v18[11];

  v56 = sub_1B4F404B4(v54, v55);
  result = sub_1B4EB2768(v56, v57 & 1);
  v58 = v18[2];
  if (v58 >= 4)
  {
    v68 = v18;
    v69 = (v18 + 4);
    v70 = 4;
    v71 = (2 * v58) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998, MEMORY[0x1E69E6958]);
    sub_1B4F67F34();

    v59 = v67;
    v60 = v64;
    (*(v67 + 16))(v66, v12, v64);
    sub_1B4F64F34();
    (*(v59 + 8))(v12, v60);
    goto LABEL_80;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1B4EDB298@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    result = sub_1B4ED9E98();
  }

  else
  {
    result = sub_1B4EDA1E0();
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B4EDB2D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F65244();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4EDB314(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B4E78DA4(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B4EDB494(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_1B4EDB314(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 16 * v16 + 16 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v19 + 16);
  if (v18 != v19 + 16 * v20 + 32)
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = *(v5 + 16);
  if (v25)
  {
    if (v24 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = v17 + v6;
      if (!__OFADD__(v17, v6))
      {
        sub_1B4EDB98C(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v24)
  {

    return sub_1B4EDBA44(v5, v25);
  }

  else
  {
  }
}

uint64_t *sub_1B4EDB6D4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = v14;
  v32 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_1B4EDBEFC(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v32];
    if (__dst != v23 || __dst >= &v23[16 * v31])
    {
      memmove(__dst, v23, 16 * v31);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = a4(v34 + 16 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

uint64_t sub_1B4EDB98C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

uint64_t sub_1B4EDBA44(uint64_t result, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = result;
  v7 = *(result + 16);
  v35 = v7;
  if (v7 == a2)
  {
LABEL_3:
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = result + 16 * a2;
  v36 = a2 + 1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v30 = v2;
  while (!__OFADD__(v5, 1))
  {
    v37 = sub_1B4EDBD20(v5, v5 + 1, *v2, v2[1], v4, v3);
    v11 = sub_1B4EDBEE0();
    sub_1B4EDB6D4(&v37, v5, 0, v11);

    v4 = v2[2];
    v3 = v2[3];
    v12 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v34 = v2[1];
    v33 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1B4F68D74();
    swift_unknownObjectRetain();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v13 + 16);
    if (v34 + 16 * v4 + 16 * v12 != v13 + 16 * v14 + 32)
    {

LABEL_16:
      v15 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v12 + v17;
    if (__OFADD__(v12, v17))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v15)
    {
      v31 = v3;
      v18 = 0;
      v19 = v6;
      v20 = v4;
      v21 = v36;
      v22 = v6 + 16 * v36;
      v32 = v20;
      v23 = v34 + 16 * v5 + 16 * v20;
      while (1)
      {
        v24 = (v23 + v18);
        *v24 = v10;
        v24[1] = v9;
        ++v5;
        if (v35 == v21)
        {
          v10 = 0;
          v9 = 0;
          v36 = v35;
          goto LABEL_26;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v21 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        ++v21;
        v10 = *(v22 + v18 + 32);
        v9 = *(v22 + v18 + 40);

        v18 += 16;
        if (v15 == v5)
        {
          v36 = v21;
          v5 = v15;
LABEL_26:
          v6 = v19;
          v2 = v30;
          v3 = v31;
          v4 = v32;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v25 = v5 - v12;
    if (__OFSUB__(v5, v12))
    {
      goto LABEL_39;
    }

    if (v25)
    {
      sub_1B4F68D74();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v26 = *(result + 16);
      v27 = __OFADD__(v26, v25);
      v28 = v26 + v25;
      if (v27)
      {
        goto LABEL_40;
      }

      *(result + 16) = v28;

      v29 = v33 + v25;
      if (__OFADD__(v33, v25))
      {
        goto LABEL_41;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v29);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_1B4EDBD20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1B4E78DA4(v6, v25);
}

uint64_t sub_1B4EDBEFC(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v7 != v9 + 16 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1B4EDC140(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t sub_1B4EDC05C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B4EDC140(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t ActivityTrace.__allocating_init(identifier:dso:)(const char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  ActivityTrace.init(identifier:dso:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ActivityTrace.deinit()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v4 = *(v1 + 24);
    os_activity_scope_leave(&v4);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));

  return v0;
}

Swift::Void __swiftcall ActivityTrace.end()()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    os_activity_scope_leave(&v3);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));
}

Swift::Void __swiftcall ActivityTrace.begin()()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(v1 + 16);
    v3.opaque[0] = 0;
    v3.opaque[1] = 0;
    os_activity_scope_enter(v2, &v3);
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 40) = 1;
  }

  os_unfair_lock_unlock((v1 + 44));
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B4EDC4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B4EDC50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t FitnessMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6157646572696170;
  }

  if (a1 == 1)
  {
    return 0x73656C6863746177;
  }

  return 0x615765746F6D6572;
}

uint64_t sub_1B4EDC5E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73656C6863746177;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x615765746F6D6572;
    v4 = 0xEB00000000686374;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6157646572696170;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000686374;
  }

  v7 = 0x73656C6863746177;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x615765746F6D6572;
    v8 = 0xEB00000000686374;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6157646572696170;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000686374;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

uint64_t sub_1B4EDC6E8()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4EDC794(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4EDC82C(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

unint64_t sub_1B4EDC8D4@<X0>(Swift::String *a1@<X0>, SeymourClient::FitnessMode_optional *a2@<X8>)
{
  result = _s13SeymourClient11FitnessModeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t _s13SeymourClient11FitnessModeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4F68C34();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B4EDC964()
{
  result = qword_1EB8F6558;
  if (!qword_1EB8F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6558);
  }

  return result;
}

unint64_t sub_1B4EDC9BC()
{
  result = qword_1EB8F6560;
  if (!qword_1EB8F6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6568, &qword_1B4F79B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6560);
  }

  return result;
}

uint64_t sub_1B4EDCA30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43656C706D6173;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C506D6F74737563;
    }

    else
    {
      v5 = 0x616E6168616BLL;
    }

    if (v4 == 2)
    {
      v6 = 0xED00003256736E61;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6568636F697262;
    }

    else
    {
      v5 = 0x6F43656C706D6173;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED0000746E65746ELL;
    }
  }

  v7 = 0x6C506D6F74737563;
  v8 = 0xED00003256736E61;
  if (a2 != 2)
  {
    v7 = 0x616E6168616BLL;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6568636F697262;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

const char *FitnessPlusFeatures.feature.getter()
{
  v1 = "Brioche";
  v2 = "CustomPlansV2";
  if (*v0 != 2)
  {
    v2 = "Kahana";
  }

  if (!*v0)
  {
    v1 = "SampleContent";
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

SeymourClient::FitnessPlusFeatures_optional __swiftcall FitnessPlusFeatures.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusFeatures.rawValue.getter()
{
  v1 = 0x6F43656C706D6173;
  v2 = 0x6C506D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x616E6168616BLL;
  }

  if (*v0)
  {
    v1 = 0x6568636F697262;
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

unint64_t sub_1B4EDCCFC()
{
  result = qword_1EB8F6570;
  if (!qword_1EB8F6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6570);
  }

  return result;
}

uint64_t sub_1B4EDCD50()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4EDCE28(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4EDCEEC(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

void sub_1B4EDCFCC(uint64_t *a1@<X8>)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43656C706D6173;
  v4 = 0xED00003256736E61;
  v5 = 0x6C506D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0x616E6168616BLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6568636F697262;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MediaPlayerSyncCatchupRequested.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MediaPlayerSyncCatchupRequested.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MediaPlayerSyncCatchupRequested(uint64_t a1)
{
  result = qword_1EDB6E430;
  if (!qword_1EDB6E430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EDD220@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1B4EDD308@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1B4EDD430(uint64_t a1)
{
  v36 = sub_1B4F67124();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = sub_1B4F688B4();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v9, v36);
      v38 = sub_1B4F67114();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1B4E257A4((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B4DF3104(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1B4EDD738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F679C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDDAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67124();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EDDE98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1B4F68E84();

    sub_1B4F67FE4();
    v16 = sub_1B4F68EC4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1B4F68D54() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4EDE050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66674();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F5750, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC600]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDE400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67154();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F5728, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCEE0]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EDE7B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = v8;
  if (v7)
  {
    do
    {
      v10 = (v7 - 1) & v7;
LABEL_13:
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      v13 = sub_1B4F68EC4();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }

      v24 = v10;
      v16 = ~v14;
      while (1)
      {
        v17 = sub_1B4F652E4();
        v19 = v18;
        if (v17 == sub_1B4F652E4() && v19 == v20)
        {
          break;
        }

        v22 = sub_1B4F68D54();

        if (v22)
        {
          goto LABEL_23;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_23:
      v8 = v23;
      v7 = v24;
    }

    while (v24);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EDE9B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v20 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v21 = v7;
  v22 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v23 = (v6 - 1) & v6;
LABEL_13:
      v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1B4F68E84();
      sub_1B4E43934(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6618, &qword_1B4F79F00);
      sub_1B4DCF604();
      sub_1B4F65054();
      v16 = sub_1B4F68EC4();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      sub_1B4EEBFC4();
      sub_1B4EE69CC();
      while ((sub_1B4F65064() & 1) == 0)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_1B4DE5390(v13, v14, v15);
      v7 = v21;
      result = v22;
      v6 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1B4DE5390(v13, v14, v15);
    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v20 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v23 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4EDEC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F658C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F6608, MEMORY[0x1E69CB4A8], MEMORY[0x1E69CB4B0]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F6610, MEMORY[0x1E69CB4A8], MEMORY[0x1E69CB4B8]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDEFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F671A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F65F8, MEMORY[0x1E69CCF00], MEMORY[0x1E69CCF08]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F6600, MEMORY[0x1E69CCF00], MEMORY[0x1E69CCF10]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDF390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F57E8, MEMORY[0x1E69CB850], MEMORY[0x1E69CB868]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDF740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDFAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F660C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F5778, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE58]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDFEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F5788, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA18]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EE0250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F670C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v36 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v36 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v17 = 0;
    v18 = *(a1 + 56);
    v36 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;
    v43 = v5 + 32;
    v45 = a2 + 56;
    v46 = v5 + 16;
    v23 = (v5 + 8);
    v37 = v22;
    v38 = &v36 - v14;
    v39 = v5;
    v40 = a1;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
LABEL_13:
        v27 = *(a1 + 48);
        v44 = *(v5 + 72);
        v28 = *(v5 + 16);
        v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4, v15);
        (*(v5 + 32))(v47, v16, v4);
        sub_1B4EEC148(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
        v29 = sub_1B4F67F14();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v32 = a2;
        v33 = ~v30;
        while (1)
        {
          (v28)(v8, *(v32 + 48) + v31 * v44, v4);
          sub_1B4EEC148(&qword_1EB8F5798, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDE0]);
          v34 = sub_1B4F67F54();
          v35 = *v23;
          (*v23)(v8, v4);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v33;
          if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35(v47, v4);
            return;
          }
        }

        v35(v47, v4);
        a2 = v32;
        v5 = v39;
        a1 = v40;
        v22 = v37;
        v16 = v38;
        v21 = v42;
        if (!v42)
        {
          goto LABEL_8;
        }
      }

      (*v23)(v47, v4);
    }

    else
    {
LABEL_8:
      v25 = v17;
      while (1)
      {
        v17 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          return;
        }

        v26 = *(v36 + 8 * v17);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v42 = (v26 - 1) & v26;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EE0628(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1B4DD8804(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1B8C82290](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1B8C82290](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1B4F68764();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1B4F68764();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1B4F688F4();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1B4F688F4();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B4EE0890(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B4F65C64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v6 + 16);
  v19 = v6 + 16;
  v21 = (v19 - 8);
  v28 = *(v19 + 56);
  v29 = v20;
  while (1)
  {
    v22 = v29;
    result = (v29)(v14, v17, v5, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v9, v18, v5);
    sub_1B4EEC148(&qword_1EB8F65F0, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6C8]);
    v25 = sub_1B4F67F54();
    v26 = *v21;
    (*v21)(v9, v5);
    v26(v14, v5);
    if (v25)
    {
      v18 += v28;
      v17 += v28;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

void *RemoteBrowsingSource.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6580, &qword_1B4F79DE8);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B4EEC0E0(v7, v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16), MEMORY[0x1E69CC610]);
  v8[4] = a1;
  v8[5] = a2;
  v11 = MEMORY[0x1E69E7CC0];
  v8[2] = v10;
  v8[3] = v11;
  return v8;
}

void *RemoteBrowsingSource.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6580, &qword_1B4F79DE8);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B4EEC0E0(v8, v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16), MEMORY[0x1E69CC610]);
  v2[4] = a1;
  v2[5] = a2;
  v11 = MEMORY[0x1E69E7CC0];
  v2[2] = v10;
  v2[3] = v11;
  return v2;
}

uint64_t sub_1B4EE0DF4(uint64_t a1, uint64_t a2)
{
  v340 = type metadata accessor for AchievementEnvironmentCacheUpdated(0);
  MEMORY[0x1EEE9AC00](v340, v4);
  v339 = &v310 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F66F74();
  v360 = *(v6 - 8);
  v361 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v359 = &v310 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v358 = &v310 - v11;
  v357 = sub_1B4F66604();
  v368 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357, v12);
  v317 = &v310 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6598, &qword_1B4F79E68);
  MEMORY[0x1EEE9AC00](v356, v14);
  v373 = &v310 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v338 = &v310 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v366 = &v310 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v367 = &v310 - v24;
  v337 = type metadata accessor for PersonalizationPrivacyPreferenceUpdated(0);
  MEMORY[0x1EEE9AC00](v337, v25);
  v336 = &v310 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_1B4F673D4();
  v354 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355, v27);
  v353 = &v310 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v352 = &v310 - v31;
  v351 = sub_1B4F64ED4();
  v365 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351, v32);
  v316 = &v310 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65A0, &qword_1B4F79E78);
  MEMORY[0x1EEE9AC00](v350, v34);
  v372 = &v310 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v335 = &v310 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v371 = &v310 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v364 = &v310 - v44;
  v334 = type metadata accessor for PlaylistsUpdated(0);
  MEMORY[0x1EEE9AC00](v334, v45);
  v332 = &v310 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_1B4F65F44();
  v331 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333, v47);
  v330 = &v310 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for MindfulMinutesMetricUpdated(0);
  MEMORY[0x1EEE9AC00](v319, v49);
  v318 = &v310 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  MEMORY[0x1EEE9AC00](v329, v51);
  v342 = &v310 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v315 = &v310 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v362 = &v310 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v310 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v347 = &v310 - v65;
  v66 = sub_1B4F66454();
  v369 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v67);
  v313 = &v310 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69, v70);
  v348 = &v310 - v71;
  v346 = sub_1B4F66354();
  v363 = *(v346 - 1);
  MEMORY[0x1EEE9AC00](v346, v72);
  v314 = &v310 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65A8, &qword_1B4F79E88);
  MEMORY[0x1EEE9AC00](v345, v74);
  v370 = &v310 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5608, &qword_1B4F79E90);
  MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v79 = &v310 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = &v310 - v82;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v310 - v86;
  v327 = type metadata accessor for BookmarksUpdated(0);
  MEMORY[0x1EEE9AC00](v327, v88);
  v325 = &v310 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_1B4F65E64();
  v324 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326, v90);
  v323 = &v310 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1B4F670E4();
  v321 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322, v92);
  v320 = &v310 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1B4F66CF4();
  v95 = sub_1B4F66CF4();
  v96 = sub_1B4EDE9B8(v94, v95);

  v374 = a1;
  v341 = v62;
  v375 = a2;
  v349 = v66;
  v328 = v79;
  v344 = v87;
  v343 = v83;
  if ((v96 & 1) == 0)
  {
    v97 = *(v376 + 40);
    v312 = *(v376 + 32);
    v311 = v97;
    v98 = sub_1B4F66CF4();
    KeyPath = swift_getKeyPath();
    v100 = 1 << *(v98 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v102 = v101 & *(v98 + 56);
    v103 = (v100 + 63) >> 6;

    v104 = 0;
    v105 = MEMORY[0x1E69E7CC0];
    if (!v102)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v106 = __clz(__rbit64(v102));
        v102 &= v102 - 1;
        v107 = *(v98 + 48) + 24 * (v106 | (v104 << 6));
        v108 = *(v107 + 8);
        v110 = *(v107 + 16);
        v377 = *v107;
        v109 = v377;
        v378 = v108;
        v379 = v110;
        sub_1B4E43934(v377, v108, v110);
        swift_getAtKeyPath();
        sub_1B4DE5390(v109, v108, v110);
        LOBYTE(v83) = v380;
        if (v380 != 3)
        {
          break;
        }

        if (!v102)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_1B4E78958(0, *(v105 + 2) + 1, 1, v105);
      }

      v113 = *(v105 + 2);
      v112 = *(v105 + 3);
      if (v113 >= v112 >> 1)
      {
        v105 = sub_1B4E78958((v112 > 1), v113 + 1, 1, v105);
      }

      *(v105 + 2) = v113 + 1;
      v105[v113 + 32] = v83;
    }

    while (v102);
    while (1)
    {
LABEL_7:
      v111 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        __break(1u);
        goto LABEL_124;
      }

      if (v111 >= v103)
      {
        break;
      }

      v102 = *(v98 + 56 + 8 * v111);
      ++v104;
      if (v102)
      {
        v104 = v111;
        goto LABEL_5;
      }
    }

    v310 = sub_1B4DCF590(v105);

    v114 = sub_1B4F66CF4();
    KeyPath = swift_getKeyPath();
    v115 = 1 << *(v114 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v102 = v116 & *(v114 + 56);
    v117 = (v115 + 63) >> 6;

    v104 = 0;
    v118 = MEMORY[0x1E69E7CC0];
    if (!v102)
    {
      goto LABEL_22;
    }

    do
    {
LABEL_20:
      while (1)
      {
        v119 = __clz(__rbit64(v102));
        v102 &= v102 - 1;
        v120 = *(v114 + 48) + 24 * (v119 | (v104 << 6));
        v121 = *(v120 + 8);
        v122 = *(v120 + 16);
        v377 = *v120;
        v83 = v377;
        v378 = v121;
        v379 = v122;
        sub_1B4E43934(v377, v121, v122);
        swift_getAtKeyPath();
        sub_1B4DE5390(v83, v121, v122);
        LOBYTE(v83) = v380;
        if (v380 != 3)
        {
          break;
        }

        if (!v102)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_1B4E78958(0, *(v118 + 2) + 1, 1, v118);
      }

      v125 = *(v118 + 2);
      v124 = *(v118 + 3);
      if (v125 >= v124 >> 1)
      {
        v118 = sub_1B4E78958((v124 > 1), v125 + 1, 1, v118);
      }

      *(v118 + 2) = v125 + 1;
      v118[v125 + 32] = v83;
    }

    while (v102);
LABEL_22:
    while (1)
    {
      v123 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v123 >= v117)
      {
        ObjectType = swift_getObjectType();

        sub_1B4DCF590(v118);

        v127 = v320;
        sub_1B4F670D4();
        v128 = v322;
        (*(v311 + 8))(v127, v322, &protocol witness table for AllowedContentRatingsUpdated, ObjectType);
        (*(v321 + 8))(v127, v128);
        v87 = v344;
        v83 = v343;
        goto LABEL_33;
      }

      v102 = *(v114 + 56 + 8 * v123);
      ++v104;
      if (v102)
      {
        v104 = v123;
        goto LABEL_20;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
    goto LABEL_105;
  }

LABEL_33:
  v129 = sub_1B4F66DB4();
  v130 = sub_1B4F66DB4();
  sub_1B4EDD738(v129, v130);
  v132 = v131;

  if ((v132 & 1) == 0)
  {
    v133 = sub_1B4F66DB4();
    v134 = sub_1B4F66DB4();
    if (*(v134 + 16) <= *(v133 + 16) >> 3)
    {
      v377 = v133;
      sub_1B4EE9000(v134, &qword_1EB8F65E0, &unk_1B4F79ED0, MEMORY[0x1E69CD2D8], sub_1B4E918DC);
    }

    else
    {
      sub_1B4EEA6E4(v134, v133);
    }

    v135 = sub_1B4F66DB4();
    v136 = sub_1B4F66DB4();
    if (*(v136 + 16) <= *(v135 + 16) >> 3)
    {
      v377 = v135;
      sub_1B4EE9000(v136, &qword_1EB8F65E0, &unk_1B4F79ED0, MEMORY[0x1E69CD2D8], sub_1B4E918DC);
    }

    else
    {
      sub_1B4EEA6E4(v136, v135);
    }

    v137 = v327;
    v138 = v326;
    v139 = v323;
    sub_1B4F65E54();
    v140 = *(v376 + 40);
    v141 = swift_getObjectType();
    v142 = v324;
    v143 = v325;
    (*(v324 + 16))(v325, v139, v138);
    (*(v140 + 8))(v143, v137, &protocol witness table for BookmarksUpdated, v141, v140);
    sub_1B4EEC080(v143, type metadata accessor for BookmarksUpdated);
    (*(v142 + 8))(v139, v138);
  }

  v144 = sub_1B4F66BF4();
  v145 = sub_1B4F66BF4();
  sub_1B4EDEC30(v144, v145);
  v147 = v146;

  if ((v147 & 1) == 0)
  {
    v148 = *(v376 + 40);
    v149 = swift_getObjectType();
    (*(v148 + 8))(v149, &type metadata for RecommendationsUpdated, &protocol witness table for RecommendationsUpdated, v149, v148);
  }

  sub_1B4F66CC4();
  sub_1B4F66CC4();
  v150 = *(v345 + 48);
  v151 = v370;
  sub_1B4E21A90(v87, v370, &qword_1EB8F5608, &qword_1B4F79E90);
  sub_1B4E21A90(v83, v151 + v150, &qword_1EB8F5608, &qword_1B4F79E90);
  v152 = *(v363 + 48);
  v153 = v346;
  if (v152(v151, 1, v346) == 1)
  {
    sub_1B4DD2BC4(v83, &qword_1EB8F5608, &qword_1B4F79E90);
    v154 = v370;
    sub_1B4DD2BC4(v87, &qword_1EB8F5608, &qword_1B4F79E90);
    v155 = v152(v154 + v150, 1, v153);
    v156 = v362;
    v157 = v349;
    if (v155 == 1)
    {
      sub_1B4DD2BC4(v154, &qword_1EB8F5608, &qword_1B4F79E90);
      v158 = v347;
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v159 = v328;
  sub_1B4E21A90(v151, v328, &qword_1EB8F5608, &qword_1B4F79E90);
  v160 = v153;
  if (v152(v151 + v150, 1, v153) == 1)
  {
    sub_1B4DD2BC4(v343, &qword_1EB8F5608, &qword_1B4F79E90);
    v154 = v370;
    sub_1B4DD2BC4(v344, &qword_1EB8F5608, &qword_1B4F79E90);
    (*(v363 + 8))(v159, v153);
    v156 = v362;
    v157 = v349;
LABEL_48:
    sub_1B4DD2BC4(v154, &qword_1EB8F65A8, &qword_1B4F79E88);
    v158 = v347;
LABEL_49:
    v161 = *(v376 + 40);
    v162 = swift_getObjectType();
    (*(v161 + 8))(v162, &type metadata for ServiceSubscriptionUpdated, &protocol witness table for ServiceSubscriptionUpdated, v162, v161);
    goto LABEL_50;
  }

  v175 = v159;
  v176 = v363;
  v177 = v314;
  (*(v363 + 32))(v314, v151 + v150, v160);
  sub_1B4EEC148(&qword_1EB8F65D8, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF0]);
  v178 = sub_1B4F67F54();
  v179 = *(v176 + 8);
  v179(v177, v160);
  sub_1B4DD2BC4(v343, &qword_1EB8F5608, &qword_1B4F79E90);
  sub_1B4DD2BC4(v344, &qword_1EB8F5608, &qword_1B4F79E90);
  v179(v175, v160);
  sub_1B4DD2BC4(v151, &qword_1EB8F5608, &qword_1B4F79E90);
  v156 = v362;
  v158 = v347;
  v157 = v349;
  if ((v178 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  sub_1B4F66CD4();
  v163 = v369;
  v164 = *(v369 + 48);
  if (v164(v158, 1, v157) != 1)
  {
    v165 = *(v163 + 32);
    v166 = v348;
    v347 = (v163 + 32);
    v346 = v165;
    (v165)(v348, v158, v157);
    v167 = v163 + 16;
    v168 = v341;
    v363 = *(v163 + 16);
    (v363)(v341, v166, v157);
    (*(v163 + 56))(v168, 0, 1, v157);
    sub_1B4F66CD4();
    v169 = *(v329 + 48);
    v170 = v342;
    sub_1B4E21A90(v168, v342, &qword_1EB8F40D0, &unk_1B4F78940);
    sub_1B4E21A90(v156, v170 + v169, &qword_1EB8F40D0, &unk_1B4F78940);
    v171 = v164(v170, 1, v157);
    v370 = v167;
    if (v171 == 1)
    {
      sub_1B4DD2BC4(v156, &qword_1EB8F40D0, &unk_1B4F78940);
      v172 = v342;
      sub_1B4DD2BC4(v168, &qword_1EB8F40D0, &unk_1B4F78940);
      v173 = v172 + v169;
      v174 = v157;
      if (v164(v173, 1, v157) == 1)
      {
        sub_1B4DD2BC4(v172, &qword_1EB8F40D0, &unk_1B4F78940);
        (*(v369 + 8))(v348, v157);
        goto LABEL_63;
      }
    }

    else
    {
      v180 = v315;
      sub_1B4E21A90(v170, v315, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v164(v170 + v169, 1, v157) != 1)
      {
        v185 = v313;
        (v346)(v313, v170 + v169, v157);
        sub_1B4EEC148(&qword_1EB8F5668, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC210]);
        v186 = v170;
        v187 = sub_1B4F67F54();
        v188 = *(v369 + 8);
        v188(v185, v157);
        sub_1B4DD2BC4(v362, &qword_1EB8F40D0, &unk_1B4F78940);
        sub_1B4DD2BC4(v341, &qword_1EB8F40D0, &unk_1B4F78940);
        v174 = v157;
        v188(v180, v157);
        sub_1B4DD2BC4(v186, &qword_1EB8F40D0, &unk_1B4F78940);
        if (v187)
        {
          v188(v348, v157);
          goto LABEL_63;
        }

        goto LABEL_60;
      }

      sub_1B4DD2BC4(v362, &qword_1EB8F40D0, &unk_1B4F78940);
      v172 = v342;
      sub_1B4DD2BC4(v341, &qword_1EB8F40D0, &unk_1B4F78940);
      v174 = v157;
      (*(v369 + 8))(v180, v157);
    }

    sub_1B4DD2BC4(v172, &qword_1EB8F55B0, &qword_1B4F78E30);
LABEL_60:
    v181 = *(v376 + 40);
    v182 = swift_getObjectType();
    v183 = v318;
    v184 = v348;
    (v363)(v318, v348, v174);
    (*(v181 + 8))(v183, v319, &protocol witness table for MindfulMinutesMetricUpdated, v182, v181);
    sub_1B4EEC080(v183, type metadata accessor for MindfulMinutesMetricUpdated);
    (*(v369 + 8))(v184, v174);
    goto LABEL_63;
  }

  sub_1B4DD2BC4(v158, &qword_1EB8F40D0, &unk_1B4F78940);
LABEL_63:
  v189 = sub_1B4F66D04();
  v190 = sub_1B4F66D04();
  sub_1B4EDDAE8(v189, v190);
  v192 = v191;

  v193 = sub_1B4F66C84();
  v194 = sub_1B4F66C84();
  sub_1B4EDEFE0(v193, v194);
  v196 = v195;

  v197 = sub_1B4F66C44();
  v198 = sub_1B4F66C44();
  sub_1B4EDF390(v197, v198);
  v200 = v199;

  v201 = v364;
  if ((v192 & 1) == 0 || (v196 & 1) == 0 || (v200 & 1) == 0)
  {
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v202 = sub_1B4F67C54();
    __swift_project_value_buffer(v202, qword_1EDB714D8);
    v203 = sub_1B4F67C34();
    v204 = sub_1B4F685E4();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 67109632;
      *(v205 + 4) = (v192 & 1) == 0;
      *(v205 + 8) = 1024;
      *(v205 + 10) = (v196 & 1) == 0;
      *(v205 + 14) = 1024;
      *(v205 + 16) = (v200 & 1) == 0;
      _os_log_impl(&dword_1B4DC2000, v203, v204, "isCompletedWorkoutCountsUpdated: %{BOOL}d, isProgramProgressionUpdated: %{BOOL}d, isResumableSessionUpdated: %{BOOL}d", v205, 0x14u);
      MEMORY[0x1B8C831D0](v205, -1, -1);
    }

    v206 = sub_1B4F66D04();
    v207 = sub_1B4F66D04();
    if (*(v207 + 16) <= *(v206 + 16) >> 3)
    {
      v377 = v206;
      sub_1B4EE9000(v207, &qword_1EB8F65E8, &unk_1B4F79EE0, MEMORY[0x1E69CCE28], sub_1B4E915CC);

      v208 = v377;
    }

    else
    {
      v208 = sub_1B4EE9C80(v207, v206);
    }

    v209 = sub_1B4EDD430(v208);

    v210 = *(v376 + 40);
    v211 = swift_getObjectType();
    v212 = sub_1B4DF2208(v209);

    v377 = v212;
    (*(v210 + 8))(&v377, &type metadata for ArchivedSessionsUpdated, &protocol witness table for ArchivedSessionsUpdated, v211, v210);
  }

  v213 = sub_1B4F66C64();
  v214 = sub_1B4F66C64();
  sub_1B4EDDAE8(v213, v214);
  v216 = v215;

  if ((v216 & 1) == 0)
  {
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v217 = sub_1B4F67C54();
    __swift_project_value_buffer(v217, qword_1EDB714D8);
    v218 = sub_1B4F67C34();
    v219 = sub_1B4F685E4();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 67109120;
      *(v220 + 4) = 1;
      _os_log_impl(&dword_1B4DC2000, v218, v219, "isCompletedTipCountsUpdated: %{BOOL}d", v220, 8u);
      MEMORY[0x1B8C831D0](v220, -1, -1);
    }

    v221 = sub_1B4F66C64();
    v222 = sub_1B4F66C64();
    if (*(v222 + 16) <= *(v221 + 16) >> 3)
    {
      v377 = v221;
      sub_1B4EE9000(v222, &qword_1EB8F65E8, &unk_1B4F79EE0, MEMORY[0x1E69CCE28], sub_1B4E915CC);

      v223 = v377;
    }

    else
    {
      v223 = sub_1B4EE9C80(v222, v221);
    }

    v224 = sub_1B4EDD430(v223);

    v225 = *(v376 + 40);
    v226 = swift_getObjectType();
    v227 = sub_1B4DF2208(v224);

    v377 = v227;
    (*(v225 + 8))(&v377, &type metadata for CatalogTipJournalsUpdated, &protocol witness table for CatalogTipJournalsUpdated, v226, v225);
  }

  v228 = sub_1B4F66C14();
  v229 = sub_1B4F66C14();
  v231 = sub_1B4EE0890(v228, v229, v230);

  if ((v231 & 1) == 0)
  {
    v232 = *(v376 + 40);
    v233 = swift_getObjectType();
    (*(v232 + 8))(v233, &type metadata for UpNextQueueItemsUpdated, &protocol witness table for UpNextQueueItemsUpdated, v233, v232);
  }

  v234 = sub_1B4F66DC4();
  v235 = sub_1B4F66DC4();
  sub_1B4EDF740(v234, v235);
  v237 = v236;

  v238 = v371;
  if ((v237 & 1) == 0)
  {
    v239 = sub_1B4F66DC4();
    v240 = sub_1B4F66DC4();
    if (*(v240 + 16) <= *(v239 + 16) >> 3)
    {
      v377 = v239;
      sub_1B4EE9000(v240, &qword_1EB8F57D0, &unk_1B4F79EF0, MEMORY[0x1E69CD370], sub_1B4E912BC);
    }

    else
    {
      sub_1B4EE921C(v240, v239);
    }

    v241 = sub_1B4F66DC4();
    v242 = sub_1B4F66DC4();
    v243 = v201;
    if (*(v242 + 16) <= *(v241 + 16) >> 3)
    {
      v377 = v241;
      sub_1B4EE9000(v242, &qword_1EB8F57D0, &unk_1B4F79EF0, MEMORY[0x1E69CD370], sub_1B4E912BC);
    }

    else
    {
      sub_1B4EE921C(v242, v241);
      v238 = v371;
    }

    v244 = v330;
    sub_1B4F65F34();
    v245 = *(v376 + 40);
    v246 = swift_getObjectType();
    v247 = v331;
    v248 = v332;
    v249 = v333;
    (*(v331 + 16))(v332, v244, v333);
    (*(v245 + 8))(v248, v334, &protocol witness table for PlaylistsUpdated, v246, v245);
    sub_1B4EEC080(v248, type metadata accessor for PlaylistsUpdated);
    (*(v247 + 8))(v244, v249);
    v201 = v243;
  }

  sub_1B4F66C24();
  sub_1B4F66C24();
  v250 = *(v350 + 48);
  v251 = v372;
  sub_1B4E21A90(v201, v372, &qword_1EB8F5618, &qword_1B4F79E80);
  sub_1B4E21A90(v238, v251 + v250, &qword_1EB8F5618, &qword_1B4F79E80);
  v252 = v238;
  v253 = *(v365 + 48);
  v254 = v351;
  if (v253(v251, 1, v351) != 1)
  {
    v256 = v335;
    sub_1B4E21A90(v251, v335, &qword_1EB8F5618, &qword_1B4F79E80);
    if (v253(v251 + v250, 1, v254) != 1)
    {
      v257 = v365;
      v258 = v251 + v250;
      v259 = v316;
      (*(v365 + 32))(v316, v258, v254);
      sub_1B4EEC148(&qword_1EB8F65D0, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F8]);
      LOBYTE(v102) = sub_1B4F67F54();
      v260 = *(v257 + 8);
      v260(v259, v254);
      sub_1B4DD2BC4(v371, &qword_1EB8F5618, &qword_1B4F79E80);
      sub_1B4DD2BC4(v364, &qword_1EB8F5618, &qword_1B4F79E80);
      v260(v256, v254);
      sub_1B4DD2BC4(v251, &qword_1EB8F5618, &qword_1B4F79E80);
      v255 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
      goto LABEL_100;
    }

    sub_1B4DD2BC4(v371, &qword_1EB8F5618, &qword_1B4F79E80);
    v102 = v372;
    sub_1B4DD2BC4(v364, &qword_1EB8F5618, &qword_1B4F79E80);
    (*(v365 + 8))(v256, v254);
    v255 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
    goto LABEL_98;
  }

  sub_1B4DD2BC4(v252, &qword_1EB8F5618, &qword_1B4F79E80);
  v102 = v372;
  sub_1B4DD2BC4(v201, &qword_1EB8F5618, &qword_1B4F79E80);
  v255 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
  if (v253(v102 + v250, 1, v254) != 1)
  {
LABEL_98:
    sub_1B4DD2BC4(v102, &qword_1EB8F65A0, &qword_1B4F79E78);
    LOBYTE(v102) = 0;
    goto LABEL_100;
  }

  sub_1B4DD2BC4(v102, &qword_1EB8F5618, &qword_1B4F79E80);
  LOBYTE(v102) = 1;
LABEL_100:
  v104 = sub_1B4F66CE4();
  v261 = sub_1B4F66CE4();
  sub_1B4EDFAF0(v104, v261);
  KeyPath = v262;

  v83 = sub_1B4F66D44();
  v263 = sub_1B4F66D44();
  sub_1B4EDFEA0(v83, v263);
  LOBYTE(v104) = v264;

  v265 = sub_1B4F66D54();
  v266 = sub_1B4F66D54();
  sub_1B4EE0250(v265, v266);
  LOBYTE(v83) = v267;

  if (v102 & 1) != 0 && (KeyPath & 1) != 0 && (v104 & 1) != 0 && (v83)
  {
    goto LABEL_109;
  }

  if (v255[30].info != -1)
  {
    goto LABEL_125;
  }

LABEL_105:
  v268 = sub_1B4F67C54();
  __swift_project_value_buffer(v268, qword_1EDB714D8);
  v269 = sub_1B4F67C34();
  v270 = sub_1B4F685E4();
  if (os_log_type_enabled(v269, v270))
  {
    v271 = swift_slowAlloc();
    *v271 = 67109888;
    *(v271 + 4) = (v102 & 1) == 0;
    *(v271 + 8) = 1024;
    *(v271 + 10) = (KeyPath & 1) == 0;
    *(v271 + 14) = 1024;
    *(v271 + 16) = (v104 & 1) == 0;
    *(v271 + 20) = 1024;
    *(v271 + 22) = (v83 & 1) == 0;
    _os_log_impl(&dword_1B4DC2000, v269, v270, "workoutPlansUpdated: %{BOOL}d  %{BOOL}d  %{BOOL}d  %{BOOL}d", v271, 0x1Au);
    MEMORY[0x1B8C831D0](v271, -1, -1);
  }

  v272 = *(v376 + 40);
  v273 = swift_getObjectType();
  v274 = *(v272 + 8);
  v275 = v274(v273, &type metadata for WorkoutPlansUpdated, &protocol witness table for WorkoutPlansUpdated, v273, v272);
  if ((v102 & 1) == 0)
  {
    v274(v275, &type metadata for ActiveWorkoutPlanUpdated, &protocol witness table for ActiveWorkoutPlanUpdated, v273, v272);
  }

LABEL_109:
  v276 = v352;
  sub_1B4F66D84();
  v277 = v353;
  sub_1B4F66D84();
  sub_1B4EEC148(&qword_1EB8F65B8, MEMORY[0x1E69CD068], MEMORY[0x1E69CD080]);
  v278 = v355;
  v279 = sub_1B4F67F54();
  v280 = *(v354 + 8);
  v280(v277, v278);
  v280(v276, v278);
  v281 = v357;
  if ((v279 & 1) == 0)
  {
    v282 = *(v376 + 40);
    v283 = swift_getObjectType();
    v284 = v336;
    sub_1B4F66D84();
    (*(v282 + 8))(v284, v337, &protocol witness table for PersonalizationPrivacyPreferenceUpdated, v283, v282);
    sub_1B4EEC080(v284, type metadata accessor for PersonalizationPrivacyPreferenceUpdated);
  }

  v285 = v367;
  sub_1B4F66D14();
  v286 = v366;
  sub_1B4F66D14();
  v287 = *(v356 + 48);
  v288 = v373;
  sub_1B4E21A90(v285, v373, &qword_1EB8F5610, &qword_1B4F79E70);
  sub_1B4E21A90(v286, v288 + v287, &qword_1EB8F5610, &qword_1B4F79E70);
  v289 = *(v368 + 48);
  if (v289(v288, 1, v281) == 1)
  {
    sub_1B4DD2BC4(v286, &qword_1EB8F5610, &qword_1B4F79E70);
    v290 = v373;
    sub_1B4DD2BC4(v285, &qword_1EB8F5610, &qword_1B4F79E70);
    v291 = v289(v290 + v287, 1, v281);
    v292 = v360;
    v293 = v359;
    if (v291 == 1)
    {
      sub_1B4DD2BC4(v290, &qword_1EB8F5610, &qword_1B4F79E70);
      v294 = v361;
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v295 = v338;
  sub_1B4E21A90(v288, v338, &qword_1EB8F5610, &qword_1B4F79E70);
  if (v289(v288 + v287, 1, v281) == 1)
  {
    sub_1B4DD2BC4(v366, &qword_1EB8F5610, &qword_1B4F79E70);
    v290 = v373;
    sub_1B4DD2BC4(v367, &qword_1EB8F5610, &qword_1B4F79E70);
    (*(v368 + 8))(v295, v281);
    v292 = v360;
    v293 = v359;
LABEL_116:
    sub_1B4DD2BC4(v290, &qword_1EB8F6598, &qword_1B4F79E68);
    v294 = v361;
LABEL_117:
    v296 = *(v376 + 40);
    v297 = swift_getObjectType();
    (*(v296 + 8))(v297, &type metadata for OnboardingSurveyResultsUpdated, &protocol witness table for OnboardingSurveyResultsUpdated, v297, v296);
    goto LABEL_118;
  }

  v305 = v368;
  v306 = v288 + v287;
  v307 = v317;
  (*(v368 + 32))(v317, v306, v281);
  sub_1B4EEC148(&qword_1EB8F65C8, MEMORY[0x1E69CC528], MEMORY[0x1E69CC540]);
  v308 = sub_1B4F67F54();
  v309 = *(v305 + 8);
  v309(v307, v281);
  sub_1B4DD2BC4(v366, &qword_1EB8F5610, &qword_1B4F79E70);
  sub_1B4DD2BC4(v367, &qword_1EB8F5610, &qword_1B4F79E70);
  v309(v295, v281);
  sub_1B4DD2BC4(v288, &qword_1EB8F5610, &qword_1B4F79E70);
  v292 = v360;
  v294 = v361;
  v293 = v359;
  if ((v308 & 1) == 0)
  {
    goto LABEL_117;
  }

LABEL_118:
  v298 = v358;
  sub_1B4F66BC4();
  sub_1B4F66BC4();
  sub_1B4EEC148(&qword_1EB8F65C0, MEMORY[0x1E69CCC70], MEMORY[0x1E69CCC88]);
  v299 = sub_1B4F67F54();
  v300 = *(v292 + 8);
  v300(v293, v294);
  result = (v300)(v298, v294);
  if ((v299 & 1) == 0)
  {
    v302 = *(v376 + 40);
    v303 = swift_getObjectType();
    v304 = v339;
    sub_1B4F66BC4();
    (*(v302 + 8))(v304, v340, &protocol witness table for AchievementEnvironmentCacheUpdated, v303, v302);
    return sub_1B4EEC080(v304, type metadata accessor for AchievementEnvironmentCacheUpdated);
  }

  return result;
}

void *sub_1B4EE395C@<X0>(_BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6618, &qword_1B4F79F00);
  result = sub_1B4F65044();
  *a2 = v4;
  return result;
}

void *RemoteBrowsingSource.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteBrowsingSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void RemoteBrowsingSource.appendJournalEntry(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE3F90(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE3ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v6 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F66DD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v39 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v39 - v24;
  sub_1B4EEC018(a1, v12, MEMORY[0x1E69CC610]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v26 - 8) + 48))(v12, 1, v26) == 1)
  {
    return sub_1B4EEC080(v12, MEMORY[0x1E69CC610]);
  }

  (*(v14 + 32))(v25, &v12[*(v26 + 48)], v13);
  v28 = sub_1B4F65F84();
  (*(*(v28 - 8) + 8))(v12, v28);
  if (qword_1EDB714D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1B4F67C54();
  __swift_project_value_buffer(v29, qword_1EDB714D8);
  v30._countAndFlagsBits = 0xD000000000000028;
  v30._object = 0x80000001B4F83380;
  v31._object = 0x80000001B4F833F0;
  v31._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v30, v31);
  swift_beginAccess();

  RemoteBrowsingEnvironment.applyingJournal(_:)(v32, v21);

  sub_1B4EEC018(v40, v42, type metadata accessor for RemoteBrowsingJournalEntry);
  swift_beginAccess();
  v33 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v33;
  v39[1] = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_1B4E78B78(0, v33[2] + 1, 1, v33);
    *(a2 + 24) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_1B4E78B78((v35 > 1), v36 + 1, 1, v33);
  }

  v33[2] = v36 + 1;
  sub_1B4EEC0E0(v42, v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36, type metadata accessor for RemoteBrowsingJournalEntry);
  *(a2 + 24) = v33;
  swift_endAccess();

  RemoteBrowsingEnvironment.applyingJournal(_:)(v37, v17);

  sub_1B4EE0DF4(v21, v17);
  v38 = *(v14 + 8);
  v38(v17, v13);
  v38(v21, v13);
  return (v38)(v25, v13);
}

void sub_1B4EE3FAC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1F0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void RemoteBrowsingSource.queryActiveParticipant()(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1B4EEC018(v7 + v8, v6, MEMORY[0x1E69CC610]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    v11 = sub_1B4F65F84();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v12 = *(v10 + 48);
    v13 = sub_1B4F65F84();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a1, v6, v13);
    (*(v14 + 56))(a1, 0, 1, v13);
    v15 = sub_1B4F66DD4();
    (*(*(v15 - 8) + 8))(&v6[v12], v15);
  }

  os_unfair_lock_unlock((v7 + v9));
}