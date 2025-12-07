uint64_t sub_2584DBD24(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x2822009F8](sub_2584DBD6C, v1, 0);
}

uint64_t sub_2584DBD6C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = v1[6];
  v5 = v1[7];
  *(v0 + 16) = v1[5];
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  type metadata accessor for NetworkBackedControlConnection(255, v0 + 16);
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_2584DBEA8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v2, WitnessTable, 0xD00000000000001ELL, 0x80000002585417B0, sub_2584E25F8, v7, v9);
}

uint64_t sub_2584DBEA8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_2584DC038;
  }

  else
  {
    v4 = sub_2584DBFD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584DBFD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DC038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584DC09C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = *(*a2 + 240);
  swift_beginAccess();
  sub_258472790(v9, a2 + v12);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v6[11];
  v14[3] = v6[14];
  v14[4] = v6[15];
  v14[5] = v13;
  sub_258532BFC();

  v17 = a3;
  sub_2584E228C();
  v15 = sub_25853395C();
  swift_getWitnessTable();
  sub_25853301C();
}

uint64_t sub_2584DC31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v135 = sub_25853322C();
  v11 = *(v135 - 8);
  v12 = MEMORY[0x28223BE20](v135);
  v128 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v129 = &v125 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v125 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v127 = (&v125 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v134 = &v125 - v24;
  v25 = *(v10 + *MEMORY[0x277CD8B80] + 8);
  v26 = *(v25 + 24);
  v138[0] = *(v25 + 16);
  v138[1] = a4;
  v139 = v26;
  v140 = a5;
  v141 = a6;
  v27 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(0, v138);
  MEMORY[0x28223BE20](v27);
  v130 = v28;
  v131 = (&v125 - v29);
  v30 = sub_2585336AC();
  v133 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v132 = (&v125 - v31);
  v32 = sub_258532E7C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  (*(v33 + 16))(v35, a2, v32);
  v37 = (*(v33 + 88))(v35, v32);
  if (v37 == *MEMORY[0x277CD8DE8])
  {
    (*(v33 + 96))(v35, v32);
    v39 = v134;
    v38 = v135;
    v11[4](v134, v35, v135);
    v40 = v11[2];
    v40(v23, v39, v38);
    if ((v11[11])(v23, v38) == *MEMORY[0x277CD8FA0])
    {
      (v11[12])(v23, v38);
      if (*v23 >> 1 == 2147450871)
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v126 = v30;
        v41 = sub_258532A4C();
        __swift_project_value_buffer(v41, qword_27F93CFD8);
        v42 = v127;
        v40(v127, v39, v38);

        v43 = sub_258532A2C();
        v44 = sub_2585338CC();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = v11;
          v46 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v137 = v128;
          *v46 = 136315650;
          v129 = v40;
          v47 = sub_2584E1FC0();
          v49 = v48;

          v50 = sub_2584713B0(v47, v49, &v137);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2080;
          v136 = sub_258532C0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
          v51 = sub_25853347C();
          v53 = sub_2584713B0(v51, v52, &v137);

          *(v46 + 14) = v53;
          *(v46 + 22) = 2112;
          sub_2584E260C();
          swift_allocError();
          v54 = v129;
          (v129)(v55, v42, v135);
          v56 = _swift_stdlib_bridgeErrorToNSError();
          v57 = v45[1];
          (v57)(v42, v135);
          *(v46 + 24) = v56;
          v58 = v125;
          *v125 = v56;
          _os_log_impl(&dword_25845E000, v43, v44, "%s connection=%s waiting error:%@, failing", v46, 0x20u);
          sub_258465168(v58, &qword_27F92FBC0, &qword_258537930);
          v59 = v58;
          v38 = v135;
          MEMORY[0x259C82900](v59, -1, -1);
          v60 = v128;
          swift_arrayDestroy();
          MEMORY[0x259C82900](v60, -1, -1);
          MEMORY[0x259C82900](v46, -1, -1);

          v61 = v54;
        }

        else
        {

          v57 = v11[1];
          (v57)(v42, v38);
          v61 = v40;
        }

        sub_2584E260C();
        v120 = swift_allocError();
        v121 = v134;
        (v61)(v122, v134, v38);
        *v131 = v120;
        swift_storeEnumTagMultiPayload();
        sub_2585336EC();
        v123 = v132;
        sub_2585336CC();

        (*(v133 + 8))(v123, v126);
        return (v57)(v121, v38);
      }
    }

    else
    {
      (v11[1])(v23, v38);
    }

    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v87 = sub_258532A4C();
    __swift_project_value_buffer(v87, qword_27F93CFD8);
    v40(v18, v39, v38);

    v88 = sub_258532A2C();
    v89 = v39;
    v90 = sub_2585338EC();

    if (os_log_type_enabled(v88, v90))
    {
      v91 = swift_slowAlloc();
      v132 = v11;
      v92 = v91;
      v131 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v137 = v133;
      *v92 = 136315650;
      v93 = sub_2584E1FC0();
      v129 = v40;
      v94 = v93;
      v96 = v95;

      v97 = sub_2584713B0(v94, v96, &v137);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2080;
      v136 = sub_258532C0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
      v98 = sub_25853347C();
      v100 = sub_2584713B0(v98, v99, &v137);

      *(v92 + 14) = v100;
      *(v92 + 22) = 2112;
      sub_2584E260C();
      swift_allocError();
      (v129)(v101, v18, v38);
      v102 = _swift_stdlib_bridgeErrorToNSError();
      v103 = v132[1];
      v103(v18, v38);
      *(v92 + 24) = v102;
      v104 = v131;
      *v131 = v102;
      _os_log_impl(&dword_25845E000, v88, v90, "%s connection=%s waiting error:%@", v92, 0x20u);
      sub_258465168(v104, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v104, -1, -1);
      v105 = v133;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v105, -1, -1);
      MEMORY[0x259C82900](v92, -1, -1);

      return (v103)(v134, v38);
    }

    else
    {

      v115 = v11[1];
      (v115)(v18, v38);
      return (v115)(v89, v38);
    }
  }

  else if (v37 == *MEMORY[0x277CD8DE0])
  {
    v126 = v30;
    (*(v33 + 96))(v35, v32);
    v62 = v11;
    v63 = v129;
    v64 = v135;
    v11[4](v129, v35, v135);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v65 = sub_258532A4C();
    __swift_project_value_buffer(v65, qword_27F93CFD8);
    v66 = v11[2];
    v67 = v128;
    v66(v128, v63, v64);

    v68 = sub_258532A2C();
    v69 = sub_2585338CC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = v134;
      *v70 = 136315650;
      LODWORD(v125) = v69;
      v71 = v67;
      v72 = sub_2584E1FC0();
      v74 = v73;

      v75 = sub_2584713B0(v72, v74, &v137);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v136 = sub_258532C0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
      v76 = sub_25853347C();
      v78 = sub_2584713B0(v76, v77, &v137);

      *(v70 + 14) = v78;
      *(v70 + 22) = 2112;
      sub_2584E260C();
      swift_allocError();
      v79 = v71;
      v66(v80, v71, v135);
      v81 = _swift_stdlib_bridgeErrorToNSError();
      v82 = v62[1];
      v83 = v66;
      (v82)(v79, v135);
      *(v70 + 24) = v81;
      v84 = v127;
      *v127 = v81;
      _os_log_impl(&dword_25845E000, v68, v125, "%s connection=%s failed error:%@", v70, 0x20u);
      sub_258465168(v84, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v84, -1, -1);
      v85 = v134;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v85, -1, -1);
      v86 = v70;
      v64 = v135;
      MEMORY[0x259C82900](v86, -1, -1);
    }

    else
    {

      v82 = v11[1];
      v83 = v66;
      (v82)(v67, v64);
    }

    sub_2584E260C();
    v116 = swift_allocError();
    v117 = v129;
    v83(v118, v129, v64);
    *v131 = v116;
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    v119 = v132;
    sub_2585336CC();

    (*(v133 + 8))(v119, v126);
    return (v82)(v117, v64);
  }

  else if (v37 == *MEMORY[0x277CD8DD0])
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v106 = sub_258532A4C();
    __swift_project_value_buffer(v106, qword_27F93CFD8);

    v107 = sub_258532A2C();
    v108 = sub_2585338BC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v137 = v110;
      *v109 = 136315138;
      v111 = sub_2584E1FC0();
      v113 = v112;

      v114 = sub_2584713B0(v111, v113, &v137);

      *(v109 + 4) = v114;
      _os_log_impl(&dword_25845E000, v107, v108, "%s connection ready", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      MEMORY[0x259C82900](v110, -1, -1);
      MEMORY[0x259C82900](v109, -1, -1);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    v124 = v132;
    sub_2585336CC();

    return (*(v133 + 8))(v124, v30);
  }

  else
  {

    return (*(v33 + 8))(v35, v32);
  }
}

uint64_t sub_2584DD36C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_258532F8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258532FBC();
  sub_258532F7C();
  v7 = sub_258532E9C();

  if (!v7)
  {
    goto LABEL_8;
  }

  sub_258532FAC();
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    v14 = v2[6];
    v17[0] = v2[5];
    v17[1] = v14;
    v17[2] = v2[7];
    type metadata accessor for NetworkBackedControlConnection.Errors(0, v17);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 9;
    return swift_willThrow();
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v8 = sub_258532A4C();
  __swift_project_value_buffer(v8, qword_27F93CFD8);

  v9 = sub_258532A2C();
  v10 = sub_2585338BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = v4;
    v12 = v11;
    *v11 = 134217984;
    *(v11 + 4) = v1[15];

    _os_log_impl(&dword_25845E000, v9, v10, "Setting QUIC keep-alive time to %ld seconds", v12, 0xCu);
    v13 = v12;
    v4 = v18;
    MEMORY[0x259C82900](v13, -1, -1);
  }

  else
  {
  }

  *v6 = v1[15];
  (*(v4 + 104))(v6, *MEMORY[0x277CD8EA0], v3);
  sub_258532F9C();
}

void *sub_2584DD644()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[16];
  if (!v3)
  {
    v11 = v1[6];
    v18 = v1[5];
    v19 = v11;
    v20 = v1[7];
    type metadata accessor for NetworkBackedControlConnection.Errors(0, &v18);
    swift_getWitnessTable();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
    return v0;
  }

  result = sub_258532C0C();
  if (result)
  {
    v15 = sub_258532EAC();
    v21 = v3;
    v5 = *(v2 + 10);
    v6 = *(v2 + 12);
    v7 = *(v2 + 13);
    v8 = sub_258532F6C();
    v17[0] = sub_25853313C();
    v17[1] = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v16[0] = MEMORY[0x277CD8F48];
    v16[1] = MEMORY[0x277CD8F50];
    *&v18 = 2;
    *(&v18 + 1) = v8;
    *&v19 = v17;
    *(&v19 + 1) = WitnessTable;
    *&v20 = v16;
    sub_258532C6C();
    swift_getWitnessTable();
    sub_258532FFC();
    v0 = v15;
    v10 = sub_258532E5C();
    if (v10)
    {
      v0 = v10;
    }

    else
    {
      v13 = *(v2 + 11);
      *&v18 = v5;
      *(&v18 + 1) = v13;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      v20 = v2[7];
      type metadata accessor for NetworkBackedControlConnection.Errors(0, &v18);
      swift_getWitnessTable();
      swift_allocError();
      *v14 = 6;
      swift_willThrow();
    }

    return v0;
  }

  __break(1u);
  return result;
}

void sub_2584DD8A4()
{
  if (!*(v0 + 176))
  {
    sub_2584DD644();
    if (!v1)
    {
      sub_258532F6C();
      sub_25853313C();
      sub_25853318C();
      swift_getWitnessTable();
      sub_258532C6C();

      v2 = sub_258532C2C();
      *(v0 + 176) = v2;

      sub_2584DD9E4(v2);
    }
  }
}

uint64_t sub_2584DD9E4(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_25853368C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v3[6];
  v12[0] = v3[5];
  v12[1] = v8;
  v12[2] = v3[7];
  type metadata accessor for NetworkBackedControlConnection(255, v12);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = WitnessTable;
  v10[4] = a1;
  v10[5] = v1;
  swift_retain_n();

  *(v1 + *(*v1 + 224)) = sub_258476C88(0, 0, v6, &unk_25853C210, v10);
}

uint64_t sub_2584DDB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 136) = *a4;
  v7 = *a5;
  v8 = *(*a5 + 80);
  *(v5 + 144) = v8;
  v9 = v7[11];
  *(v5 + 152) = v9;
  v10 = v7[12];
  *(v5 + 160) = v10;
  v11 = v7[13];
  *(v5 + 168) = v11;
  v12 = v7[14];
  *(v5 + 176) = v12;
  v13 = v7[15];
  *(v5 + 184) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(v5 + 32) = v15;
  *(v5 + 16) = v14;
  *(v5 + 48) = v12;
  *(v5 + 56) = v13;
  *(v5 + 192) = type metadata accessor for ControlConnectionEvent(0, v5 + 16);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v16 = sub_2585337CC();
  *(v5 + 216) = v16;
  *(v5 + 224) = *(v16 - 8);
  *(v5 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930F90, &qword_25853C218);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *(v5 + 240) = TupleTypeMetadata3;
  *(v5 + 248) = *(TupleTypeMetadata3 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  sub_258533A0C();
  *(v5 + 280) = swift_task_alloc();
  v18 = sub_25853384C();
  *(v5 + 288) = v18;
  *(v5 + 296) = *(v18 - 8);
  *(v5 + 304) = swift_task_alloc();
  v19 = sub_25853383C();
  *(v5 + 312) = v19;
  *(v5 + 320) = *(v19 - 8);
  *(v5 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DDF50, a5, 0);
}

uint64_t sub_2584DDF50()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 128);
  swift_getWitnessTable();
  v12 = *(v0 + 160);
  v13 = *(v0 + 144);
  v11 = *(v0 + 176);
  sub_258532C5C();
  sub_2585336FC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 64) = v13;
  *(v0 + 80) = v12;
  *(v0 + 96) = v11;
  type metadata accessor for NetworkBackedControlConnection(255, v0 + 64);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 336) = WitnessTable;
  *(v0 + 344) = *(*v4 + 192);
  v6 = *(v0 + 128);
  v7 = swift_task_alloc();
  *(v0 + 352) = v7;
  *v7 = v0;
  v7[1] = sub_2584DE0F0;
  v8 = *(v0 + 312);
  v9 = *(v0 + 280);

  return MEMORY[0x2822005A8](v9, v6, WitnessTable, v8, v0 + 112);
}

uint64_t sub_2584DE0F0()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_2584DE784;
  }

  else
  {
    v4 = sub_2584DE204;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584DE204()
{
  v56 = v0;
  v1 = v0[35];
  v2 = v0[30];
  if ((*(v0[31] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
LABEL_5:

    v12 = v0[1];

    return v12();
  }

  v3 = v0[34];
  v4 = *(v2 + 48);
  v5 = *(v1 + v4);
  v6 = *(v2 + 64);
  v7 = *(v1 + v6);
  v8 = *(*(v0[18] - 8) + 32);
  v8(v3, v1);
  *(v3 + v4) = v5;
  *(v3 + v6) = v7;
  if (sub_25853376C())
  {
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];
    (*(v0[31] + 8))(v0[34], v0[30]);
    (*(v10 + 8))(v9, v11);
    goto LABEL_5;
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v53 = v8;
  v14 = v0[33];
  v15 = v0[34];
  v16 = v0[30];
  v17 = v0[31];
  v18 = sub_258532A4C();
  __swift_project_value_buffer(v18, qword_27F93CFD8);
  v54 = *(v17 + 16);
  v54(v14, v15, v16);

  v19 = sub_258532A2C();
  v20 = sub_2585338BC();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[33];
  if (v21)
  {
    v23 = v0[31];
    v24 = v0[32];
    v25 = v0[30];
    v50 = v20;
    v26 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v26 = 136315394;
    v27 = sub_2584E1FC0();
    v29 = v28;

    v30 = sub_2584713B0(v27, v29, &v55);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v54(v24, v22, v25);

    v31 = sub_25853347C();
    v33 = v32;
    v52 = *(v23 + 8);
    v52(v22, v25);
    v34 = sub_2584713B0(v31, v33, &v55);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_25845E000, v19, v50, "%s received %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v49, -1, -1);
    MEMORY[0x259C82900](v26, -1, -1);
  }

  else
  {
    v35 = v0[30];
    v36 = v0[31];

    v52 = *(v36 + 8);
    v52(v22, v35);
  }

  v37 = v0[34];
  v38 = v0[32];
  v40 = v0[29];
  v39 = v0[30];
  v41 = v0[28];
  v51 = v0[27];
  v42 = v0[25];
  v43 = v0[18];
  v54(v38, v37, v39);

  v53(v42, v38, v43);
  swift_storeEnumTagMultiPayload();
  sub_25853380C();
  sub_2585337EC();
  (*(v41 + 8))(v40, v51);
  v52(v37, v39);
  v44 = v0[42];
  v45 = v0[16];
  v46 = swift_task_alloc();
  v0[44] = v46;
  *v46 = v0;
  v46[1] = sub_2584DE0F0;
  v47 = v0[39];
  v48 = v0[35];

  return MEMORY[0x2822005A8](v48, v45, v44, v47, v0 + 14);
}

uint64_t sub_2584DE784()
{
  v18 = v0;
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[14];
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFD8);

  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    v9 = sub_2584E1FC0();
    v11 = v10;

    v12 = sub_2584713B0(v9, v11, &v17);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&dword_25845E000, v4, v5, "%s connection failed error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  else
  {
  }

  sub_2584E10BC(v1);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2584DEA2C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = sub_25853368C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v1[6];
  v10[0] = v1[5];
  v10[1] = v6;
  v10[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnection(255, v10);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = WitnessTable;
  v8[4] = v0;
  swift_retain_n();
  *(v0 + *(*v0 + 216)) = sub_2585135CC(0, 0, v4, &unk_25853C200, v8);
}

uint64_t sub_2584DEBC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 160) = a4;
  v6 = *a4;
  v7 = sub_25853321C();
  *(v4 + 168) = v7;
  *(v4 + 176) = *(v7 - 8);
  *(v4 + 184) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  *(v4 + 192) = v8;
  *(v4 + 200) = *(v8 - 8);
  *(v4 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v9 = v6[10];
  *(v4 + 232) = v9;
  v10 = v6[11];
  *(v4 + 240) = v10;
  v11 = v6[12];
  *(v4 + 248) = v11;
  v12 = v6[13];
  *(v4 + 256) = v12;
  v13 = v6[14];
  *(v4 + 264) = v13;
  v14 = v6[15];
  *(v4 + 272) = v14;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  *(v4 + 32) = v16;
  *(v4 + 16) = v15;
  *(v4 + 48) = v13;
  *(v4 + 56) = v14;
  v17 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(0, v4 + 16);
  *(v4 + 280) = v17;
  *(v4 + 288) = *(v17 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  sub_258533A0C();
  *(v4 + 312) = swift_task_alloc();
  v18 = sub_25853371C();
  *(v4 + 320) = v18;
  *(v4 + 328) = *(v18 - 8);
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584DEEEC, a4, 0);
}

uint64_t sub_2584DEEEC()
{
  v1 = *(v0 + 160);
  sub_25853372C();
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);
  v8 = *(v0 + 264);
  sub_2585336FC();
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  type metadata accessor for NetworkBackedControlConnection(255, v0 + 64);
  *(v0 + 344) = swift_getWitnessTable();
  *(v0 + 352) = *(*v1 + 240);
  swift_beginAccess();
  v2 = *(v0 + 344);
  v3 = *(v0 + 160);
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_2584DF05C;
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);

  return MEMORY[0x2822003E8](v5, v3, v2, v6);
}

uint64_t sub_2584DF05C()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_2584DF16C, v1, 0);
}

uint64_t sub_2584DF16C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 304), v1, v2);
  if (sub_25853376C())
  {
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    goto LABEL_4;
  }

  (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 192);
      v19 = *(v0 + 200);
      sub_2584AC3B8(*(v0 + 160) + *(v0 + 352), v17, &unk_27F930DB0, &qword_258536390);
      v20 = (*(v19 + 48))(v17, 1, v18);
      v21 = *(v0 + 304);
      v22 = *(v0 + 280);
      v23 = *(v0 + 288);
      v24 = *(v0 + 224);
      if (v20)
      {
        (*(v23 + 8))(*(v0 + 304), *(v0 + 280));
        sub_258465168(v24, &unk_27F930DB0, &qword_258536390);
      }

      else
      {
        v26 = *(v0 + 200);
        v25 = *(v0 + 208);
        v27 = *(v0 + 192);
        (*(v26 + 16))(v25, *(v0 + 224), v27);
        sub_258465168(v24, &unk_27F930DB0, &qword_258536390);
        sub_25853364C();
        (*(v26 + 8))(v25, v27);
        (*(v23 + 8))(v21, v22);
      }

      v28 = *(v0 + 352);
      v29 = *(v0 + 216);
      v30 = *(v0 + 160);
      (*(*(v0 + 200) + 56))(v29, 1, 1, *(v0 + 192));
      swift_beginAccess();
      sub_258472790(v29, v30 + v28);
      swift_endAccess();
      goto LABEL_18;
    }

    v7 = *(v0 + 304);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    sub_2584E04B4(**(v0 + 296));
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 280);
      v13 = *(v0 + 288);
      v15 = *(v0 + 176);
      v14 = *(v0 + 184);
      v16 = *(v0 + 168);
      (*(v15 + 32))(v14, *(v0 + 296), v16);
      sub_2584DF5B0();
      (*(v15 + 8))(v14, v16);
      (*(v13 + 8))(v11, v12);
      goto LABEL_18;
    }

    v7 = *(v0 + 304);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v10 = **(v0 + 296);
    sub_2584E10BC(v10);
  }

  (*(v9 + 8))(v7, v8);
LABEL_18:
  v31 = *(v0 + 344);
  v32 = *(v0 + 160);
  v33 = swift_task_alloc();
  *(v0 + 360) = v33;
  *v33 = v0;
  v33[1] = sub_2584DF05C;
  v34 = *(v0 + 312);
  v35 = *(v0 + 320);

  return MEMORY[0x2822003E8](v34, v32, v31, v35);
}

void sub_2584DF5B0()
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  MEMORY[0x28223BE20](v69);
  v2 = &v66 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v66 - v7;
  v9 = type metadata accessor for NetworkBackedNetworkPath(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = *(v0 + 128);
  if (v18)
  {
    v67 = v6;
    v68 = &v66 - v17;
    v74[2] = v18;
    v19 = sub_258532F6C();
    v70 = v18;

    v74[0] = sub_25853313C();
    v74[1] = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v73[0] = MEMORY[0x277CD8F48];
    v73[1] = MEMORY[0x277CD8F50];
    v72[0] = 2;
    v72[1] = v19;
    v72[2] = v74;
    v72[3] = WitnessTable;
    v72[4] = v73;
    sub_258532C6C();
    swift_getWitnessTable();
    sub_25852FF2C(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_258465168(v8, &qword_27F930F88, &unk_25853C1E8);
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v21 = sub_258532A4C();
      __swift_project_value_buffer(v21, qword_27F93CFD8);
      v22 = v70;

      v23 = sub_258532A2C();
      v24 = sub_2585338CC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v72[0] = v68;
        *v25 = 136315395;

        v26 = sub_2584E1FC0();
        v28 = v27;

        v29 = sub_2584713B0(v26, v28, v72);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2081;
        v71 = v22;
        sub_25853300C();
        v30 = sub_2585339FC();
        v32 = v31;
        sub_258465168(v2, &qword_27F931450, &qword_25853C1E0);
        v33 = sub_2584713B0(v30, v32, v72);

        *(v25 + 14) = v33;
        _os_log_impl(&dword_25845E000, v23, v24, "%s Path update: %{private}s skipped", v25, 0x16u);
        v34 = v68;
        swift_arrayDestroy();
        MEMORY[0x259C82900](v34, -1, -1);
        MEMORY[0x259C82900](v25, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v35 = v68;
      sub_2584E22D8(v8, v68);
      if (*(v35 + *(v9 + 32)) == 1)
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v36 = sub_258532A4C();
        __swift_project_value_buffer(v36, qword_27F93CFD8);
        sub_2584E233C(v35, v16);

        v37 = sub_258532A2C();
        v38 = sub_2585338EC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v72[0] = v40;
          *v39 = 136315395;

          v41 = sub_2584E1FC0();
          v43 = v42;

          v44 = sub_2584713B0(v41, v43, v72);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2081;
          v45 = sub_2584F3AF4();
          v47 = v46;
          sub_2584E23A0(v16);
          v48 = sub_2584713B0(v45, v47, v72);

          *(v39 + 14) = v48;
          _os_log_impl(&dword_25845E000, v37, v38, "%s Path updated: %{private}s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v40, -1, -1);
          MEMORY[0x259C82900](v39, -1, -1);
        }

        else
        {

          sub_2584E23A0(v16);
        }

        v64 = v67;
        v65 = v68;
        sub_2584E233C(v68, v67);
        (*(v10 + 56))(v64, 0, 1, v9);
        sub_2584D7A88(v64);

        v63 = v65;
      }

      else
      {
        if (qword_27F92F8D8 != -1)
        {
          swift_once();
        }

        v49 = sub_258532A4C();
        __swift_project_value_buffer(v49, qword_27F93CFD8);
        sub_2584E233C(v35, v13);

        v50 = sub_258532A2C();
        v51 = sub_2585338CC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = v35;
          v54 = swift_slowAlloc();
          v72[0] = v54;
          *v52 = 136315395;

          v55 = sub_2584E1FC0();
          v57 = v56;

          v58 = sub_2584713B0(v55, v57, v72);

          *(v52 + 4) = v58;
          *(v52 + 12) = 2081;
          v59 = sub_2584F3AF4();
          v61 = v60;
          sub_2584E23A0(v13);
          v62 = sub_2584713B0(v59, v61, v72);

          *(v52 + 14) = v62;
          _os_log_impl(&dword_25845E000, v50, v51, "%s Path update: %{private}s skipped as not satisfied", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C82900](v54, -1, -1);
          MEMORY[0x259C82900](v52, -1, -1);

          v63 = v53;
        }

        else
        {

          sub_2584E23A0(v13);
          v63 = v35;
        }
      }

      sub_2584E23A0(v63);
    }
  }
}

uint64_t sub_2584DFE70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = v0[16];
  if (v3)
  {
    v4 = v0;

    result = sub_258532C0C();
    if (result)
    {
      sub_258532BBC();
      v25 = v3;
      v6 = v2[10];
      v7 = v2[12];
      v8 = v2[13];
      v9 = sub_258532F6C();
      v21[0] = sub_25853313C();
      v21[1] = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v20[0] = MEMORY[0x277CD8F48];
      v20[1] = MEMORY[0x277CD8F50];
      *&v22 = 2;
      *(&v22 + 1) = v9;
      *&v23 = v21;
      *(&v23 + 1) = WitnessTable;
      *&v24 = v20;
      sub_258532C6C();
      swift_getWitnessTable();
      sub_258532FFC();
      v11 = sub_258532B2C();
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        v14[2] = v6;
        v14[3] = v2[11];
        v14[4] = v7;
        v14[5] = v8;
        v14[6] = v2[14];
        v14[7] = v2[15];
        v14[8] = v13;

        sub_258532B4C();

        sub_2584E228C();
        v15 = sub_25853395C();
        sub_258532B8C();

        *(v4 + *(*v4 + 232)) = v12;
      }

      else
      {
        v18 = v2[11];
        *&v22 = v6;
        *(&v22 + 1) = v18;
        *&v23 = v7;
        *(&v23 + 1) = v8;
        v24 = *(v2 + 7);
        type metadata accessor for NetworkBackedControlConnection.Errors(0, &v22);
        swift_getWitnessTable();
        swift_allocError();
        *v19 = 7;
        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = v1[6];
    v22 = v1[5];
    v23 = v16;
    v24 = v1[7];
    type metadata accessor for NetworkBackedControlConnection.Errors(0, &v22);
    swift_getWitnessTable();
    swift_allocError();
    *v17 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2584E01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[0] = a3;
  v34[1] = a4;
  v34[2] = a5;
  v34[3] = a6;
  v34[4] = a7;
  v34[5] = a8;
  v9 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(0, v34);
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - v10);
  v12 = sub_2585336AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v32 = v15;
    v17 = sub_258532A4C();
    __swift_project_value_buffer(v17, qword_27F93CFD8);

    v18 = sub_258532A2C();
    v19 = sub_2585338EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v13;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;

      v23 = sub_2584E1FC0();
      v31 = v12;
      v24 = a1;
      v26 = v25;

      v27 = sub_2584713B0(v23, v26, &v33);
      a1 = v24;
      v12 = v31;

      *(v21 + 4) = v27;
      _os_log_impl(&dword_25845E000, v18, v19, "%s received peeled connection", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x259C82900](v22, -1, -1);
      v28 = v21;
      v13 = v30;
      MEMORY[0x259C82900](v28, -1, -1);
    }

    else
    {
    }

    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();

    v29 = v32;
    sub_2585336CC();

    return (*(v13 + 8))(v29, v12);
  }

  return result;
}

uint64_t sub_2584E04B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v39 = *(v4 + 112);
  v40 = v5;
  v45 = v5;
  *&v46 = v6;
  *(&v46 + 1) = v7;
  v47 = v39;
  v8 = type metadata accessor for ControlConnectionEvent(0, &v45);
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v11 = sub_2585337CC();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = *(v4 + 248);
  if (*(v2 + v16))
  {
    if (v2[22])
    {
      v37 = v13;
      v38 = v12;
      v17 = sub_258532F6C();
      v43 = sub_25853313C();
      v44 = sub_25853318C();
      WitnessTable = swift_getWitnessTable();
      v41 = MEMORY[0x277CD8F48];
      v42 = MEMORY[0x277CD8F50];
      v45.i64[0] = 2;
      v45.i64[1] = v17;
      *&v46 = &v43;
      *(&v46 + 1) = WitnessTable;
      *&v47 = &v41;
      sub_258532C6C();

      sub_258532C2C();
      v45 = vdupq_laneq_s64(v40, 1);
      v46 = v39;
      v47 = v39;
      v19 = type metadata accessor for NetworkBackedControlConnection(0, &v45);
      v45 = v40;
      *&v46 = v6;
      *(&v46 + 1) = v7;
      v47 = v39;
      *(&v46 + 1) = type metadata accessor for NetworkBackedControlConnection(0, &v45);
      *&v47 = swift_getWitnessTable();
      v45.i64[0] = v2;
      v20 = swift_allocObject();

      sub_2584D7BF8(v21, &v45, 1);
      v10[3] = v19;
      v10[4] = swift_getWitnessTable();
      *v10 = v20;
      swift_storeEnumTagMultiPayload();
      sub_25853380C();

      sub_2585337EC();

      return (*(v37 + 8))(v15, v38);
    }

    v34 = sub_258532F6C();
    v43 = sub_25853313C();
    v44 = sub_25853318C();
    v35 = swift_getWitnessTable();
    v41 = MEMORY[0x277CD8F48];
    v42 = MEMORY[0x277CD8F50];
    v45.i64[0] = 2;
    v45.i64[1] = v34;
    *&v46 = &v43;
    *(&v46 + 1) = v35;
    *&v47 = &v41;
    sub_258532C6C();

    v36 = sub_258532C2C();
    v2[22] = v36;

    sub_2584DD9E4(v36);
  }

  else
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v23 = sub_258532A4C();
    __swift_project_value_buffer(v23, qword_27F93CFD8);

    v24 = sub_258532A2C();
    v25 = sub_2585338EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = a1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45.i64[0] = v28;
      *v27 = 136315138;
      v29 = sub_2584E1FC0();
      v31 = v30;

      v32 = sub_2584713B0(v29, v31, v45.i64);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_25845E000, v24, v25, "%s caching first peeled connection", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C82900](v28, -1, -1);
      v33 = v27;
      a1 = v26;
      MEMORY[0x259C82900](v33, -1, -1);
    }

    else
    {
    }

    *(v2 + v16) = a1;
  }
}

uint64_t sub_2584E0A68(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v43 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  v14 = v4[10];
  v15 = v4[11];
  v16 = v4[12];
  v17 = v4[13];
  v18 = v4[14];
  v19 = v4[15];
  v36 = v16;
  v37 = v14;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v35 = v17;
  v48 = v18;
  v49 = v19;
  type metadata accessor for NetworkBackedControlConnection.Errors(0, &v44);
  if (swift_dynamicCast() && v40 == 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = a1;
    v20 = a1;
  }

  v44 = v37;
  v45 = v15;
  v46 = v36;
  v47 = v35;
  v48 = v18;
  v49 = v19;
  type metadata accessor for ControlConnectionEvent(255, &v44);
  sub_25853380C();
  sub_2585337FC();
  v21 = *(*v2 + 240);
  swift_beginAccess();
  sub_2584AC3B8(v2 + v21, v12, &unk_27F930DB0, &qword_258536390);
  if ((*(v6 + 48))(v12, 1, v5))
  {
    sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v22 = v33;
    (*(v6 + 16))(v33, v12, v5);
    sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
    v44 = a1;
    v23 = a1;
    sub_25853363C();
    (*(v6 + 8))(v22, v5);
  }

  v24 = v34;
  (*(v6 + 56))(v34, 1, 1, v5);
  swift_beginAccess();
  sub_258472790(v24, v2 + v21);
  result = swift_endAccess();
  v26 = *v2;
  if (*(v2 + *(*v2 + 224)))
  {

    sub_25853374C();

    v26 = *v2;
  }

  if (*(v2 + *(v26 + 216)))
  {

    sub_25853374C();

    v26 = *v2;
  }

  if (*(v2 + *(v26 + 232)))
  {

    sub_258532BAC();
  }

  v27 = MEMORY[0x277CD8F48];
  v28 = MEMORY[0x277CD8F50];
  if (v2[16])
  {
    v42 = v2[16];
    v29 = sub_258532F6C();
    v40 = sub_25853313C();
    v41 = sub_25853318C();
    WitnessTable = swift_getWitnessTable();
    v38 = v27;
    v39 = v28;
    v44 = 2;
    v45 = v29;
    v46 = &v40;
    v47 = WitnessTable;
    v48 = &v38;
    sub_258532C6C();
    swift_getWitnessTable();
    result = sub_25853302C();
  }

  if (v2[22])
  {
    v42 = v2[22];
    v31 = sub_258532F6C();
    v40 = sub_25853313C();
    v41 = sub_25853318C();
    v32 = swift_getWitnessTable();
    v38 = v27;
    v39 = v28;
    v44 = 2;
    v45 = v31;
    v46 = &v40;
    v47 = v32;
    v48 = &v38;
    sub_258532C6C();
    swift_getWitnessTable();
    result = sub_25853302C();
  }

  if (*(v2 + *(*v2 + 248)))
  {

    sub_258532E8C();
  }

  return result;
}

uint64_t sub_2584E10BC(void *a1)
{
  v2 = v1;
  result = sub_2584D6F10(v1[112], *(*v1 + 80), *(*v1 + 88), *(*v1 + 96), *(*v1 + 104), *(*v1 + 112), *(*v1 + 120));
  if ((result & 1) == 0)
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CFD8);

    v6 = a1;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v9 = 136315394;
      v12 = sub_2584E1FC0();
      v14 = v13;

      v15 = sub_2584713B0(v12, v14, &v18);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v17;
      *v10 = v17;
      _os_log_impl(&dword_25845E000, v7, v8, "%s interrupted error:%@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {
    }

    v2[112] = 4;

    return sub_2584E0A68(a1);
  }

  return result;
}

uint64_t sub_2584E1378()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = v1[11];
  v3[3] = v1[14];
  v3[4] = v1[15];
  v3[5] = v2;
  sub_258532BEC();
}

uint64_t sub_2584E1468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a1 + *MEMORY[0x277CD8B80] + 8);
  v8 = *(v7 + 24);
  v18[0] = *(v7 + 16);
  v18[1] = a4;
  v19 = v8;
  v20 = a5;
  v21 = a6;
  v9 = type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(0, v18);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = sub_2585336AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = sub_25853321C();
    (*(*(v17 - 8) + 16))(v11, a2, v17);
    swift_storeEnumTagMultiPayload();
    sub_2585336EC();
    sub_2585336CC();

    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

char *sub_2584E1680()
{
  v1 = *v0;

  sub_258465168(v0 + 136, &qword_27F9304F8, &qword_258538138);

  v2 = *(*v0 + 184);
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v17 = v1[10];
  v16 = v17;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  type metadata accessor for ControlConnectionEvent(255, &v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v8 = sub_25853384C();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = *(*v0 + 192);
  v10 = sub_25853380C();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 200);
  v17 = v16;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  type metadata accessor for NetworkBackedControlConnection.BackingConnectionEvent(255, &v17);
  v12 = sub_25853372C();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(*v0 + 208);
  v14 = sub_2585336EC();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  sub_258465168(v0 + *(*v0 + 240), &unk_27F930DB0, &qword_258536390);

  sub_258465168(v0 + *(*v0 + 256), &qword_27F930F88, &unk_25853C1E8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584E19EC()
{
  sub_2584E1680();

  return MEMORY[0x282200960](v0);
}

void sub_2584E1A48(uint64_t a1)
{
  if (!qword_27F930E70[0])
  {
    type metadata accessor for NetworkBackedNetworkPath(255);
    v1 = sub_258533A0C();
    if (!v2)
    {
      atomic_store(v1, qword_27F930E70);
    }
  }
}

uint64_t sub_2584E1AC0(uint64_t a1)
{
  result = sub_2584E1B48();
  if (v2 <= 0x3F)
  {
    result = sub_25853321C();
    if (v3 <= 0x3F)
    {
      result = sub_258532EAC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2584E1B48()
{
  result = qword_27F930F78;
  if (!qword_27F930F78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F930F78);
  }

  return result;
}

uint64_t sub_2584E1BC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2584D87C8(a1);
}

uint64_t sub_2584E1C64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584D84E4();
}

uint64_t sub_2584E1CF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2584D9AF0(a1);
}

uint64_t sub_2584E1D8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2584DA4F4(a1);
}

uint64_t sub_2584E1E28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2584E1E48, v3, 0);
}

uint64_t sub_2584E1E48()
{
  sub_2584DA25C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584E1EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_2584DB084(a1);
}

uint64_t sub_2584E1F60@<X0>(_OWORD *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = a1[6];
  v6[0] = a1[5];
  v6[1] = v4;
  v6[2] = a1[7];
  type metadata accessor for NetworkBackedControlConnection(0, v6);
  result = sub_258533B9C();
  *a3 = result;
  return result;
}

uint64_t sub_2584E1FC0()
{
  v1 = *v0;
  *&v6[0] = 0;
  *(&v6[0] + 1) = 0xE000000000000000;
  sub_258533B8C();
  v7 = v6[0];
  MEMORY[0x259C81500](0xD00000000000001FLL, 0x8000000258540950);
  v2 = v1[6];
  v6[0] = v1[5];
  v6[1] = v2;
  v6[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnection(0, v6);
  swift_getWitnessTable();
  *&v6[0] = sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](0x6C6565507369205DLL, 0xED00003D656C6261);
  if (v0[16])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[16])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x259C81500](v3, v4);

  return v7;
}

uint64_t sub_2584E2170(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E21AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584E21E4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E2240()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2584E228C()
{
  result = qword_27F930F80;
  if (!qword_27F930F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F930F80);
  }

  return result;
}

uint64_t sub_2584E22D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E233C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E23A0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkBackedNetworkPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584E23FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2584E243C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_2584DEBC0(a1, v4, v5, v6);
}

uint64_t sub_2584E24F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E2538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258464F5C;

  return sub_2584DDB8C(a1, v4, v5, v7, v6);
}

unint64_t sub_2584E260C()
{
  result = qword_27F9313B0;
  if (!qword_27F9313B0)
  {
    sub_25853322C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313B0);
  }

  return result;
}

uint64_t sub_2584E2664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930F88, &unk_25853C1E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584E26D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2584E2738(uint64_t a1)
{
  v19 = &unk_25853C378;
  v20 = &unk_25853C390;
  v21 = &unk_25853C3A8;
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v15 = v2;
  v16 = v3;
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v4 = sub_25853384C();
  if (v5 <= 0x3F)
  {
    v22 = *(v4 - 8) + 64;
    v6 = sub_25853380C();
    if (v7 <= 0x3F)
    {
      v23 = *(v6 - 8) + 64;
      v24 = &unk_25853C3C8;
      sub_258472254(319);
      if (v9 <= 0x3F)
      {
        v25 = *(v8 - 8) + 64;
        v26 = &unk_25853C3C8;
        v27 = &unk_25853C3C8;
        v15 = v2;
        v16 = v3;
        v10 = *(a1 + 112);
        v17 = *(a1 + 96);
        v18 = v10;
        type metadata accessor for NetworkBackedControlConnectionListener.Event(255, &v15);
        v11 = sub_25853372C();
        if (v12 <= 0x3F)
        {
          v28 = *(v11 - 8) + 64;
          v13 = sub_2585336EC();
          if (v14 <= 0x3F)
          {
            v29 = *(v13 - 8) + 64;
            v30 = &unk_25853C3E8;
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_2584E299C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  type metadata accessor for NetworkBackedControlConnectionListener.State(0, v9);
  LOBYTE(v9[0]) = a1;
  swift_getWitnessTable();
  return sub_2585333EC() & 1;
}

uint64_t sub_2584E2A74(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = *v2;
  return MEMORY[0x2822009F8](sub_2584E2AC0, v2, 0);
}

uint64_t sub_2584E2AC0()
{
  v28 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(*v2 + 216);
  *(v0 + 160) = v3;
  v4 = *(v2 + v3);
  v5 = v1[10];
  *(v0 + 168) = v5;
  v6 = v1[11];
  *(v0 + 176) = v6;
  v7 = v1[12];
  *(v0 + 184) = v7;
  v8 = v1[13];
  *(v0 + 192) = v8;
  v9 = v1[14];
  *(v0 + 200) = v9;
  v10 = v1[15];
  *(v0 + 208) = v10;
  if (v4)
  {
    *&v11 = v5;
    *(&v11 + 1) = v6;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    *(v0 + 32) = v12;
    *(v0 + 16) = v11;
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, v0 + 16);
    swift_getWitnessTable();
    v13 = swift_allocError();
    *v14 = 1;
    swift_willThrow();
    *(v0 + 240) = v13;
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = sub_2584E332C;

    return sub_2584E5F10(v13);
  }

  else
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v17 = sub_258532A4C();
    *(v0 + 216) = __swift_project_value_buffer(v17, qword_27F93CFC0);

    v18 = sub_258532A2C();
    v19 = sub_2585338EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;

      v22 = sub_2584E6FBC();
      v24 = v23;

      v25 = sub_2584713B0(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_25845E000, v18, v19, "%s activating", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C82900](v21, -1, -1);
      MEMORY[0x259C82900](v20, -1, -1);
    }

    else
    {
    }

    *(v2 + v3) = 1;
    v26 = swift_task_alloc();
    *(v0 + 224) = v26;
    *v26 = v0;
    v26[1] = sub_2584E2E10;

    return sub_2584E4E64();
  }
}

uint64_t sub_2584E2E10()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2[30] = v0;
    v4 = swift_task_alloc();
    v2[31] = v4;
    *v4 = v3;
    v4[1] = sub_2584E332C;

    return sub_2584E5F10(v0);
  }

  else
  {
    v6 = v2[18];

    return MEMORY[0x2822009F8](sub_2584E2F98, v6, 0);
  }
}

uint64_t sub_2584E2F98()
{
  v34 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  if (*(v2 + v1) == 1)
  {
    if (*(v2 + 112))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v28 = 0u;
      v29 = 0u;
LABEL_11:
      *(v2 + v1) = 2;

      v12 = sub_258532A2C();
      v13 = sub_2585338EC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v30[0] = v15;
        *v14 = 136315138;

        v16 = sub_2584E6FBC();
        v27 = v5;
        v17 = v4;
        v19 = v18;

        v20 = sub_2584713B0(v16, v19, v30);
        v4 = v17;
        v5 = v27;

        *(v14 + 4) = v20;
        _os_log_impl(&dword_25845E000, v12, v13, "%s activated", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x259C82900](v15, -1, -1);
        MEMORY[0x259C82900](v14, -1, -1);
      }

      else
      {
      }

      v22 = *(v0 + 136);
      v21 = *(v0 + 144);
      v23 = *(v0 + 128);
      v24 = *(*v21 + 152);
      *(v0 + 112) = *(v0 + 168);
      swift_getExtendedExistentialTypeMetadata_unique();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
      v25 = sub_25853384C();
      (*(*(v25 - 8) + 16))(v23, v21 + v24, v25);
      *v22 = v29;
      *(v22 + 16) = v28;
      *(v22 + 32) = v3;
      *(v22 + 40) = v4;
      *(v22 + 48) = v5;
      v26 = *(v0 + 8);

      return v26();
    }

    v9 = *(v0 + 232);
    sub_2584E61C4(v30);
    if (!v9)
    {
      v28 = v30[1];
      v29 = v30[0];
      v3 = v31;
      v4 = v32;
      v5 = v33;
      v1 = *(v0 + 160);
      v2 = *(v0 + 144);
      goto LABEL_11;
    }

    v7 = v9;
  }

  else
  {
    *(v0 + 64) = *(v0 + 168);
    v6 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 96) = v6;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, v0 + 64);
    swift_getWitnessTable();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  *(v0 + 240) = v7;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_2584E332C;

  return sub_2584E5F10(v7);
}

uint64_t sub_2584E332C()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2584E343C, v1, 0);
}

uint64_t sub_2584E343C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2584E34A8()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2584E34F0, v0, 0);
}

uint64_t sub_2584E34F0()
{
  v32 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(*v2 + 216);
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[12];
  v6 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  if ((sub_2584E299C(*(v2 + v3), v4, v5, v7, v6, v8, v9) & 1) == 0)
  {
    v28 = v9;
    v29 = v8;
    v30 = v6;
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v10 = sub_258532A4C();
    __swift_project_value_buffer(v10, qword_27F93CFC0);

    v11 = sub_258532A2C();
    v12 = sub_2585338EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v3;
      v25 = swift_slowAlloc();
      v31 = v25;
      *v13 = 136315138;

      v14 = v7;
      v15 = v4;
      v16 = sub_2584E6FBC();
      v26 = v5;
      v18 = v17;

      v19 = v16;
      v4 = v15;
      v7 = v14;
      v20 = sub_2584713B0(v19, v18, &v31);
      v5 = v26;

      *(v13 + 4) = v20;
      _os_log_impl(&dword_25845E000, v11, v12, "%s invalidating", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v3 = v27;
      MEMORY[0x259C82900](v25, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    else
    {
    }

    *(v2 + v3) = 3;
    v0[2] = v4;
    v0[3] = v5;
    v0[4] = v7;
    v0[5] = v30;
    v0[6] = v29;
    v0[7] = v28;
    type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, (v0 + 2));
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 0;
    sub_2584E6564(v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2584E379C(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_25853368C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v3[6];
  v12[0] = v3[5];
  v12[1] = v8;
  v12[2] = v3[7];
  type metadata accessor for NetworkBackedControlConnectionListener(255, v12);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = WitnessTable;
  v10[4] = a1;
  v10[5] = v1;
  swift_retain_n();

  *(v1 + *(*v1 + 184)) = sub_258476C88(0, 0, v6, &unk_25853C608, v10);
}

uint64_t sub_2584E3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v7 = *a4;
  v8 = *a5;
  v5[34] = *a5;
  v9 = *(v8 + 80);
  v5[35] = v9;
  v10 = *(v8 + 88);
  v5[36] = v10;
  v5[24] = v9;
  v5[25] = v10;
  v5[37] = swift_getExtendedExistentialTypeMetadata_unique();
  v5[38] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v11 = sub_2585337CC();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();
  v12 = *(v7 + *MEMORY[0x277CD9068] + 8);
  v5[26] = sub_25853313C();
  v5[27] = sub_25853318C();
  WitnessTable = swift_getWitnessTable();
  v5[28] = MEMORY[0x277CD8F48];
  v5[29] = MEMORY[0x277CD8F50];
  v5[14] = 2;
  v5[15] = v12;
  v5[16] = v5 + 26;
  v5[17] = WitnessTable;
  v5[18] = v5 + 28;
  sub_258532C6C();
  v14 = sub_25853383C();
  v5[42] = v14;
  v5[43] = *(v14 - 8);
  v5[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E3BE4, a5, 0);
}

uint64_t sub_2584E3BE4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v14 = *(v0 + 280);
  sub_25853327C();
  sub_25853329C();

  v3 = v1[12];
  *(v0 + 360) = v3;
  v4 = v1[13];
  *(v0 + 368) = v4;
  v5 = v1[14];
  *(v0 + 376) = v5;
  v6 = v1[15];
  *(v0 + 16) = v14;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  *(v0 + 384) = v6;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  type metadata accessor for NetworkBackedControlConnectionListener(255, v0 + 16);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 392) = WitnessTable;
  *(v0 + 400) = *(*v2 + 160);
  v10 = *(v0 + 264);
  v11 = swift_task_alloc();
  *(v0 + 408) = v11;
  *v11 = v0;
  v11[1] = sub_2584E3D58;
  v12 = *(v0 + 336);

  return MEMORY[0x2822005A8](v0 + 240, v10, WitnessTable, v12, v0 + 248);
}

uint64_t sub_2584E3D58()
{
  v2 = *v1;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_2584E40F4;
  }

  else
  {
    v4 = sub_2584E3E84;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584E3E84(uint64_t a1)
{
  v17 = v1;
  if (!*(v1 + 240))
  {
    (*(*(v1 + 344) + 8))(*(v1 + 352), *(v1 + 336));
    goto LABEL_5;
  }

  if (sub_25853376C())
  {
    (*(*(v1 + 344) + 8))(*(v1 + 352), *(v1 + 336));

LABEL_5:

    v2 = *(v1 + 8);

    return v2();
  }

  v5 = *(v1 + 320);
  v4 = *(v1 + 328);
  v14 = *(v1 + 312);
  *(v1 + 64) = *(v1 + 280);
  v6 = *(v1 + 376);
  *(v1 + 80) = *(v1 + 360);
  *(v1 + 96) = v6;
  v7 = type metadata accessor for NetworkBackedControlConnection(0, v1 + 64);
  v16 = 0;
  memset(v15, 0, sizeof(v15));

  v9 = sub_2584D7BA0(v8, v15, 1);
  *(v1 + 176) = v7;
  *(v1 + 184) = swift_getWitnessTable();
  *(v1 + 152) = v9;
  sub_25853380C();

  sub_2585337EC();

  (*(v5 + 8))(v4, v14);
  v10 = *(v1 + 392);
  v11 = *(v1 + 264);
  v12 = swift_task_alloc();
  *(v1 + 408) = v12;
  *v12 = v1;
  v12[1] = sub_2584E3D58;
  v13 = *(v1 + 336);

  return MEMORY[0x2822005A8](v1 + 240, v11, v10, v13, v1 + 248);
}

uint64_t sub_2584E40F4()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  v1 = v0[31];
  v0[52] = v1;
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_2584E41A8;

  return sub_2584E5F10(v1);
}

uint64_t sub_2584E41A8()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_2584E42B8, v1, 0);
}

uint64_t sub_2584E42B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584E4330()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = sub_25853368C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v1[6];
  v10[0] = v1[5];
  v10[1] = v6;
  v10[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnectionListener(255, v10);
  WitnessTable = swift_getWitnessTable();
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = WitnessTable;
  v8[4] = v0;
  swift_retain_n();
  *(v0 + *(*v0 + 192)) = sub_258476C88(0, 0, v4, &unk_25853C5F8, v8);
}

uint64_t sub_2584E44C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 168) = a4;
  v6 = *a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v8 = v6[10];
  *(v4 + 216) = v8;
  v9 = v6[11];
  *(v4 + 224) = v9;
  v10 = v6[12];
  *(v4 + 232) = v10;
  v11 = v6[13];
  *(v4 + 240) = v11;
  v12 = v6[14];
  *(v4 + 248) = v12;
  v13 = v6[15];
  *(v4 + 256) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(v4 + 32) = v15;
  *(v4 + 16) = v14;
  *(v4 + 48) = v12;
  *(v4 + 56) = v13;
  *(v4 + 264) = type metadata accessor for NetworkBackedControlConnectionListener.Event(255, v4 + 16);
  v16 = sub_25853371C();
  *(v4 + 272) = v16;
  *(v4 + 280) = *(v16 - 8);
  *(v4 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E4700, a4, 0);
}

uint64_t sub_2584E4700()
{
  v1 = *(v0 + 168);
  sub_25853372C();
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  v7 = *(v0 + 248);
  sub_2585336FC();
  *(v0 + 64) = v9;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;
  type metadata accessor for NetworkBackedControlConnectionListener(255, v0 + 64);
  *(v0 + 296) = swift_getWitnessTable();
  *(v0 + 304) = *(*v1 + 176);
  swift_beginAccess();
  v2 = *(v0 + 296);
  v3 = *(v0 + 168);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_2584E4868;
  v5 = *(v0 + 272);

  return MEMORY[0x2822003E8](v0 + 160, v3, v2, v5);
}

uint64_t sub_2584E4868()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_2584E4978, v1, 0);
}

uint64_t sub_2584E4978(uint64_t a1)
{
  v2 = v1[20];
  v1[40] = v2;
  if (v2 == 1)
  {
    (*(v1[35] + 8))(v1[36], v1[34]);
LABEL_5:

    v3 = v1[1];

    return v3();
  }

  if (sub_25853376C())
  {
    (*(v1[35] + 8))(v1[36], v1[34]);
    sub_2584E72C8(v2);
    goto LABEL_5;
  }

  if (v2)
  {
    v5 = v2;
    v6 = swift_task_alloc();
    v1[41] = v6;
    *v6 = v1;
    v6[1] = sub_2584E4C88;

    return sub_2584E5F10(v2);
  }

  else
  {
    v7 = v1[26];
    v8 = v1[22];
    v9 = v1[23];
    sub_258472808(v1[21] + v1[38], v7);
    v10 = (*(v9 + 48))(v7, 1, v8);
    v11 = v1[26];
    if (v10)
    {
      sub_258465168(v1[26], &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v13 = v1[23];
      v12 = v1[24];
      v14 = v1[22];
      (*(v13 + 16))(v12, v1[26], v14);
      sub_258465168(v11, &unk_27F930DB0, &qword_258536390);
      sub_25853364C();
      (*(v13 + 8))(v12, v14);
    }

    v15 = v1[38];
    v16 = v1[25];
    v17 = v1[21];
    (*(v1[23] + 56))(v16, 1, 1, v1[22]);
    swift_beginAccess();
    sub_258472790(v16, v17 + v15);
    swift_endAccess();
    v18 = v1[37];
    v19 = v1[21];
    v20 = swift_task_alloc();
    v1[39] = v20;
    *v20 = v1;
    v20[1] = sub_2584E4868;
    v21 = v1[34];

    return MEMORY[0x2822003E8](v1 + 20, v19, v18, v21);
  }
}

uint64_t sub_2584E4C88()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_2584E4D98, v1, 0);
}

uint64_t sub_2584E4D98()
{
  v1 = v0[40];
  sub_2584E72C8(v1);
  sub_2584E72C8(v1);
  v2 = v0[37];
  v3 = v0[21];
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_2584E4868;
  v5 = v0[34];

  return MEMORY[0x2822003E8](v0 + 20, v3, v2, v5);
}

uint64_t sub_2584E4E64()
{
  v1[17] = v0;
  v2 = *v0;
  v1[18] = *v0;
  v1[19] = v2[10];
  v1[20] = v2[12];
  v1[21] = v2[13];
  v3 = sub_258532F6C();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = sub_25853323C();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584E4FF4, v0, 0);
}

uint64_t sub_2584E4FF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v21 = *(v0 + 200);
  v22 = *(v0 + 168);
  v6 = *(v0 + 152);
  v23 = *(v0 + 184);
  v24 = *(v0 + 144);
  v7 = *(v0 + 136);
  *(v0 + 104) = sub_25853313C();
  *(v0 + 112) = sub_25853318C();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 120) = MEMORY[0x277CD8F48];
  *(v0 + 128) = MEMORY[0x277CD8F50];
  *(v0 + 64) = 2;
  *(v0 + 72) = v4;
  *(v0 + 80) = v0 + 104;
  *(v0 + 88) = WitnessTable;
  *(v0 + 96) = v0 + 120;
  sub_2585332BC();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F9311A0, &unk_25853C5E0) + 48);
  v10 = v7[16];
  *v2 = v7[15];
  *(v2 + 1) = v10;
  v11 = sub_258532DBC();
  (*(*(v11 - 8) + 56))(&v2[v9], 1, 1, v11);
  (*(v1 + 104))(v2, *MEMORY[0x277CD8FD8], v21);
  sub_258532E4C();

  MEMORY[0x259C80FA0](v6, v5, v22);
  v12 = swift_getWitnessTable();
  sub_2584B9B7C(v3, v4, v12);
  (*(v23 + 8))(v3, v4);
  v13 = sub_2585332AC();
  *(v0 + 224) = v13;
  *(v7 + *(*v7 + 168)) = v13;

  v14 = *(v24 + 88);
  v15 = *(v24 + 112);
  *(v0 + 16) = v6;
  *(v0 + 24) = v14;
  *(v0 + 32) = v5;
  *(v0 + 40) = v22;
  *(v0 + 48) = v15;
  type metadata accessor for NetworkBackedControlConnectionListener(255, v0 + 16);
  v16 = swift_getWitnessTable();
  v17 = swift_task_alloc();
  *(v0 + 232) = v17;
  *(v17 + 16) = v7;
  *(v17 + 24) = v13;
  v18 = swift_task_alloc();
  *(v0 + 240) = v18;
  *v18 = v0;
  v18[1] = sub_2584E531C;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v7, v16, 0x73694C7075746573, 0xEF292872656E6574, sub_2584E7150, v17, v19);
}

uint64_t sub_2584E531C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_2584E54D4;
  }

  else
  {
    v4 = sub_2584E5448;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584E5448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584E54D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584E5560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = *(*a2 + 176);
  swift_beginAccess();
  sub_258472790(v9, a2 + v12);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v6[11];
  v14[3] = v6[14];
  v14[4] = v6[15];
  v14[5] = v13;
  sub_25853328C();

  sub_2584E379C(a3);
  return sub_2584E4330();
}

uint64_t sub_2584E5770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*a1 + *MEMORY[0x277CD9068] + 8);
  v8 = *(v7 + 24);
  v69[0] = *(v7 + 16);
  v69[1] = a4;
  v70 = v8;
  v71 = a5;
  v72 = a6;
  v65 = type metadata accessor for NetworkBackedControlConnectionListener.Event(255, v69);
  v9 = sub_2585336AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v57[-v11];
  v12 = sub_258532B7C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25853322C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v67 = &v57[-v21];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v13 + 16))(v15, a2, v12);
    v23 = (*(v13 + 88))(v15, v12);
    if (v23 == *MEMORY[0x277CD8B40] || v23 == *MEMORY[0x277CD8B38])
    {
      v64 = v10;
      (*(v13 + 96))(v15, v12);
      v25 = v67;
      v62 = *(v17 + 32);
      v63 = v17 + 32;
      v62(v67, v15, v16);
      if (qword_27F92F8D0 != -1)
      {
        swift_once();
      }

      v26 = sub_258532A4C();
      __swift_project_value_buffer(v26, qword_27F93CFC0);
      v27 = *(v17 + 16);
      v27(v20, v25, v16);

      v28 = sub_258532A2C();
      v29 = sub_2585338CC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v59 = v27;
        v31 = v30;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v68 = v61;
        *v31 = 136315394;
        v32 = sub_2584E6FBC();
        v58 = v29;
        v33 = v9;
        v35 = v34;

        v36 = sub_2584713B0(v32, v35, &v68);
        v9 = v33;

        *(v31 + 4) = v36;
        *(v31 + 12) = 2112;
        sub_2584E260C();
        swift_allocError();
        v59(v37, v20, v16);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        (*(v17 + 8))(v20, v16);
        *(v31 + 14) = v38;
        v39 = v60;
        *v60 = v38;
        _os_log_impl(&dword_25845E000, v28, v58, "%s listener failed error:%@", v31, 0x16u);
        sub_258465168(v39, &qword_27F92FBC0, &qword_258537930);
        MEMORY[0x259C82900](v39, -1, -1);
        v40 = v61;
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x259C82900](v40, -1, -1);
        MEMORY[0x259C82900](v31, -1, -1);
      }

      else
      {

        (*(v17 + 8))(v20, v16);
      }

      sub_2584E260C();
      v53 = swift_allocError();
      v62(v54, v67, v16);
      v68 = v53;
      sub_2585336EC();
      v55 = v66;
      sub_2585336CC();

      return (*(v64 + 8))(v55, v9);
    }

    else if (v23 == *MEMORY[0x277CD8B28])
    {
      v41 = v9;
      if (qword_27F92F8D0 != -1)
      {
        swift_once();
      }

      v42 = sub_258532A4C();
      __swift_project_value_buffer(v42, qword_27F93CFC0);

      v43 = sub_258532A2C();
      v44 = sub_2585338BC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v10;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v68 = v47;
        *v46 = 136315138;
        v48 = sub_2584E6FBC();
        v50 = v49;

        v51 = sub_2584713B0(v48, v50, &v68);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_25845E000, v43, v44, "%s listener ready", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x259C82900](v47, -1, -1);
        v52 = v46;
        v10 = v45;
        MEMORY[0x259C82900](v52, -1, -1);
      }

      else
      {
      }

      v68 = 0;
      sub_2585336EC();
      v56 = v66;
      sub_2585336CC();

      return (*(v10 + 8))(v56, v41);
    }

    else
    {

      return (*(v13 + 8))(v15, v12);
    }
  }

  return result;
}

uint64_t sub_2584E5F10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2584E5F58, v1, 0);
}

uint64_t sub_2584E5F58()
{
  v23 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(*v2 + 216);
  if ((sub_2584E299C(*(v2 + v3), v1[10], v1[11], v1[12], v1[13], v1[14], v1[15]) & 1) == 0)
  {
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CFC0);

    v6 = v4;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v20 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v9 = 136315394;
      v11 = sub_2584E6FBC();
      v13 = v12;

      v14 = sub_2584713B0(v11, v13, &v22);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = v20;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_25845E000, v7, v8, "%s interrupted error:%@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C82900](v21, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {
    }

    v17 = v0[2];
    *(v2 + v3) = 4;
    sub_2584E6564(v17);
  }

  v18 = v0[1];

  return v18();
}

void sub_2584E61C4(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    v27 = v4[6];
    v33 = v4[5];
    v34 = v27;
    v35 = v4[7];
    type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, &v33);
    v28 = 2;
LABEL_9:
    swift_getWitnessTable();
    swift_allocError();
    *v30 = v28;
    swift_willThrow();
    return;
  }

  v7 = sub_25853342C();
  v9 = v8;

  v10 = IDSCopyLocalDeviceUniqueID();
  if (!v10)
  {

    v29 = v4[6];
    v33 = v4[5];
    v34 = v29;
    v35 = v4[7];
    type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, &v33);
    v28 = 3;
    goto LABEL_9;
  }

  v11 = v10;
  v36 = sub_25853342C();
  v13 = v12;

  *&v33 = v7;
  *(&v33 + 1) = v9;
  MEMORY[0x259C81500](46, 0xE100000000000000);
  MEMORY[0x259C81500](v2[15], v2[16]);
  v32 = sub_25853343C();
  v15 = v14;

  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v16 = sub_258532A4C();
  __swift_project_value_buffer(v16, qword_27F93CFC0);

  v17 = sub_258532A2C();
  v18 = sub_2585338EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v33 = v31;
    *v19 = 136315650;
    v20 = sub_2584E6FBC();
    v21 = v13;
    v23 = v22;

    v24 = sub_2584713B0(v20, v23, &v33);
    v13 = v21;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = v32;
    *(v19 + 14) = sub_2584713B0(v32, v15, &v33);
    *(v19 + 22) = 2080;
    v26 = v36;
    *(v19 + 24) = sub_2584713B0(v36, v21, &v33);
    _os_log_impl(&dword_25845E000, v17, v18, "%s applicationServiceName:%s, deviceID:%s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v31, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);
  }

  else
  {

    v26 = v36;
    v25 = v32;
  }

  a1[4] = v15;
  a1[5] = v26;
  a1[6] = v13;
  a1[2] = 0;
  a1[3] = v25;
  *a1 = 1;
  a1[1] = 0;
}

uint64_t sub_2584E6564(void *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  if (*(v2 + *(v5 + 184)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v4 = *v2;
  }

  if (*(v2 + *(v4 + 192)))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v27 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  v16 = *(v5 + 80);
  v17 = *(v5 + 120);
  v28 = v16;
  v26 = *(v5 + 88);
  v18 = *(v5 + 104);
  v29 = v26;
  v30 = v18;
  v31 = v17;
  type metadata accessor for NetworkBackedControlConnectionListener.Errors(0, &v28);
  if (swift_dynamicCast() && !v32)
  {
    v27 = 0;
  }

  else
  {
    v27 = a1;
    v19 = a1;
  }

  v28 = v16;
  *&v29 = v26;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25853380C();
  sub_2585337FC();
  v20 = *(*v2 + 176);
  swift_beginAccess();
  sub_258472808(v2 + v20, v14);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_258465168(v14, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v21 = v25;
    (*(v7 + 16))(v25, v14, v6);
    sub_258465168(v14, &unk_27F930DB0, &qword_258536390);
    v27 = a1;
    v22 = a1;
    sub_25853363C();
    (*(v7 + 8))(v21, v6);
  }

  (*(v7 + 56))(v12, 1, 1, v6);
  swift_beginAccess();
  sub_258472790(v12, v2 + v20);
  return swift_endAccess();
}

char *sub_2584E69B8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(*v0 + 152);
  v4 = *(v1 + 88);
  v14 = *(v1 + 80);
  v15 = v4;
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
  v5 = sub_25853384C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(*v0 + 160);
  v7 = sub_25853380C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  sub_258465168(v0 + *(*v0 + 176), &unk_27F930DB0, &qword_258536390);

  v8 = *(*v0 + 200);
  v15 = v4;
  v9 = *(v2 + 112);
  v16 = *(v2 + 96);
  v17 = v9;
  type metadata accessor for NetworkBackedControlConnectionListener.Event(255, &v14);
  v10 = sub_25853372C();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  v11 = *(*v0 + 208);
  v12 = sub_2585336EC();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2584E6C8C()
{
  sub_2584E69B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2584E6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2584E6D48(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2584E6D98(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2584E6DEC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2584E6E20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258464F5C;

  return sub_2584E2A74(a1, a2);
}

uint64_t sub_2584E6ECC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584E34A8();
}

uint64_t sub_2584E6F5C@<X0>(_OWORD *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = a1[6];
  v6[0] = a1[5];
  v6[1] = v4;
  v6[2] = a1[7];
  type metadata accessor for NetworkBackedControlConnectionListener(0, v6);
  result = sub_258533B9C();
  *a3 = result;
  return result;
}

uint64_t sub_2584E6FBC()
{
  v1 = *v0;
  *&v4[0] = 0;
  *(&v4[0] + 1) = 0xE000000000000000;
  sub_258533B8C();
  v5 = v4[0];
  MEMORY[0x259C81500](0xD000000000000027, 0x8000000258540500);
  v2 = v1[6];
  v4[0] = v1[5];
  v4[1] = v2;
  v4[2] = v1[7];
  type metadata accessor for NetworkBackedControlConnectionListener(0, v4);
  swift_getWitnessTable();
  *&v4[0] = sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return v5;
}

uint64_t sub_2584E70FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E7158()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584E7190()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E71D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2584E7214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_2584E44C4(a1, v4, v5, v6);
}

void sub_2584E72C8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2584E72D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584E7320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258472CF8;

  return sub_2584E3944(a1, v4, v5, v7, v6);
}

uint64_t sub_2584E73E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584E7458()
{

  v1 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation, &unk_27F930DB0, &qword_258536390);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for NetworkBackedControlConnectionMigrationController(uint64_t a1)
{
  result = qword_27F931240;
  if (!qword_27F931240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584E75D0(uint64_t a1)
{
  sub_2584E7730(319, &qword_27F931250, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_2584E7730(319, &qword_27F931258, MEMORY[0x277D858B0]);
    if (v2 <= 0x3F)
    {
      sub_258472254(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584E7730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F92FBB0, &qword_25853A840);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2584E77D0()
{
  result = qword_27F931260;
  if (!qword_27F931260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931260);
  }

  return result;
}

uint64_t sub_2584E7828()
{
  v1 = v0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931290, &qword_25853C8F0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = (v20 - v2);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v24 = v20 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = v20 - v5;
  v21 = sub_25853394C();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25853393C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_25853335C();
  MEMORY[0x28223BE20](v10 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v20[1] = sub_2584E228C();
  sub_25853334C();
  v30 = MEMORY[0x277D84F90];
  sub_2584EA6E4(&unk_27F9313C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931298, &qword_25853C8F8);
  sub_2584EA72C();
  sub_258533A8C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v21);
  *(v0 + 32) = sub_25853396C();
  v11 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
  v12 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92FBB0, &qword_25853A840);
  *v3 = 1;
  v13 = v26;
  v14 = v28;
  (*(v26 + 104))(v3, *MEMORY[0x277D85898], v28);
  v15 = v22;
  v16 = v24;
  sub_2585337BC();
  (*(v13 + 8))(v3, v14);
  (*(v23 + 32))(v0 + v11, v15, v25);
  (*(v27 + 32))(v0 + v12, v16, v29);
  v17 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  return v1;
}

uint64_t sub_2584E7D24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_2584E7D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[14] = a1;
  return MEMORY[0x2822009F8](sub_2584E7D8C, 0, 0);
}

uint64_t sub_2584E7D8C()
{
  v18 = v0;
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = 6;
LABEL_12:
    sub_2584EA678();
    v11 = swift_allocError();
    *v12 = v2;
    swift_willThrow();
    sub_2584E9330(v11);
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  if (qword_27F92F910 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  v0[17] = __swift_project_value_buffer(v3, qword_27F93D080);

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    v16 = 0;
    *v6 = 136315138;
    v17 = 0xE000000000000000;
    sub_258533B8C();
    v0[9] = v16;
    v0[10] = 0xE000000000000000;
    MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
    type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
    sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController, &unk_25853C860);
    v0[13] = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);
    v8 = sub_2584713B0(v0[9], v0[10], &v15);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_25845E000, v4, v5, "%s activating", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v9 = v0[15];
  *(v1 + 16) = 1;
  sub_258464C30(v9, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931280, &unk_25853C8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
  if (!swift_dynamicCast())
  {
    v2 = 0;
    goto LABEL_12;
  }

  v10 = v0[11];
  v0[18] = v10;

  return MEMORY[0x2822009F8](sub_2584E80E8, v10, 0);
}

uint64_t sub_2584E80E8(uint64_t a1)
{
  if (*(*(v1 + 144) + 128))
  {
    *(v1 + 152) = sub_258532C0C();
    v2 = sub_2584E816C;
  }

  else
  {
    v2 = sub_2584E83C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2584E816C()
{
  if (v0[19])
  {
    v1 = v0[16];
    if (*(v1 + 16) == 1)
    {
      sub_2585330BC();
      swift_allocObject();

      v2 = sub_25853303C();
      v0[20] = v2;
      *(v1 + 24) = v2;

      sub_25853307C();

      v3 = swift_task_alloc();
      v0[21] = v3;
      *(v3 + 16) = v1;
      *(v3 + 24) = v2;
      v4 = swift_task_alloc();
      v0[22] = v4;
      *v4 = v0;
      v4[1] = sub_2584E8474;
      v5 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000002CLL, 0x8000000258541960, sub_2584EA6D4, v3, v5);
    }

    sub_2584EA678();
    v6 = swift_allocError();
    *v8 = 6;
    swift_willThrow();
  }

  else
  {
    sub_2584EA678();
    v6 = swift_allocError();
    *v7 = 2;
    swift_willThrow();
  }

  sub_2584E9330(v6);
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_2584E83C0()
{
  sub_2584EA678();
  v1 = swift_allocError();
  *v2 = 2;
  swift_willThrow();

  sub_2584E9330(v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2584E8474()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2584E88C8;
  }

  else
  {

    v2 = sub_2584E8590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2584E8590()
{
  v17 = v0;
  if (*(v0[16] + 16) == 1)
  {

    v1 = sub_258532A2C();
    v2 = sub_2585338EC();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v14 = v4;
      v15 = 0;
      *v3 = 136315138;
      v16 = 0xE000000000000000;
      sub_258533B8C();
      v0[7] = v15;
      v0[8] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController, &unk_25853C860);
      v0[12] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v5 = sub_2584713B0(v0[7], v0[8], &v14);

      *(v3 + 4) = v5;
      _os_log_impl(&dword_25845E000, v1, v2, "%s activated", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x259C82900](v4, -1, -1);
      MEMORY[0x259C82900](v3, -1, -1);
    }

    else
    {
    }

    v9 = v0[16];
    v10 = v0[14];
    *(v9 + 16) = 2;
    v11 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_availableInterfacesStream;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB80, &qword_258535410);
    (*(*(v12 - 8) + 16))(v10, v9 + v11, v12);
    v8 = v0[1];
  }

  else
  {
    sub_2584EA678();
    v6 = swift_allocError();
    *v7 = 6;
    swift_willThrow();

    sub_2584E9330(v6);
    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_2584E88C8()
{

  sub_2584E9330(*(v0 + 184));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584E8968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931288, &unk_25853C8E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  (*(v6 + 16))(v8, a3 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_avaiableIntefacesStreamContinuation, v5);
  v13 = *(a2 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v28 = v12;
    v29 = v10;
    v30 = v9;
    v31 = v8;
    v32 = v6;
    v33 = v5;
    v44 = MEMORY[0x277D84F90];
    sub_2584F92F8(0, v13, 0);
    v14 = v44;
    v15 = sub_258532D8C();
    v16 = *(v15 - 8);
    v36 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v37 = v15;
    v17 = type metadata accessor for NetworkBackedNetworkInterface(0);
    v18 = 0;
    v34 = v16;
    v35 = v16 + 16;
    do
    {
      v42 = v17;
      v43 = &off_2869900B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      (*(v34 + 16))(boxed_opaque_existential_1, v36 + *(v34 + 72) * v18, v37);
      v44 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2584F92F8((v20 > 1), v21 + 1, 1);
        v14 = v44;
      }

      ++v18;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      MEMORY[0x28223BE20](v22);
      v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      v39 = v17;
      v40 = &off_2869900B8;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v38);
      sub_258465104(v24, v26);
      *(v14 + 16) = v21 + 1;
      sub_258464C18(&v38, v14 + 40 * v21 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    while (v13 != v18);
    v6 = v32;
    v5 = v33;
    v9 = v30;
    v8 = v31;
    v12 = v28;
    v10 = v29;
  }

  v41[0] = v14;
  sub_2585337EC();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2584E8D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  swift_beginAccess();
  sub_258472790(v6, a2 + v9);
  swift_endAccess();

  sub_25853304C();

  return sub_25853309C();
}

void sub_2584E8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = sub_25853322C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = sub_25853308C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a2, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x277CD8F40])
  {
    (*(v17 + 96))(v19, v16);
    (*(v5 + 32))(v7, v19, v4);
    sub_2584EA6E4(&qword_27F9313B0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v21 = swift_allocError();
    (*(v5 + 16))(v22, v7, v4);
    sub_2584E9330(v21);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v23 = v30;
    if (v20 == *MEMORY[0x277CD8F38])
    {
      v24 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
      swift_beginAccess();
      sub_258472808(v23 + v24, v15);
      v25 = v29;
      if ((*(v29 + 48))(v15, 1, v8))
      {
        sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
      }

      else
      {
        (*(v25 + 16))(v10, v15, v8);
        sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
        sub_25853364C();
        (*(v25 + 8))(v10, v8);
      }

      v26 = v28;
      (*(v25 + 56))(v28, 1, 1, v8);
      swift_beginAccess();
      sub_258472790(v26, v23 + v24);
      swift_endAccess();
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }
}

void *sub_2584E9330(void *result)
{
  if (*(v1 + 16) <= 2u)
  {
    v2 = result;
    *(v1 + 16) = 4;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D080);

    v4 = v2;
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v7 = 136315394;
      v13 = v9;
      sub_258533B8C();
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController, &unk_25853C860);
      sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v10 = sub_2584713B0(0, 0xE000000000000000, &v13);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2112;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v12;
      *v8 = v12;
      _os_log_impl(&dword_25845E000, v5, v6, "%s interrupted: %@", v7, 0x16u);
      sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    return sub_2584EA27C(v2);
  }

  return result;
}

uint64_t sub_2584E95E0()
{
  if (*(v0 + 16) != 2)
  {
    v16 = 6;
LABEL_11:
    sub_2584EA678();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();
    return v0;
  }

  v0 = *(v0 + 24);
  if (!v0)
  {
    v16 = 3;
    goto LABEL_11;
  }

  v2 = sub_25853305C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v19[1] = v0;
    v19[2] = v1;
    v31 = MEMORY[0x277D84F90];
    sub_2584F92F8(0, v3, 0);
    v0 = v31;
    v24 = sub_258532D8C();
    v4 = *(v24 - 8);
    v5 = *(v4 + 80);
    v19[0] = v2;
    v22 = v2 + ((v5 + 32) & ~v5);
    v6 = type metadata accessor for NetworkBackedNetworkInterface(0);
    v7 = 0;
    v23 = v4;
    v21 = v4 + 16;
    v20 = v3;
    do
    {
      v29 = v6;
      v30 = &off_2869900B8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v23 + 16))(boxed_opaque_existential_1, v22 + *(v23 + 72) * v7, v24);
      v31 = v0;
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2584F92F8((v9 > 1), v10 + 1, 1);
        v0 = v31;
      }

      ++v7;
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x28223BE20](v11);
      v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      v26 = v6;
      v27 = &off_2869900B8;
      v15 = __swift_allocate_boxed_opaque_existential_1(&v25);
      sub_258465104(v13, v15);
      *(v0 + 16) = v10 + 1;
      sub_258464C18(&v25, v0 + 40 * v10 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    while (v20 != v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v0;
}

void *sub_2584E98B4(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = v53 - v6;
  v7 = type metadata accessor for NetworkBackedNetworkInterface(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258532D8C();
  v70 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v68 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v69 = v53 - v15;
  if (*(v1 + 16) != 2)
  {
    sub_2584EA678();
    swift_allocError();
    v51 = 6;
LABEL_25:
    *v50 = v51;
    return swift_willThrow();
  }

  v16 = *(v1 + 24);
  if (!v16)
  {
    sub_2584EA678();
    swift_allocError();
    v51 = 3;
    goto LABEL_25;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v62 = v14;
    v53[0] = v3;
    v75 = MEMORY[0x277D84F90];
    v53[1] = v16;

    sub_2584F9318(0, v17, 0);
    v18 = 0;
    v58 = a1 + 32;
    v19 = v75;
    v63 = (v8 + 56);
    v20 = (v70 + 32);
    v21 = v68;
    v57 = v17;
    v56 = (v70 + 32);
    v64 = v7;
    v55 = v70 + 16;
    v54 = (v70 + 8);
    while (1)
    {
      v61 = v19;
      v59 = v18;
      v22 = *(v58 + 8 * v18);
      v23 = *(v22 + 16);
      v65 = v22;
      if (v23)
      {
        break;
      }

      v38 = MEMORY[0x277D84F90];
      v37 = v69;
LABEL_14:
      v60 = v38;
      v39 = *(v38 + 16);
      v40 = sub_2584EA6E4(&qword_27F930B28, MEMORY[0x277CD8CF0], MEMORY[0x277CD8CF8]);
      v73[0] = MEMORY[0x259C818D0](v39, v10, v40);
      v41 = *(v60 + 16);
      if (v41)
      {
        v42 = v60 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v71 = *(v70 + 72);
        v43 = *(v70 + 16);
        v44 = v10;
        v45 = v54;
        do
        {
          v43(v37, v42, v44);
          sub_2584CEA30(v21, v37);
          (*v45)(v21, v44);
          v42 += v71;
          --v41;
        }

        while (v41);

        v17 = v57;
        v7 = v64;
        v10 = v44;
      }

      else
      {
      }

      v46 = v73[0];
      v19 = v61;
      v75 = v61;
      v48 = *(v61 + 16);
      v47 = *(v61 + 24);
      v49 = v59;
      if (v48 >= v47 >> 1)
      {
        sub_2584F9318((v47 > 1), v48 + 1, 1);
        v49 = v59;
        v19 = v75;
      }

      v18 = v49 + 1;
      *(v19 + 16) = v48 + 1;
      *(v19 + 8 * v48 + 32) = v46;
      v20 = v56;
      if (v18 == v17)
      {
        goto LABEL_28;
      }
    }

    v74 = MEMORY[0x277D84F90];

    v71 = v23;
    result = sub_2584F9338(0, v23, 0);
    v25 = 0;
    v26 = v74;
    v27 = v22 + 32;
    while (v25 < *(v22 + 16))
    {
      sub_258464C30(v27, v73);
      sub_258464C30(v73, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
      v28 = v67;
      v29 = swift_dynamicCast();
      v30 = *v63;
      if (!v29)
      {
        v30(v28, 1, 1, v7);
        sub_258465168(v28, &qword_27F930DD8, &unk_25853CEC0);
        sub_2584EA678();
        swift_allocError();
        *v52 = 1;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1Tm(v73);
      }

      v30(v28, 0, 1, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      v31 = v66;
      sub_258465104(v28, v66);
      v32 = *v20;
      v33 = v62;
      (*v20)(v62, v31, v10);
      v34 = v26;
      v74 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2584F9338((v35 > 1), v36 + 1, 1);
        v34 = v74;
      }

      ++v25;
      *(v34 + 16) = v36 + 1;
      v26 = v34;
      result = (v32)(v34 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v36, v33, v10);
      v27 += 40;
      v7 = v64;
      v22 = v65;
      v21 = v68;
      v37 = v69;
      if (v71 == v25)
      {
        v17 = v57;
        v38 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    sub_25853306C();
  }

  return result;
}

uint64_t sub_2584E9FD8()
{
  v15 = v0;
  v1 = v0[5];
  if (*(v1 + 16) <= 2u)
  {
    *(v1 + 16) = 3;
    if (qword_27F92F910 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D080);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      v13 = 0;
      *v5 = 136315138;
      v14 = 0xE000000000000000;
      sub_258533B8C();
      v0[2] = v13;
      v0[3] = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
      type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
      sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController, &unk_25853C860);
      v0[4] = sub_258533B9C();
      sub_258533C8C();
      MEMORY[0x259C81500](93, 0xE100000000000000);
      v7 = sub_2584713B0(v0[2], v0[3], &v12);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_25845E000, v3, v4, "%s invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    sub_2584EA678();
    v8 = swift_allocError();
    *v9 = 5;
    sub_2584EA27C(v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2584EA27C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  if (*(v1 + 24))
  {

    sub_2585330AC();
  }

  v19 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && v18[0] == 5)
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
    v14 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931270, &unk_25853C8B0);
  sub_2585337FC();
  v15 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedControlConnectionMigrationController_startContinuation;
  swift_beginAccess();
  sub_258472808(v1 + v15, v12);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
    *v18 = a1;
    v16 = a1;
    sub_25853363C();
    (*(v4 + 8))(v6, v3);
  }

  (*(v4 + 56))(v10, 1, 1, v3);
  swift_beginAccess();
  sub_258472790(v10, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_2584EA588()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541920);
  type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
  sub_2584EA6E4(&qword_27F931268, type metadata accessor for NetworkBackedControlConnectionMigrationController, &unk_25853C860);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

unint64_t sub_2584EA678()
{
  result = qword_27F931278;
  if (!qword_27F931278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931278);
  }

  return result;
}

uint64_t sub_2584EA6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2584EA72C()
{
  result = qword_27F9313D0;
  if (!qword_27F9313D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931298, &qword_25853C8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313D0);
  }

  return result;
}

unint64_t sub_2584EA7A0(uint64_t a1)
{
  result = sub_2584EA678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584EA7CC()
{
  result = qword_27F9312A0;
  if (!qword_27F9312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9312A0);
  }

  return result;
}

uint64_t sub_2584EA824()
{
  if (*v0)
  {
    return 21;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_2584EA870(uint64_t a1)
{
  result = sub_2584AA71C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584EA89C()
{
  result = qword_27F9312A8;
  if (!qword_27F9312A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9312A8);
  }

  return result;
}

uint64_t sub_2584EA904()
{
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFD8);

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
    v6 = sub_258533DFC();
    v8 = sub_2584713B0(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25845E000, v2, v3, "%s deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) != 3)
  {
    if (*(v0 + 16))
    {

      sub_258532BAC();
    }

    if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId, &qword_27F931360, &unk_25853CD10);
  swift_unknownObjectRelease();

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint, &unk_27F931440, &qword_2585380E0);
  sub_2584AE960(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address, &unk_27F931350, qword_258538C60);
  return v0;
}

uint64_t sub_2584EAB90()
{
  sub_2584EA904();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(uint64_t a1)
{
  result = qword_27F931308;
  if (!qword_27F931308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584EAC3C(uint64_t a1)
{
  sub_2584EADDC(319, &qword_27F931318, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_2584EADDC(319, &qword_27F931320, MEMORY[0x277CD8B10]);
    if (v2 <= 0x3F)
    {
      sub_2584EADDC(319, &unk_27F931328, MEMORY[0x277CD8C88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2584EADDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258533A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2584EAE40()
{
  result = qword_27F931338;
  if (!qword_27F931338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931338);
  }

  return result;
}

char *sub_2584EAE98()
{
  v1 = v0;
  v17 = sub_25853394C();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25853393C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_25853335C();
  MEMORY[0x28223BE20](v6 - 8);
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v7 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId;
  v8 = sub_2585329BC();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator) = 0;
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) = 0;
  v16 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerQueue;
  sub_2584E228C();
  sub_25853334C();
  v18 = MEMORY[0x277D84F90];
  sub_2584F0608(&unk_27F9313C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931298, &qword_25853C8F8);
  sub_2584EA72C();
  sub_258533A8C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v17);
  *(v0 + v16) = sub_25853396C();
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted) = 0;
  v9 = v0 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID;
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
  v11 = sub_258532B0C();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress) = xmmword_25853CAF0;
  v12 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
  v13 = sub_258532CFC();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = 0;
  return v1;
}

uint64_t sub_2584EB220@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

uint64_t sub_2584EB264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931390, &qword_25853CD30);
  v7[15] = swift_task_alloc();
  v8 = sub_258532AEC();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v9 = sub_258532CFC();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584EB408, 0, 0);
}

uint64_t sub_2584EB408()
{
  v42 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state;
  *(v0 + 184) = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state;
  if (*(v1 + v2))
  {
    sub_2584F00E4();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 72);
  v7 = sub_258532A4C();
  *(v0 + 192) = __swift_project_value_buffer(v7, qword_27F93CFD8);

  v8 = sub_258532A2C();
  v9 = sub_2585338EC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 104);
    v38 = *(v0 + 80);
    v39 = *(v0 + 88);
    v36 = *(v0 + 72);
    v37 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41[0] = v40;
    *v11 = 136315650;
    *(v0 + 48) = v10;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
    v12 = sub_258533DFC();
    v14 = sub_2584713B0(v12, v13, v41);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    if (v36)
    {
      v15 = v37;
    }

    else
    {
      v15 = 7104878;
    }

    if (v36)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_2584713B0(v15, v16, v41);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_2584713B0(v38, v39, v41);
    _os_log_impl(&dword_25845E000, v8, v9, "%s vendLocalNetworkInfo: localInterface=%s, remoteAddress=%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v40, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  v18 = *(v0 + 72);
  *(v1 + v2) = 1;
  if (v18)
  {
    v19 = *(v0 + 104);
    if (*(v0 + 64) == 813132908 && *(v0 + 72) == 0xE400000000000000)
    {
      *(v19 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = 1;
LABEL_20:
      v21 = sub_2584EC41C(*(v0 + 176), *(v0 + 64), v6);
      v23 = v22;
      v24 = *(v0 + 104);
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      v25 = (v24 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
      v26 = *(v24 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
      v27 = *(v24 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8);
      *v25 = v21;
      v25[1] = v23;
      sub_2584AE960(v26, v27);
      goto LABEL_21;
    }

    v20 = sub_258533E2C();
    *(v19 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) = v20 & 1;
    if (v20)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v29 = *(v0 + 96);
  v28 = *(v0 + 104);
  v30 = *(v0 + 88);
  v32 = *(v0 + 64);
  v31 = *(v0 + 72);
  *(v28 + 24) = *(v0 + 80);
  *(v28 + 32) = v30;

  v33 = v28 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID;
  *v33 = v29;
  *(v33 + 8) = 0;
  v34 = sub_2584ECBF0(v32, v31);
  *(v0 + 200) = v34;
  v35 = swift_task_alloc();
  *(v0 + 208) = v35;
  *v35 = v0;
  v35[1] = sub_2584EBA9C;

  return sub_2584ECEEC(v34);
}

uint64_t sub_2584EBA9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_2584EC174;
  }

  else
  {
    v4 = sub_2584EBBB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2584EBBB0()
{
  v48 = v0;
  if (*(v0[13] + v0[23]) != 1)
  {
    sub_2584F00E4();
    v5 = swift_allocError();
    v6 = 2;
    goto LABEL_5;
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_258532B6C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_258465168(v0[15], &unk_27F931390, &qword_25853CD30);
    sub_2584F00E4();
    v5 = swift_allocError();
    v6 = 3;
LABEL_5:
    *v4 = v6;
    swift_willThrow();
    goto LABEL_6;
  }

  v23 = v0[27];
  v24 = v0[28];
  v25 = v0[13];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  *(v25 + 16) = v23;

  sub_2584ED31C();
  if (!v24)
  {
    v27 = v0[19];
    v26 = v0[20];
    v29 = v0[13];
    v28 = v0[14];
    v46 = sub_258532ADC();
    v30 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
    swift_beginAccess();
    sub_2584AC3B8(v29 + v30, v28, &unk_27F931350, qword_258538C60);
    if ((*(v26 + 48))(v28, 1, v27))
    {
      v31 = v0[14];
      (*(v0[17] + 8))(v0[18], v0[16]);

      sub_258465168(v31, &unk_27F931350, qword_258538C60);
      v45 = 0;
      v32 = 0xF000000000000000;
    }

    else
    {
      v33 = v0[20];
      v34 = v0[21];
      v35 = v0[19];
      v44 = v0[18];
      v37 = v0[16];
      v36 = v0[17];
      v38 = v0[14];
      (*(v33 + 16))(v34, v38, v35);
      sub_258465168(v38, &unk_27F931350, qword_258538C60);
      v45 = sub_258532CDC();
      v32 = v39;

      (*(v33 + 8))(v34, v35);
      (*(v36 + 8))(v44, v37);
    }

    v40 = v0[13];
    v41 = v0[7];
    v43 = *(v40 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress);
    v42 = *(v40 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localMACAddress + 8);
    *(v40 + v0[23]) = 2;
    sub_2584ABAF4(v43, v42);

    *v41 = v46;
    *(v41 + 8) = v45;
    *(v41 + 16) = v32;
    *(v41 + 24) = v43;
    *(v41 + 32) = v42;
    v21 = v0[1];
    goto LABEL_14;
  }

  v5 = v24;
  (*(v0[17] + 8))(v0[18], v0[16]);
LABEL_6:

  v7 = v5;
  v8 = sub_258532A2C();
  v9 = sub_2585338CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v11 = 136315394;
    v0[5] = v10;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
    v14 = sub_258533DFC();
    v16 = sub_2584713B0(v14, v15, &v47);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v5;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_25845E000, v8, v9, "%s vendLocalNetworkInfo failed with error:%@", v11, 0x16u);
    sub_258465168(v12, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x259C82900](v13, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  v19 = v0[23];
  v20 = v0[13];
  if (*(v20 + v19) != 3)
  {
    *(v20 + v19) = 3;
    if (*(v20 + 16))
    {

      sub_258532BAC();
    }

    if (*(v0[13] + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  swift_willThrow();

  v21 = v0[1];
LABEL_14:

  return v21();
}

uint64_t sub_2584EC174()
{
  v19 = v0;

  v1 = v0[28];

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    v0[5] = v5;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
    v9 = sub_258533DFC();
    v11 = sub_2584713B0(v9, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_25845E000, v3, v4, "%s vendLocalNetworkInfo failed with error:%@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v14 = v0[23];
  v15 = v0[13];
  if (*(v15 + v14) != 3)
  {
    *(v15 + v14) = 3;
    if (*(v15 + 16))
    {

      sub_258532BAC();
    }

    if (*(v0[13] + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator))
    {
      nw_path_evaluator_cancel();
    }
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2584EC41C(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v64 = sub_258532CFC();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  v10 = sub_25853346C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v60 = a2;
  v66[0] = a2;
  v66[1] = a3;
  v63 = a3;
  sub_25853344C();
  sub_2584B55D8();
  sub_258533A4C();
  (*(v11 + 8))(v13, v10);
  LODWORD(v10) = CUGetInterfaceAddresses();

  if (v10 == sub_258532A6C())
  {
    v13 = sub_2584F0138(v14, v14 + 6);
    v17 = v16;
    v18 = v16 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x259C82900](v14, -1, -1);
    sub_258507D20(*(v15 + 8), *(v15 + 16), v9);
    v19 = v64;
    if ((*(v5 + 48))(v9, 1, v64) == 1)
    {
      sub_258465168(v9, &unk_27F931350, qword_258538C60);
      sub_2584F00E4();
      swift_allocError();
      *v20 = 5;
      swift_willThrow();
      sub_258467E20(v13, v18);
    }

    else
    {
      v59 = v17;
      v31 = v61;
      (*(v5 + 32))(v61, v9, v19);
      MEMORY[0x259C82900](v15, -1, -1);
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v32 = sub_258532A4C();
      __swift_project_value_buffer(v32, qword_27F93CFD8);
      v33 = v62;
      (*(v5 + 16))(v62, v31, v19);
      v34 = v5;
      v35 = v65;

      v36 = v63;

      sub_2584A7B8C(v13, v18);
      v37 = sub_258532A2C();
      v38 = sub_2585338EC();

      sub_258467E20(v13, v18);
      if (os_log_type_enabled(v37, v38))
      {
        v58 = v38;
        v61 = v37;
        v39 = v33;
        v40 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v66[0] = v57;
        *v40 = 136315907;
        v67 = v35;
        type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
        sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
        v41 = sub_258533DFC();
        v43 = sub_2584713B0(v41, v42, v66);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_2584713B0(v60, v36, v66);
        *(v40 + 22) = 2081;
        v44 = sub_258532CCC();
        v46 = v45;
        (*(v34 + 8))(v39, v19);
        v47 = sub_2584713B0(v44, v46, v66);

        *(v40 + 24) = v47;
        *(v40 + 32) = 2081;
        v48 = v59 & 0xFF000000000000;
        sub_258467E20(v13, v18);
        if (v48 == 0x6000000000000)
        {
          v49 = sub_25852F78C(v13 & 0xFFFFFFFFFFFFLL);
          v51 = v50;
        }

        else
        {
          v51 = 0xE700000000000000;
          v49 = 0x64696C61766E69;
        }

        v52 = v58;
        v53 = sub_2584713B0(v49, v51, v66);

        *(v40 + 34) = v53;
        v54 = v61;
        _os_log_impl(&dword_25845E000, v61, v52, "%s localInterface=%s, localLinkLocalIPv6Address=%{private}s, localMacAddress=%{private}s", v40, 0x2Au);
        v55 = v57;
        swift_arrayDestroy();
        MEMORY[0x259C82900](v55, -1, -1);
        MEMORY[0x259C82900](v40, -1, -1);
      }

      else
      {

        (*(v34 + 8))(v33, v19);
      }
    }
  }

  else
  {
    MEMORY[0x259C82900](v14, -1, -1);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v21 = sub_258532A4C();
    __swift_project_value_buffer(v21, qword_27F93CFD8);
    v22 = v65;

    v23 = sub_258532A2C();
    v24 = sub_2585338CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66[0] = v26;
      *v25 = 136315138;
      v67 = v22;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
      v27 = sub_258533DFC();
      v29 = sub_2584713B0(v27, v28, v66);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_25845E000, v23, v24, "%s Failed to read network address", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C82900](v26, -1, -1);
      MEMORY[0x259C82900](v25, -1, -1);
    }

    sub_2584F00E4();
    swift_allocError();
    *v30 = 11;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_2584ECBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock - v5;
  v7 = sub_258532D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = nullsub_1;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2584EF870;
  v19 = &block_descriptor_53;
  v11 = _Block_copy(&aBlock);
  v20 = nullsub_1;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2584EF870;
  v19 = &block_descriptor_56;
  v12 = _Block_copy(&aBlock);
  secure_udp = nw_parameters_create_secure_udp(v11, v12);
  _Block_release(v12);
  _Block_release(v11);
  swift_unknownObjectRetain();
  nw_parameters_set_disable_listener_datapath();
  if (a2)
  {

    sub_258532D9C();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_258465168(v6, &qword_27F930620, &unk_25853E7D0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = sub_258532D4C();
      nw_parameters_require_interface(secure_udp, v14);
      swift_unknownObjectRelease();
      (*(v8 + 8))(v10, v7);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
  {
    nw_parameters_set_allow_duplicate_state_updates();
  }

  swift_unknownObjectRelease();
  sub_258532EFC();
  return sub_258532F0C();
}

uint64_t sub_2584ECEEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_258532AEC();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584ECF7C, 0, 0);
}

uint64_t sub_2584ECF7C()
{
  sub_258532ACC();
  sub_258532BBC();
  swift_allocObject();

  v1 = sub_258532B9C();
  v0[5] = v1;
  v2 = v1;
  v3 = v0[3];
  sub_258532B4C();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2584ED124;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000021, 0x8000000258541B70, sub_2584F0470, v4, v6);
}

uint64_t sub_2584ED124()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2584ED2A8;
  }

  else
  {

    v2 = sub_2584ED240;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2584ED240()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_2584ED2A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584ED31C()
{
  v135 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v1 - 8);
  v123 = &v108 - v2;
  v3 = sub_258532CFC();
  v121 = *(v3 - 8);
  v122 = v3;
  MEMORY[0x28223BE20](v3);
  v120 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v5 = MEMORY[0x28223BE20](v127);
  v128 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v108 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v108 - v10;
  v12 = sub_258532AAC();
  v131 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v125 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  MEMORY[0x28223BE20](v17);
  v129 = &v108 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931390, &qword_25853CD30);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v108 - v22;
  v24 = sub_258532AEC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v0;
  v28 = *(v0 + 16);
  if (!v28)
  {
    sub_2584F00E4();
    swift_allocError();
    *v31 = 10;
    return swift_willThrow();
  }

  v130 = v27;
  v126 = v12;

  sub_258532B6C();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_258465168(v23, &unk_27F931390, &qword_25853CD30);
    sub_2584F00E4();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  v32 = v130;
  (*(v25 + 32))(v130, v23, v24);
  if (!*(v132 + 32))
  {
    sub_2584F00E4();
    swift_allocError();
    *v43 = 6;
    swift_willThrow();

    return (*(v25 + 8))(v32, v24);
  }

  v118 = v25;
  v119 = v24;

  v33 = v129;
  sub_258532ABC();
  v34 = v131;
  v35 = v126;
  (*(v131 + 16))(v19, v33, v126);
  v36 = *(v34 + 88);
  v115 = v34 + 88;
  v114 = v36;
  v37 = v36(v19, v35);
  v38 = *MEMORY[0x277CD8AD8];
  v39 = (v34 + 8);
  v40 = *(v34 + 8);
  v117 = v39;
  v40(v19, v35);
  if (v37 == v38)
  {
    v117 = v40;
    v41 = sub_258532ADC();
    *&address.sa_len = 528;
    *address.sa_data = bswap32(v41) >> 16;
    *&address.sa_data[2] = 0;
    *&address.sa_data[10] = 0;
    v42 = nw_endpoint_create_address(&address);
  }

  else
  {
    sub_258532B5C();
    v42 = nw_listener_copy_local_endpoint();
    swift_unknownObjectRelease();
    v44 = v119;
    if (!v42)
    {
      v74 = v132;
      if (qword_27F92F8D8 != -1)
      {
        swift_once();
      }

      v75 = sub_258532A4C();
      __swift_project_value_buffer(v75, qword_27F93CFD8);

      v76 = v74;
      v77 = sub_258532A2C();
      v78 = sub_2585338CC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = v44;
        v81 = swift_slowAlloc();
        v133 = v76;
        *&address.sa_len = v81;
        *v79 = 136315395;
        type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
        v82 = v40;
        sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
        v83 = sub_258533DFC();
        v85 = sub_2584713B0(v83, v84, &address);

        *(v79 + 4) = v85;
        *(v79 + 12) = 2081;
        v133 = v28;
        sub_258532BBC();

        v86 = sub_25853347C();
        v88 = sub_2584713B0(v86, v87, &address);

        *(v79 + 14) = v88;
        v40 = v82;
        _os_log_impl(&dword_25845E000, v77, v78, "%s No local endpoint. Listener=%{private}s", v79, 0x16u);
        swift_arrayDestroy();
        v89 = v81;
        v44 = v80;
        MEMORY[0x259C82900](v89, -1, -1);
        v90 = v79;
        v33 = v129;
        MEMORY[0x259C82900](v90, -1, -1);
      }

      v91 = v126;
      v92 = v118;
      sub_2584F00E4();
      swift_allocError();
      *v93 = 4;
      swift_willThrow();

      v40(v33, v91);
      return (*(v92 + 8))(v130, v44);
    }

    v117 = v40;
  }

  swift_unknownObjectRetain();
  v45 = v132;
  sub_258532B1C();
  v46 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
  swift_beginAccess();
  sub_2584AC5D0(v11, v45 + v46, &unk_27F931440, &qword_2585380E0);
  swift_endAccess();
  v116 = v46;
  sub_2584AC3B8(v45 + v46, v9, &unk_27F931440, &qword_2585380E0);
  v47 = sub_258532B0C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v113 = v47;
  v112 = v48 + 48;
  v111 = v49;
  v50 = (v49)(v9, 1);
  sub_258465168(v9, &unk_27F931440, &qword_2585380E0);
  if (v50 == 1)
  {
    sub_2584F00E4();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    v117(v33, v126);
  }

  else
  {
    v110 = v42;
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v52 = sub_258532A4C();
    __swift_project_value_buffer(v52, qword_27F93CFD8);
    v53 = v132;

    v54 = sub_258532A2C();
    v55 = sub_2585338EC();

    v56 = v48;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v133 = v53;
      *&address.sa_len = v58;
      v109 = v48;
      v59 = v58;
      *v57 = 136315395;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
      v60 = v55;
      v61 = sub_258533DFC();
      v63 = sub_2584713B0(v61, v62, &address);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2081;
      sub_2584AC3B8(v132 + v116, v11, &unk_27F931440, &qword_2585380E0);
      v64 = sub_25853347C();
      v66 = sub_2584713B0(v64, v65, &address);
      v53 = v132;

      *(v57 + 14) = v66;
      _os_log_impl(&dword_25845E000, v54, v60, "%s localEndpoint=%{private}s", v57, 0x16u);
      swift_arrayDestroy();
      v67 = v59;
      v56 = v109;
      MEMORY[0x259C82900](v67, -1, -1);
      MEMORY[0x259C82900](v57, -1, -1);
    }

    v68 = v126;
    v69 = v131;
    v70 = v117;
    if (*(v53 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
    {
      v71 = v53 + v116;
      v72 = v128;
      sub_2584AC3B8(v71, v128, &unk_27F931440, &qword_2585380E0);
      v73 = v113;
      if (v111(v72, 1, v113) == 1)
      {
        sub_258465168(v72, &unk_27F931440, &qword_2585380E0);
      }

      else if ((*(v56 + 88))(v72, v73) == *MEMORY[0x277CD8B08])
      {
        v117 = v70;
        (*(v56 + 96))(v72, v73);
        v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
        v95 = *(v69 + 32);
        v96 = v124;
        v95(v124, v72, v68);
        v97 = *(v118 + 8);
        v97(v72 + v94, v119);
        v98 = v125;
        v95(v125, v96, v68);
        if (v114(v98, v68) == *MEMORY[0x277CD8AE0])
        {

          swift_unknownObjectRelease();
          v99 = v131;
          v117(v33, v68);
          v97(v130, v119);
          (*(v99 + 96))(v98, v68);
          v101 = v120;
          v100 = v121;
          v102 = *(v121 + 32);
          v103 = v122;
          v102(v120, v98, v122);
          v104 = v123;
          v102(v123, v101, v103);
          (*(v100 + 56))(v104, 0, 1, v103);
          v105 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localIPv6Address;
          v106 = v132;
          swift_beginAccess();
          sub_2584AC5D0(v104, v106 + v105, &unk_27F931350, qword_258538C60);
          return swift_endAccess();
        }

        v70 = v117;
        v117(v98, v68);
      }

      else
      {
        (*(v56 + 8))(v72, v73);
      }

      sub_2584F00E4();
      swift_allocError();
      *v107 = 4;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
    v70(v33, v68);
  }

  return (*(v118 + 8))(v130, v119);
}

uint64_t sub_2584EE23C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a1;
  v167 = a2;
  v4 = sub_2585329BC();
  v174 = *(v4 - 8);
  v175 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v170 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v172 = &v146 - v7;
  v8 = sub_25853346C();
  v168 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v146 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v14 - 8);
  v161 = (&v146 - v15);
  v163 = sub_258532CFC();
  v166 = *(v163 - 8);
  v16 = MEMORY[0x28223BE20](v163);
  v162 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v164 = (&v146 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v146 - v20;
  v22 = sub_258532B0C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v165 = (&v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v169 = &v146 - v27;
  MEMORY[0x28223BE20](v26);
  v173 = &v146 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v146 - v32;
  if (!*(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state))
  {
    v37 = 1;
LABEL_8:
    sub_2584F00E4();
    swift_allocError();
    *v38 = v37;
    return swift_willThrow();
  }

  if (*(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_state) != 2)
  {
    v37 = 2;
    goto LABEL_8;
  }

  v157 = v31;
  v160 = v22;
  v159 = v23;
  v158 = v3;
  v34 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_connectionId;
  swift_beginAccess();
  v156 = v34;
  sub_2584AC3B8(v2 + v34, v33, &qword_27F931360, &unk_25853CD10);
  LODWORD(v34) = (*(v174 + 48))(v33, 1, v175);
  sub_258465168(v33, &qword_27F931360, &unk_25853CD10);
  if (v34 != 1)
  {
    sub_2584F00E4();
    swift_allocError();
    v36 = 7;
    goto LABEL_10;
  }

  if (*(&v2[1].isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID))
  {
    sub_2584F00E4();
    swift_allocError();
    v36 = 8;
LABEL_10:
    *v35 = v36;
    return swift_willThrow();
  }

  v40 = *(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_delegatedPID);
  v41 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_localEndpoint;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v41, v21, &unk_27F931440, &qword_2585380E0);
  v42 = v159;
  v43 = v160;
  if ((*(v159 + 48))(v21, 1, v160) == 1)
  {
    sub_258465168(v21, &unk_27F931440, &qword_2585380E0);
    sub_2584F00E4();
    swift_allocError();
    v36 = 4;
    goto LABEL_10;
  }

  v155 = v40;
  v44 = v173;
  (*(v42 + 32))(v173, v21, v43);
  v45 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface;
  v46 = *(&v2->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface);
  if (v46 == 1)
  {
    v47 = v171;
    v48 = *(v171 + 4);
    if (v48 >> 60 == 15)
    {
      sub_2584F00E4();
      swift_allocError();
      v50 = 13;
LABEL_25:
      *v49 = v50;
      swift_willThrow();
      return (*(v42 + 8))(v44, v160);
    }

    v99 = *(v171 + 3);
    sub_2584A7B8C(v99, *(v171 + 4));
    v100 = sub_25852F870(v99, v48);
    if ((v100 & 0x1000000000000) != 0)
    {
      sub_2584F00E4();
      swift_allocError();
      *v108 = 14;
      swift_willThrow();
      v107 = v99;
      goto LABEL_32;
    }

    v152 = v99;
    v101 = *(v47 + 2);
    if (v101 >> 60 == 15)
    {
LABEL_30:
      sub_2584F00E4();
      swift_allocError();
      *v106 = 12;
      swift_willThrow();
      v107 = v152;
LABEL_32:
      sub_2584AE960(v107, v48);
      return (*(v42 + 8))(v44, v160);
    }

    v151 = v48;
    v168 = v100;
    v102 = *(v47 + 1);
    v103 = sub_258532D8C();
    (*(*(v103 - 8) + 56))(v13, 1, 1, v103);
    sub_2584ABAF4(v102, v101);
    sub_2584A7B8C(v102, v101);
    v104 = v161;
    sub_258532D0C();
    v105 = v163;
    if ((*(v166 + 48))(v104, 1, v163) == 1)
    {
      sub_2584AE960(v102, v101);
      sub_258465168(v104, &unk_27F931350, qword_258538C60);
      v48 = v151;
      goto LABEL_30;
    }

    v149 = v102;
    v150 = v101;
    v153 = v45;
    v114 = v166;
    v115 = v164;
    (*(v166 + 32))(v164, v104, v105);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v116 = sub_258532A4C();
    __swift_project_value_buffer(v116, qword_27F93CFD8);
    (*(v114 + 16))(v162, v115, v105);

    v117 = v2;
    v56 = v2;
    v118 = v105;
    v119 = sub_258532A2C();
    v120 = sub_2585338EC();

    v148 = v120;
    v161 = v119;
    v121 = os_log_type_enabled(v119, v120);
    v122 = v114;
    v52 = v172;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v176[0] = v147;
      *v123 = 136315651;
      v177 = v117;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
      v124 = v118;
      v125 = sub_258533DFC();
      v127 = sub_2584713B0(v125, v126, v176);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2081;
      v128 = v162;
      v56 = v117;
      v129 = sub_258532CCC();
      v131 = v130;
      v162 = *(v122 + 8);
      (v162)(v128, v124);
      v132 = sub_2584713B0(v129, v131, v176);

      *(v123 + 14) = v132;
      *(v123 + 22) = 2081;
      v133 = v168 & 0xFFFFFFFFFFFFLL;
      v134 = sub_25852F78C(v168 & 0xFFFFFFFFFFFFLL);
      v136 = sub_2584713B0(v134, v135, v176);

      *(v123 + 24) = v136;
      v44 = v173;
      v137 = v161;
      _os_log_impl(&dword_25845E000, v161, v148, "%s remoteIPv6Address=%{private}s, remoteMacAddress=%{private}s", v123, 0x20u);
      v138 = v147;
      swift_arrayDestroy();
      MEMORY[0x259C82900](v138, -1, -1);
      v139 = v123;
      v42 = v159;
      MEMORY[0x259C82900](v139, -1, -1);

      v140 = v158;
      v141 = v124;
    }

    else
    {

      v142 = v162;
      v162 = *(v122 + 8);
      (v162)(v142, v118);
      v141 = v118;
      v133 = v168 & 0xFFFFFFFFFFFFLL;
      v140 = v158;
    }

    v143 = v164;
    v144 = sub_2584F02A0(*v171, v164, v133);
    if (v140)
    {
      sub_2584AE960(v149, v150);
      sub_2584AE960(v152, v151);
      (v162)(v143, v141);
      return (*(v42 + 8))(v44, v160);
    }

    v145 = v144;
    v158 = 0;
    (v162)(v143, v141);
    sub_2584AE960(v152, v151);
    sub_2584AE960(v149, v150);
    host_with_numeric_port = v145;
  }

  else
  {
    v153 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface;
    isa = v2[4].isa;
    v52 = v172;
    if (!isa || (v53 = v2, v176[0] = v2[3].isa, v176[1] = isa, , sub_25853345C(), sub_2584B55D8(), v54 = sub_258533A4C(), (*(v168 + 8))(v10, v8), , !v54))
    {
      sub_2584F00E4();
      swift_allocError();
      v50 = 6;
      goto LABEL_25;
    }

    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();

    v168 = 0;
    v56 = v53;
  }

  v154 = v56;
  LODWORD(v171) = v46 ^ 1;
  swift_unknownObjectRetain();
  v57 = v44;
  v58 = sub_2584EF54C(v155);
  swift_unknownObjectRetain();
  v166 = v58;
  sub_258532EEC();
  v59 = v154;
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(&v59->isa + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_pathEvaluator) = evaluator_for_endpoint;
  swift_unknownObjectRelease();
  v61 = swift_slowAlloc();
  nw_path_evaluator_get_client_id();
  sub_25853298C();
  MEMORY[0x259C82900](v61, -1, -1);
  v62 = v174;
  v63 = v175;
  v64 = *(v174 + 16);
  v65 = v157;
  v64(v157, v52, v175);
  (*(v62 + 56))(v65, 0, 1, v63);
  v66 = v156;
  swift_beginAccess();
  sub_2584AC5D0(v65, v59 + v66, &qword_27F931360, &unk_25853CD10);
  swift_endAccess();
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v67 = sub_258532A4C();
  __swift_project_value_buffer(v67, qword_27F93CFD8);
  v68 = v57;
  v69 = v160;
  v164 = *(v159 + 16);
  (v164)(v169, v68, v160);
  v64(v170, v52, v63);

  swift_unknownObjectRetain();
  v70 = sub_258532A2C();
  v71 = v154;
  v72 = v70;
  v73 = sub_2585338EC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v161 = host_with_numeric_port;
    v75 = v74;
    v163 = swift_slowAlloc();
    v176[0] = v163;
    *v75 = 136315907;
    v177 = v71;
    type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
    v76 = v69;
    sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
    LODWORD(v162) = v73;
    v77 = sub_258533DFC();
    v79 = sub_2584713B0(v77, v78, v176);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2081;
    v80 = v169;
    (v164)(v165, v169, v76);
    v81 = sub_25853347C();
    v83 = v82;
    v165 = *(v159 + 8);
    v165(v80, v76);
    v84 = sub_2584713B0(v81, v83, v176);

    *(v75 + 14) = v84;
    *(v75 + 22) = 2081;
    v177 = host_with_numeric_port;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931380, &qword_25853CD20);
    v85 = sub_25853347C();
    v87 = sub_2584713B0(v85, v86, v176);

    *(v75 + 24) = v87;
    *(v75 + 32) = 2080;
    sub_2584F0608(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v88 = v170;
    v89 = v175;
    v90 = sub_258533DFC();
    v71 = v154;
    v91 = v90;
    v93 = v92;
    v94 = v174;
    (*(v174 + 8))(v88, v89);
    v95 = sub_2584713B0(v91, v93, v176);

    *(v75 + 34) = v95;
    _os_log_impl(&dword_25845E000, v72, v162, "%s Created path evaluator localEndpoint:%{private}s, remoteEndpoint:%{private}s, connectionID:%s", v75, 0x2Au);
    v96 = v163;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v96, -1, -1);
    MEMORY[0x259C82900](v75, -1, -1);

    swift_unknownObjectRelease();

    v165(v173, v160);
    v97 = v167;
    v98 = v175;
  }

  else
  {

    swift_unknownObjectRelease_n();

    v94 = v174;
    (*(v174 + 8))(v170, v63);
    v109 = *(v159 + 8);
    v109(v169, v69);
    v109(v173, v69);
    v97 = v167;
    v98 = v63;
  }

  v110 = v171;
  v111 = *(&v71->isa + v153);
  (*(v94 + 32))(v97, v172, v98);
  result = type metadata accessor for MediaConnectionPrerequisites(0);
  *(v97 + *(result + 20)) = v111;
  v112 = v97 + *(result + 24);
  v113 = v168;
  *(v112 + 4) = WORD2(v168);
  *v112 = v113;
  *(v112 + 6) = v110;
  return result;
}

uint64_t sub_2584EF54C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock - v3;
  v5 = sub_258532D8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = nullsub_1;
  v20 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2584EF870;
  v18 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);
  v19 = nullsub_1;
  v20 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2584EF870;
  v18 = &block_descriptor_43;
  v10 = _Block_copy(&aBlock);
  secure_udp = nw_parameters_create_secure_udp(v9, v10);
  _Block_release(v10);
  _Block_release(v9);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_useLLW0Interface) == 1)
  {
    sub_258532D9C();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_258465168(v4, &qword_27F930620, &unk_25853E7D0);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v12 = sub_258532D4C();
      nw_parameters_require_interface(secure_udp, v12);
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }

  swift_unknownObjectRetain();
  nw_parameters_set_disable_listener_datapath();
  nw_parameters_set_delegated_unique_pid();
  swift_unknownObjectRelease();
  nw_parameters_set_reuse_local_address(secure_udp, 1);
  nw_parameters_set_include_peer_to_peer(secure_udp, 1);
  v13 = sub_258532A8C();
  nw_parameters_set_local_endpoint(secure_udp, v13);
  swift_unknownObjectRelease();
  sub_258532EFC();
  return sub_258532F0C();
}

uint64_t sub_2584EF870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2584EF8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a2;
  (*(v6 + 32))(v11 + v10, v8, v5);

  sub_258532B3C();

  return sub_258532B8C();
}

void sub_2584EFA6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25853322C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258532B7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 88))(v10, v7);
    if (v13 == *MEMORY[0x277CD8B40])
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      if (v13 == *MEMORY[0x277CD8B38])
      {
        (*(v8 + 96))(v10, v7);
        (*(v4 + 32))(v6, v10, v3);
        v16 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
        if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted))
        {
          (*(v4 + 8))(v6, v3);
        }

        else
        {
          sub_2584F0608(&qword_27F9313B0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
          v20 = swift_allocError();
          (*(v4 + 16))(v21, v6, v3);
          v31 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
          sub_25853363C();
          (*(v4 + 8))(v6, v3);
          *(v12 + v16) = 1;
        }

        goto LABEL_15;
      }

      if (v13 != *MEMORY[0x277CD8B28])
      {
        if (v13 != *MEMORY[0x277CD8B48])
        {

          (*(v8 + 8))(v10, v7);
          return;
        }

        v17 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
        if ((*(v12 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted) & 1) == 0)
        {
          sub_2584F00E4();
          v18 = swift_allocError();
          *v19 = 9;
          v31 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
          sub_25853363C();
          *(v12 + v17) = 1;
        }

        goto LABEL_15;
      }
    }

    v14 = OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted;
    if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit49NetworkBackedMediaConnectionPrerequisitesProvider_listenerStarted))
    {
LABEL_15:

      return;
    }

    sub_258532B5C();
    v15 = nw_listener_copy_local_endpoint();
    swift_unknownObjectRelease();
    if (v15)
    {
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
      sub_25853364C();
      *(v12 + v14) = 1;
      goto LABEL_15;
    }

    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v22 = sub_258532A4C();
    __swift_project_value_buffer(v22, qword_27F93CFD8);

    v23 = sub_258532A2C();
    v24 = sub_2585338CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[1] = v12;
      v31 = v26;
      *v25 = 136315138;
      type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
      sub_2584F0608(&qword_27F931378, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CC98);
      v27 = sub_258533DFC();
      v29 = sub_2584713B0(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_25845E000, v23, v24, "%s No local endpoint", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C82900](v26, -1, -1);
      MEMORY[0x259C82900](v25, -1, -1);
    }
  }
}

uint64_t sub_2584EFFF4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000032, 0x8000000258541B00);
  type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  sub_2584F0608(&unk_27F931340, type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider, &unk_25853CCD0);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

unint64_t sub_2584F00E4()
{
  result = qword_27F931368;
  if (!qword_27F931368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931368);
  }

  return result;
}

uint64_t sub_2584F0138(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_2584F01F0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2584F0138(a1, &a1[a2]);
  }

  sub_25853288C();
  swift_allocObject();
  sub_25853284C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2585328FC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2584F02A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C81500](91, 0xE100000000000000);
  sub_258532CFC();
  sub_258533C8C();
  MEMORY[0x259C81500](37, 0xE100000000000000);
  MEMORY[0x259C81500](813132908, 0xE400000000000000);
  MEMORY[0x259C81500](14941, 0xE200000000000000);
  v3 = sub_258533DFC();
  MEMORY[0x259C81500](v3);

  sub_25853348C();

  v4 = StringToSockAddr();

  if (!v4)
  {
    return nw_endpoint_create_address_with_ethernet();
  }

  sub_2584F00E4();
  swift_allocError();
  *v5 = 6;
  return swift_willThrow();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2584F0478()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584F04B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2584F0588(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v3 = *(v1 + 16);

  sub_2584EFA6C(a1, v3);
}

uint64_t sub_2584F0608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for NetworkBackedMediaConnectionPrerequisitesProvider.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkBackedMediaConnectionPrerequisitesProvider.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584F07A0(uint64_t a1)
{
  result = sub_2584F00E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F07CC()
{
  result = qword_27F9313D8;
  if (!qword_27F9313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9313D8);
  }

  return result;
}

uint64_t sub_2584F0874()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2584F08A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_25853285C();
    if (v10)
    {
      v11 = sub_25853287C();
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
      result = sub_25853286C();
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
  v10 = sub_25853285C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25853287C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25853286C();
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

uint64_t sub_2584F0AD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_2584F0C64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_258467E20(a3, a4);
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
  sub_2584F08A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_258467E20(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2584F0C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25853285C();
  v11 = result;
  if (result)
  {
    result = sub_25853287C();
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

  sub_25853286C();
  sub_2584F08A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2584F0D1C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2584A7B8C(a3, a4);
          return sub_2584F0AD4(v13, a2, a3, a4) & 1;
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

uint64_t sub_2584F0E84(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for NetworkBackedNetworkInterface(0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_258532AAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258532CFC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277CD8AE0])
  {
    (*(v12 + 8))(v14, v11);
LABEL_9:
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_258533C8C();
    return v28;
  }

  (*(v12 + 96))(v14, v11);
  (*(v16 + 32))(v18, v14, v15);
  if ((sub_258532CBC() & 1) == 0)
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_9;
  }

  sub_258532CEC();
  v19 = sub_258532D8C();
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) != 1)
  {
    (*(v16 + 8))(v18, v15);
    sub_258465168(v10, &qword_27F930620, &unk_25853E7D0);
    goto LABEL_9;
  }

  sub_258465168(v10, &qword_27F930620, &unk_25853E7D0);
  sub_2584F1A9C(v27, v5);
  if ((*(v26 + 48))(v5, 1, v6) == 1)
  {
    (*(v16 + 8))(v18, v15);
    sub_258465168(v5, &qword_27F930DD8, &unk_25853CEC0);
    return 0;
  }

  else
  {
    v21 = v25;
    sub_258465104(v5, v25);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_258533C8C();
    MEMORY[0x259C81500](37, 0xE100000000000000);
    v22 = sub_258532D5C();
    MEMORY[0x259C81500](v22);

    v23 = v28;
    sub_2584D62A0(v21);
    (*(v16 + 8))(v18, v15);
    return v23;
  }
}

uint64_t sub_2584F1368(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - v6;
  v7 = sub_258532CFC();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258532C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258532AAC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = *(v15 + 16);
  v60 = a1;
  v55 = v20;
  (v20)(&v51 - v18, a1, v14);
  v21 = (*(v15 + 88))(v19, v14);
  if (v21 == *MEMORY[0x277CD8AD8])
  {
    (*(v15 + 96))(v19, v14);
    (*(v11 + 32))(v13, v19, v10);
    v58 = sub_258532C7C();
    v59 = v22;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (v21 != *MEMORY[0x277CD8AE0])
    {
      sub_258465168(v61, &qword_27F930DD8, &unk_25853CEC0);
      v45 = *(v15 + 8);
      v45(v60, v14);
      v45(v19, v14);
      return 0;
    }

    (*(v15 + 96))(v19, v14);
    v23 = v54;
    (*(v54 + 32))(v9, v19, v7);
    v58 = sub_258532CDC();
    v59 = v24;
    (*(v23 + 8))(v9, v7);
  }

  v26 = v60;
  v25 = v61;
  sub_2584F0E84(v60, v61);
  if (v27)
  {
    sub_258465168(v25, &qword_27F930DD8, &unk_25853CEC0);
    (*(v15 + 8))(v26, v14);
    return v58;
  }

  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v29 = sub_258532A4C();
  __swift_project_value_buffer(v29, qword_27F93CFD8);
  v30 = v56;
  (v55)(v56, v26, v14);
  v31 = v57;
  sub_2584F1A9C(v25, v57);
  v32 = sub_258532A2C();
  v33 = sub_2585338EC();
  if (os_log_type_enabled(v32, v33))
  {
    LODWORD(v54) = v33;
    v55 = v32;
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v62 = v52;
    *v34 = 136315394;
    v35 = sub_258532A9C();
    v37 = v36;
    v38 = v31;
    v39 = v14;
    v56 = *(v15 + 8);
    (v56)(v30, v14);
    v40 = sub_2584713B0(v35, v37, &v62);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = v53;
    sub_2584F1A9C(v38, v53);
    v42 = type metadata accessor for NetworkBackedNetworkInterface(0);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      sub_258465168(v41, &qword_27F930DD8, &unk_25853CEC0);
      v43 = 0xE300000000000000;
      v44 = 7104878;
    }

    else
    {
      v44 = sub_258532D5C();
      v43 = v47;
      sub_2584D62A0(v41);
    }

    sub_258465168(v57, &qword_27F930DD8, &unk_25853CEC0);
    v48 = sub_2584713B0(v44, v43, &v62);

    *(v34 + 14) = v48;
    v49 = v55;
    _os_log_impl(&dword_25845E000, v55, v54, "Unable to create NetworkBackedNetworkAddress, host: %s, interface: %s", v34, 0x16u);
    v50 = v52;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v50, -1, -1);
    MEMORY[0x259C82900](v34, -1, -1);
    sub_258467E20(v58, v59);

    sub_258465168(v25, &qword_27F930DD8, &unk_25853CEC0);
    (v56)(v26, v39);
  }

  else
  {
    sub_258467E20(v58, v59);

    sub_258465168(v25, &qword_27F930DD8, &unk_25853CEC0);
    v46 = *(v15 + 8);
    v46(v26, v14);
    sub_258465168(v31, &qword_27F930DD8, &unk_25853CEC0);
    v46(v30, v14);
  }

  return 0;
}

uint64_t sub_2584F1A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584F1B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2584F1B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584F1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532D8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2584F1C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532D8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NetworkBackedNetworkInterface(uint64_t a1)
{
  result = qword_27F9313E0;
  if (!qword_27F9313E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584F1CF8(uint64_t a1)
{
  result = sub_258532D8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2584F1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25853321C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2584F1E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25853321C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NetworkBackedNetworkPath(uint64_t a1)
{
  result = qword_27F9313F8;
  if (!qword_27F9313F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584F1F54(uint64_t a1)
{
  result = sub_25853321C();
  if (v2 <= 0x3F)
  {
    result = sub_2584F2020(319, &qword_27F931408, &protocol descriptor for NetworkInterface);
    if (v3 <= 0x3F)
    {
      result = sub_2584F2020(319, &unk_27F931410, &protocol descriptor for NetworkAddress);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2584F2020(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2584F207C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = sub_2585331FC();
  v216 = *(v217 - 8);
  v4 = MEMORY[0x28223BE20](v217);
  v215 = v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v214 = v193 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD8, &unk_25853CEC0);
  MEMORY[0x28223BE20](v7 - 8);
  v224 = v193 - v8;
  v235 = sub_258532B0C();
  v237 = *(v235 - 8);
  v9 = MEMORY[0x28223BE20](v235);
  v219 = v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v226 = v193 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v230 = v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v229 = v193 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v220 = v193 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v193 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DE0, &unk_25853BD80);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v221 = v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v193 - v24;
  v26 = sub_258532AAC();
  v231 = *(v26 - 8);
  v232 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v218 = v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v222 = v193 - v30;
  MEMORY[0x28223BE20](v29);
  v225 = v193 - v31;
  v223 = type metadata accessor for NetworkBackedNetworkInterface(0);
  v227 = *(v223 - 8);
  v32 = MEMORY[0x28223BE20](v223);
  v228 = v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v193 - v35;
  MEMORY[0x28223BE20](v34);
  v234 = v193 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v193 - v39;
  v41 = sub_25853321C();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v238 = v193 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v239 = (v193 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v236 = v193 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v233 = v193 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = v193 - v51;
  v53 = type metadata accessor for NetworkBackedNetworkPath(0);
  v240 = *(v53 - 8);
  v241 = v53;
  MEMORY[0x28223BE20](v53);
  v55 = v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2584F3E9C(a1, v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v56 = a2;
    sub_258465168(v40, &qword_27F931450, &qword_25853C1E0);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v57 = sub_258532A4C();
    __swift_project_value_buffer(v57, qword_27F93CFD8);
    v58 = sub_258532A2C();
    v59 = sub_2585338EC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_25845E000, v58, v59, "Unable to create NetworkBackedNetworkPath with nil path", v60, 2u);
      MEMORY[0x259C82900](v60, -1, -1);
    }

    sub_258465168(a1, &qword_27F931450, &qword_25853C1E0);
    return (*(v240 + 56))(v56, 1, 1, v241);
  }

  v212 = a1;
  v213 = a2;
  (*(v42 + 32))(v52, v40, v41);
  v61 = *(v42 + 16);
  v211 = v55;
  v210 = v61;
  v61();
  sub_2585331DC();
  v62 = nw_path_copy_connected_interface();
  swift_unknownObjectRelease();
  v63 = v62;
  v64 = v238;
  v65 = v42;
  if (!v63)
  {
LABEL_17:
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v75 = sub_258532A4C();
    __swift_project_value_buffer(v75, qword_27F93CFD8);
    v76 = v233;
    v77 = v210;
    (v210)(v233, v52, v41);
    v78 = v236;
    (v77)(v236, v52, v41);
    v79 = v239;
    (v77)(v239, v52, v41);
    (v77)(v64, v52, v41);
    v80 = sub_258532A2C();
    v81 = sub_2585338CC();
    if (!os_log_type_enabled(v80, v81))
    {

      sub_258465168(v212, &qword_27F931450, &qword_25853C1E0);
      v93 = *(v65 + 8);
      v93(v64, v41);
      v93(v79, v41);
      v93(v78, v41);
      v93(v76, v41);
      v93(v52, v41);
      v56 = v213;
      v93(v211, v41);
      return (*(v240 + 56))(v56, 1, 1, v241);
    }

    LODWORD(v231) = v81;
    v209 = v52;
    v232 = 7104878;
    v82 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v242 = v227;
    *v82 = 136315906;
    v83 = sub_2585331CC();
    v85 = v84;
    v86 = *(v65 + 8);
    v234 = v65 + 8;
    v86(v76, v41);
    v87 = sub_2584713B0(v83, v85, &v242);

    *(v82 + 4) = v87;
    *(v82 + 12) = 2080;
    sub_2585331DC();
    v88 = nw_path_copy_connected_interface();
    swift_unknownObjectRelease();
    if (v88)
    {
      v89 = v228;
      sub_258532DAC();
      v90 = sub_258532D5C();
      v92 = v91;
      sub_2584F3FB4(v89, type metadata accessor for NetworkBackedNetworkInterface);
    }

    else
    {
      v92 = 0xE300000000000000;
      v90 = 7104878;
    }

    v86(v236, v41);
    v94 = sub_2584713B0(v90, v92, &v242);

    *(v82 + 14) = v94;
    *(v82 + 22) = 2080;
    v95 = sub_2585331DC();
    v96 = v235;
    v97 = v229;
    if (v95)
    {
      if (nw_path_copy_effective_local_endpoint(v95))
      {
        sub_258532B1C();
        swift_unknownObjectRelease();
        if ((*(v237 + 48))(v97, 1, v96) != 1)
        {
          v98 = sub_258532A7C();
          v100 = v99;
          (*(v237 + 8))(v97, v96);
          goto LABEL_33;
        }

LABEL_32:
        sub_258465168(v97, &unk_27F931440, &qword_2585380E0);
        v100 = 0xE300000000000000;
        v98 = 7104878;
LABEL_33:
        v86(v239, v41);
        v113 = sub_2584713B0(v98, v100, &v242);

        *(v82 + 24) = v113;
        *(v82 + 32) = 2080;
        v114 = v238;
        v115 = sub_2585331DC();
        v56 = v213;
        if (v115)
        {
          if (nw_path_copy_effective_remote_endpoint(v115))
          {
            v116 = v230;
            sub_258532B1C();
            v117 = v116;
            swift_unknownObjectRelease();
            v118 = v237;
            if ((*(v237 + 48))(v117, 1, v96) != 1)
            {
              v119 = v117;
              v232 = sub_258532A7C();
              v121 = v120;
              v122 = v119;
              v114 = v238;
              (*(v118 + 8))(v122, v96);
LABEL_40:
              v86(v114, v41);
              v123 = sub_2584713B0(v232, v121, &v242);

              *(v82 + 34) = v123;
              _os_log_impl(&dword_25845E000, v80, v231, "Unable to create NetworkBackedNetworkPath with path: %s, localInterface: %s, localEndpoint: %s, remoteEndpoint: %s", v82, 0x2Au);
              v124 = v227;
              swift_arrayDestroy();
              MEMORY[0x259C82900](v124, -1, -1);
              MEMORY[0x259C82900](v82, -1, -1);

              sub_258465168(v212, &qword_27F931450, &qword_25853C1E0);
              v86(v209, v41);
              v86(v211, v41);
              return (*(v240 + 56))(v56, 1, 1, v241);
            }

LABEL_39:
            sub_258465168(v117, &unk_27F931440, &qword_2585380E0);
            v121 = 0xE300000000000000;
            goto LABEL_40;
          }

          swift_unknownObjectRelease();
        }

        v117 = v230;
        (*(v237 + 56))(v230, 1, 1, v96);
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }

    (*(v237 + 56))(v97, 1, 1, v96);
    goto LABEL_32;
  }

  sub_258532DAC();
  v66 = v36;
  v67 = v234;
  sub_258465104(v66, v234);
  v68 = sub_2585331DC();
  if (!v68)
  {
    sub_2584F3FB4(v67, type metadata accessor for NetworkBackedNetworkInterface);
    v70 = v237;
LABEL_14:
    (*(v70 + 56))(v20, 1, 1, v235);
    goto LABEL_15;
  }

  v69 = nw_path_copy_effective_local_endpoint(v68);
  v70 = v237;
  if (!v69)
  {
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v209 = v52;
  sub_258532B1C();
  swift_unknownObjectRelease();
  v71 = *(v70 + 48);
  v72 = v235;
  if (v71(v20, 1, v235) == 1)
  {
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    v52 = v209;
    v64 = v238;
LABEL_15:
    v74 = v231;
    v73 = v232;
    sub_258465168(v20, &unk_27F931440, &qword_2585380E0);
    (*(v74 + 56))(v25, 1, 1, v73);
LABEL_16:
    sub_258465168(v25, &qword_27F930DE0, &unk_25853BD80);
    goto LABEL_17;
  }

  v207 = v71;
  v208 = v70 + 48;
  v101 = *(v70 + 16);
  v102 = v226;
  v205 = v70 + 16;
  v204 = v101;
  v101(v226, v20, v72);
  v103 = *(v70 + 88);
  v203 = v70 + 88;
  v202 = v103;
  v104 = v103(v102, v72);
  v201 = *MEMORY[0x277CD8B08];
  if (v104 == v201)
  {
    (*(v70 + 96))(v102, v72);
    v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
    v106 = v231;
    v105 = v232;
    (*(v231 + 32))(v25, v102, v232);
    v107 = sub_258532AEC();
    v108 = &v102[v206];
    v109 = v106;
    (*(*(v107 - 8) + 8))(v108, v107);
    v226 = *(v106 + 56);
    (v226)(v25, 0, 1, v105);
    v111 = v70 + 8;
    v110 = *(v70 + 8);
    v112 = v111 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  else
  {
    v126 = v70 + 8;
    v110 = *(v70 + 8);
    v112 = v126 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v110(v102, v72);
    v109 = v231;
    v105 = v232;
    v226 = *(v231 + 56);
    (v226)(v25, 1, 1, v232);
  }

  v206 = v112;
  v110(v20, v72);
  v127 = *(v109 + 48);
  v128 = v127(v25, 1, v105);
  v64 = v238;
  if (v128 == 1)
  {
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    v52 = v209;
    goto LABEL_16;
  }

  v196 = v127;
  v197 = v109 + 48;
  v198 = v110;
  v129 = *(v109 + 32);
  v130 = v225;
  v195 = v109 + 32;
  v194 = v129;
  v129(v225, v25, v105);
  v131 = *(v109 + 16);
  v132 = v222;
  v193[1] = v109 + 16;
  v193[0] = v131;
  v131(v222, v130, v105);
  v133 = *(v227 + 56);
  v134 = v224;
  v227 += 56;
  v133(v224, 1, 1, v223);
  v135 = sub_2584F1368(v132, v134);
  if (!v138)
  {
    (*(v109 + 8))(v130, v105);
    v147 = v234;
LABEL_51:
    sub_2584F3FB4(v147, type metadata accessor for NetworkBackedNetworkInterface);
    v52 = v209;
    goto LABEL_17;
  }

  v139 = v137;
  v140 = v138;
  v199 = v135;
  v200 = v136;
  v141 = sub_2585331DC();
  if (!v141)
  {
    sub_2584D6360(v199, v200, v139, v140);
    v52 = v209;
    v143 = v225;
    v144 = v220;
LABEL_54:
    v146 = v232;
    (*(v231 + 8))(v143, v232);
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    (*(v237 + 56))(v144, 1, 1, v235);
    goto LABEL_55;
  }

  v142 = nw_path_copy_effective_remote_endpoint(v141);
  v143 = v225;
  v144 = v220;
  if (!v142)
  {
    sub_2584D6360(v199, v200, v139, v140);
    swift_unknownObjectRelease();
    v52 = v209;
    goto LABEL_54;
  }

  sub_258532B1C();
  swift_unknownObjectRelease();
  v145 = v235;
  if (v207(v144, 1, v235) == 1)
  {
    sub_2584D6360(v199, v200, v139, v140);
    v146 = v232;
    (*(v231 + 8))(v143, v232);
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    v52 = v209;
    v64 = v238;
LABEL_55:
    sub_258465168(v144, &unk_27F931440, &qword_2585380E0);
    v25 = v221;
    (v226)(v221, 1, 1, v146);
    goto LABEL_16;
  }

  v207 = v133;
  v208 = v139;
  v148 = v219;
  v204(v219, v144, v145);
  v149 = v202(v148, v145);
  v52 = v209;
  if (v149 == v201)
  {
    (*(v237 + 96))(v148, v145);
    v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9313A0, &unk_25853D090) + 48);
    v25 = v221;
    v194(v221, v148, v232);
    v151 = sub_258532AEC();
    (*(*(v151 - 8) + 8))(&v148[v150], v151);
    v152 = 0;
  }

  else
  {
    v198(v148, v145);
    v152 = 1;
    v25 = v221;
  }

  v154 = v231;
  v153 = v232;
  (v226)(v25, v152, 1, v232);
  v198(v144, v145);
  if (v196(v25, 1, v153) == 1)
  {
    sub_2584D6360(v199, v200, v208, v140);
    (*(v154 + 8))(v225, v232);
    sub_2584F3FB4(v234, type metadata accessor for NetworkBackedNetworkInterface);
    v64 = v238;
    goto LABEL_16;
  }

  v226 = v140;
  v155 = v218;
  v156 = v232;
  v194(v218, v25, v232);
  v157 = v222;
  (v193[0])(v222, v155, v156);
  v158 = v234;
  v159 = v224;
  sub_2584F3F4C(v234, v224, type metadata accessor for NetworkBackedNetworkInterface);
  v160 = v223;
  (v207)(v159, 0, 1, v223);
  v161 = sub_2584F1368(v157, v159);
  v64 = v238;
  if (!v164)
  {
    sub_2584D6360(v199, v200, v208, v226);
    v191 = v232;
    v192 = *(v231 + 8);
    v192(v155, v232);
    v192(v225, v191);
    v147 = v158;
    goto LABEL_51;
  }

  v165 = v164;
  v166 = *(v241 + 20);
  v167 = v241;
  v168 = v158;
  v169 = v211;
  v238 = v161;
  v170 = &v211[v166];
  v170[3] = v160;
  v170[4] = &off_2869900B8;
  v236 = v162;
  v237 = v163;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
  v239 = type metadata accessor for NetworkBackedNetworkInterface;
  sub_2584F3F4C(v168, boxed_opaque_existential_1, type metadata accessor for NetworkBackedNetworkInterface);
  v172 = v167;
  v173 = (v169 + *(v167 + 24));
  v173[3] = &type metadata for NetworkBackedNetworkAddress;
  v173[4] = &off_2869900A0;
  v174 = swift_allocObject();
  *v173 = v174;
  v175 = v200;
  v174[2] = v199;
  v174[3] = v175;
  v176 = v226;
  v174[4] = v208;
  v174[5] = v176;
  v177 = (v169 + *(v172 + 28));
  v177[3] = &type metadata for NetworkBackedNetworkAddress;
  v177[4] = &off_2869900A0;
  v178 = swift_allocObject();
  *v177 = v178;
  v180 = v236;
  v179 = v237;
  v178[2] = v238;
  v178[3] = v180;
  v178[4] = v179;
  v178[5] = v165;
  v181 = v214;
  v182 = v209;
  sub_25853320C();
  v183 = v216;
  v184 = v215;
  v185 = v217;
  (*(v216 + 104))(v215, *MEMORY[0x277CD8F78], v217);
  LOBYTE(v172) = sub_2585331EC();
  sub_258465168(v212, &qword_27F931450, &qword_25853C1E0);
  v186 = *(v183 + 8);
  v186(v184, v185);
  v186(v181, v185);
  v187 = v232;
  v188 = *(v231 + 8);
  v188(v218, v232);
  v188(v225, v187);
  sub_2584F3FB4(v234, v239);
  (*(v65 + 8))(v182, v41);
  v189 = v241;
  *(v169 + *(v241 + 32)) = v172 & 1;
  v190 = v213;
  sub_2584F3F4C(v169, v213, type metadata accessor for NetworkBackedNetworkPath);
  (*(v240 + 56))(v190, 0, 1, v189);
  return sub_2584F3FB4(v169, type metadata accessor for NetworkBackedNetworkPath);
}

uint64_t sub_2584F3AF4()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414B0);
  type metadata accessor for NetworkBackedNetworkPath(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931420, &unk_258535450);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000010, 0x80000002585414D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930DD0, &unk_25853BD70);
  sub_258533C8C();
  MEMORY[0x259C81500](0xD000000000000011, 0x80000002585414F0);
  sub_258533C8C();
  MEMORY[0x259C81500](0x7461705F776E202CLL, 0xEB00000000203A68);
  sub_2585331DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931430, &qword_25853D088);
  sub_258533C8C();
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_2584F3CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBackedNetworkPath(0);
  __swift_project_boxed_opaque_existential_1((a1 + v4[5]), *(a1 + v4[5] + 24));
  v5 = sub_258532D5C();
  v7 = v6;
  __swift_project_boxed_opaque_existential_1((a2 + v4[5]), *(a2 + v4[5] + 24));
  if (v5 == sub_258532D5C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_258533E2C();

    if ((v10 & 1) == 0)
    {
LABEL_11:
      v25 = 0;
      return v25 & 1;
    }
  }

  v11 = __swift_project_boxed_opaque_existential_1((a1 + v4[6]), *(a1 + v4[6] + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = __swift_project_boxed_opaque_existential_1((a2 + v4[6]), *(a2 + v4[6] + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_2584A7B8C(v12, v13);
  sub_2584A7B8C(v15, v16);
  v17 = sub_2584F0D1C(v12, v13, v15, v16);
  sub_258467E20(v15, v16);
  sub_258467E20(v12, v13);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = __swift_project_boxed_opaque_existential_1((a1 + v4[7]), *(a1 + v4[7] + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = __swift_project_boxed_opaque_existential_1((a2 + v4[7]), *(a2 + v4[7] + 24));
  v22 = *v21;
  v23 = v21[1];
  sub_2584A7B8C(v19, v20);
  sub_2584A7B8C(v22, v23);
  v24 = sub_2584F0D1C(v19, v20, v22, v23);
  sub_258467E20(v22, v23);
  sub_258467E20(v19, v20);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  return v25 & 1;
}

uint64_t sub_2584F3E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584F3F0C()
{
  sub_258467E20(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2584F3F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584F3FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2584F4014()
{
  v15 = MEMORY[0x277D84F90];
  sub_2584F9378(0, 6, 0);
  v0 = v15;
  v2 = *(v15 + 16);
  v1 = *(v15 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_2584F9378((v1 > 1), v2 + 1, 1);
    v0 = v15;
    v1 = *(v15 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + 8 * v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_2584F9378((v1 > 1), v2 + 2, 1);
    v0 = v15;
  }

  *(v0 + 16) = v5;
  *(v0 + 8 * v4 + 32) = 1;
  v6 = *(v0 + 24);
  v7 = v2 + 3;
  if ((v2 + 3) > (v6 >> 1))
  {
    sub_2584F9378((v6 > 1), v2 + 3, 1);
  }

  v8 = v15;
  *(v15 + 16) = v7;
  *(v15 + 8 * v5 + 32) = 2;
  v9 = *(v15 + 24);
  v10 = v2 + 4;
  if ((v2 + 4) > (v9 >> 1))
  {
    sub_2584F9378((v9 > 1), v2 + 4, 1);
    v8 = v15;
  }

  *(v8 + 16) = v10;
  *(v8 + 8 * v7 + 32) = 3;
  v11 = *(v8 + 24);
  v12 = v2 + 5;
  if ((v2 + 5) > (v11 >> 1))
  {
    sub_2584F9378((v11 > 1), v2 + 5, 1);
    v8 = v15;
  }

  *(v8 + 16) = v12;
  *(v8 + 8 * v10 + 32) = 4;
  v13 = *(v8 + 24);
  if ((v2 + 6) > (v13 >> 1))
  {
    sub_2584F9378((v13 > 1), v2 + 6, 1);
  }

  result = v15;
  *(v15 + 16) = v2 + 6;
  *(v15 + 8 * v12 + 32) = 5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit9HistogramVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_2584F424C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2584F4294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2584F434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2584F4394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryEvent.SessionActivatingInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryEvent.SessionActivatingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2584F44C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2584F4508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit14TelemetryEventO(uint64_t a1)
{
  if ((*(a1 + 49) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 49) & 0xF;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2584F45A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 50))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 49);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584F45DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_2584F462C(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 49) = a2;
  return result;
}

uint64_t sub_2584F4668()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2584F46BC(uint64_t a1)
{
  result = sub_2584F46E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584F46E4()
{
  result = qword_27F931458;
  if (!qword_27F931458)
  {
    type metadata accessor for NullTelemetryServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931458);
  }

  return result;
}

uint64_t sub_2584F4738(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
    v2 = sub_258533CDC();
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
    sub_258472C68(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2584F6C74(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2584F6C74(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2584F6C74(v31, v32);
    result = sub_258533B0C();
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
    result = sub_2584F6C74(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2584F4A00(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v52 = *a1;
  v48 = a1[2];
  v49 = a1[1];
  v50 = a1[3];
  v51 = *(a1 + 32);
  v53 = *(a1 + 33);
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0x6E6F6973736553;
  *(v3 + 136) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FF70, &qword_25853D620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25853D3F0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD00000000000003BLL;
  *(v5 + 40) = 0x8000000258541D10;
  *(v5 + 56) = v6;
  *(v5 + 64) = 0xD00000000000002ELL;
  *(v5 + 72) = 0x8000000258541D50;
  *(v5 + 88) = v6;
  *(v5 + 96) = 0xD000000000000038;
  *(v5 + 104) = 0x8000000258541D80;
  *(v5 + 120) = v6;
  *(v5 + 128) = 0xD000000000000038;
  *(v5 + 136) = 0x8000000258541DC0;
  *(v5 + 184) = v6;
  *(v5 + 152) = v6;
  *(v5 + 160) = 0xD00000000000003ELL;
  *(v5 + 168) = 0x8000000258541E00;
  *(v3 + 144) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314B0, &qword_25853D628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25853D400;
  v8 = *MEMORY[0x277D44028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314B8, &qword_25853D630);
  sub_2584F6CD0();
  sub_258533B2C();
  *(inited + 96) = v6;
  *(inited + 72) = 0xD00000000000001CLL;
  *(inited + 80) = 0x800000025853FF50;
  v9 = *MEMORY[0x277D44030];
  sub_258533B2C();
  *(inited + 168) = MEMORY[0x277D849A8];
  *(inited + 144) = 51;
  v10 = *MEMORY[0x277D44040];
  sub_258533B2C();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_2584F6DD0();
  *(inited + 240) = v12;
  *(inited + 216) = v11;
  v13 = *MEMORY[0x277D44080];
  sub_258533B2C();
  v14 = sub_25853294C();
  *(inited + 312) = v6;
  *(inited + 288) = v14;
  *(inited + 296) = v15;
  v16 = *MEMORY[0x277D44070];
  sub_258533B2C();
  v17 = sub_25853294C();
  *(inited + 384) = v6;
  *(inited + 360) = v17;
  *(inited + 368) = v18;
  v19 = *MEMORY[0x277D44010];
  sub_258533B2C();
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 456) = v12;
  *(inited + 432) = v20;
  v21 = *MEMORY[0x277D44050];
  sub_258533B2C();
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 528) = v12;
  *(inited + 504) = v22;
  sub_2584F8448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314D0, &qword_25853D638);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314D8, &qword_25853D640);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_25853D410;
  result = *MEMORY[0x277D44090];
  if (!*MEMORY[0x277D44090])
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v23 + 32) = sub_25853342C();
  *(v23 + 40) = v25;
  if (v53)
  {
    if (!(v48 | v49 | v52 | v50) && !v51)
    {
      goto LABEL_5;
    }

    v47 = v48 | v49 | v50;
    if (v51 || v52 != 1 || v47)
    {
      if (!v51 && v52 == 2 && !v47)
      {
LABEL_5:
        v26 = 0x8000000258541E60;
        v27 = 0xD000000000000010;
        goto LABEL_7;
      }

      if (v51 || v52 != 3 || v47)
      {
        v26 = 0x8000000258541E40;
        v27 = 0xD000000000000011;
      }

      else
      {
        v26 = 0xEC0000006172656DLL;
        v27 = 0x614365746F6D6552;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x79616C70726961;
    }
  }

  else
  {
    v26 = 0x8000000258541E80;
    v27 = 0xD000000000000012;
  }

LABEL_7:
  *(v23 + 72) = v6;
  *(v23 + 48) = v27;
  *(v23 + 56) = v26;
  result = *MEMORY[0x277D44098];
  if (!*MEMORY[0x277D44098])
  {
LABEL_31:
    __break(1u);
    return result;
  }

  *(v23 + 80) = sub_25853342C();
  *(v23 + 88) = v28;
  v29 = *(v3 + 136);
  *(v23 + 96) = *(v3 + 128);
  *(v23 + 104) = v29;
  *(v23 + 120) = v6;
  *(v23 + 128) = 1145654339;
  *(v23 + 136) = 0xE400000000000000;

  v30 = sub_25853294C();
  *(v23 + 168) = v6;
  *(v23 + 144) = v30;
  *(v23 + 152) = v31;
  v32 = sub_2584F8584(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314E0, &qword_25853D648);
  swift_arrayDestroy();
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v54 = a2;
  v33 = sub_258532A4C();
  __swift_project_value_buffer(v33, qword_27F93D038);
  v34 = sub_258532A2C();
  v35 = sub_2585338EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_25845E000, v34, v35, "Creating reporting agent", v36, 2u);
    MEMORY[0x259C82900](v36, -1, -1);
  }

  sub_2584F4738(v32);

  v37 = objc_allocWithZone(MEMORY[0x277D43FE0]);

  v38 = sub_25853336C();

  v39 = sub_25853336C();

  v40 = sub_2585335CC();

  v41 = [v37 initWithSessionInfo:v38 userInfo:v39 frameworksToCheck:v40];

  if (v41)
  {
    v42 = sub_2585329BC();
    (*(*(v42 - 8) + 8))(a2, v42);
    *(v3 + 112) = v41;
  }

  else
  {
    v43 = sub_258532A2C();
    v44 = sub_2585338CC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_25845E000, v43, v44, "Failed to create reporting agent", v45, 2u);
      MEMORY[0x259C82900](v45, -1, -1);
    }

    type metadata accessor for RTCBackedTelemetryServer();
    swift_defaultActor_destroy();
    v46 = sub_2585329BC();
    (*(*(v46 - 8) + 8))(v54, v46);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_2584F5224()
{
  v36 = v0;
  v1 = v0[8];
  if (*(v1 + 120))
  {
    sub_2584F6C20();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v2;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D038);

    v6 = v2;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315394;
      v0[2] = v9;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v12, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v13 = sub_258533DFC();
      v15 = sub_2584713B0(v13, v14, v35);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v0[2] = v2;
      v16 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      v17 = sub_25853347C();
      v19 = sub_2584713B0(v17, v18, v35);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_25845E000, v7, v8, "%s failed to activate with error:%s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    *(v1 + 120) = 3;
    swift_willThrow();

    v20 = v0[1];
  }

  else
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v21 = sub_258532A4C();
    __swift_project_value_buffer(v21, qword_27F93D038);

    v22 = sub_258532A2C();
    v23 = sub_2585338EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[8];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      v0[2] = v24;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v27, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v28 = sub_258533DFC();
      v30 = sub_2584713B0(v28, v29, v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_25845E000, v22, v23, "%s Starting reporting agent", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C82900](v26, -1, -1);
      MEMORY[0x259C82900](v25, -1, -1);
    }

    v31 = v0[8];
    v32 = *(v31 + 112);
    v0[6] = sub_2584F6CB0;
    v0[7] = v31;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2584F672C;
    v0[5] = &block_descriptor_18;
    v33 = _Block_copy(v0 + 2);

    [v32 startConfigurationWithCompletionHandler_];
    _Block_release(v33);
    *(v1 + 120) = 1;
    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_2584F571C()
{
  v17 = v0;
  v1 = v0[18];
  if (*(v1 + 120) == 1)
  {
    *(v1 + 120) = 2;
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    v0[19] = __swift_project_value_buffer(v2, qword_27F93D038);

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[18];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v0[10] = v5;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v8, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v9 = sub_258533DFC();
      v11 = sub_2584713B0(v9, v10, &v16);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_25845E000, v3, v4, "%s Terminating reporting agent", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    v12 = *(v0[18] + 112);
    v0[2] = v0;
    v0[3] = sub_2584F5A04;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A8, &unk_25853D610);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2584F5C8C;
    v0[13] = &block_descriptor_4;
    v0[14] = v13;
    [v12 terminateSessionWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2584F5A04()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2584F5AF8, v1, 0);
}

uint64_t sub_2584F5AF8()
{
  v13 = v0;

  v1 = sub_258532A2C();
  v2 = sub_2585338EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[10] = v3;
    type metadata accessor for RTCBackedTelemetryServer();
    sub_2584F6D88(&qword_27F931490, v6, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
    v7 = sub_258533DFC();
    v9 = sub_2584713B0(v7, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_25845E000, v1, v2, "%s Terminated reporting agent", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2584F5C8C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2584F5CC0(uint64_t a1)
{
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;

  return MEMORY[0x2822009F8](sub_2584F5D54, v1, 0);
}

uint64_t sub_2584F5D54()
{
  v76 = v0;
  v75[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 624);
  v2 = *(v1 + 120);
  if (!*(v1 + 120))
  {
    sub_2584F6C20();
    swift_allocError();
    *v5 = 0;
    goto LABEL_8;
  }

  if (v2 == 2)
  {
    sub_2584F6C20();
    swift_allocError();
    v4 = 2;
    goto LABEL_6;
  }

  if (v2 == 3)
  {
    sub_2584F6C20();
    swift_allocError();
    v4 = 3;
LABEL_6:
    *v3 = v4;
LABEL_8:
    swift_willThrow();
LABEL_9:
    v6 = *(v0 + 8);
    goto LABEL_10;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 616);
  v9 = sub_258532A4C();
  __swift_project_value_buffer(v9, qword_27F93D038);
  sub_258464C30(v8, v0 + 496);

  v10 = sub_258532A2C();
  v11 = sub_2585338EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 624);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v75[0] = v14;
    *v13 = 136315394;
    *(v0 + 536) = v12;
    type metadata accessor for RTCBackedTelemetryServer();
    sub_2584F6D88(&qword_27F931490, v15, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
    v16 = sub_258533DFC();
    v18 = sub_2584713B0(v16, v17, v75);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_258464C30(v0 + 496, v0 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
    v19 = sub_25853347C();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    v22 = sub_2584713B0(v19, v21, v75);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_25845E000, v10, v11, "%s Publishing report: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v14, -1, -1);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  }

  sub_258464C30(*(v0 + 616), v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931478, &qword_25853D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931480, &qword_25853D5F8);
  if (swift_dynamicCast())
  {
    sub_258464C18((v0 + 576), v0 + 496);
    sub_258464C30(v0 + 496, v0 + 536);

    v23 = sub_258532A2C();
    v24 = sub_2585338EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 624);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v75[0] = v27;
      *v26 = 136315394;
      *(v0 + 576) = v25;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v28, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v29 = sub_258533DFC();
      v31 = sub_2584713B0(v29, v30, v75);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = __swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
      v34 = v32[1];
      v33 = v32[2];
      *(v0 + 16) = *v32;
      *(v0 + 32) = v34;
      *(v0 + 48) = v33;
      v35 = v32[6];
      v37 = v32[3];
      v36 = v32[4];
      *(v0 + 96) = v32[5];
      *(v0 + 112) = v35;
      *(v0 + 64) = v37;
      *(v0 + 80) = v36;
      v38 = v32[10];
      v40 = v32[7];
      v39 = v32[8];
      *(v0 + 160) = v32[9];
      *(v0 + 176) = v38;
      *(v0 + 128) = v40;
      *(v0 + 144) = v39;
      v41 = v32[14];
      v43 = v32[11];
      v42 = v32[12];
      *(v0 + 224) = v32[13];
      *(v0 + 240) = v41;
      *(v0 + 192) = v43;
      *(v0 + 208) = v42;
      sub_2584F6EB8();
      v44 = sub_25853338C();
      v46 = v45;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
      v47 = sub_2584713B0(v44, v46, v75);

      *(v26 + 14) = v47;
      _os_log_impl(&dword_25845E000, v23, v24, "%s Publishing report payload: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v27, -1, -1);
      MEMORY[0x259C82900](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    }

    v57 = *(*(v0 + 624) + 112);
    v58 = __swift_project_boxed_opaque_existential_1((v0 + 496), *(v0 + 520));
    v60 = v58[1];
    v59 = v58[2];
    *(v0 + 256) = *v58;
    *(v0 + 272) = v60;
    *(v0 + 288) = v59;
    v61 = v58[6];
    v63 = v58[3];
    v62 = v58[4];
    *(v0 + 336) = v58[5];
    *(v0 + 352) = v61;
    *(v0 + 304) = v63;
    *(v0 + 320) = v62;
    v64 = v58[10];
    v66 = v58[7];
    v65 = v58[8];
    *(v0 + 400) = v58[9];
    *(v0 + 416) = v64;
    *(v0 + 368) = v66;
    *(v0 + 384) = v65;
    v67 = v58[14];
    v69 = v58[11];
    v68 = v58[12];
    *(v0 + 464) = v58[13];
    *(v0 + 480) = v67;
    *(v0 + 432) = v69;
    *(v0 + 448) = v68;
    v70 = sub_2584F6EB8();
    sub_2584F4738(v70);

    v71 = sub_25853336C();

    *(v0 + 536) = 0;
    LODWORD(v57) = [v57 sendMessageWithCategory:1 type:0 payload:v71 error:v0 + 536];

    v72 = *(v0 + 536);
    if (!v57)
    {
      v74 = v72;
      sub_2585328BC();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
      goto LABEL_9;
    }

    v73 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
  }

  else
  {
    *(v0 + 608) = 0;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    sub_2584F6BB8(v0 + 576);

    v48 = sub_258532A2C();
    v49 = sub_2585338BC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 624);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75[0] = v52;
      *v51 = 136315138;
      *(v0 + 496) = v50;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v53, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v54 = sub_258533DFC();
      v56 = sub_2584713B0(v54, v55, v75);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_25845E000, v48, v49, "%s ignoring report ", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C82900](v52, -1, -1);
      MEMORY[0x259C82900](v51, -1, -1);
    }
  }

  v6 = *(v0 + 8);
LABEL_10:

  return v6();
}

void sub_2584F6560(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v2 = sub_258532A4C();
    __swift_project_value_buffer(v2, qword_27F93D038);

    oslog = sub_258532A2C();
    v3 = sub_2585338CC();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      type metadata accessor for RTCBackedTelemetryServer();
      sub_2584F6D88(&qword_27F931490, v6, type metadata accessor for RTCBackedTelemetryServer, &unk_25853D530);
      v7 = sub_258533DFC();
      v9 = sub_2584713B0(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_25845E000, oslog, v3, "%s RTCReporting has no backends", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2584F672C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2585335DC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}