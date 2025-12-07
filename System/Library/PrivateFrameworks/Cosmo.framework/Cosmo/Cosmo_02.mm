uint64_t sub_247D8AB60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D90318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D8AC1C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_247D6ACFC(v1);
  return v1;
}

uint64_t sub_247D8AC6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_247D6A24C(v5, v6);
}

uint64_t CosmoConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CosmoConnection.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name);

  return v1;
}

uint64_t CosmoConnection.__allocating_init(descriptor:connection:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(a1, v8);
  type metadata accessor for CosmoConnection(0);
  v9 = swift_allocObject();
  sub_247D8AE8C(v8, 0, a2, a3);
  sub_247D8690C(a1);
  return v9;
}

_OWORD *sub_247D8AE8C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v71 = a4;
  v72 = a3;
  v63 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73978, &qword_247DD5268);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = v52 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73980, &qword_247DD5270);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v53 = v52 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  *&v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73990, &qword_247DD5280);
  MEMORY[0x28223BE20](v12 - 8);
  *&v67 = v52 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73998, &qword_247DD5288);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v54 = v52 - v14;
  v56 = sub_247DD2F6C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v17);
  v18 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_247DD225C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0u;
  v4[3] = 0u;
  v4[1] = 0u;
  v23 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener) = 0;
  sub_247DD224C();
  (*(v20 + 32))(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_id, v22, v19);
  v70 = a1;
  sub_247D86A04(a1, v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor);
  v24 = v71;
  if (v71)
  {
    v25 = v71;
  }

  else
  {
    v52[1] = sub_247D6A0F4();
    sub_247DD2A1C();
    *&v74 = MEMORY[0x277D84F90];
    sub_247D9045C(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    (*(v55 + 104))(v16, *MEMORY[0x277D85260], v56);
    v25 = sub_247DD2F8C();
    v24 = v71;
  }

  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue) = v25;
  *(v4 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_initiated) = v63 & 1;
  *(v4 + v23) = v72;
  v71 = v24;

  sub_247DD263C();
  v26 = v68;
  if (qword_27EE732F0 != -1)
  {
    swift_once();
  }

  v27 = v66;
  __swift_project_value_buffer(v66, qword_27EE74060);
  sub_247DD2E5C();

  sub_247D6AE30(&qword_27EE739C0, &qword_27EE73988, &qword_247DD5278, MEMORY[0x277D85AC0]);
  v28 = v64;
  sub_247DD236C();
  v29 = v67;
  sub_247DD238C();
  (*(v65 + 8))(v28, v27);

  v30 = v69;
  if ((*(v26 + 48))(v29, 1, v69) == 1)
  {
    sub_247D6BAD4(v29, &qword_27EE73990, &qword_247DD5280);
    sub_247DD263C();
    if (qword_27EE732F8 != -1)
    {
      swift_once();
    }

    v31 = v59;
    __swift_project_value_buffer(v59, qword_27EE74078);
    sub_247DD2E5C();

    sub_247D6AE30(&qword_27EE739C8, &qword_27EE73970, &qword_247DD5260, MEMORY[0x277D85AC0]);
    v32 = v57;
    sub_247DD236C();
    v33 = v60;
    sub_247DD238C();
    (*(v58 + 8))(v32, v31);

    v34 = v61;
    v35 = v62;
    if ((*(v61 + 48))(v33, 1, v62) == 1)
    {
      sub_247D6BAD4(v33, &qword_27EE73978, &qword_247DD5268);
      v36 = sub_247DD263C();
      v38 = v37;

      sub_247D8690C(v70);
    }

    else
    {
      v46 = v53;
      (*(v34 + 32))(v53, v33, v35);
      sub_247DD239C();

      v47 = MEMORY[0x24C1BA020](v77, v78, v79, v80);
      v49 = v48;

      *&v74 = v47;
      *(&v74 + 1) = v49;

      MEMORY[0x24C1BA0A0](0xD000000000000015, 0x8000000247DD9170);

      v38 = *(&v74 + 1);
      v36 = v74;
      sub_247D8690C(v70);
      (*(v34 + 8))(v46, v35);
    }
  }

  else
  {
    v39 = v54;
    (*(v26 + 32))(v54, v29, v30);
    sub_247DD239C();

    v65 = v81;
    v41 = v82;
    v40 = v83;
    v67 = v84;
    v42 = v86;
    v66 = v85;
    v43 = MEMORY[0x24C1BA020](v77, v78, v79, v80);
    v45 = v44;

    *&v74 = v43;
    *(&v74 + 1) = v45;

    MEMORY[0x24C1BA0A0](0xD000000000000018, 0x8000000247DD9190);

    v73 = v74;
    v74 = v65;
    v75 = v41;
    v76 = v40;
    sub_247D83AE8();
    sub_247DD2D9C();

    v74 = v73;

    MEMORY[0x24C1BA0A0](10272, 0xE200000000000000);

    v73 = v74;
    v74 = v67;
    v75 = v66;
    v76 = v42;
    sub_247DD2D9C();

    v74 = v73;

    MEMORY[0x24C1BA0A0](23849, 0xE200000000000000);

    v38 = *(&v74 + 1);
    v36 = v74;
    sub_247D8690C(v70);
    (*(v26 + 8))(v39, v30);
  }

  v50 = (v5 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_name);
  *v50 = v36;
  v50[1] = v38;
  return v5;
}

uint64_t sub_247D8BC48(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {

    v2 = sub_247D8BEA8(v1);
    v4 = v3;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v5 = sub_247DD23CC();
    __swift_project_value_buffer(v5, qword_27EE7B878);

    v6 = sub_247DD23AC();
    v7 = sub_247DD2F2C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_247D72868(v2, v4, &v12);
      _os_log_impl(&dword_247D56000, v6, v7, "Starting %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x24C1BAF60](v9, -1, -1);
      MEMORY[0x24C1BAF60](v8, -1, -1);
    }

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v2;
    v11[4] = v4;

    sub_247D6ACFC(sub_247D90404);
    sub_247DD264C();

    sub_247DD269C();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D8BEA8(uint64_t a1)
{
  if (a1)
  {
    sub_247DD258C();
    v1 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v1);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v3 = 4401184;
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v5 = sub_247D88148();
  MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
  MEMORY[0x24C1BA0A0](v3, v2);

  return v5;
}

void sub_247D8BF98(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v177 = a4;
  v174 = a3;
  v5 = sub_247DD249C();
  MEMORY[0x28223BE20](v5 - 8);
  v165 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v169 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v157 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v166 = &v157 - v14;
  MEMORY[0x28223BE20](v13);
  v171 = (&v157 - v15);
  v178 = sub_247DD294C();
  v16 = *(v178 - 8);
  v17 = MEMORY[0x28223BE20](v178);
  v19 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v157 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v167 = &v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = &v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v173 = (&v157 - v28);
  MEMORY[0x28223BE20](v27);
  v176 = &v157 - v29;
  v164 = sub_247DD2ABC();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = (&v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = sub_247DD280C();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = (&v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for NetworkDescriptor(0);
  v32 = MEMORY[0x28223BE20](v172);
  v168 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v170 = &v157 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v157 - v36;
  v38 = sub_247DD268C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v43 = Strong;
  (*(v39 + 16))(v41, a1, v38);
  v44 = (*(v39 + 88))(v41, v38);
  if (v44 == *MEMORY[0x277CD8DE8])
  {
    v158 = v43;
    (*(v39 + 96))(v41, v38);
    v45 = v16;
    v46 = v178;
    v172 = *(v16 + 32);
    v172(v22, v41, v178);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v47 = sub_247DD23CC();
    __swift_project_value_buffer(v47, qword_27EE7B878);
    v173 = *(v16 + 16);
    v173(v19, v22, v46);
    v48 = v177;

    v49 = sub_247DD23AC();
    v50 = sub_247DD2F2C();

    LODWORD(v176) = v50;
    if (os_log_type_enabled(v49, v50))
    {
      v171 = v49;
      v51 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v180[0] = v170;
      *v51 = 136315394;
      *(v51 + 4) = sub_247D72868(v174, v48, v180);
      *(v51 + 12) = 2080;
      v52 = v173;
      v173(v12, v19, v46);
      (*(v16 + 56))(v12, 0, 1, v46);
      v53 = v169;
      sub_247D6BA6C(v12, v169, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v16 + 48))(v53, 1, v46) == 1)
      {
        v54 = 7104878;
        v55 = 0xE300000000000000;
      }

      else
      {
        v85 = v53;
        v86 = v175;
        v172(v175, v85, v46);
        v52(v167, v86, v46);
        v54 = sub_247DD2CFC();
        v55 = v87;
        (*(v45 + 8))(v86, v46);
      }

      sub_247D6BAD4(v12, &unk_27EE73B60, &qword_247DD5250);
      v77 = *(v45 + 8);
      v77(v19, v46);
      v88 = sub_247D72868(v54, v55, v180);

      *(v51 + 14) = v88;
      v89 = v171;
      _os_log_impl(&dword_247D56000, v171, v176, "%s in waiting state, error=%s", v51, 0x16u);
      v90 = v170;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v90, -1, -1);
      MEMORY[0x24C1BAF60](v51, -1, -1);
    }

    else
    {

      v77 = *(v16 + 8);
      v77(v19, v46);
    }

    sub_247D8E4CC();

    v77(v22, v46);
    return;
  }

  if (v44 == *MEMORY[0x277CD8DE0])
  {
    (*(v39 + 96))(v41, v38);
    v56 = v16;
    v57 = *(v16 + 32);
    v58 = v176;
    v59 = v178;
    v177 = v57;
    v57(v176, v41, v178);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v60 = sub_247DD23CC();
    __swift_project_value_buffer(v60, qword_27EE7B878);
    v61 = v56;
    v62 = *(v56 + 16);
    v63 = v173;
    v62(v173, v58, v59);

    v64 = sub_247DD23AC();
    v65 = sub_247DD2F0C();

    v66 = os_log_type_enabled(v64, v65);
    v158 = v43;
    if (v66)
    {
      LODWORD(v169) = v65;
      v174 = v64;
      v67 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v180[0] = v164;
      *v67 = 136315394;

      v69 = sub_247D8BEA8(v68);
      v71 = v70;

      v72 = sub_247D72868(v69, v71, v180);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = v171;
      v62(v171, v63, v59);
      (*(v61 + 56))(v73, 0, 1, v59);
      v74 = v166;
      sub_247D6BA6C(v73, v166, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v61 + 48))(v74, 1, v59) == 1)
      {
        v75 = 7104878;
        v76 = 0xE300000000000000;
      }

      else
      {
        v95 = v175;
        v177(v175, v74, v59);
        v62(v167, v95, v59);
        v75 = sub_247DD2CFC();
        v76 = v96;
        (*(v61 + 8))(v95, v59);
      }

      v92 = v61;
      sub_247D6BAD4(v171, &unk_27EE73B60, &qword_247DD5250);
      v91 = *(v61 + 8);
      v91(v173, v59);
      v97 = sub_247D72868(v75, v76, v180);

      *(v67 + 14) = v97;
      v98 = v174;
      _os_log_impl(&dword_247D56000, v174, v169, "%s failed, error=%s", v67, 0x16u);
      v99 = v164;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v99, -1, -1);
      MEMORY[0x24C1BAF60](v67, -1, -1);
    }

    else
    {

      v91 = *(v61 + 8);
      v91(v63, v59);
      v92 = v61;
    }

    v100 = v158;
    sub_247D8E4CC();
    v101 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor;
    v102 = v170;
    sub_247D86A04(v100 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v170);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_247D8690C(v102);
    if (EnumCaseMultiPayload == 2 && *(v100 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_initiated) == 1 && (v104 = v175, *v175 = 53, v105 = v178, (*(v92 + 104))(v104, *MEMORY[0x277CD8FB0], v178), v106 = MEMORY[0x24C1B9C30](v176, v104), v91(v104, v105), (v106 & 1) != 0))
    {
      sub_247D873E8(v165);
      sub_247D879F4();
      sub_247DD26FC();
      swift_allocObject();
      *(v100 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection) = sub_247DD265C();

      sub_247D8BC28();
    }

    else
    {
      v107 = v100;
      v108 = v168;
      sub_247D86A04(v100 + v101, v168);
      v109 = swift_getEnumCaseMultiPayload();
      sub_247D8690C(v108);
      if (v109 == 2 && ((v110 = v175, *v175 = 54, v111 = *MEMORY[0x277CD8FB0], v112 = *(v92 + 104), v113 = v178, v112(v110, v111, v178), v114 = MEMORY[0x24C1B9C30](v176, v110), v91(v110, v113), (v114 & 1) != 0) || (v115 = v175, *v175 = 96, v116 = v178, v112(v115, v111, v178), v117 = MEMORY[0x24C1B9C30](v176, v115), v91(v115, v116), (v117 & 1) != 0)))
      {
        swift_beginAccess();
        v118 = *(v107 + 16);
        if (v118)
        {
          v119 = *(v107 + 24);
          v179 = 1;

          v118(&v179);
          sub_247D6A24C(v118, v119);
        }
      }

      else
      {
        swift_beginAccess();
        v120 = *(v107 + 16);
        if (v120)
        {
          v121 = *(v107 + 24);
          v179 = 2;

          v120(&v179);
          sub_247D6A24C(v120, v121);
        }
      }
    }

    v91(v176, v178);
    return;
  }

  if (v44 == *MEMORY[0x277CD8DD8])
  {
    v78 = v177;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v79 = sub_247DD23CC();
    __swift_project_value_buffer(v79, qword_27EE7B878);

    v80 = sub_247DD23AC();
    v81 = sub_247DD2F2C();

    if (!os_log_type_enabled(v80, v81))
    {
      goto LABEL_30;
    }

    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v180[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_247D72868(v174, v78, v180);
    v84 = "%s in setup state";
LABEL_29:
    _os_log_impl(&dword_247D56000, v80, v81, v84, v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    MEMORY[0x24C1BAF60](v83, -1, -1);
    MEMORY[0x24C1BAF60](v82, -1, -1);
LABEL_30:

    return;
  }

  v93 = v177;
  if (v44 == *MEMORY[0x277CD8DF8])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v94 = sub_247DD23CC();
    __swift_project_value_buffer(v94, qword_27EE7B878);

    v80 = sub_247DD23AC();
    v81 = sub_247DD2F2C();

    if (!os_log_type_enabled(v80, v81))
    {
      goto LABEL_30;
    }

    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v180[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_247D72868(v174, v93, v180);
    v84 = "%s in preparing state";
    goto LABEL_29;
  }

  if (v44 == *MEMORY[0x277CD8DD0])
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v122 = sub_247DD23CC();
    __swift_project_value_buffer(v122, qword_27EE7B878);

    v123 = sub_247DD23AC();
    v124 = sub_247DD2F2C();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v180[0] = v126;
      *v125 = 136315138;
      *(v125 + 4) = sub_247D72868(v174, v93, v180);
      _os_log_impl(&dword_247D56000, v123, v124, "%s in ready state", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
      MEMORY[0x24C1BAF60](v126, -1, -1);
      MEMORY[0x24C1BAF60](v125, -1, -1);
    }

    sub_247D86A04(v43 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v37);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_247D6A1F8(*(v37 + 1), *(v37 + 2));
      sub_247D6A1F8(*(v37 + 3), *(v37 + 4));
      swift_unknownObjectRelease();
      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
      v128 = sub_247DD225C();
      (*(*(v128 - 8) + 8))(&v37[v127], v128);
      if (*(v43 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
      {
        sub_247DD285C();

        sub_247DD27FC();
        v129 = sub_247DD26DC();

        if (v129)
        {
          sub_247DD284C();
          if (swift_dynamicCastClass())
          {

            v130 = sub_247DD23AC();
            v131 = sub_247DD2F2C();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v180[0] = v133;
              *v132 = 136315138;
              *(v132 + 4) = sub_247D72868(v174, v93, v180);
              _os_log_impl(&dword_247D56000, v130, v131, "%s setting keep-alive to 15 seconds", v132, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v133);
              MEMORY[0x24C1BAF60](v133, -1, -1);
              MEMORY[0x24C1BAF60](v132, -1, -1);
            }

            v134 = v159;
            *v159 = 15;
            (*(v160 + 104))(v134, *MEMORY[0x277CD8EA0], v161);
            sub_247DD283C();
          }
        }
      }

      sub_247D8D7E4();
    }

    else
    {
      sub_247D8690C(v37);
    }

    swift_beginAccess();
    v142 = *(v43 + 16);
    if (v142)
    {
      v143 = *(v43 + 24);
      v179 = 0;

      v142(&v179);
      sub_247D6A24C(v142, v143);
    }

    v144 = *(v43 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    v145 = v162;
    *v162 = v144;
    v146 = v163;
    v147 = v164;
    (*(v163 + 104))(v145, *MEMORY[0x277D85200], v164);
    v148 = v144;
    LOBYTE(v144) = sub_247DD2ADC();
    (*(v146 + 8))(v145, v147);
    if (v144)
    {
      v149 = *(v43 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);
      if (v149)
      {
        v150 = swift_allocObject();
        swift_weakInit();
        v151 = swift_allocObject();
        *(v151 + 16) = v150;
        *(v151 + 24) = v149;
        swift_retain_n();

        sub_247DD262C();
      }

LABEL_72:

      return;
    }

    __break(1u);
    goto LABEL_80;
  }

  if (v44 == *MEMORY[0x277CD8DF0])
  {
    if (qword_27EE73260 == -1)
    {
LABEL_62:
      v135 = sub_247DD23CC();
      __swift_project_value_buffer(v135, qword_27EE7B878);

      v136 = sub_247DD23AC();
      v137 = sub_247DD2F2C();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v180[0] = v139;
        *v138 = 136315138;
        *(v138 + 4) = sub_247D72868(v174, v93, v180);
        _os_log_impl(&dword_247D56000, v136, v137, "%s in cancelled state", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v139);
        MEMORY[0x24C1BAF60](v139, -1, -1);
        MEMORY[0x24C1BAF60](v138, -1, -1);
      }

      swift_beginAccess();
      v140 = *(v43 + 16);
      if (v140)
      {
        v141 = *(v43 + 24);
        v179 = 1;

        v140(&v179);
        sub_247D6A24C(v140, v141);
      }

      goto LABEL_72;
    }

LABEL_80:
    swift_once();
    goto LABEL_62;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v152 = sub_247DD23CC();
  __swift_project_value_buffer(v152, qword_27EE7B878);

  v153 = sub_247DD23AC();
  v154 = sub_247DD2F0C();

  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v180[0] = v156;
    *v155 = 136315138;
    *(v155 + 4) = sub_247D72868(v174, v93, v180);
    _os_log_impl(&dword_247D56000, v153, v154, "%s in unknown state", v155, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v156);
    MEMORY[0x24C1BAF60](v156, -1, -1);
    MEMORY[0x24C1BAF60](v155, -1, -1);
  }

  (*(v39 + 8))(v41, v38);
}

uint64_t sub_247D8D7E4()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  v11 = sub_247DD2ADC();
  result = (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (!*(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    return result;
  }

  sub_247D86A04(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor, v4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(v4 + 1);
    v14 = *(v4 + 2);

    sub_247D6A1F8(v13, v14);
    sub_247D6A1F8(*(v4 + 3), *(v4 + 4));
    swift_unknownObjectRelease();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v16 = sub_247DD225C();
    (*(*(v16 - 8) + 8))(&v4[v15], v16);
    swift_beginAccess();
    v17 = *(v1 + 48);
    if (v17)
    {
      v18 = *(v1 + 56);
      sub_247DD253C();

      sub_247D6ACFC(v17);
      sub_247D879F4();
      v19 = sub_247DD24BC();
      v20 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener;
      *(v1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener) = v19;

      if (v19)
      {
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = v17;
        v22[4] = v18;
        sub_247D6ACFC(v17);

        sub_247D6ACFC(sub_247D902CC);
        sub_247DD24DC();
      }

      if (!*(v1 + v20) || (swift_allocObject(), swift_weakInit(), , , sub_247D6ACFC(sub_247D902D8), sub_247DD24CC(), , , !*(v1 + v20)))
      {

        return sub_247D6A24C(v17, v18);
      }

      sub_247DD250C();

      sub_247D6A24C(v17, v18);
    }
  }

  sub_247D8690C(v4);
  if (qword_27EE73260 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B878);
  v24 = sub_247DD23AC();
  v25 = sub_247DD2F0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_247D56000, v24, v25, "Bad API usage, raw TCP cannot set a per-connection NWListener", v26, 2u);
    MEMORY[0x24C1BAF60](v26, -1, -1);
  }
}

uint64_t sub_247D8DCB8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for NetworkDescriptor(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v34 = a4;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B878);

    v16 = sub_247DD23AC();
    v17 = sub_247DD2F2C();

    v18 = &unk_27EE7B000;
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      v33 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v36 = 4401184;
      v37 = 0xE300000000000000;
      v38 = v21;
      v35 = sub_247DD258C();
      v22 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v22);

      MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
      v24 = v36;
      v23 = v37;
      v36 = sub_247D88148();
      v37 = v25;
      MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
      MEMORY[0x24C1BA0A0](v24, v23);

      v26 = sub_247D72868(v36, v37, &v38);
      v18 = &unk_27EE7B000;

      *(v20 + 4) = v26;
      _os_log_impl(&dword_247D56000, v16, v17, "Received incoming stream, %s", v20, 0xCu);
      v27 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x24C1BAF60](v27, -1, -1);
      v28 = v20;
      a3 = v33;
      MEMORY[0x24C1BAF60](v28, -1, -1);
    }

    sub_247D86A04(v14 + v18[299], v12);
    v29 = *(v14 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    sub_247D86A04(v12, v10);
    type metadata accessor for CosmoConnection(0);
    v30 = swift_allocObject();

    v31 = v29;
    sub_247D8AE8C(v10, 0, a1, v29);
    sub_247D8690C(v12);
    a3(v30);
  }

  return result;
}

uint64_t sub_247D8E004(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B50, &qword_247DD5800);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_247DD24FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v45 = v13;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE7B878);
    v46 = *(v10 + 16);
    v46(v18, a1, v9);

    v21 = sub_247DD23AC();
    v22 = sub_247DD2F2C();

    if (os_log_type_enabled(v21, v22))
    {
      v42 = v22;
      v40 = v16;
      v44 = v21;
      v23 = swift_slowAlloc();
      v43 = v6;
      v24 = v23;
      v41 = swift_slowAlloc();
      v47 = v41;
      *v24 = 136315394;

      v26 = sub_247D8BEA8(v25);
      v28 = v27;

      v29 = sub_247D72868(v26, v28, &v47);
      v30 = v24;
      v31 = v43;

      *(v30 + 1) = v29;
      *(v30 + 6) = 2080;
      v46(v8, v18, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_247D6BA6C(v8, v31, &qword_27EE73B50, &qword_247DD5800);
      if ((*(v10 + 48))(v31, 1, v9) == 1)
      {
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        v34 = v40;
        (*(v10 + 32))(v40, v31, v9);
        v46(v45, v34, v9);
        v33 = sub_247DD2CFC();
        v32 = v35;
        (*(v10 + 8))(v34, v9);
      }

      sub_247D6BAD4(v8, &qword_27EE73B50, &qword_247DD5800);
      (*(v10 + 8))(v18, v9);
      v36 = sub_247D72868(v33, v32, &v47);

      *(v30 + 14) = v36;
      v37 = v44;
      _os_log_impl(&dword_247D56000, v44, v42, "%s listener state update, state=%s", v30, 0x16u);
      v38 = v41;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v38, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    else
    {

      return (*(v10 + 8))(v18, v9);
    }
  }

  return result;
}

uint64_t sub_247D8E4EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247D9045C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_247D8E798(uint64_t a1)
{
  v2 = sub_247DD268C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    swift_beginAccess();
    v11 = *(a1 + 16);
    if (v11)
    {
      v31 = v10;
      v12 = *(a1 + 24);

      sub_247D6ACFC(v11);
      sub_247DD26AC();
      (*(v3 + 104))(v6, *MEMORY[0x277CD8DD8], v2);
      v13 = MEMORY[0x24C1B9970](v9, v6);
      v14 = *(v3 + 8);
      v14(v6, v2);
      v14(v9, v2);
      if (v13)
      {
        v30 = v11;
        v15 = v12;
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v16 = sub_247DD23CC();
        __swift_project_value_buffer(v16, qword_27EE7B878);

        v17 = sub_247DD23AC();
        v18 = sub_247DD2F2C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v32 = v20;
          *v19 = 136315138;

          v22 = sub_247D8BEA8(v21);
          v24 = v23;

          v25 = sub_247D72868(v22, v24, &v32);

          *(v19 + 4) = v25;
          _os_log_impl(&dword_247D56000, v17, v18, "%s, canceling (never started)", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x24C1BAF60](v20, -1, -1);
          MEMORY[0x24C1BAF60](v19, -1, -1);
        }

        LOBYTE(v32) = 1;
        v26 = v30;
        v30(&v32);
        v27 = v26;
        v28 = v15;
      }

      else
      {
        v27 = v11;
        v28 = v12;
      }

      sub_247D6A24C(v27, v28);
      v10 = v31;
    }

    else
    {
    }

    sub_247DD26BC();

    *(a1 + v10) = 0;
  }

  v29 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_listener))
  {

    sub_247DD252C();

    *(a1 + v29) = 0;
  }

  return result;
}

uint64_t sub_247D8EB14(uint64_t a1, unint64_t a2, int a3)
{
  v7 = sub_247DD2A0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247DD2A2C();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v18[1] = *(v3 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
    v19 = result;
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = a3;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    aBlock[4] = sub_247D86888;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_6;
    v17 = _Block_copy(aBlock);

    sub_247D6C0B0(a1, a2);
    sub_247DD2A1C();
    v20 = MEMORY[0x277D84F90];
    sub_247D9045C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    MEMORY[0x24C1BA270](0, v15, v10, v17);
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247D8EE0C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  LODWORD(v48) = a2;
  v7 = sub_247DD261C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection))
  {
    v11 = qword_27EE73260;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_247DD23CC();
    __swift_project_value_buffer(v12, qword_27EE7B878);

    sub_247D6C0B0(a3, a4);
    v13 = sub_247DD23AC();
    v14 = sub_247DD2EFC();

    sub_247D6C0AC(a3, a4);
    v15 = os_log_type_enabled(v13, v14);
    v47 = a3;
    if (!v15)
    {

      v25 = v48;
LABEL_27:
      sub_247DD28AC();
      if (qword_27EE732A8 != -1)
      {
        swift_once();
      }

      v41 = sub_247DD289C();
      v53 = MEMORY[0x277D84CC0];
      LODWORD(v51) = v25;
      sub_247DD28CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B58, &qword_247DD5808);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_247DD5660;
      *(v42 + 32) = v41;
      sub_247DD260C();
      swift_allocObject();

      sub_247DD25AC();
      (*(v8 + 104))(v10, *MEMORY[0x277CD8DA8], v7);
      sub_247DD266C();

      (*(v8 + 8))(v10, v7);
      return;
    }

    v44 = v14;
    v45 = v7;
    v46 = v8;
    v16 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136315650;
    v19 = 0xE300000000000000;
    v50 = v18;
    v51 = 4401184;
    v52 = 0xE300000000000000;
    v49 = sub_247DD258C();
    v20 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v20);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v22 = v51;
    v21 = v52;
    v51 = sub_247D88148();
    v52 = v23;
    MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
    MEMORY[0x24C1BA0A0](v22, v21);

    v24 = sub_247D72868(v51, v52, &v50);

    *(v17 + 4) = v24;
    *(v17 + 12) = 1024;
    v25 = v48;
    *(v17 + 14) = v48;
    *(v17 + 18) = 2080;
    if (v16 >> 60 == 15)
    {
      v26 = 7104878;
      v8 = v46;
LABEL_26:
      v39 = sub_247D72868(v26, v19, &v50);

      *(v17 + 20) = v39;
      _os_log_impl(&dword_247D56000, v13, v44, "%s sending messageHeader=%u, data-size=%s", v17, 0x1Cu);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v40, -1, -1);
      MEMORY[0x24C1BAF60](v17, -1, -1);

      v7 = v45;
      goto LABEL_27;
    }

    v32 = BYTE6(v16);
    v33 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      v8 = v46;
      if (v33 != 2)
      {
        v35 = 0;
        goto LABEL_25;
      }

      v34 = *(v47 + 16);
      v36 = *(v47 + 24);
      v37 = __OFSUB__(v36, v34);
      v35 = v36 - v34;
      if (!v37)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v8 = v46;
      v34 = v47;
      if (!v33)
      {
        v35 = v32;
LABEL_25:
        v51 = v35;
        v26 = sub_247DD2CFC();
        v19 = v38;
        goto LABEL_26;
      }
    }

    LODWORD(v35) = HIDWORD(v34) - v34;
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      __break(1u);
      return;
    }

    v35 = v35;
    goto LABEL_25;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v27 = sub_247DD23CC();
  __swift_project_value_buffer(v27, qword_27EE7B878);
  v48 = sub_247DD23AC();
  v28 = sub_247DD2F0C();
  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v51 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_247D72868(0xD00000000000001DLL, 0x8000000247DD9460, &v51);
    _os_log_impl(&dword_247D56000, v48, v28, "%s connection is nil", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v29, -1, -1);
  }

  else
  {
    v31 = v48;
  }
}

uint64_t sub_247D8F4A0()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_247D6A1F8(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_247D8F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_247DD2ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v58 = v13;
    v59 = a5;
    v61 = 4401184;
    v62 = 0xE300000000000000;
    v64[0] = sub_247DD258C();
    v16 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v16);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v18 = v61;
    v17 = v62;
    v61 = sub_247D88148();
    v62 = v19;
    MEMORY[0x24C1BA0A0](0x7463656E6E6F6320, 0xEB000000006E6F69);
    MEMORY[0x24C1BA0A0](v18, v17);

    v20 = v61;
    v21 = v62;
    if (a3)
    {

      v57 = sub_247DD25FC();
      if (v57)
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v22 = sub_247DD23CC();
        __swift_project_value_buffer(v22, qword_27EE7B878);

        v23 = sub_247DD23AC();
        v24 = sub_247DD2F2C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v56 = v23;
          v26 = v20;
          v27 = v25;
          v28 = swift_slowAlloc();
          v61 = v28;
          *v27 = 136315138;
          v29 = sub_247D72868(v26, v21, &v61);

          *(v27 + 4) = v29;
          v23 = v56;
          _os_log_impl(&dword_247D56000, v56, v24, "%s read close", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          MEMORY[0x24C1BAF60](v28, -1, -1);
          MEMORY[0x24C1BAF60](v27, -1, -1);
        }

        else
        {
        }

        sub_247DD26BC();
        goto LABEL_35;
      }

      if (qword_27EE732A8 != -1)
      {
        swift_once();
      }

      if (sub_247DD25CC())
      {
        sub_247DD28AC();
        if (swift_dynamicCastClass())
        {

          swift_beginAccess();
          v36 = *(v15 + 32);
          if (!v36)
          {
LABEL_34:

LABEL_35:
            v47 = v59;
            v48 = sub_247DD294C();
            if (*(*(v48 - 8) + 48))(v47, 1, v48) != 1 || (v57)
            {
              goto LABEL_40;
            }

            v49 = *(v15 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_queue);
            v50 = v58;
            *v58 = v49;
            (*(v11 + 104))(v50, *MEMORY[0x277D85200], v10);
            v51 = v49;
            LOBYTE(v49) = sub_247DD2ADC();
            (*(v11 + 8))(v50, v10);
            if ((v49 & 1) == 0)
            {
              __break(1u);
              return;
            }

            v52 = *(v15 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_connection);
            if (v52)
            {
              v53 = swift_allocObject();
              swift_weakInit();
              v54 = swift_allocObject();
              *(v54 + 16) = v53;
              *(v54 + 24) = v52;
              swift_retain_n();

              sub_247DD262C();
            }

            else
            {
LABEL_40:
            }

            goto LABEL_41;
          }

          v56 = *(v15 + 40);

          sub_247DD28BC();
          if (v63)
          {
            if (swift_dynamicCast())
            {
              v37 = v60;
LABEL_33:
              v46 = v56;
              v36(v37, a1, a2);
              sub_247D6A24C(v36, v46);
              goto LABEL_34;
            }
          }

          else
          {
            sub_247D6BAD4(&v61, &qword_27EE73A38, &qword_247DD54F8);
          }

          v37 = 0;
          goto LABEL_33;
        }
      }

      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v38 = sub_247DD23CC();
      __swift_project_value_buffer(v38, qword_27EE7B878);

      v39 = sub_247DD23AC();
      v40 = sub_247DD2F0C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v20;
        v44 = v42;
        v61 = v42;
        *v41 = 136315138;
        v45 = sub_247D72868(v43, v21, &v61);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_247D56000, v39, v40, "%s could not read messageTypeHeader", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x24C1BAF60](v44, -1, -1);
        MEMORY[0x24C1BAF60](v41, -1, -1);
      }

      else
      {
      }

LABEL_41:

      return;
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v30 = sub_247DD23CC();
    __swift_project_value_buffer(v30, qword_27EE7B878);

    v31 = sub_247DD23AC();
    v32 = sub_247DD2F0C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136315138;
      v35 = sub_247D72868(v20, v21, &v61);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_247D56000, v31, v32, "%s receiveMessage has nil context", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x24C1BAF60](v34, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t *CosmoConnection.deinit()
{
  sub_247D6A24C(v0[2], v0[3]);
  sub_247D6A24C(v0[4], v0[5]);
  sub_247D6A24C(v0[6], v0[7]);
  v1 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v2 = sub_247DD225C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo15CosmoConnection_descriptor);

  return v0;
}

uint64_t CosmoConnection.__deallocating_deinit()
{
  CosmoConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D8FE50()
{
  result = qword_27EE73B18;
  if (!qword_27EE73B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73B18);
  }

  return result;
}

uint64_t sub_247D8FEEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Cosmo15CosmoConnection_id;
  v5 = sub_247DD225C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_247D8FF98(uint64_t a1)
{
  result = sub_247DD225C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NetworkDescriptor(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_247D9027C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D902E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D90328(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  return v4(&v7, v6);
}

uint64_t objectdestroy_28Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D9045C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Cosmo::CosmoListener::State_optional __swiftcall CosmoListener.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoListener.State.rawValue.getter()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D905E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656C696166;
  if (v2 != 1)
  {
    v4 = 0x64656C65636E6163;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (*a2 != 1)
  {
    v8 = 0x64656C65636E6163;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7964616572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_247DD322C();
  }

  return v11 & 1;
}

uint64_t sub_247D906E0()
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247D9077C(uint64_t a1)
{
  sub_247DD2D7C();
}

uint64_t sub_247D90804(uint64_t a1)
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

void sub_247D908A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (v2 != 1)
  {
    v5 = 0x64656C65636E6163;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_247D90900@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D90994(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D90A50@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D93CE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D90AE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D93CAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t CosmoListener.__allocating_init(descriptor:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CosmoListener.init(descriptor:queue:)(a1, a2);
  return v4;
}

_OWORD *CosmoListener.init(descriptor:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2F6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v10 - 8);
  v2[2] = 0u;
  v2[3] = 0u;
  v2[1] = 0u;
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = 0;
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D86A04(a1, v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);
  if (!a2)
  {
    v14 = sub_247D6A0F4();
    sub_247DD2A1C();
    v15 = MEMORY[0x277D84F90];
    v12 = sub_247D93C2C(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    v13 = v5;
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v6 + 104))(v8, *MEMORY[0x277D85260], v13);
    a2 = sub_247DD2F8C();
  }

  sub_247D8690C(a1);
  *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue) = a2;
  return v2;
}

uint64_t sub_247D90EF8()
{
  v1 = sub_247DD2A0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247DD2A2C();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  aBlock[4] = sub_247D91538;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_4;
  v8 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v12 = MEMORY[0x277D84F90];
  sub_247D93C2C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_247D911A0(uint64_t a1)
{
  v2 = sub_247DD248C();
  MEMORY[0x28223BE20](v2 - 8);
  *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D879F4();

  sub_247DD247C();
  sub_247DD253C();
  swift_allocObject();
  *(a1 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = sub_247DD251C();

  swift_allocObject();
  swift_weakInit();

  sub_247D6ACFC(sub_247D93D48);
  sub_247DD24CC();

  swift_allocObject();
  swift_weakInit();

  sub_247D6ACFC(sub_247D93D50);
  sub_247DD24DC();

  sub_247DD250C();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D91558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D91618(a1);
  }

  return result;
}

uint64_t sub_247D915B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D92F60(a1);
  }

  return result;
}

void sub_247D91618(uint64_t a1)
{
  v2 = v1;
  v209 = a1;
  v185 = sub_247DD225C();
  v184 = *(v185 - 8);
  v3 = MEMORY[0x28223BE20](v185);
  v177 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v187 = &v174 - v5;
  v182 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v182);
  v183 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_247DD249C();
  v190 = *(v186 - 8);
  v7 = MEMORY[0x28223BE20](v186);
  v178 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v179 = &v174 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73B60, &qword_247DD5250);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v181 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v189 = &v174 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v180 = &v174 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v188 = &v174 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v174 - v20;
  MEMORY[0x28223BE20](v19);
  v198 = &v174 - v21;
  v206 = sub_247DD294C();
  v201 = *(v206 - 8);
  v22 = MEMORY[0x28223BE20](v206);
  v192 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v174 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v207 = &v174 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v193 = &v174 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v197 = &v174 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v200 = &v174 - v33;
  MEMORY[0x28223BE20](v32);
  v199 = &v174 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73B50, &qword_247DD5800);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v204 = (&v174 - v39);
  v40 = sub_247DD24FC();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v205 = (&v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v195 = &v174 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v194 = &v174 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v174 - v48;
  v50 = sub_247DD2ABC();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = (&v174 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v53 = v54;
  (*(v51 + 104))(v53, *MEMORY[0x277D85200], v50);
  v55 = v54;
  LOBYTE(v54) = sub_247DD2ADC();
  (*(v51 + 8))(v53, v50);
  if (v54)
  {
    if (qword_27EE73260 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v56 = sub_247DD23CC();
  v57 = __swift_project_value_buffer(v56, qword_27EE7B878);
  v58 = *(v41 + 16);
  v58(v49, v209, v40);
  v202 = v57;
  v59 = sub_247DD23AC();
  v60 = sub_247DD2F2C();
  v61 = os_log_type_enabled(v59, v60);
  v208 = v2;
  v203 = v58;
  if (v61)
  {
    v176 = v60;
    v62 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v212[0] = v175;
    *v62 = 136315138;
    v63 = v204;
    v58(v204, v49, v40);
    (*(v41 + 56))(v63, 0, 1, v40);
    sub_247D6BA6C(v63, v38, &qword_27EE73B50, &qword_247DD5800);
    if ((*(v41 + 48))(v38, 1, v40) == 1)
    {
      v64 = 7104878;
      v65 = 0xE300000000000000;
    }

    else
    {
      v67 = v58;
      v68 = v194;
      (*(v41 + 32))(v194, v38, v40);
      v67(v195, v68, v40);
      v64 = sub_247DD2CFC();
      v65 = v69;
      (*(v41 + 8))(v68, v40);
    }

    sub_247D6BAD4(v204, &qword_27EE73B50, &qword_247DD5800);
    v66 = *(v41 + 8);
    v66(v49, v40);
    v70 = sub_247D72868(v64, v65, v212);

    *(v62 + 4) = v70;
    _os_log_impl(&dword_247D56000, v59, v176, "[Listener] State update, state=%s", v62, 0xCu);
    v71 = v175;
    __swift_destroy_boxed_opaque_existential_0Tm(v175);
    MEMORY[0x24C1BAF60](v71, -1, -1);
    MEMORY[0x24C1BAF60](v62, -1, -1);

    v2 = v208;
  }

  else
  {

    v66 = *(v41 + 8);
    v66(v49, v40);
  }

  v72 = v207;
  v73 = v205;
  v203(v205, v209, v40);
  v74 = (*(v41 + 88))(v73, v40);
  v75 = v206;
  if (v74 == *MEMORY[0x277CD8B40])
  {
    (*(v41 + 96))(v73, v40);
    v76 = v201;
    v77 = *(v201 + 32);
    v78 = v199;
    v77(v199, v73, v75);
    v79 = *(v76 + 16);
    v80 = v200;
    v79(v200, v78, v75);
    v81 = sub_247DD23AC();
    v82 = sub_247DD2F2C();
    if (os_log_type_enabled(v81, v82))
    {
      LODWORD(v209) = v82;
      v83 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v212[0] = v205;
      v207 = v83;
      *v83 = 136315138;
      v84 = v198;
      v79(v198, v80, v75);
      (*(v76 + 56))(v84, 0, 1, v75);
      v85 = v84;
      v86 = v196;
      sub_247D6BA6C(v85, v196, &unk_27EE73B60, &qword_247DD5250);
      if ((*(v76 + 48))(v86, 1, v75) == 1)
      {
        v87 = 7104878;
        v88 = 0xE300000000000000;
      }

      else
      {
        v108 = v197;
        v77(v197, v86, v75);
        v79(v193, v108, v75);
        v87 = sub_247DD2CFC();
        v88 = v109;
        v110 = v108;
        v78 = v199;
        (*(v76 + 8))(v110, v75);
      }

      v104 = v208;
      sub_247D6BAD4(v198, &unk_27EE73B60, &qword_247DD5250);
      v103 = *(v76 + 8);
      v103(v200, v75);
      v111 = sub_247D72868(v87, v88, v212);

      v112 = v207;
      *(v207 + 4) = v111;
      _os_log_impl(&dword_247D56000, v81, v209, "[Listener] Waiting for network to become available, error=%s", v112, 0xCu);
      v113 = v205;
      __swift_destroy_boxed_opaque_existential_0Tm(v205);
      MEMORY[0x24C1BAF60](v113, -1, -1);
      MEMORY[0x24C1BAF60](v112, -1, -1);
    }

    else
    {

      v103 = *(v76 + 8);
      v103(v80, v75);
      v104 = v208;
    }

    swift_beginAccess();
    v114 = *(v104 + 16);
    if (v114)
    {
      v115 = *(v104 + 24);
      LOBYTE(v211) = 1;

      v114(&v211);
      sub_247D6A24C(v114, v115);
    }

    sub_247D93540();
    v103(v78, v75);
  }

  else if (v74 == *MEMORY[0x277CD8B38])
  {
    (*(v41 + 96))(v73, v40);
    v89 = v201;
    v90 = *(v201 + 32);
    v90(v72, v73, v75);
    v91 = v197;
    *v197 = -65569;
    (*(v89 + 104))(v91, *MEMORY[0x277CD8FA0], v75);
    v92 = MEMORY[0x24C1B9C30](v72, v91);
    v93 = *(v89 + 8);
    v93(v91, v75);
    v94 = *(v89 + 16);
    if (v92)
    {
      v95 = v191;
      v94(v191, v72, v75);
      v96 = sub_247DD23AC();
      LODWORD(v209) = sub_247DD2F2C();
      if (os_log_type_enabled(v96, v209))
      {
        v205 = v96;
        v97 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v212[0] = v203;
        v204 = v97;
        *v97 = 136315138;
        v98 = v188;
        v94(v188, v95, v75);
        v99 = v201;
        (*(v201 + 56))(v98, 0, 1, v75);
        v100 = v180;
        sub_247D6BA6C(v98, v180, &unk_27EE73B60, &qword_247DD5250);
        if ((*(v99 + 48))(v100, 1, v75) == 1)
        {
          v101 = 7104878;
          v102 = 0xE300000000000000;
        }

        else
        {
          v156 = v197;
          v90(v197, v100, v75);
          v94(v193, v156, v75);
          v101 = sub_247DD2CFC();
          v102 = v157;
          v93(v156, v75);
        }

        v153 = v208;
        sub_247D6BAD4(v188, &unk_27EE73B60, &qword_247DD5250);
        v93(v191, v75);
        v158 = sub_247D72868(v101, v102, v212);

        v160 = v204;
        v159 = v205;
        *(v204 + 1) = v158;
        _os_log_impl(&dword_247D56000, v159, v209, "[Listener] Failed with error=%s, restarting", v160, 0xCu);
        v161 = v203;
        __swift_destroy_boxed_opaque_existential_0Tm(v203);
        MEMORY[0x24C1BAF60](v161, -1, -1);
        MEMORY[0x24C1BAF60](v160, -1, -1);

        v72 = v207;
      }

      else
      {

        v93(v95, v75);
        v153 = v208;
      }

      sub_247D93540();
      *(v153 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 1;
      sub_247D90EF8();
    }

    else
    {
      v116 = v192;
      v94(v192, v72, v75);
      v117 = sub_247DD23AC();
      LODWORD(v209) = sub_247DD2F2C();
      if (os_log_type_enabled(v117, v209))
      {
        v205 = v117;
        v118 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v212[0] = v203;
        v204 = v118;
        *v118 = 136315138;
        v119 = v189;
        v94(v189, v116, v75);
        v120 = v201;
        (*(v201 + 56))(v119, 0, 1, v75);
        v121 = v119;
        v122 = v181;
        sub_247D6BA6C(v121, v181, &unk_27EE73B60, &qword_247DD5250);
        if ((*(v120 + 48))(v122, 1, v75) == 1)
        {
          v123 = 7104878;
          v124 = 0xE300000000000000;
        }

        else
        {
          v162 = v197;
          v90(v197, v122, v75);
          v94(v193, v162, v75);
          v123 = sub_247DD2CFC();
          v124 = v163;
          v93(v162, v75);
        }

        sub_247D6BAD4(v189, &unk_27EE73B60, &qword_247DD5250);
        v93(v192, v75);
        v164 = sub_247D72868(v123, v124, v212);

        v166 = v204;
        v165 = v205;
        *(v204 + 1) = v164;
        _os_log_impl(&dword_247D56000, v165, v209, "[Listener] Failed with error=%s, stopping", v166, 0xCu);
        v167 = v203;
        __swift_destroy_boxed_opaque_existential_0Tm(v203);
        MEMORY[0x24C1BAF60](v167, -1, -1);
        MEMORY[0x24C1BAF60](v166, -1, -1);

        v72 = v207;
      }

      else
      {

        v93(v116, v75);
      }

      sub_247D93540();
    }

    v93(v72, v75);
  }

  else if (v74 == *MEMORY[0x277CD8B30])
  {
    v105 = sub_247DD23AC();
    v106 = sub_247DD2EEC();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_247D56000, v105, v106, "[Listener] Initialized but not started", v107, 2u);
      MEMORY[0x24C1BAF60](v107, -1, -1);
    }
  }

  else if (v74 == *MEMORY[0x277CD8B28])
  {
    v125 = sub_247DD23AC();
    v126 = sub_247DD2F2C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_247D56000, v125, v126, "[Listener] Ready to accept incoming connections", v127, 2u);
      MEMORY[0x24C1BAF60](v127, -1, -1);
    }

    v128 = v185;
    v129 = v184;
    v130 = v187;
    v131 = v190;
    if (*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) && (v132 = OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor, v209 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener), , v133 = v179, sub_247D873E8(v179), v134 = sub_247DD244C(), v137 = *(v131 + 8), v136 = v131 + 8, v135 = v137, (v137)(v133, v186), v134))
    {
      v207 = v135;
      v211 = MEMORY[0x277D84F90];
      v138 = swift_unknownObjectRetain();
      MEMORY[0x24C1BA170](v138);
      if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_247DD2E9C();
      }

      sub_247DD2EBC();
      v139 = v211;
      v140 = v183;
      sub_247D86A04(v2 + v132, v183);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v190 = v136;
        v141 = *(v140 + 8);
        v205 = *v140;
        v206 = v141;
        v212[0] = v205;
        v212[1] = v141;
        sub_247D97368(v130);
        v142 = v177;
        (*(v129 + 16))(v177, v130, v128);
        v143 = sub_247DD23AC();
        v144 = sub_247DD2F2C();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v212[0] = v146;
          *v145 = 136315138;
          sub_247D93C2C(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v147 = sub_247DD321C();
          v149 = v148;
          v150 = *(v184 + 8);
          v150(v142, v185);
          v151 = sub_247D72868(v147, v149, v212);
          v128 = v185;

          *(v145 + 4) = v151;
          _os_log_impl(&dword_247D56000, v143, v144, "[Listener] Advertising protocol-version v1 bonjour-serviceUUID=%s", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v146);
          v152 = v146;
          v2 = v208;
          MEMORY[0x24C1BAF60](v152, -1, -1);
          MEMORY[0x24C1BAF60](v145, -1, -1);
        }

        else
        {

          v150 = *(v129 + 8);
          v150(v142, v128);
        }

        v168 = v178;
        v169 = v187;
        sub_247D887C8(v178);
        if (sub_247DD244C())
        {
          v170 = swift_unknownObjectRetain();
          MEMORY[0x24C1BA170](v170);
          if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_247DD2E9C();
          }

          sub_247DD2EBC();
          sub_247D6A1F8(v205, v206);
          swift_unknownObjectRelease();
          (v207)(v178, v186);
          v150(v169, v128);
          v139 = v211;
        }

        else
        {
          sub_247D6A1F8(v205, v206);
          (v207)(v168, v186);
          v150(v169, v128);
        }
      }

      else
      {
        sub_247D8690C(v140);
      }

      v171 = sub_247DD24EC();
      advertiseEndpoints(_:onListener:)(v139, v171);

      swift_unknownObjectRelease();
      swift_beginAccess();
      v172 = *(v2 + 16);
      if (v172)
      {
        v173 = *(v2 + 24);
        v210 = 0;

        v172(&v210);
        swift_unknownObjectRelease();
        sub_247D6A24C(v172, v173);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_247DD30AC();
      __break(1u);
    }
  }

  else if (v74 == *MEMORY[0x277CD8B48])
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) & 1) == 0)
    {
      swift_beginAccess();
      v154 = *(v2 + 16);
      if (v154)
      {
        v155 = *(v2 + 24);
        LOBYTE(v211) = 2;

        v154(&v211);
        sub_247D6A24C(v154, v155);
      }
    }
  }

  else
  {
    v66(v73, v40);
  }
}

uint64_t sub_247D92F60(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NetworkDescriptor(0);
  v6 = MEMORY[0x28223BE20](v5);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  v19 = sub_247DD2ADC();
  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v55 = v10;
    if (qword_27EE73260 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = sub_247DD23CC();
  __swift_project_value_buffer(v20, qword_27EE7B878);

  v21 = sub_247DD23AC();
  v22 = sub_247DD2F2C();

  v23 = os_log_type_enabled(v21, v22);
  v54 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57 = a1;
    v58[0] = v25;
    *v24 = 136315138;
    sub_247DD26FC();

    v26 = sub_247DD2CFC();
    v28 = sub_247D72868(v26, v27, v58);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_247D56000, v21, v22, "[Listener] Received connection=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x24C1BAF60](v25, -1, -1);
    MEMORY[0x24C1BAF60](v24, -1, -1);
  }

  v29 = OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor;
  sub_247D86A04(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v55;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_247D8690C(v12);
LABEL_10:
      sub_247D86A04(v2 + v29, v31);
      v32 = v56;
      sub_247D86A04(v31, v56);
      type metadata accessor for CosmoConnection(0);
      swift_allocObject();
      v33 = v54;
      v34 = v54;

      v35 = sub_247D8AE8C(v32, 0, a1, v33);
      sub_247D8690C(v31);
      swift_beginAccess();
      v36 = *(v2 + 32);
      if (v36)
      {
        v37 = 40;
LABEL_16:
        v49 = *(v2 + v37);

        v36(v35);
        sub_247D6A24C(v36, v49);
      }
    }

    sub_247D6A1F8(*(v12 + 1), *(v12 + 2));
    sub_247D6A1F8(*(v12 + 3), *(v12 + 4));
    swift_unknownObjectRelease();
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v41 = sub_247DD225C();
    (*(*(v41 - 8) + 8))(&v12[v40], v41);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_247D6BAD4(v12, &unk_27EE73C00, &qword_247DD55F8);
      goto LABEL_10;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73AA0, &qword_247DD5630);
    v39 = *(v38 + 48);

    sub_247D6BAD4(&v12[v39], &unk_27EE73C00, &qword_247DD55F8);
  }

  sub_247D86A04(v2 + v29, v31);
  v42 = objc_opt_self();
  v43 = v54;
  v44 = v54;
  v45 = [v42 defaultManager];
  v46 = [v45 temporaryDirectory];

  v47 = v53;
  sub_247DD20AC();

  *v47 = 15;
  v48 = v56;
  sub_247D86A04(v31, v56);
  type metadata accessor for CosmoHttpConnection(0);
  swift_allocObject();

  v35 = sub_247D755C4(v47, v48, 0, a1, v43);
  sub_247D8690C(v31);
  v36 = *(v2 + 48);
  if (v36)
  {
    v37 = 56;
    goto LABEL_16;
  }
}

void sub_247D93540()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_247DD2ADC();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = OBJC_IVAR____TtC5Cosmo13CosmoListener_listener;
  if (*(v2 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener))
  {
    v9 = qword_27EE73260;

    if (v9 == -1)
    {
LABEL_4:
      v10 = sub_247DD23CC();
      __swift_project_value_buffer(v10, qword_27EE7B878);
      v11 = sub_247DD23AC();
      v12 = sub_247DD2F2C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_247D56000, v11, v12, "[Listener] Stopping", v13, 2u);
        MEMORY[0x24C1BAF60](v13, -1, -1);
      }

      sub_247DD252C();

      *(v2 + v1) = 0;

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v14 = sub_247DD23CC();
  __swift_project_value_buffer(v14, qword_27EE7B878);
  v15 = sub_247DD23AC();
  v16 = sub_247DD2EEC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_247D72868(0x2928706F7473, 0xE600000000000000, &v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x24C1BAF60](v18, -1, -1);
    MEMORY[0x24C1BAF60](v17, -1, -1);
  }
}

uint64_t *CosmoListener.deinit()
{
  sub_247D6A24C(v0[2], v0[3]);
  sub_247D6A24C(v0[4], v0[5]);
  sub_247D6A24C(v0[6], v0[7]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);

  return v0;
}

uint64_t CosmoListener.__deallocating_deinit()
{
  sub_247D6A24C(v0[2], v0[3]);
  sub_247D6A24C(v0[4], v0[5]);
  sub_247D6A24C(v0[6], v0[7]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D93948()
{
  result = qword_27EE73B80;
  if (!qword_27EE73B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73B80);
  }

  return result;
}

uint64_t type metadata accessor for CosmoListener(uint64_t a1)
{
  result = qword_27EE73B90;
  if (!qword_27EE73B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D93A10(uint64_t a1)
{
  result = type metadata accessor for NetworkDescriptor(319);
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

uint64_t sub_247D93C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D93C74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247D93CAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_247D93D10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t URL.fileSize.getter(uint64_t a1)
{
  result = sub_247D94864();
  if (result)
  {
    v2 = result;
    if (*(result + 16) && (v3 = sub_247D94CC0(*MEMORY[0x277CCA1C0]), (v4 & 1) != 0))
    {
      sub_247D6B778(*(v2 + 56) + 32 * v3, v6);

      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_247D93E14(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  v3 = a1 / v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  result = [v4 setCountStyle_];
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    v6 = [v4 stringFromByteCount_];
    v7 = sub_247DD2CAC();

    MEMORY[0x24C1BA0A0](29487, 0xE200000000000000);
    return v7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t advertiseEndpoints(_:onListener:)(unint64_t a1, uint64_t a2)
{
  result = MEMORY[0x24C1BA7B0]();
  if (a1 >> 62)
  {
    result = sub_247DD30BC();
    v4 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      MEMORY[0x24C1BA360](i, a1);
      nw_array_append();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = a1 + 32;
    do
    {
      v6 += 8;
      nw_array_append();
      --v4;
    }

    while (v4);
  }

LABEL_10:
  nw_listener_set_advertise_endpoints();

  return swift_unknownObjectRelease();
}

uint64_t sub_247D94008(uint64_t a1, unint64_t a2)
{
  v4 = sub_247DD219C();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D6A2E8(a1, a2);
  sub_247DD21AC();
  sub_247D96B38(&qword_27EE73C58, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  sub_247DD2FBC();
  if (v22)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v18 = xmmword_247DD54D0;
    v9 = MEMORY[0x277D84BC0];
    do
    {
      v10 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C60, &unk_247DD5990);
      v11 = swift_allocObject();
      *(v11 + 16) = v18;
      *(v11 + 56) = MEMORY[0x277D84B78];
      *(v11 + 64) = v9;
      *(v11 + 32) = v10;
      v12 = sub_247DD2CCC();
      v14 = v13;
      v19 = v7;
      v20 = v8;

      MEMORY[0x24C1BA0A0](v12, v14);

      v7 = v19;
      v8 = v20;
      sub_247DD2FBC();
    }

    while (v22 != 1);
  }

  (*(v17 + 8))(v6, v4);
  return v7;
}

uint64_t sub_247D94264(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_247DD322C();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_247D94320(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *a1;
  }

  v4 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  if (sub_247D95A8C(0xFuLL, v4 | (v3 << 16), v1, v2) != 1)
  {
    return 0;
  }

  result = sub_247D943BC(v1, v2);
  if ((result & 0x100000000) == 0)
  {
    return sub_247DD1FAC() & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_247D943BC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_247D959F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_247DD303C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_247DD308C();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_247D94508(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_247DBA18C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_247DBA18C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_247D94680@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_247D8A434();
      sub_247DD1FCC();
      sub_247DD222C();
      sub_247D6A1F8(a1, a2);
      v11 = sub_247DD225C();
      return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_247D6A1F8(a1, a2);
  v13 = sub_247DD225C();
  v14 = *(*(v13 - 8) + 56);

  return v14(a3, 1, 1, v13);
}

uint64_t sub_247D94864()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_247DD20CC();
  v1 = sub_247DD2C7C();

  v17 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v17];

  v3 = v17;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_247D96B38(&qword_27EE73650, type metadata accessor for FileAttributeKey, &unk_247DD4508);
    v4 = sub_247DD2C3C();
    v5 = v3;
  }

  else
  {
    v6 = v17;
    v7 = sub_247DD205C();

    swift_willThrow();
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    sub_247D952FC();
    swift_dynamicCast();
    v8 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73A40, &unk_247DD5580);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_247DD54D0;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_247DD304C();

    v17 = 0xD000000000000015;
    v18 = 0x8000000247DD9580;
    v10 = [v8 description];
    v11 = sub_247DD2CAC();
    v13 = v12;

    MEMORY[0x24C1BA0A0](v11, v13);

    v14 = v17;
    v15 = v18;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v14;
    *(v9 + 40) = v15;
    sub_247DD329C();

    return 0;
  }

  return v4;
}

uint64_t advertiseEndpoint(_:onListener:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x24C1BA7B0]();
  swift_unknownObjectRetain();
  nw_array_append();
  nw_listener_set_advertise_endpoints();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_247D94B68(uint64_t a1, uint64_t a2)
{
  sub_247DD32BC();
  sub_247DD2D7C();
  v4 = sub_247DD32EC();

  return sub_247D94E08(a1, a2, v4);
}

unint64_t sub_247D94BE0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x24C1BA5A0](*(v1 + 40), a1, 4);

  return sub_247D94EC0(v2, v3);
}

unint64_t sub_247D94C28(uint64_t a1)
{
  sub_247DD225C();
  sub_247D96B38(&qword_27EE738D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_247DD2C5C();

  return sub_247D94F2C(a1, v2);
}

unint64_t sub_247D94CC0(uint64_t a1)
{
  sub_247DD2CAC();
  sub_247DD32BC();
  sub_247DD2D7C();
  v2 = sub_247DD32EC();

  return sub_247D950EC(a1, v2);
}

unint64_t sub_247D94D54(uint64_t a1)
{
  sub_247DD32BC();
  type metadata accessor for CFString(0);
  sub_247D96B38(&qword_27EE73C20, type metadata accessor for CFString, &unk_247DD4294);
  sub_247DD227C();
  v2 = sub_247DD32EC();

  return sub_247D951F0(a1, v2);
}

unint64_t sub_247D94E08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247DD322C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_247D94EC0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_247D94F2C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_247DD225C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_247D96B38(&qword_27EE73C30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_247DD2C6C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_247D950EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_247DD2CAC();
      v8 = v7;
      if (v6 == sub_247DD2CAC() && v8 == v9)
      {
        break;
      }

      v11 = sub_247DD322C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_247D951F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_247D96B38(&qword_27EE73C20, type metadata accessor for CFString, &unk_247DD4294);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_247DD226C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_247D952FC()
{
  result = qword_27EE73C28;
  if (!qword_27EE73C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE73C28);
  }

  return result;
}

void sub_247D95348(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unsigned __int8 *sub_247D95420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_247DD2E4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247D8100C(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247DD308C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_247D959F4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247D95C9C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247D95D10(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247D95A8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_247D95E24(a1, a3, a4);
  v8 = sub_247D95E24(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_247DD2D3C();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_247DD308C();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_247DD2D4C();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_247DD308C();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_247D95C9C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247D81404(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_247D95D10(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_247DD308C();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_247D95E24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_247D95EBC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_247D95D10(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_247D95EBC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_247D81404(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D95F30(unint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = sub_247DD1FBC();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247DD1F9C();

  v8 = sub_247DD2D8C();
  if (v8)
  {
    v9 = v8;
    v10 = sub_247D993D8(v8, 0);

    v11 = sub_247D99310(&v92, v10 + 4, v9, a1, a2);

    if (v11 != v9)
    {
      goto LABEL_203;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v13 = sub_247D94264(&unk_2859E3918, v10);
  v14 = swift_arrayDestroy();
  if (v13)
  {
    v12 = v10[2];
    if (v12)
    {
LABEL_204:
      if (v12 >= 2)
      {
        v81 = 2;
      }

      else
      {
        v81 = v12;
      }

      sub_247D95348(v10, (v10 + 4), v81, (2 * v12) | 1);
      v83 = v82;

      v10 = v83;
    }
  }

  MEMORY[0x28223BE20](v14);
  v84[-2] = v7;
  v15 = sub_247D94508(sub_247D96B18, &v84[-4], v10);
  v16 = v15;
  v17 = v15[2];
  if (v17)
  {
    v95 = xmmword_247DD5950;
    v90 = v15;
    v86 = v5;
    v87 = v4;
    v84[1] = a2;
    v85 = v7;
    if ((v17 & 1) == 0)
    {
      v18 = v17;
      v5 = 0;
LABEL_98:
      v46 = v16 + 4;
      v88 = &v92.n128_i8[1];
      v89 = xmmword_247DD5960;
      v10 = &qword_27EE73C38;
      v4 = &qword_247DD5978;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
        v47 = swift_allocObject();
        *(v47 + 16) = v89;
        v48 = v16[2];
        if (v5 >= v48)
        {
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:

          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v49 = &v46[2 * v5];
        v51 = *v49;
        v50 = v49[1];
        *(v47 + 32) = v51;
        *(v47 + 40) = v50;
        if (v5 + 1 >= v48)
        {
          goto LABEL_197;
        }

        v52 = &v46[2 * v5 + 2];
        v53 = v52[1];
        *(v47 + 48) = *v52;
        *(v47 + 56) = v53;
        v92.n128_u64[0] = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C48, &qword_247DD5988);
        sub_247D6AE30(&qword_27EE73C50, &qword_27EE73C48, &qword_247DD5988, MEMORY[0x277D83970]);
        v54 = sub_247DD2E3C();
        v56 = HIBYTE(v55) & 0xF;
        v12 = v54 & 0xFFFFFFFFFFFFLL;
        if ((v55 & 0x2000000000000000) != 0)
        {
          v57 = HIBYTE(v55) & 0xF;
        }

        else
        {
          v57 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (!v57)
        {
          goto LABEL_198;
        }

        if ((v55 & 0x1000000000000000) != 0)
        {
          LOWORD(v60) = sub_247D95420(v54, v55, 16);

          if ((v60 & 0x100) != 0)
          {
            goto LABEL_216;
          }

          goto LABEL_189;
        }

        if ((v55 & 0x2000000000000000) != 0)
        {
          v92.n128_u64[0] = v54;
          v92.n128_u64[1] = v55 & 0xFFFFFFFFFFFFFFLL;
          v12 = v54;
          if (v54 == 43)
          {
            if (!v56)
            {
              goto LABEL_199;
            }

            v12 = v56 - 1;
            if (v56 != 1)
            {
              LOBYTE(v60) = 0;
              v70 = v88;
              while (1)
              {
                v71 = *v70;
                v72 = v71 - 48;
                if ((v71 - 48) >= 0xA)
                {
                  if ((v71 - 65) < 6)
                  {
                    v72 = v71 - 55;
                  }

                  else
                  {
                    if ((v71 - 97) > 5)
                    {
                      break;
                    }

                    v72 = v71 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                LOBYTE(v60) = v72 + 16 * v60;
                ++v70;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v54 == 45)
          {
            if (!v56)
            {
              goto LABEL_202;
            }

            v12 = v56 - 1;
            if (v56 != 1)
            {
              LOBYTE(v60) = 0;
              v64 = v88;
              while (1)
              {
                v65 = *v64;
                v66 = v65 - 48;
                if ((v65 - 48) >= 0xA)
                {
                  if ((v65 - 65) < 6)
                  {
                    v66 = v65 - 55;
                  }

                  else
                  {
                    if ((v65 - 97) > 5)
                    {
                      break;
                    }

                    v66 = v65 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                v60 = 16 * (v60 & 0xF) - v66;
                if ((v60 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v64;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v56)
          {
            LOBYTE(v60) = 0;
            v75 = &v92;
            while (1)
            {
              v76 = v75->n128_u8[0];
              v77 = v76 - 48;
              if ((v76 - 48) >= 0xA)
              {
                if ((v76 - 65) < 6)
                {
                  v77 = v76 - 55;
                }

                else
                {
                  if ((v76 - 97) > 5)
                  {
                    break;
                  }

                  v77 = v76 - 87;
                }
              }

              if (v60 > 0xFu)
              {
                break;
              }

              LOBYTE(v60) = v77 + 16 * v60;
              v75 = (v75 + 1);
              if (!--v56)
              {
                LOBYTE(v12) = 0;
                goto LABEL_188;
              }
            }
          }
        }

        else
        {
          if ((v54 & 0x1000000000000000) != 0)
          {
            v58 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v58 = sub_247DD308C();
            v12 = v80;
          }

          v59 = *v58;
          if (v59 == 43)
          {
            if (v12 < 1)
            {
              goto LABEL_200;
            }

            if (--v12)
            {
              if (!v58)
              {
                goto LABEL_176;
              }

              LOBYTE(v60) = 0;
              v67 = v58 + 1;
              while (1)
              {
                v68 = *v67;
                v69 = v68 - 48;
                if ((v68 - 48) >= 0xA)
                {
                  if ((v68 - 65) < 6)
                  {
                    v69 = v68 - 55;
                  }

                  else
                  {
                    if ((v68 - 97) > 5)
                    {
                      break;
                    }

                    v69 = v68 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                LOBYTE(v60) = v69 + 16 * v60;
                ++v67;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v59 == 45)
          {
            if (v12 < 1)
            {
              goto LABEL_201;
            }

            if (--v12)
            {
              if (!v58)
              {
                goto LABEL_176;
              }

              LOBYTE(v60) = 0;
              v61 = v58 + 1;
              while (1)
              {
                v62 = *v61;
                v63 = v62 - 48;
                if ((v62 - 48) >= 0xA)
                {
                  if ((v62 - 65) < 6)
                  {
                    v63 = v62 - 55;
                  }

                  else
                  {
                    if ((v62 - 97) > 5)
                    {
                      break;
                    }

                    v63 = v62 - 87;
                  }
                }

                if (v60 > 0xFu)
                {
                  break;
                }

                v60 = 16 * (v60 & 0xF) - v63;
                if ((v60 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v61;
                if (!--v12)
                {
                  goto LABEL_188;
                }
              }
            }
          }

          else if (v12)
          {
            if (!v58)
            {
LABEL_176:
              LOBYTE(v60) = 0;
              LOBYTE(v12) = 0;
              goto LABEL_188;
            }

            LOBYTE(v60) = 0;
            while (1)
            {
              v73 = *v58;
              v74 = v73 - 48;
              if ((v73 - 48) >= 0xA)
              {
                if ((v73 - 65) < 6)
                {
                  v74 = v73 - 55;
                }

                else
                {
                  if ((v73 - 97) > 5)
                  {
                    break;
                  }

                  v74 = v73 - 87;
                }
              }

              if (v60 > 0xFu)
              {
                break;
              }

              LOBYTE(v60) = v74 + 16 * v60;
              ++v58;
              if (!--v12)
              {
                goto LABEL_188;
              }
            }
          }
        }

        LOBYTE(v60) = 0;
        LOBYTE(v12) = 1;
LABEL_188:
        v91 = v12;
        v78 = v12;

        if (v78)
        {
          goto LABEL_216;
        }

LABEL_189:
        v79 = *(&v95 + 1) >> 62;
        if ((*(&v95 + 1) >> 62) <= 1)
        {
          if (v79)
          {
            v7 = v95 >> 32;
          }

          else
          {
            v7 = BYTE14(v95);
          }
        }

        else if (v79 == 2)
        {
          v7 = *(v95 + 24);
        }

        else
        {
          v7 = 0;
        }

        v5 += 2;
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C38, &qword_247DD5978);
        v93 = a2;
        v94 = sub_247D6AE30(&qword_27EE73C40, &qword_27EE73C38, &qword_247DD5978, MEMORY[0x277CC9EF0]);
        v92.n128_u8[0] = v60;
        v91 = *__swift_project_boxed_opaque_existential_1(&v92, a2);
        sub_247DD212C();
        __swift_destroy_boxed_opaque_existential_0Tm(&v92);
        v16 = v90;
        if (v5 >= v18)
        {
          goto LABEL_96;
        }
      }
    }

    v20 = v15[4];
    v21 = v15[5];
    v22 = HIBYTE(v21) & 0xF;
    v23 = v20 & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v24 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      if ((v21 & 0x1000000000000000) == 0)
      {
        if ((v21 & 0x2000000000000000) != 0)
        {
          v92.n128_u64[0] = v15[4];
          v92.n128_u64[1] = v21 & 0xFFFFFFFFFFFFFFLL;
          if (v20 != 43)
          {
            if (v20 != 45)
            {
              if (!v22)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = 0;
              v41 = &v92;
              while (1)
              {
                v42 = v41->n128_u8[0];
                v43 = v42 - 48;
                if ((v42 - 48) >= 0xA)
                {
                  if ((v42 - 65) < 6)
                  {
                    v43 = v42 - 55;
                  }

                  else
                  {
                    if ((v42 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v43 = v42 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  goto LABEL_93;
                }

                LOBYTE(v20) = v43 + 16 * v20;
                v41 = (v41 + 1);
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }

            if (v22)
            {
              if (!--v22)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = 0;
              v30 = &v92.n128_u8[1];
              while (1)
              {
                v31 = *v30;
                v32 = v31 - 48;
                if ((v31 - 48) >= 0xA)
                {
                  if ((v31 - 65) < 6)
                  {
                    v32 = v31 - 55;
                  }

                  else
                  {
                    if ((v31 - 97) > 5)
                    {
                      goto LABEL_93;
                    }

                    v32 = v31 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  goto LABEL_93;
                }

                LODWORD(v20) = 16 * (v20 & 0xF) - v32;
                if ((v20 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_93;
                }

                ++v30;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_213;
          }

          if (v22)
          {
            if (!--v22)
            {
              goto LABEL_93;
            }

            LOBYTE(v20) = 0;
            v36 = &v92.n128_u8[1];
            while (1)
            {
              v37 = *v36;
              v38 = v37 - 48;
              if ((v37 - 48) >= 0xA)
              {
                if ((v37 - 65) < 6)
                {
                  v38 = v37 - 55;
                }

                else
                {
                  if ((v37 - 97) > 5)
                  {
                    goto LABEL_93;
                  }

                  v38 = v37 - 87;
                }
              }

              if (v20 > 0xFu)
              {
                goto LABEL_93;
              }

              LOBYTE(v20) = v38 + 16 * v20;
              ++v36;
              if (!--v22)
              {
                goto LABEL_94;
              }
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
        }

        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_211;
        }

        for (i = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_247DD308C())
        {
          v26 = *i;
          if (v26 == 43)
          {
            if (v23 < 1)
            {
              goto LABEL_214;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v20) = 0;
              v33 = i + 1;
              while (1)
              {
                v34 = *v33;
                v35 = v34 - 48;
                if ((v34 - 48) >= 0xA)
                {
                  if ((v34 - 65) < 6)
                  {
                    v35 = v34 - 55;
                  }

                  else
                  {
                    if ((v34 - 97) > 5)
                    {
                      break;
                    }

                    v35 = v34 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  break;
                }

                LOBYTE(v20) = v35 + 16 * v20;
                ++v33;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v26 == 45)
          {
            if (v23 < 1)
            {
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              if (!i)
              {
                goto LABEL_82;
              }

              LOBYTE(v20) = 0;
              v27 = i + 1;
              while (1)
              {
                v28 = *v27;
                v29 = v28 - 48;
                if ((v28 - 48) >= 0xA)
                {
                  if ((v28 - 65) < 6)
                  {
                    v29 = v28 - 55;
                  }

                  else
                  {
                    if ((v28 - 97) > 5)
                    {
                      break;
                    }

                    v29 = v28 - 87;
                  }
                }

                if (v20 > 0xFu)
                {
                  break;
                }

                LODWORD(v20) = 16 * (v20 & 0xF) - v29;
                if ((v20 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v27;
                if (!--v22)
                {
                  goto LABEL_94;
                }
              }
            }
          }

          else if (v23)
          {
            if (!i)
            {
LABEL_82:
              LOBYTE(v20) = 0;
              LOBYTE(v22) = 0;
              goto LABEL_94;
            }

            LOBYTE(v20) = 0;
            while (1)
            {
              v39 = *i;
              v40 = v39 - 48;
              if ((v39 - 48) >= 0xA)
              {
                if ((v39 - 65) < 6)
                {
                  v40 = v39 - 55;
                }

                else
                {
                  if ((v39 - 97) > 5)
                  {
                    break;
                  }

                  v40 = v39 - 87;
                }
              }

              if (v20 > 0xFu)
              {
                break;
              }

              LOBYTE(v20) = v40 + 16 * v20;
              ++i;
              if (!--v23)
              {
                LOBYTE(v22) = 0;
                goto LABEL_94;
              }
            }
          }

LABEL_93:
          LOBYTE(v20) = 0;
          LOBYTE(v22) = 1;
LABEL_94:
          v91 = v22;
          if ((v22 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_210:
          __break(1u);
LABEL_211:
          ;
        }
      }
    }

    else
    {
      __break(1u);
    }

    LOWORD(v20) = sub_247D95420(v20, v21, 16);

    if ((v20 & 0x100) != 0)
    {
      goto LABEL_210;
    }

LABEL_95:
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C38, &qword_247DD5978);
    v93 = v44;
    v94 = sub_247D6AE30(&qword_27EE73C40, &qword_27EE73C38, &qword_247DD5978, MEMORY[0x277CC9EF0]);
    v92.n128_u8[0] = v20;
    v91 = *__swift_project_boxed_opaque_existential_1(&v92, v44);
    v5 = 1;
    sub_247DD212C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v92);
    v18 = v17;
    v16 = v90;
    if (v17 != 1)
    {
      goto LABEL_98;
    }

LABEL_96:

    v19 = v95;
    v5 = v86;
    v4 = v87;
    v7 = v85;
  }

  else
  {

    v19 = 0;
  }

  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t sub_247D96B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SharedSecret.accV2Compatible(protocolVersion:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result - 5) < 0xFCu)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = MEMORY[0x277D84B78];
  v5 = sub_247DD2EAC();
  *(v5 + 16) = 2;
  *(v5 + 32) = 0;
  SecRandomCopyBytes(*MEMORY[0x277CDC540], 2uLL, (v5 + 32));
  v6 = sub_247D9967C((v5 + 32), (v5 + 34));
  v8 = v7;

  if (v3 == 1)
  {
    LOBYTE(v9) = 1;
    goto LABEL_5;
  }

  result = sub_247D98E64(4);
  v9 = ((4 * v3 - 4) & 0xFC) + result;
  if ((v9 & 0x100) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C60, &unk_247DD5990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_247DD54D0;
  v11 = MEMORY[0x277D84BC0];
  *(v10 + 56) = v4;
  *(v10 + 64) = v11;
  *(v10 + 32) = v9;
  v17 = sub_247DD2CCC();
  v18 = v12;

  v13 = sub_247D94008(v6, v8 & 0xFFFFFFFFFFFFFFLL);
  MEMORY[0x24C1BA0A0](v13);

  result = sub_247D95F30(v17, v18);
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    sub_247D6A1F8(v6, v8 & 0xFFFFFFFFFFFFFFLL);

    *a2 = v15;
    a2[1] = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t SharedSecret.advertisementIdentifer.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = sub_247DD2B6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = *v1;
  v11 = v1[1];
  *&v31 = *v1;
  *(&v31 + 1) = v11;
  v12 = SharedSecret.protocolVersion.getter();
  if ((v12 & 0x100) != 0 || (v12 & 0xFE) == 0)
  {
    *&v31 = v10;
    *(&v31 + 1) = v11;
    return sub_247D97368(a1);
  }

  *&v31 = v10;
  *(&v31 + 1) = v11;
  sub_247D6A2E8(v10, v11);
  sub_247DD2B5C();
  *&v31 = sub_247D97644(0x696669746E656469, 0xEA00000000007265);
  *(&v31 + 1) = v13;
  sub_247DD2C1C();
  sub_247D9A090(&qword_27EE73AC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_247D8A434();
  sub_247DD2BFC();
  sub_247D6A1F8(v31, *(&v31 + 1));
  v14 = *(v4 + 8);
  v14(v7, v3);
  sub_247DD2B4C();
  v14(v9, v3);
  v15 = v31;
  v16 = *(&v31 + 1) >> 62;
  if ((*(&v31 + 1) >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&v31 + 6) = 0;
      *&v31 = 0;
      v18 = &v31;
      v17 = &v31;
      goto LABEL_26;
    }

    v20 = *(v31 + 16);
    v21 = *(v31 + 24);
    v22 = sub_247DD1FFC();
    if (v22)
    {
      v23 = sub_247DD202C();
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_29;
      }

      v22 += v20 - v23;
    }

    v24 = __OFSUB__(v21, v20);
    v25 = v21 - v20;
    if (!v24)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v25 = (v15 >> 32) - v15;
    if (v15 >> 32 >= v15)
    {
      v22 = sub_247DD1FFC();
      if (!v22)
      {
LABEL_18:
        v27 = sub_247DD201C();
        if (v27 >= v25)
        {
          v28 = v25;
        }

        else
        {
          v28 = v27;
        }

        v29 = (v28 + v22);
        if (v22)
        {
          v17 = v29;
        }

        else
        {
          v17 = 0;
        }

        v18 = v22;
        goto LABEL_26;
      }

      v26 = sub_247DD202C();
      if (!__OFSUB__(v15, v26))
      {
        v22 += v15 - v26;
        goto LABEL_18;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  v17 = &v31 + BYTE14(v31);
  v18 = &v31;
LABEL_26:
  sub_247D97F20(v18, v17);
  return sub_247D6A1F8(v15, *(&v15 + 1));
}

uint64_t SharedSecret.asACCV2CompatibileHex.getter()
{
  v1 = sub_247D94008(*v0, *(v0 + 8));
  v3 = v2;
  v4 = sub_247DD2D8C();
  if (v4)
  {
    v5 = v4;
    v6 = sub_247D993D8(v4, 0);

    v7 = sub_247D99310(&v11, v6 + 4, v5, v1, v3);

    if (v7 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v9 = v6[2];
  v10 = v9 - 5;
  if (v9 < 5)
  {
    v10 = 0;
  }

  v11.n128_u64[0] = v6;
  v11.n128_u64[1] = (v6 + 4);
  v12 = v10;
  v13 = (2 * v9) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
  sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0, MEMORY[0x277D83FB0]);
  return sub_247DD2E3C();
}

uint64_t SharedSecret.protocolVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v3)
    {
      if (v1 != v1 >> 32)
      {
        goto LABEL_10;
      }
    }

    else if ((v2 & 0xFF000000000000) != 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 0;
    v5 = 1;
    return v4 | (v5 << 8);
  }

  if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = sub_247DD214C();
  if (v6 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v6 >> 2) + 1;
  }

  v5 = 0;
  return v4 | (v5 << 8);
}

size_t SharedSecret.init(length:)@<X0>(size_t result@<X0>, unint64_t *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v4 = sub_247DD2EAC();
      *(v4 + 16) = v2;
      bzero((v4 + 32), v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    SecRandomCopyBytes(*MEMORY[0x277CDC540], v2, (v4 + 32));
    v5 = sub_247D99734((v4 + 32), v2);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_247D97368@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = sub_247DD2C1C();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247DD2B3C();
  v17 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_247D9A090(&qword_27EE73AC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_247DD2B1C();
  sub_247D6A2E8(v11, v12);
  sub_247DB9ECC(v11, v12, v4);
  v13 = v5;
  v14 = v17;
  sub_247D6A1F8(v11, v12);
  sub_247DD2B0C();
  (*(v18 + 8))(v4, v2);
  (*(v14 + 16))(v8, v10, v13);
  sub_247D9A090(&unk_27EE73CB0, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  result = sub_247DD2E6C();
  if (*(result + 16) < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    sub_247DD222C();

    return (*(v14 + 8))(v10, v13);
  }

  return result;
}

uint64_t sub_247D97644(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CA0, &qword_247DD5D50);
  if (swift_dynamicCast())
  {
    sub_247D6B5A8(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_247DD204C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_247D99FA0(__src);
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
    v4 = sub_247DD308C();
  }

  sub_247D98844(&v43, v4, v5);
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
  *&__src[0] = sub_247D99D24(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_247D9890C(sub_247D9A008, v34);
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
        sub_247DD212C();
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
      v28 = sub_247D81404(v16, v14, v15);
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
      v8 = sub_247DD2DDC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_247DD2E0C();
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
        v30 = sub_247DD308C();
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

    v16 = sub_247D81404(v16, v14, v15);
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

    v16 = sub_247DD2DEC();
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
      sub_247DD213C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_247DD213C();
    sub_247D6A25C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_247D6A25C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_247D6A2E8(*&__src[0], *(&__src[0] + 1));

  sub_247D6A1F8(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_247D97B54(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_247D9967C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_247D99DC4(v3, v4);
    }

    else
    {
      v6 = sub_247D99E40(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t ClosedReason.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t SharedSecret.data.getter()
{
  v1 = *v0;
  sub_247D6A2E8(*v0, *(v0 + 8));
  return v1;
}

uint64_t SharedSecret.init(hexEncoded:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_247D95F30(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  v7 = 0xF000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t SharedSecret.asURLSafeBase64Encoded.getter()
{
  v0 = sub_247DD1FBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD216C();
  v18 = v4;
  v15 = 43;
  v16 = 0xE100000000000000;
  v13 = 45;
  v14 = 0xE100000000000000;
  sub_247D997E4();
  v5 = sub_247DD2FDC();
  v7 = v6;

  v17 = v5;
  v18 = v7;
  v15 = 47;
  v16 = 0xE100000000000000;
  v13 = 95;
  v14 = 0xE100000000000000;
  v8 = sub_247DD2FDC();
  v10 = v9;

  v17 = v8;
  v18 = v10;
  sub_247DD1F9C();
  v11 = sub_247DD2FCC();
  (*(v1 + 8))(v3, v0);

  return v11;
}

unsigned __int8 *sub_247D97F20(unsigned __int8 *result, uint64_t a2)
{
  if (result && (a2 - result + 15) >= 0x1F)
  {
    return sub_247DD222C();
  }

  __break(1u);
  return result;
}

uint64_t SharedSecret.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SharedSecret.init(urlSafeBase64Encoded:)@<X0>(uint64_t *a7@<X8>)
{
  sub_247D997E4();
  sub_247DD2FDC();

  sub_247DD2FDC();

  v8 = sub_247DD2D8C();
  v9 = v8 & 3;
  if (v8 <= 0)
  {
    v9 = -(-v8 & 3);
  }

  if (v9 >= 1)
  {
    v10 = 4 - v9;

    v11 = sub_247DD2D8C();

    result = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      __break(1u);
      return result;
    }

    sub_247DD2FEC();
  }

  v13 = sub_247DD210C();
  v15 = v14;

  if (v15 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = 0xF000000000000000;
  if (v15 >> 60 != 15)
  {
    v17 = v15;
  }

  *a7 = v16;
  a7[1] = v17;
  return result;
}

uint64_t SharedSecret.init(accCompatibileHexEncoded:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (sub_247DD2D8C() == 5)
  {
    result = sub_247D95F30(a1, a2);
    if (v8 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = result;
    }

    v10 = 0xF000000000000000;
    if (v8 >> 60 != 15)
    {
      v10 = v8;
    }
  }

  else
  {

    v9 = 0;
    v10 = 0xF000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t SharedSecret.init(pinCode:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_247DD2CEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_247DD2CDC();
  v7 = sub_247DD2CBC();
  v9 = v8;

  result = (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    *a2 = v7;
    a2[1] = v9;
  }

  return result;
}

uint64_t PinCode.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_247D98360@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && a1 != a2)
  {
    v11 = sub_247D72CA8(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = a2;
    v4 = v11;
    v13 = a1;
    v14 = *(v11 + 2);
    do
    {
      v15 = *v13;
      v16 = *(v4 + 24);
      if (v14 >= v16 >> 1)
      {
        v17 = v13;
        v18 = sub_247D72CA8((v16 > 1), v14 + 1, 1, v4);
        v12 = a2;
        v4 = v18;
        v13 = v17;
      }

      ++v13;
      *(v4 + 16) = v14 + 1;
      *(v4 + v14++ + 32) = v15;
    }

    while (v13 != v12);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_247D99EC4(v4);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t static PinCode.random(length:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = 0;
    v9 = 0;
    v10 = 0xE000000000000000;
    do
    {
      v8 = 0;
      MEMORY[0x24C1BAF70](&v8, 8);
      v6 = v8;
      if (10 * v8 <= 5)
      {
        do
        {
          v8 = 0;
          MEMORY[0x24C1BAF70](&v8, 8);
          v6 = v8;
        }

        while (10 * v8 < 6);
      }

      ++v4;
      v8 = (v6 * 0xAuLL) >> 64;
      v5 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v5);
    }

    while (v4 != v3);
    v7 = v10;
    *a2 = v9;
    a2[1] = v7;
  }

  return result;
}

uint64_t PinCode.description.getter()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0x2865646F436E6950;
}

uint64_t static PinCode.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_247DD322C();
  }
}

uint64_t sub_247D985F8()
{
  MEMORY[0x24C1BA0A0](*v0, v0[1]);
  MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
  return 0x2865646F436E6950;
}

void *sub_247D98654@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_247D98660(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_247DD322C();
  }
}

Cosmo::PinCode __swiftcall PinCode.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v2 = v1;
  v3 = sub_247DD321C();
  *v2 = v3;
  v2[1] = v4;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_247D986D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247DD321C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_247D98724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C98, &qword_247DD5D48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_247D98844@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_247D9967C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_247DD203C();
      swift_allocObject();
      v8 = sub_247DD1FEC();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_247DD211C();
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

char *sub_247D9890C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_247D6A1F8(v7, v6);
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

    sub_247D6A1F8(v7, v6);
    *v4 = xmmword_247DD5950;
    sub_247D6A1F8(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_247DD1FFC() && __OFSUB__(v7, sub_247DD202C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_247DD203C();
      swift_allocObject();
      v14 = sub_247DD1FDC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_247D98DB0(v7, v7 >> 32, a1);

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

    sub_247D6A1F8(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_247DD5950;
    sub_247D6A1F8(0, 0xC000000000000000);
    sub_247DD20EC();
    result = sub_247D98DB0(*(v17 + 2), *(v17 + 3), a1);
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

_BYTE *sub_247D98CB0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_247D9967C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_247D99DC4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_247D99E40(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_247D98D44(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_247D98DB0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_247DD1FFC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_247DD202C();
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

  v12 = sub_247DD201C();
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

uint64_t sub_247D98E64(uint64_t result)
{
  if (result)
  {
    v6[3] = v1;
    v6[4] = v2;
    v3 = result;
    v6[0] = 0;
    MEMORY[0x24C1BAF70](v6, 8);
    v4 = v3;
    result = (LOBYTE(v6[0]) * v3) >> 8;
    if (v3 > (LOBYTE(v6[0]) * v3) && -v3 % v3 > (LOBYTE(v6[0]) * v3))
    {
      v5 = (-v3 % v3);
      do
      {
        v6[0] = 0;
        MEMORY[0x24C1BAF70](v6, 8);
      }

      while (v5 > (LOBYTE(v6[0]) * v4));
      return (LOBYTE(v6[0]) * v4) >> 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D98F00@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_247DD1FFC();
    if (v10)
    {
      v11 = sub_247DD202C();
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
      result = sub_247DD201C();
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
  v10 = sub_247DD1FFC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_247DD202C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_247DD201C();
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

uint64_t sub_247D99130(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_247D9945C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_247D6A1F8(a3, a4);
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
  sub_247D98F00(v13, a3, a4, &v12);
  v10 = v4;
  sub_247D6A1F8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_247D992C0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_247DD305C();
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

__n128 *sub_247D99310(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_247DD2DCC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_247D993D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_247D9945C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_247DD1FFC();
  v11 = result;
  if (result)
  {
    result = sub_247DD202C();
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

  sub_247DD201C();
  sub_247D98F00(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_247D99514(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_247D6A2E8(a3, a4);
          return sub_247D99130(v13, a2, a3, a4) & 1;
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

uint64_t sub_247D9967C(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_247D99734(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_247D9967C(a1, &a1[a2]);
  }

  sub_247DD203C();
  swift_allocObject();
  sub_247DD1FEC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_247DD211C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_247D997E4()
{
  result = qword_27EE73C68;
  if (!qword_27EE73C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C68);
  }

  return result;
}

unint64_t sub_247D9983C()
{
  result = qword_27EE73C70;
  if (!qword_27EE73C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C70);
  }

  return result;
}

unint64_t sub_247D99894()
{
  result = qword_27EE73C78;
  if (!qword_27EE73C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C78);
  }

  return result;
}

unint64_t sub_247D998F8()
{
  result = qword_27EE73C80;
  if (!qword_27EE73C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClosedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClosedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Cosmo13TransferErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_247D99AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
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

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247D99B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_247D99BA4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_247D99BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247D99C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_247D99C90(uint64_t a1, int a2)
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

uint64_t sub_247D99CD8(uint64_t result, int a2, int a3)
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

uint64_t sub_247D99D24(uint64_t result)
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
      sub_247DD203C();
      swift_allocObject();
      sub_247DD200C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_247DD211C();
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

uint64_t sub_247D99DC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247DD203C();
  swift_allocObject();
  result = sub_247DD1FEC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247DD211C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_247D99E40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247DD203C();
  swift_allocObject();
  result = sub_247DD1FEC();
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

uint64_t sub_247D99EC4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73C88, &qword_247DD5D40);
  v10 = sub_247D6AE30(&qword_27EE73C90, &qword_27EE73C88, &qword_247DD5D40, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_247D98CB0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_247D99FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CA8, &qword_247DD5D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_247D9A008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_247D98D44(sub_247D9A070, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_247D9A090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CosmoBrowser.EndpointState.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D9A180@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D9A214(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t sub_247D9A2D0()
{
  v1 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D86A04(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_247D6A1F8(*(v3 + 1), *(v3 + 2));
    sub_247D6A1F8(*(v3 + 3), *(v3 + 4));
    swift_unknownObjectRelease();
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348) + 96);
    v7 = sub_247DD225C();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
    return 0x75716F6D736F635FLL;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_247D8690C(v3);
    return 0x63746F6D736F635FLL;
  }

  else
  {
    sub_247D8690C(v3);
    return 16718;
  }
}

void sub_247D9A43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CF0, &qword_247DD5E48);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_247DD295C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  sub_247D88E80(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_247D6BAD4(v3, &qword_27EE73CF0, &qword_247DD5E48);
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B878);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_247D56000, v12, v13, "[Browser] No Bonjour type!", v14, 2u);
      MEMORY[0x24C1BAF60](v14, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v8, v10, v4);
    sub_247D879F4();
    sub_247DD29FC();
    swift_allocObject();
    v15 = sub_247DD298C();
    v16 = OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser;
    *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = v15;

    swift_allocObject();
    swift_weakInit();

    sub_247D6ACFC(sub_247D9BCDC);
    sub_247DD296C();

    if (*(v0 + v16))
    {
      swift_allocObject();
      swift_weakInit();

      sub_247D6ACFC(sub_247D9BCE4);
      sub_247DD297C();
    }

    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE7B878);

    v18 = sub_247DD23AC();
    v19 = sub_247DD2F2C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v23 = sub_247D9A2D0();
      v25 = sub_247D72868(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_247D56000, v18, v19, "[Browser] Starting browser for Bonjour type=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x24C1BAF60](v22, -1, -1);
      v26 = v21;
      v16 = v27;
      MEMORY[0x24C1BAF60](v26, -1, -1);
    }

    if (*(v0 + v16))
    {

      sub_247DD29AC();
    }

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_247D9A958(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D08, &unk_247DD5E60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_247DD299C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v44 = v13;
    v45 = v16;
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE7B878);
    v21 = *(v10 + 16);
    v21(v18, a1, v9);

    v22 = sub_247DD23AC();
    v23 = sub_247DD2F2C();

    if (os_log_type_enabled(v22, v23))
    {
      v41 = v23;
      v43 = v22;
      v24 = swift_slowAlloc();
      v39 = v21;
      v25 = v24;
      v40 = swift_slowAlloc();
      v46 = v40;
      *v25 = 136315394;
      v26 = sub_247D9A2D0();
      v28 = sub_247D72868(v26, v27, &v46);

      *(v25 + 4) = v28;
      v42 = v25;
      *(v25 + 12) = 2080;
      v29 = v39;
      v39(v8, v18, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_247D9BCEC(v8, v6);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        v30 = 0xE300000000000000;
        v31 = 7104878;
      }

      else
      {
        v32 = v45;
        (*(v10 + 32))(v45, v6, v9);
        v29(v44, v32, v9);
        v31 = sub_247DD2CFC();
        v30 = v33;
        (*(v10 + 8))(v32, v9);
      }

      sub_247D6BAD4(v8, &qword_27EE73D08, &unk_247DD5E60);
      (*(v10 + 8))(v18, v9);
      v34 = sub_247D72868(v31, v30, &v46);

      v36 = v42;
      v35 = v43;
      *(v42 + 14) = v34;
      _os_log_impl(&dword_247D56000, v35, v41, "[Browser] Browser for Bonjour type=%s changed state=%s", v36, 0x16u);
      v37 = v40;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v37, -1, -1);
      MEMORY[0x24C1BAF60](v36, -1, -1);
    }

    else
    {

      return (*(v10 + 8))(v18, v9);
    }
  }

  return result;
}

void sub_247D9ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = sub_247DD29DC();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247DD29BC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v36 = sub_247D88A6C();
  v39 = v16;
  v40 = v15;
  v35 = sub_247D88CCC();
  v38 = v17;
  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;
  v43 = v8 + 32;
  v44 = v8 + 16;
  v42 = v8 + 88;
  v41 = *MEMORY[0x277CD9130];
  v31 = *MEMORY[0x277CD9140];
  v30 = (v8 + 8);
  v33 = (v4 + 32);
  v34 = (v8 + 96);
  v32 = (v4 + 8);
  v45 = a2;

  v23 = 0;
  while (v21)
  {
    v27 = v23;
LABEL_13:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    (*(v8 + 16))(v13, *(v45 + 48) + *(v8 + 72) * (v28 | (v27 << 6)), v7);
    (*(v8 + 32))(v11, v13, v7);
    v29 = (*(v8 + 88))(v11, v7);
    if (v29 == v41)
    {
      (*v34)(v11, v7);
      v24 = v37;
      (*v33)(v6, v11, v37);
      v25 = v6;
      v26 = 1;
LABEL_6:
      sub_247D9B1D0(v25, v26, v36, v39, v35, v38, v40);
      (*v32)(v6, v24);
      goto LABEL_7;
    }

    if (v29 == v31)
    {
      (*v34)(v11, v7);
      v24 = v37;
      (*v33)(v6, v11, v37);
      v25 = v6;
      v26 = 0;
      goto LABEL_6;
    }

    (*v30)(v11, v7);
LABEL_7:
    v23 = v27;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v27);
    ++v23;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_247D9B1D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_247DD249C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247DD29CC();
  if ((*(v14 + 88))(v16, v13) != *MEMORY[0x277CD8B00])
  {
    (*(v14 + 8))(v16, v13);
    return;
  }

  v49 = a7;
  (*(v14 + 96))(v16, v13);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v20 = v16[3];

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73CF8, &qword_247DD5E50);
  sub_247D6BAD4(v16 + *(v21 + 80), &qword_27EE73D00, &qword_247DD5E58);
  v22 = 0x652D65766F6D6572;
  if (a2)
  {
    v22 = 0x6E6576652D646461;
  }

  v50 = v22;
  v51 = v19;
  if (a2)
  {
    v23 = 0xE900000000000074;
  }

  else
  {
    v23 = 0xEC000000746E6576;
  }

  if (a4)
  {
    v24 = v18 == a3 && v17 == a4;
    if (!v24 && (sub_247DD322C() & 1) == 0)
    {
      if (sub_247DD2D0C() == a3 && v25 == a4)
      {
      }

      else
      {
        v27 = sub_247DD322C();
        v19 = v51;

        if ((v27 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    if (a6)
    {
      v28 = v19 == a5 && v20 == a6;
      if (v28 || (sub_247DD322C() & 1) != 0)
      {
        if (qword_27EE73260 != -1)
        {
          swift_once();
        }

        v29 = sub_247DD23CC();
        __swift_project_value_buffer(v29, qword_27EE7B878);

        v30 = sub_247DD23AC();
        v31 = sub_247DD2F2C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v53[0] = v33;
          *v32 = 136315650;
          v34 = sub_247D72868(v50, v23, v53);

          *(v32 + 4) = v34;
          *(v32 + 12) = 2080;
          v35 = sub_247D72868(v18, v17, v53);

          *(v32 + 14) = v35;
          *(v32 + 22) = 2080;
          v36 = sub_247D72868(v51, v20, v53);

          *(v32 + 24) = v36;
          _os_log_impl(&dword_247D56000, v30, v31, "[Browser] Received %s for Bonjour-service-name=%s Bonjour-service-type=%s", v32, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v33, -1, -1);
          MEMORY[0x24C1BAF60](v32, -1, -1);
        }

        else
        {
        }

        v45 = v49;
        if (a2)
        {
          swift_beginAccess();
          v46 = *(v45 + 16);
          if (!v46)
          {
            return;
          }

          v47 = *(v45 + 24);
          v52 = 0;
        }

        else
        {
          swift_beginAccess();
          v46 = *(v45 + 16);
          if (!v46)
          {
            return;
          }

          v47 = *(v45 + 24);
          v52 = 1;
        }

        v46(&v52);
        sub_247D6A24C(v46, v47);
        return;
      }
    }
  }

  else
  {
    sub_247DD2D0C();
  }

LABEL_32:
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v37 = sub_247DD23CC();
  __swift_project_value_buffer(v37, qword_27EE7B878);

  v38 = sub_247DD23AC();
  v39 = sub_247DD2F2C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53[0] = v41;
    *v40 = 136315650;
    v42 = sub_247D72868(v50, v23, v53);

    *(v40 + 4) = v42;
    *(v40 + 12) = 2080;
    v43 = sub_247D72868(v18, v17, v53);

    *(v40 + 14) = v43;
    *(v40 + 22) = 2080;
    v44 = sub_247D72868(v51, v20, v53);

    *(v40 + 24) = v44;
    _os_log_impl(&dword_247D56000, v38, v39, "[Browser] Ignoring %s for Bonjour-service-name=%s Bonjour-service-type=%s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v41, -1, -1);
    MEMORY[0x24C1BAF60](v40, -1, -1);
  }

  else
  {
  }
}

void sub_247D9B824()
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v1 = sub_247DD23CC();
  __swift_project_value_buffer(v1, qword_27EE7B878);

  v2 = sub_247DD23AC();
  v3 = sub_247DD2F2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    v6 = sub_247D9A2D0();
    v8 = sub_247D72868(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_247D56000, v2, v3, "[Browser] Stopping browser for Bonjour type=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x24C1BAF60](v5, -1, -1);
    MEMORY[0x24C1BAF60](v4, -1, -1);
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser))
  {

    sub_247DD29EC();
  }
}

uint64_t CosmoBrowser.deinit()
{
  sub_247D6A24C(*(v0 + 16), *(v0 + 24));
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor);

  return v0;
}

uint64_t CosmoBrowser.__deallocating_deinit()
{
  sub_247D6A24C(v0[2], v0[3]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_247D9BAAC()
{
  result = qword_27EE73CC8;
  if (!qword_27EE73CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73CC8);
  }

  return result;
}

uint64_t type metadata accessor for CosmoBrowser(uint64_t a1)
{
  result = qword_27EE73CD8;
  if (!qword_27EE73CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D9BB6C(uint64_t a1)
{
  result = type metadata accessor for NetworkDescriptor(319);
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

uint64_t sub_247D9BCA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D9BCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D08, &unk_247DD5E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D9BD5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

SecKeyRef getLocalKeyPair(serializedKeyPair:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = *MEMORY[0x277CDC040];

    return createKeyPair(v2, 256);
  }

  else
  {
    sub_247D6A2E8(a1, a2);
    v6 = deserialize(serializedKeyPair:)(a1, a2);
    if (v6)
    {
      v7 = v6;
      sub_247D6C0AC(a1, a2);
      return v7;
    }

    else
    {
      result = sub_247DD30AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t getPublicKey(identity:)(void *a1)
{
  v1 = publicKeyFromIdentity(a1);
  v2 = sub_247DD217C();

  return v2;
}

uint64_t copyPublicKeyFrom(identity:)(NSObject *a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = sec_identity_copy_ref(a1);
  if (!v1)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_247D56000, v12, v13, "Unable to copy secIdentity", v14, 2u);
      MEMORY[0x24C1BAF60](v14, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v29[0] = 0;
  v3 = SecIdentityCopyPrivateKey(v1, v29);
  if (v3 != sub_247DD23DC())
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B8F0);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "SecIdentityCopyPrivateKey failed";
    goto LABEL_20;
  }

  if (v29[0])
  {
    v4 = v29[0];
    v5 = SecKeyCopyPublicKey(v4);
    if (v5)
    {
      v6 = v5;
      v7 = SecKeyCopySubjectPublicKeyInfo();
      if (v7)
      {
        v8 = v7;
        v9 = sub_247DD217C();

        return v9;
      }

      if (qword_27EE73288 != -1)
      {
        swift_once();
      }

      v25 = sub_247DD23CC();
      __swift_project_value_buffer(v25, qword_27EE7B8F0);
      v26 = sub_247DD23AC();
      v27 = sub_247DD2F0C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_247D56000, v26, v27, "Could not create data from publicKey", v28, 2u);
        MEMORY[0x24C1BAF60](v28, -1, -1);
      }
    }

    else
    {
      if (qword_27EE73288 != -1)
      {
        swift_once();
      }

      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE7B8F0);
      v22 = sub_247DD23AC();
      v23 = sub_247DD2F0C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_247D56000, v22, v23, "Could not create publicKey from privateKey", v24, 2u);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }
    }

    goto LABEL_22;
  }

  if (qword_27EE73288 != -1)
  {
    swift_once();
  }

  v20 = sub_247DD23CC();
  __swift_project_value_buffer(v20, qword_27EE7B8F0);
  v16 = sub_247DD23AC();
  v17 = sub_247DD2F0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Could not copy privateKey";
LABEL_20:
    _os_log_impl(&dword_247D56000, v16, v17, v19, v18, 2u);
    MEMORY[0x24C1BAF60](v18, -1, -1);
  }

LABEL_21:

LABEL_22:
  return 0;
}

uint64_t copyPrivateKeyFrom(identity:)(NSObject *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = sec_identity_copy_ref(a1);
  if (!v1)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v7 = sub_247DD23CC();
    __swift_project_value_buffer(v7, qword_27EE7B8F0);
    v8 = sub_247DD23AC();
    v9 = sub_247DD2F0C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_247D56000, v8, v9, "Unable to copy secIdentity", v10, 2u);
      MEMORY[0x24C1BAF60](v10, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v17[0] = 0;
  v3 = SecIdentityCopyPrivateKey(v1, v17);
  if (v3 == sub_247DD23DC())
  {
    if (v17[0])
    {
      v4 = v17[0];
      v5 = serializeKeyPair(keyPair:)(v4);

      return v5;
    }

    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Could not copy privateKey";
  }

  else
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "SecIdentityCopyPrivateKey failed";
  }

  _os_log_impl(&dword_247D56000, v12, v13, v15, v14, 2u);
  MEMORY[0x24C1BAF60](v14, -1, -1);
LABEL_19:

  return 0;
}

uint64_t serializeKeyPair(keyPair:)(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, error);
  v2 = v1;
  v3 = error[0];
  if (error[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v4 = sub_247DD23CC();
    __swift_project_value_buffer(v4, qword_27EE7B8F0);
    v5 = sub_247DD23AC();
    v6 = sub_247DD2F0C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      type metadata accessor for CFError(0);
      sub_247D9CDE4(&qword_27EE73D10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v9 = sub_247DD324C();
      v11 = v10;

      v12 = sub_247D72868(v9, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_247D56000, v5, v6, "Error encountered during serialization of keyPair, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
    }

LABEL_7:
    return 0;
  }

  if (!v1)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B8F0);
    v2 = sub_247DD23AC();
    v16 = sub_247DD2F0C();
    if (os_log_type_enabled(v2, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_247D56000, v2, v16, "Failed to serialize keyPair", v17, 2u);
      MEMORY[0x24C1BAF60](v17, -1, -1);
    }

    goto LABEL_7;
  }

  v14 = sub_247DD217C();

  return v14;
}

NSObject *deserialize(serializedKeyPair:)(uint64_t a1, uint64_t a2)
{
  error[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D18, &qword_247DD5E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247DD5E70;
  v3 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v4 = *MEMORY[0x277CDC040];
  v5 = *MEMORY[0x277CDBFE0];
  *(inited + 40) = *MEMORY[0x277CDC040];
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277CDBFF0];
  v7 = *MEMORY[0x277CDC018];
  *(inited + 56) = *MEMORY[0x277CDBFF0];
  *(inited + 64) = v7;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  *(inited + 72) = sub_247DD2EDC();
  sub_247D9CCEC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D20, &qword_247DD5E88);
  swift_arrayDestroy();
  error[0] = 0;
  v13 = sub_247DD215C();
  type metadata accessor for CFString(0);
  sub_247D9CDE4(&qword_27EE734E0, type metadata accessor for CFString, &unk_247DD42C0);
  v14 = sub_247DD2C2C();

  v15 = SecKeyCreateWithData(v13, v14, error);

  v16 = error[0];
  if (error[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE7B8F0);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      type metadata accessor for CFError(0);
      sub_247D9CDE4(&qword_27EE73D10, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v22 = sub_247DD324C();
      v24 = v23;

      v25 = sub_247D72868(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_247D56000, v18, v19, "Error encountered during deserialization of keyPair, error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
    }
  }

  else
  {
    if (v15)
    {
      return v15;
    }

    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B8F0);
    v15 = sub_247DD23AC();
    v28 = sub_247DD2F0C();
    if (os_log_type_enabled(v15, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_247D56000, v15, v28, "Failed to deserialize keyPair", v29, 2u);
      MEMORY[0x24C1BAF60](v29, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_247D9CCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D28, &qword_247DD5E90);
    v3 = sub_247DD30EC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_247D94D54(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_247D9CDE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D9CE2C()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE73D30);
  v1 = __swift_project_value_buffer(v0, qword_27EE73D30);
  if (qword_27EE73270 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B8A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Cosmo::CosmoMultiplexChannelClient::State_optional __swiftcall CosmoMultiplexChannelClient.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

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

  *v2 = v5;
  return result;
}

uint64_t CosmoMultiplexChannelClient.State.rawValue.getter()
{
  if (*v0)
  {
    return 0x6164696C61766E69;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_247D9CF98@<X0>(char *a2@<X8>)
{
  v3 = sub_247DD312C();

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

uint64_t CosmoMultiplexChannelClient.Configuration.init(maxOutstandingRequests:httpConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  return sub_247DA5238(a2, a3 + *(v5 + 20), type metadata accessor for CosmoHttpConnection.Configuration);
}

uint64_t sub_247D9D0C0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D9D154(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8, v9);
}

uint64_t CosmoMultiplexChannelClient.__allocating_init(config:name:descriptor:queue:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  CosmoMultiplexChannelClient.init(config:name:descriptor:queue:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CosmoMultiplexChannelClient.init(config:name:descriptor:queue:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v47 = a2;
  v11 = sub_247DD249C();
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NetworkDescriptor(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v43 - v16;
  v17 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v49 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = v43 - v20;
  v21 = sub_247DD2F6C();
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x28223BE20](v21);
  v44 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v23);
  v24 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v24 - 8);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 0;
  v25 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests) = v25;
  v26 = a1;
  sub_247D9D8B8(a1, v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  v27 = (v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name);
  *v27 = v47;
  v27[1] = a3;
  if (a5)
  {
    v28 = a5;
  }

  else
  {
    v43[0] = sub_247D6A0F4();
    v47 = &qword_247DD5E90;
    sub_247DD2A1C();
    v53 = v25;
    v43[1] = sub_247DA4BD4(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v45 + 104))(v44, *MEMORY[0x277D85260], v46);
    v28 = sub_247DD2F8C();
  }

  v29 = a5;
  *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue) = v28;
  v30 = a4;
  sub_247D9D8B8(a4, v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);
  v31 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  v32 = v48;
  sub_247D9D8B8(v26 + *(v31 + 20), v48, type metadata accessor for CosmoHttpConnection.Configuration);
  v33 = v50;
  sub_247D9D8B8(a4, v50, type metadata accessor for NetworkDescriptor);
  v47 = v29;
  v34 = v28;
  sub_247D873E8(v51);
  sub_247D879F4();
  sub_247DD26FC();
  swift_allocObject();
  v35 = sub_247DD265C();
  v36 = v49;
  sub_247D9D8B8(v32, v49, type metadata accessor for CosmoHttpConnection.Configuration);
  v37 = v52;
  sub_247D9D8B8(v33, v52, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoHttpConnection(0);
  swift_allocObject();
  v38 = sub_247D755C4(v36, v37, 1, v35, v28);

  sub_247D9D920(v30, type metadata accessor for NetworkDescriptor);
  sub_247D9D920(v26, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247D9D920(v33, type metadata accessor for NetworkDescriptor);
  sub_247D9D920(v32, type metadata accessor for CosmoHttpConnection.Configuration);
  *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection) = v38;
  v39 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v40 = *(v38 + 2);
  v41 = *(v38 + 3);
  *(v38 + 2) = sub_247DA5308;
  *(v38 + 3) = v39;

  sub_247D6A24C(v40, v41);

  return v6;
}

uint64_t sub_247D9D8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D9D920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247D9D980()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}