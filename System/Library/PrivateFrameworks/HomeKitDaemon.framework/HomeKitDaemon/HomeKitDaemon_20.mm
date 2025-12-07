uint64_t sub_229742024()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2297420C8;
  v2 = *(v0 + 80);

  return sub_229656D24(v2);
}

uint64_t sub_2297420C8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229742204, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229742204(uint64_t a1)
{
  v29 = v1;
  v2 = v1[9];
  v3 = v1[3];
  sub_2297A46D4();
  v4 = v3;
  v5 = v2;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[9];
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[5];
  if (v8)
  {
    v27 = v1[7];
    v13 = v1[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315650;
    v28[0] = v26;
    v28[1] = 91;
    v28[2] = 0xE100000000000000;
    v16 = [v13 logIdentifier];
    v25 = v12;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000037, 0x800000022A594860, v28);
    *(v14 + 22) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to save with error %@", v14, 0x20u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v27, v25);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = v1[1];

  return v23();
}

void sub_2297424C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v137 = &v129[-v5];
  v6 = sub_22A4DB21C();
  v143 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v129[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v129[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v138 = &v129[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v129[-v15];
  v17 = sub_22A4DD07C();
  v140 = *(v17 - 8);
  v141 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v129[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v129[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v136 = &v129[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v129[-v27];
  MEMORY[0x28223BE20](v26);
  v29 = &v129[-v28];
  v30 = sub_22A4DB20C();
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = v30;
  v144 = sub_22A4DD5EC();
  v145 = v32;
  sub_22A4DE18C();
  if (!*(v31 + 16) || (v33 = sub_2295402E8(&v146), (v34 & 1) == 0))
  {

    sub_22954045C(&v146);
LABEL_10:
    v148 = 0u;
    v149 = 0u;
    goto LABEL_11;
  }

  sub_2295404B0(*(v31 + 56) + 32 * v33, &v148);
  sub_22954045C(&v146);

  if (!*(&v149 + 1))
  {
LABEL_11:
    sub_22953EAE4(&v148, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_12;
  }

  sub_229562F68(0, &qword_27D87DE70, off_2786661F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_2297A46D4();
    v66 = v143;
    (*(v143 + 16))(v9, a1, v6);
    v67 = v2;
    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCEC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      ObjectType = v6;
      v72 = v71;
      *&v148 = v71;
      *v70 = 136315650;
      v146 = 91;
      v147 = 0xE100000000000000;
      v73 = [v67 logIdentifier];
      v74 = sub_22A4DD5EC();
      v76 = v75;

      MEMORY[0x22AAD08C0](v74, v76);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v77 = sub_2295A3E30(v146, v147, &v148);

      *(v70 + 4) = v77;
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v148);
      *(v70 + 22) = 2080;
      v146 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v78 = sub_22A4DDF7C();
      v80 = v79;
      (*(v66 + 8))(v9, ObjectType);

      v81 = sub_2295A3E30(v78, v80, &v148);

      *(v70 + 24) = v81;
      _os_log_impl(&dword_229538000, v68, v69, "%s %s Missing presence update in notification %s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v72, -1, -1);
      MEMORY[0x22AAD4E50](v70, -1, -1);
    }

    else
    {

      (*(v66 + 8))(v9, v6);
    }

    (*(v140 + 8))(v20, v141);
    return;
  }

  v135 = v146;
  v35 = [v146 userPresence];
  v36 = (v143 + 16);
  if (v35)
  {
    v134 = v35;
    v37 = v29;
    sub_2297A46D4();
    v38 = *v36;
    (*v36)(v16, a1, v6);
    v39 = v138;
    v38(v138, a1, v6);
    v40 = v37;
    v41 = v2;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v148 = v133;
      *v44 = 136315906;
      v146 = 91;
      v147 = 0xE100000000000000;
      v45 = [v41 logIdentifier];
      v131 = v42;
      v46 = v45;
      v47 = sub_22A4DD5EC();
      v132 = v40;
      v130 = v43;
      v48 = v47;
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(v146, v147, &v148);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v148);
      *(v44 + 22) = 2080;
      v52 = sub_22A4DB1EC();
      v53 = sub_22A4DD5EC();
      v55 = v54;

      v56 = *(v143 + 8);
      v56(v16, v6);
      v57 = sub_2295A3E30(v53, v55, &v148);

      *(v44 + 24) = v57;
      *(v44 + 32) = 2080;
      v146 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v58 = sub_22A4DDF7C();
      v60 = v59;
      v56(v39, v6);

      v61 = sub_2295A3E30(v58, v60, &v148);

      *(v44 + 34) = v61;
      v62 = v131;
      _os_log_impl(&dword_229538000, v131, v130, "%s %s Handling %s with %s", v44, 0x2Au);
      v63 = v133;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);

      v64 = *(v140 + 8);
      v65 = v132;
    }

    else
    {

      v98 = *(v143 + 8);
      v98(v39, v6);
      v98(v16, v6);
      v64 = *(v140 + 8);
      v65 = v37;
    }

    v99 = v141;
    v64(v65, v141);
    v100 = v139;
    if (sub_22973A7D0())
    {
      v101 = v134;
      if ([v134 isAtHome] & 1) != 0 || (objc_msgSend(v101, sel_isNotAtHome))
      {
        v102 = [v101 deviceWhichUpdatedUserPresence];
        v103 = [v101 user];
        v104 = sub_22A4DD9DC();
        v105 = v137;
        (*(*(v104 - 8) + 56))(v137, 1, 1, v104);
        v106 = swift_allocObject();
        v106[2] = 0;
        v106[3] = 0;
        v106[4] = v103;
        v106[5] = v102;
        v107 = v103;
        v108 = v102;
        sub_22957F3C0(0, 0, v105, &unk_22A581970, v106);
        swift_unknownObjectRelease();

        return;
      }

      v100 = v136;
      sub_2297A46D4();
      v120 = v41;
      v110 = sub_22A4DD05C();
      v121 = sub_22A4DDCCC();

      if (os_log_type_enabled(v110, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *&v148 = v123;
        *v122 = 136315394;
        v146 = 91;
        v147 = 0xE100000000000000;
        v124 = [v120 logIdentifier];
        v125 = sub_22A4DD5EC();
        v127 = v126;

        MEMORY[0x22AAD08C0](v125, v127);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v128 = sub_2295A3E30(v146, v147, &v148);

        *(v122 + 4) = v128;
        *(v122 + 12) = 2080;
        *(v122 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v148);
        _os_log_impl(&dword_229538000, v110, v121, "%s %s User is not sharing presence", v122, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v123, -1, -1);
        MEMORY[0x22AAD4E50](v122, -1, -1);
        swift_unknownObjectRelease();

        v119 = v136;
        goto LABEL_31;
      }
    }

    else
    {
      sub_2297A46D4();
      v109 = v41;
      v110 = sub_22A4DD05C();
      v111 = sub_22A4DDCCC();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v148 = v113;
        *v112 = 136315394;
        v146 = 91;
        v147 = 0xE100000000000000;
        v114 = [v109 logIdentifier];
        v115 = sub_22A4DD5EC();
        v117 = v116;

        MEMORY[0x22AAD08C0](v115, v117);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v118 = sub_2295A3E30(v146, v147, &v148);

        *(v112 + 4) = v118;
        *(v112 + 12) = 2080;
        *(v112 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v148);
        _os_log_impl(&dword_229538000, v110, v111, "%s %s Adaptive Temperature Automations is not enabled", v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v113, -1, -1);
        MEMORY[0x22AAD4E50](v112, -1, -1);

        swift_unknownObjectRelease();
        v119 = v139;
LABEL_31:
        v64(v119, v99);
        return;
      }
    }

    swift_unknownObjectRelease();
    v119 = v100;
    goto LABEL_31;
  }

  v82 = v23;
  sub_2297A46D4();
  v83 = v6;
  (*v36)(v12, a1, v6);
  v84 = v2;
  v85 = sub_22A4DD05C();
  v86 = sub_22A4DDCEC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v148 = v88;
    *v87 = 136315650;
    v146 = 91;
    v147 = 0xE100000000000000;
    v89 = [v84 logIdentifier];
    v90 = sub_22A4DD5EC();
    v92 = v91;

    MEMORY[0x22AAD08C0](v90, v92);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v93 = sub_2295A3E30(v146, v147, &v148);

    *(v87 + 4) = v93;
    *(v87 + 12) = 2080;
    *(v87 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A5949B0, &v148);
    *(v87 + 22) = 2080;
    v146 = sub_22A4DB20C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
    v94 = sub_22A4DDF7C();
    v96 = v95;
    (*(v143 + 8))(v12, v83);

    v97 = sub_2295A3E30(v94, v96, &v148);

    *(v87 + 24) = v97;
    _os_log_impl(&dword_229538000, v85, v86, "%s %s Missing user presence update in notification %s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v88, -1, -1);
    MEMORY[0x22AAD4E50](v87, -1, -1);
  }

  else
  {

    (*(v143 + 8))(v12, v83);
  }

  (*(v140 + 8))(v82, v141);
}

uint64_t sub_2297435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297436B0, 0, 0);
}

uint64_t sub_2297436B0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v1[18];
  v8 = v1[19];
  v1[2] = v2;
  v1[3] = sub_229743854;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2297D3D1C;
  v1[13] = &block_descriptor_32;
  [v9 sendDisclosureNotificationWithLocationSharingDevice:v8 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229743854()
{

  return MEMORY[0x2822009F8](sub_229743934, 0, 0);
}

uint64_t sub_229743934()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_229743994(void *a1)
{
  v2 = v1;
  v127 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v128 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v119 - v7;
  v8 = sub_22A4DB21C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v119 - v13;
  v15 = sub_22A4DD07C();
  v16 = *(v15 - 8);
  v129 = v15;
  v130 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v119 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v119 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v119 - v26;
  v28 = [v2 homeManager];
  if (!v28)
  {
    goto LABEL_8;
  }

  v126 = v25;
  v29 = v28;
  if (![v28 hasLoadedData])
  {

LABEL_8:
    sub_2297A46D4();
    v59 = v2;
    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 136315394;
      v137 = 91;
      v138 = 0xE100000000000000;
      v139[0] = v63;
      v64 = [v59 logIdentifier];
      v65 = sub_22A4DD5EC();
      v67 = v66;

      MEMORY[0x22AAD08C0](v65, v67);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v68 = sub_2295A3E30(v137, v138, v139);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v139);
      _os_log_impl(&dword_229538000, v60, v61, "%s %s Not handling because home data load is in progress", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    (*(v130 + 8))(v19, v129);
    return;
  }

  v125 = v29;
  v30 = [v2 homeActivityStateManager];
  if (!v30)
  {
LABEL_12:
    sub_2297A46D4();
    v69 = v2;
    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCEC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 136315394;
      v137 = 91;
      v138 = 0xE100000000000000;
      v139[0] = v73;
      v74 = [v69 logIdentifier];
      v75 = sub_22A4DD5EC();
      v77 = v76;

      MEMORY[0x22AAD08C0](v75, v77);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v78 = sub_2295A3E30(v137, v138, v139);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v139);
      _os_log_impl(&dword_229538000, v70, v71, "%s %s Missing user activity state details", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v73, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);
    }

    (*(v130 + 8))(v22, v129);
    return;
  }

  v31 = v30;
  v131 = [v30 userActivityStatesDetails];
  if (!v131)
  {

    goto LABEL_12;
  }

  v123 = ObjectType;
  v124 = v31;
  sub_2297A46D4();
  v32 = v9;
  v33 = *(v9 + 16);
  v34 = v127;
  v33(v14, v127, v8);
  v33(v12, v34, v8);
  v35 = v2;
  v36 = sub_22A4DD05C();
  v37 = sub_22A4DDCCC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v122 = v39;
    *v38 = 136315906;
    v137 = 91;
    v138 = 0xE100000000000000;
    v139[0] = v39;
    v40 = [v35 logIdentifier];
    v121 = v37;
    v41 = v40;
    v42 = sub_22A4DD5EC();
    v127 = v35;
    v43 = v42;
    v45 = v44;

    MEMORY[0x22AAD08C0](v43, v45);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v46 = sub_2295A3E30(v137, v138, v139);

    *(v38 + 4) = v46;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v139);
    *(v38 + 22) = 2080;
    v47 = sub_22A4DB1EC();
    v48 = sub_22A4DD5EC();
    v50 = v49;

    v120 = v36;
    v51 = *(v32 + 8);
    v51(v14, v8);
    v52 = sub_2295A3E30(v48, v50, v139);

    *(v38 + 24) = v52;
    *(v38 + 32) = 2080;
    v137 = sub_22A4DB20C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
    v53 = sub_22A4DDF7C();
    v55 = v54;
    v51(v12, v8);

    v56 = sub_2295A3E30(v53, v55, v139);
    v35 = v127;

    *(v38 + 34) = v56;
    v57 = v120;
    _os_log_impl(&dword_229538000, v120, v121, "%s %s Handling %s with %s", v38, 0x2Au);
    v58 = v122;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v58, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  else
  {

    v79 = *(v32 + 8);
    v79(v12, v8);
    v79(v14, v8);
  }

  v80 = v129;
  v81 = *(v130 + 8);
  v81(v27, v129);
  v82 = v126;
  if (sub_22973A7D0())
  {
    v83 = [v35 users];
    if (!v83)
    {
LABEL_61:
      __break(1u);
      return;
    }

    v84 = v83;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v85 = sub_22A4DD83C();

    v137 = MEMORY[0x277D84F90];
    if (v85 >> 62)
    {
LABEL_57:
      v86 = sub_22A4DE0EC();
    }

    else
    {
      v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = 0;
    v88 = MEMORY[0x277D84F90];
    while (v86 != v87)
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x22AAD13F0](v87, v85);
      }

      else
      {
        if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v89 = *(v85 + 8 * v87 + 32);
      }

      v90 = v89;
      v91 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v92 = [v131 detailForUser_];

      ++v87;
      if (v92)
      {
        MEMORY[0x22AAD09E0]();
        if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v88 = v137;
        v87 = v91;
      }
    }

    if (v88 >> 62)
    {
      v103 = sub_22A4DE0EC();
      if (v103)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v103 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v103)
      {
LABEL_36:
        if (v103 >= 1)
        {
          v104 = 0;
          v129 = v103;
          v130 = v88 & 0xC000000000000001;
          do
          {
            if (v130)
            {
              v105 = MEMORY[0x22AAD13F0](v104, v88);
            }

            else
            {
              v105 = *(v88 + 8 * v104 + 32);
              swift_unknownObjectRetain();
            }

            if ([v105 isAtHome] & 1) != 0 || (objc_msgSend(v105, sel_isNotAtHome))
            {
              v106 = v88;
              v107 = [v105 deviceWhichUpdatedUserPresence];
              v108 = [v105 user];
              v109 = sub_22A4DD9DC();
              v110 = *(v109 - 8);
              v111 = v132;
              (*(v110 + 56))(v132, 1, 1, v109);
              v112 = swift_allocObject();
              v112[2] = 0;
              v112[3] = 0;
              v112[4] = v108;
              v112[5] = v107;
              v113 = v128;
              sub_229564F88(v111, v128, &unk_27D87D8F0, &qword_22A578D70);
              LODWORD(v107) = (*(v110 + 48))(v113, 1, v109);

              if (v107 == 1)
              {
                sub_22953EAE4(v113, &unk_27D87D8F0, &qword_22A578D70);
              }

              else
              {
                sub_22A4DD9CC();
                (*(v110 + 8))(v113, v109);
              }

              v114 = v112[2];
              swift_unknownObjectRetain();

              v88 = v106;
              if (v114)
              {
                swift_getObjectType();
                v115 = sub_22A4DD8CC();
                v117 = v116;
                swift_unknownObjectRelease();
              }

              else
              {
                v115 = 0;
                v117 = 0;
              }

              v103 = v129;
              sub_22953EAE4(v132, &unk_27D87D8F0, &qword_22A578D70);
              v118 = swift_allocObject();
              *(v118 + 16) = &unk_22A581960;
              *(v118 + 24) = v112;
              if (v117 | v115)
              {
                v133 = 0;
                v134 = 0;
                v135 = v115;
                v136 = v117;
              }

              swift_task_create();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v104;
          }

          while (v103 != v104);
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

LABEL_59:
    swift_unknownObjectRelease();

    return;
  }

  sub_2297A46D4();
  v93 = v35;
  v94 = sub_22A4DD05C();
  v95 = sub_22A4DDCCC();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v96 = 136315394;
    v137 = 91;
    v138 = 0xE100000000000000;
    v139[0] = v97;
    v98 = [v93 logIdentifier];
    v99 = sub_22A4DD5EC();
    v101 = v100;

    MEMORY[0x22AAD08C0](v99, v101);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v102 = sub_2295A3E30(v137, v138, v139);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2080;
    *(v96 + 14) = sub_2295A3E30(0xD00000000000002ELL, 0x800000022A594980, v139);
    _os_log_impl(&dword_229538000, v94, v95, "%s %s Adaptive Temperature Automations is not enabled", v96, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v97, -1, -1);
    MEMORY[0x22AAD4E50](v96, -1, -1);
  }

  swift_unknownObjectRelease();
  v81(v82, v80);
}

uint64_t sub_22974488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229744958, 0, 0);
}

uint64_t sub_229744958()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v1[18];
  v8 = v1[19];
  v1[2] = v2;
  v1[3] = sub_229744AFC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2297D3D1C;
  v1[13] = &block_descriptor_25_0;
  [v9 sendDisclosureNotificationWithLocationSharingDevice:v8 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229744AFC()
{

  return MEMORY[0x2822009F8](sub_2297463A8, 0, 0);
}

uint64_t sub_229744BF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22A4DB21C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_229744CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = sub_22A4DD81C();
  v12 = [objc_opt_self() sharedIDSServiceName];
  if (!v12)
  {
    sub_22A4DD5EC();
    v12 = sub_22A4DD5AC();
  }

  v13 = [objc_opt_self() stringGUID];
  if (v13)
  {
    v14 = v13;
    (*(v8 + 16))(v10, a1, v7);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v10, v7);
    aBlock[4] = sub_22974604C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229745DF0;
    aBlock[3] = &block_descriptor_27;
    v17 = _Block_copy(aBlock);

    [a2 hmdIDInfoForDestinations:v11 service:v12 infoTypes:1 options:v18 listenerID:v14 queue:v19 completionBlock:v17];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_229744F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  if (a2)
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v19 = a2;
    sub_2297A46D4();
    v20 = a2;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v58);
      *(v23 + 12) = 2112;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v27;
      *v24 = v27;
      _os_log_impl(&dword_229538000, v21, v22, "%s idInfo failed with error: %@", v23, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v7 + 8))(v18, v6);
    v28 = objc_opt_self();
    v29 = sub_22A4DB3DC();
    v30 = [v28 hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v29];

    v58 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
  }

  else if (a1)
  {
    v55 = v6;
    v56 = v7;
    v57 = a3;
    v31 = 1 << *(a1 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(a1 + 64);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    while (v33)
    {
      v36 = v35;
LABEL_15:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = *(a1 + 48) + 16 * v38;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(*(a1 + 56) + 8 * v38);

      swift_unknownObjectRetain();
      LOBYTE(v40) = sub_22974571C(v40, v41, v42);
      swift_unknownObjectRelease();

      if ((v40 & 1) == 0)
      {

        sub_229562F68(0, &qword_2814017B0, off_278666198);
        sub_2297A46D4();
        v43 = sub_22A4DD05C();
        v44 = sub_22A4DDCCC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v58 = v46;
          *v45 = 136315138;
          *(v45 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v58);
          _os_log_impl(&dword_229538000, v43, v44, "%s NO - one or more accounts are unqualified", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x22AAD4E50](v46, -1, -1);
          MEMORY[0x22AAD4E50](v45, -1, -1);
        }

        (*(v56 + 8))(v13, v55);
        v58 = [objc_opt_self() hmPrivateErrorWithCode_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
        goto LABEL_25;
      }
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(a1 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_15;
      }
    }

    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCCC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v58);
      _os_log_impl(&dword_229538000, v47, v48, "%s YES - all accounts are qualified", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    (*(v56 + 8))(v16, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();
  }

  else
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v58);
      _os_log_impl(&dword_229538000, v51, v52, "%s Unknown - uriToInfoResult is nil", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v58 = [objc_opt_self() hmErrorWithCode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
LABEL_25:
    sub_22A4DD8EC();
  }
}

uint64_t sub_22974571C(id a1, unint64_t a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = [a3 hmdEndpoints];
  if (!v16)
  {
LABEL_24:
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    sub_2297A46D4();

    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCCC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = a1;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v54);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2295A3E30(v42, a2, &v54);
      _os_log_impl(&dword_229538000, v40, v41, "%s Unknown - found no device endpoints for URI: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    v7[1](v10, v6);
    return 0;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880530, &qword_22A581950);
  v18 = sub_22A4DD83C();

  if (v18 >> 62)
  {
LABEL_22:
    v19 = sub_22A4DE0EC();
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_4:
  v46 = v13;
  v47 = a1;
  v48 = v15;
  v49 = a2;
  v50 = v7;
  v51 = v6;
  a2 = 0;
  v52 = v18 & 0xC000000000000001;
  v13 = (v18 & 0xFFFFFFFFFFFFFF8);
  v15 = *MEMORY[0x277D18860];
  while (v52)
  {
    v10 = MEMORY[0x22AAD13F0](a2, v18);
    v20 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    v6 = v19;
    v21 = [v10 hmdCapabilities];
    v7 = v15;
    a1 = [v21 valueForCapability_];

    swift_unknownObjectRelease();
    if (a1 == 1)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    ++a2;
    v19 = v6;
    if (v20 == v6)
    {

      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v32 = v46;
      sub_2297A46D4();
      v33 = v49;

      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCCC();

      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v54);
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_2295A3E30(v47, v33, &v54);
        _os_log_impl(&dword_229538000, v34, v35, "%s Found URI %s with no qualified devices", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v37, -1, -1);
      }

      v50[1](v32, v51);
      return 0;
    }
  }

  if (a2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(v18 + 8 * a2 + 32);
  swift_unknownObjectRetain();
  v20 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v22 = v48;
  sub_2297A46D4();
  v23 = v49;

  swift_unknownObjectRetain();
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v54 = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_2295A3E30(0xD000000000000059, 0x800000022A5948F0, &v54);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2295A3E30(v47, v23, &v54);
    *(v26 + 22) = 2080;
    v28 = [v10 hmdCapabilities];
    swift_getObjectType();
    v53 = v28;
    v29 = sub_22A4DD64C();
    v31 = sub_2295A3E30(v29, v30, &v54);

    *(v26 + 24) = v31;
    _os_log_impl(&dword_229538000, v24, v25, "%s Found URI %s with qualified device %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v50[1](v22, v51);
  return 1;
}

uint64_t sub_229745DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C8, &unk_22A581940);
    v4 = sub_22A4DD49C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_229745EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22973D400(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229745F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229741F5C(a1, v4, v5, v1 + 32, v6, v7, v8);
}

void sub_22974604C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_229744F4C(a1, a2, v6);
}

uint64_t sub_2297460D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22974488C(a1, v4, v5, v7, v6);
}

uint64_t sub_2297461C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297435E4(a1, v4, v5, v7, v6);
}

uint64_t sub_229746284()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_22973B360(v2, v3, v5, v4);
}

uint64_t sub_229746354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2297463B0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DC56C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229746470, v1, 0);
}

uint64_t sub_229746470()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v12 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v6 = (v3 + 8);
    v12(v0[9], v5, v0[7]);
    while (1)
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_beginAccess();
      v7 = v0[9];
      v8 = v0[7];
      if (*(v4 + 168))
      {
        swift_endAccess();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22A4DC5DC();
        swift_unknownObjectRelease();
        (*v6)(v7, v8);
      }

      else
      {
        (*v6)(v0[9], v0[7]);
        swift_endAccess();
      }

      v5 += v11;
      if (!--v2)
      {
        break;
      }

      v12(v0[9], v5, v0[7]);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_229746624(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DC56C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297466E4, v1, 0);
}

uint64_t sub_2297466E4()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v12 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v6 = (v3 + 8);
    v12(v0[9], v5, v0[7]);
    while (1)
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_beginAccess();
      v7 = v0[9];
      v8 = v0[7];
      if (*(v4 + 168))
      {
        swift_endAccess();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_22A4DC5EC();
        swift_unknownObjectRelease();
        (*v6)(v7, v8);
      }

      else
      {
        (*v6)(v0[9], v0[7]);
        swift_endAccess();
      }

      v5 += v11;
      if (!--v2)
      {
        break;
      }

      v12(v0[9], v5, v0[7]);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_229746898()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  swift_unknownObjectRelease();
  sub_2295571A0(v0[24], v0[25]);
  sub_2295571A0(v0[26], v0[27]);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_229746938()
{
  result = qword_27D880670;
  if (!qword_27D880670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880678, "J \b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880670);
  }

  return result;
}

uint64_t sub_2297469A8()
{
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_229746A70(uint64_t a1)
{
  sub_22A4DD6BC();
}

uint64_t sub_229746B24(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

unint64_t sub_229746BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_229746E68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_229746C18(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E6E7572;
  if (*v1 != 2)
  {
    v5 = 0x6164696C61766E69;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6E69726170657270;
    v2 = 0xE900000000000067;
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

unint64_t sub_229746CB0()
{
  result = qword_27D880680;
  if (!qword_27D880680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880680);
  }

  return result;
}

uint64_t sub_229746D04()
{
  sub_22A4DE77C();
  sub_22A4DD6BC();
  return sub_22A4DE7BC();
}

uint64_t sub_229746D60(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DD6BC();
  return sub_22A4DE7BC();
}

uint64_t sub_229746DA8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22A4DE42C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_229746E14()
{
  result = qword_27D880688;
  if (!qword_27D880688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880688);
  }

  return result;
}

unint64_t sub_229746E68(uint64_t a1, uint64_t a2)
{
  v2 = sub_22A4DE42C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_229746EB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_229746F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v47 = a4;
  v10 = sub_22A4DB7DC();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v51 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_2296DBEC0(a2), (v18 & 1) != 0))
  {
    v43 = v13;
    v45 = v5;
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_beginAccess();
    v46 = v19;
    v20 = *(v19 + 24);
    v44 = a5;
    v42 = v14;
    if (v20 >> 62)
    {
LABEL_26:
      v21 = sub_22A4DE0EC();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a5 = (v20 & 0xC000000000000001);

    v22 = 0;
    while (v21 != v22)
    {
      if (a5)
      {
        a1 = MEMORY[0x22AAD13F0](v22, v20);
        if (__OFADD__(v22, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        a1 = *(v20 + 8 * v22 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v22, 1))
        {
          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      ++v22;
      if (a1 == a3)
      {

        v30 = v51;
        sub_229541CB0(v47, &off_283CE3478);
        v32 = v48;
        v31 = v49;
        (*(v48 + 16))(v12, a2, v49);
        v33 = sub_22A4DD05C();
        v34 = sub_22A4DDCDC();
        if (os_log_type_enabled(v33, v34))
        {
          v36 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50[0] = v47;
          *v36 = 136315138;
          sub_229586A3C();
          v37 = sub_22A4DE5CC();
          v39 = v38;
          (*(v32 + 8))(v12, v31);
          v40 = sub_2295A3E30(v37, v39, v50);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_229538000, v33, v34, "Action Set: %s is already monitored by given observer", v36, 0xCu);
          v41 = v47;
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x22AAD4E50](v41, -1, -1);
          MEMORY[0x22AAD4E50](v36, -1, -1);
        }

        else
        {

          (*(v32 + 8))(v12, v31);
        }

        result = (*(v42 + 8))(v30, v43);
        goto LABEL_23;
      }
    }

    v28 = v46;
    swift_beginAccess();
    v29 = swift_unknownObjectRetain();
    MEMORY[0x22AAD09E0](v29);
    if (*((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    swift_endAccess();

LABEL_23:
    v25 = 0;
    a5 = v44;
  }

  else
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22A576190;
    *(v23 + 32) = a3;
    _s19SubscriptionManagerC23MonitoredActionSetStateCMa();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = MEMORY[0x277D84F90];
    v25 = 1;
    swift_beginAccess();
    *(v24 + 24) = v23;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *a1;
    result = sub_2295AB6BC(v24, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v50[0];
  }

  *a5 = v25;
  return result;
}

uint64_t sub_229747450(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t, uint64_t), char a4)
{
  v7 = v4;
  ObjectType = swift_getObjectType();
  v11 = *(v7 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock(v11 + 6);
  a3(&v16, v11 + 4, a1, a2, ObjectType);
  os_unfair_lock_unlock(v11 + 6);
  LODWORD(a2) = v16;

  if (a2 == 1)
  {
    v13 = v7 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v13 + 8);
      v15 = swift_getObjectType();
      (*(v14 + 8))(a1, a4 & 1, v15, v14);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_229747580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v59 = a5;
  v58 = sub_22A4DB7DC();
  v9 = *(v58 - 8);
  v10 = MEMORY[0x28223BE20](v58);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = sub_22A4DD07C();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v55 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v20 = *a1;
  if (!*(*a1 + 16) || (v21 = sub_2296DBEC0(a2), (v22 & 1) == 0))
  {
    sub_229541CB0(a4, &off_283CE3478);
    v30 = a2;
    v31 = v58;
    (*(v9 + 16))(v14, v30, v58);
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCCC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60[0] = v35;
      *v34 = 136315138;
      sub_229586A3C();
      v36 = sub_22A4DE5CC();
      v37 = v31;
      v39 = v38;
      (*(v9 + 8))(v14, v37);
      v40 = sub_2295A3E30(v36, v39, v60);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_229538000, v32, v33, "Action Set: %s was not being monitored", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v31);
    }

    result = (*(v56 + 8))(v19, v57);
    goto LABEL_12;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  swift_beginAccess();
  swift_unknownObjectRetain();

  v24 = v61;
  v25 = sub_22974913C((v23 + 24), a3);
  v61 = v24;
  swift_unknownObjectRelease();
  v26 = *(v23 + 24);
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v25)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    if (sub_22A4DE0EC())
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  v27 = sub_22A4DE0EC();
  if (v27 < v25)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_229749384(v25, v27);
  swift_endAccess();
  v28 = *(v23 + 24);
  if (v28 >> 62)
  {
    goto LABEL_16;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

LABEL_12:
    v41 = 0;
    goto LABEL_13;
  }

LABEL_17:
  sub_22969DA64(a2);

  v42 = a4;
  v43 = v55;
  sub_229541CB0(v42, &off_283CE3478);
  v44 = a2;
  v45 = v58;
  (*(v9 + 16))(v12, v44, v58);
  v46 = sub_22A4DD05C();
  v47 = sub_22A4DDCCC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60[0] = v49;
    *v48 = 136315138;
    sub_229586A3C();
    v50 = sub_22A4DE5CC();
    v51 = v45;
    v53 = v52;
    (*(v9 + 8))(v12, v51);
    v54 = sub_2295A3E30(v50, v53, v60);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_229538000, v46, v47, "Stoped monitoring Action Set: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AAD4E50](v49, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);

    result = (*(v56 + 8))(v55, v57);
  }

  else
  {

    (*(v9 + 8))(v12, v45);
    result = (*(v56 + 8))(v43, v57);
  }

  v41 = 1;
LABEL_13:
  *v59 = v41;
  return result;
}

uint64_t sub_229747B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  swift_unknownObjectRetain();
  v12 = a1;
  a5(v11, a4);
  swift_unknownObjectRelease();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_229747C48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_229747CB8, 0, 0);
}

uint64_t sub_229747CB8()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock(v3 + 6);
  sub_229747DDC(&v3[4], v2, v1, &v10);
  os_unfair_lock_unlock(v3 + 6);
  LOBYTE(v1) = v10;

  if (v1)
  {
    v4 = v0[3] + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v0[2];
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v5, 0, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_229747DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a4;
  v42 = sub_22A4DB7DC();
  v7 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = sub_22A4DD07C();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (*(*a1 + 16) && (sub_2296DBEC0(a2), (v19 & 1) != 0))
  {
    sub_22969DA64(a2);

    sub_229541CB0(a3, &off_283CE3478);
    v20 = v42;
    (*(v7 + 16))(v12, a2, v42);
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v23 = 136315138;
      sub_229586A3C();
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v7 + 8))(v12, v20);
      v27 = sub_2295A3E30(v24, v26, &v46);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_229538000, v21, v22, "Stoped monitoring Action Set: %s", v23, 0xCu);
      v28 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v20);
    }

    result = (*(v43 + 8))(v18, v44);
    v40 = 1;
  }

  else
  {
    sub_229541CB0(a3, &off_283CE3478);
    v29 = v42;
    (*(v7 + 16))(v10, a2, v42);
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      sub_229586A3C();
      v34 = sub_22A4DE5CC();
      v35 = v29;
      v37 = v36;
      (*(v7 + 8))(v10, v35);
      v38 = sub_2295A3E30(v34, v37, &v46);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_229538000, v30, v31, "Action Set: %s was not being monitored", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v29);
    }

    result = (*(v43 + 8))(v16, v44);
    v40 = 0;
  }

  *v45 = v40;
  return result;
}

uint64_t sub_229748400(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_22A4DB7DC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_22A4DB79C();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_22974852C;

  return sub_229747C48(v7);
}

uint64_t sub_22974852C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2297486D0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock((v3 + 24));
  if (*(*(v3 + 16) + 16))
  {
    sub_2296DBEC0(a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));

  return v5 & 1;
}

unint64_t sub_229748838@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    result = sub_2296DBEC0(a2);
    if (v6)
    {
      LOBYTE(v5) = *(*(*(v4 + 56) + 8 * result) + 16);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_2297489C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  ObjectType = swift_getObjectType();
  v7 = *(v3 + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);

  os_unfair_lock_lock((v7 + 24));
  sub_229748B24((v7 + 16), a1, v4, ObjectType, &v14);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v14;

  if (v8 >> 62)
  {
    result = sub_22A4DE0EC();
    v10 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAD13F0](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    ++v11;
    v13 = sub_22A4DB77C();
    [v12 didUpdateStateActionSetUUID:v13 state:v4 & 1];
    swift_unknownObjectRelease();
  }

  while (v10 != v11);
LABEL_10:
}

void sub_229748B24(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a5;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD07C();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_2296DBEC0(a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    if (*(v20 + 16) != (a3 & 1))
    {
      *(v20 + 16) = a3 & 1;
      swift_beginAccess();
      *v35 = *(v20 + 24);

      return;
    }
  }

  else
  {
    sub_229541CB0(a4, &off_283CE3478);
    (*(v11 + 16))(v13, a2, v10);
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v23 = 136315138;
      sub_229586A3C();
      v24 = sub_22A4DE5CC();
      v31 = v5;
      v26 = v25;
      (*(v11 + 8))(v13, v10);
      v27 = sub_2295A3E30(v24, v26, v34);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_229538000, v21, v22, "Action Set: %s is not being monitored", v23, 0xCu);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v32 + 8))(v16, v33);
  }

  *v35 = MEMORY[0x277D84F90];
}

id sub_229748F70()
{
  v2.receiver = v0;
  v2.super_class = _s19SubscriptionManagerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_229749054(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_22A4DE0EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22974913C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_229749054(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22A4DE0EC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_22A4DE0EC())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAD13F0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x22AAD13F0](v10, v7);
          v14 = MEMORY[0x22AAD13F0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2295AFEC8(v7);
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = sub_2295AFEC8(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
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
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_22A4DE0EC();
}

uint64_t sub_229749384(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22A4DE0EC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_22A4DE0EC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2296F4FE0();

  return sub_2296A5130(v5, v3, 0);
}

uint64_t sub_22974945C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_229748400(v2, v3, v4);
}

uint64_t sub_229749510(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_229749580(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2297496C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2297498E0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880780);
  __swift_project_value_buffer(v0, qword_27D880780);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

id sub_229749958()
{
  result = [objc_allocWithZone(type metadata accessor for CommunicationTrustHandler()) init];
  qword_281405018 = result;
  return result;
}

uint64_t sub_229749B10(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_229562F68(0, &qword_27D880818, off_278666008);
  v5 = sub_22A4DD83C();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_229749C08;

  return sub_22974A68C(v5);
}

uint64_t sub_229749C08(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_22A4DB3DC();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

HMDCommunicationTrustHandlerFactory __swiftcall HMDCommunicationTrustHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_229749F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_229749B10(v2, v3, v4);
}

uint64_t sub_229749FF0(uint64_t a1)
{
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880820, &qword_22A581CD8);
  v1[5] = swift_task_alloc();
  v2 = sub_22A4DC26C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_22A4DC24C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22974A150, 0, 0);
}

uint64_t sub_22974A150()
{
  v1 = *(v0 + 80);
  v2 = [*(v0 + 32) type];
  if (v2 > 2)
  {
    v3 = MEMORY[0x277CD4738];
  }

  else
  {
    v3 = qword_27866DC28[v2];
  }

  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  (*(v1 + 104))(v4, *v3, v6);
  (*(v7 + 16))(v5, v4, v6);
  v10 = [v9 value];
  sub_22A4DD5EC();

  sub_22A4DC25C();
  sub_22A4DC23C();
  *(v0 + 104) = sub_22A4DC22C();
  v11 = sub_22A4DC1FC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_22974A320;
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);

  return MEMORY[0x28214E8B0](v13, v14);
}

uint64_t sub_22974A320(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[5];
  if (v1)
  {
    sub_22974AE30(v5);
    v6 = sub_22974A548;
  }

  else
  {
    v4[16] = a1;
    sub_22974AE30(v5);
    v6 = sub_22974A468;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22974A468()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);
  v8 = *(v0 + 128);

  return v7(v8);
}

uint64_t sub_22974A548()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v9 = v0[15];
  v10 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  type metadata accessor for HMError(0);
  v0[3] = 2;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22974A6AC()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    v8 = sub_22A4DE0EC();
    v0[3] = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[3] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[2];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAD13F0](0);
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);
LABEL_6:
        v5 = v4;
        v0[4] = v4;
        v0[5] = 1;
        v6 = swift_task_alloc();
        v0[6] = v6;
        *v6 = v0;
        v6[1] = sub_22974A8A8;

        return sub_229749FF0(v5);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  if (qword_27D87BA70 != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = sub_22A4DD07C();
  __swift_project_value_buffer(v9, qword_27D880780);
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDD0C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_229538000, v10, v11, "HMDAccount is not trustworthy.", v12, 2u);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_22974A8A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_22974ADC8;
  }

  else
  {
    v4 = sub_22974A9BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22974A9BC()
{
  v29 = v0;
  if (qword_27D87BA70 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D880780);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    v6 = sub_22A4DC20C();
    v8 = sub_2295A3E30(v6, v7, &v28);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_229538000, v2, v3, "Handle CommunicationTrust score: %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v9 = *(v0 + 56) - 5;
  if (v9 < 5)
  {
    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDD0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = sub_22A4DC20C();
      v17 = sub_2295A3E30(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_229538000, v10, v11, "HMDAccount is trustworthy with score: %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {
    }

LABEL_14:

    v22 = *(v0 + 8);

    v22(v9 < 5);
    return;
  }

  v18 = *(v0 + 40);
  v19 = *(v0 + 24);

  if (v18 == v19)
  {
    if (qword_27D87BA70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_27D880780);
    v10 = sub_22A4DD05C();
    v20 = sub_22A4DDD0C();
    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v10, v20, "HMDAccount is not trustworthy.", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    goto LABEL_14;
  }

  v23 = *(v0 + 40);
  v24 = *(v0 + 16);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x22AAD13F0](*(v0 + 40));
  }

  else
  {
    if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v25 = *(v24 + 8 * v23 + 32);
  }

  v26 = v25;
  *(v0 + 32) = v25;
  *(v0 + 40) = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = swift_task_alloc();
  *(v0 + 48) = v27;
  *v27 = v0;
  v27[1] = sub_22974A8A8;

  sub_229749FF0(v26);
}

uint64_t sub_22974ADC8()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22974AE30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880820, &qword_22A581CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22974AE98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22974AF08, 0, 0);
}

uint64_t sub_22974AF08()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_22974B008;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000015, 0x800000022A594E10, sub_22974B638, v2, v4);
}

uint64_t sub_22974B008()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22974B124;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22974B124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22974B188(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v33 = a1;
  v34 = a4;
  v36 = a3;
  v35 = sub_22A4DD26C();
  v39 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_22A4DD5AC();
  v16 = [objc_opt_self() allMessageDestinations];
  v17 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:v15 destination:v16 payload:0];

  (*(v11 + 16))(v14, v33, v10);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v17;
  (*(v11 + 32))(v20 + v18, v14, v10);
  *(v20 + v19) = v34;
  v45 = sub_22974C698;
  v46 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_2297986BC;
  v44 = &block_descriptor_28;
  v21 = _Block_copy(&aBlock);
  v22 = a2;
  v23 = v17;

  [v23 setResponseHandler_];
  _Block_release(v21);
  v24 = [v22 workQueue];
  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v23;
  v45 = sub_22974B644;
  v46 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_22953E640;
  v44 = &block_descriptor_8_0;
  v27 = _Block_copy(&aBlock);
  v28 = v22;
  v29 = v23;
  v30 = v26;
  sub_22A4DD28C();
  v40 = MEMORY[0x277D84F90];
  sub_22974B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v31 = v35;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v9, v6, v27);
  _Block_release(v27);

  (*(v39 + 8))(v6, v31);
  (*(v37 + 8))(v9, v38);
}

unint64_t sub_22974B658()
{
  result = qword_281401CF0;
  if (!qword_281401CF0)
  {
    sub_22A4DD26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401CF0);
  }

  return result;
}

void sub_22974B6B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a4;
  v34[1] = a3;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x277CD24F0];
  v15 = [a2 messageTargetUUID];
  sub_22A4DB79C();

  v16 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v17 = sub_22A4DB77C();
  v18 = [v16 initWithTarget_];

  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v20;
  v21 = sub_22A4DB76C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v21;
  *(inited + 56) = v22;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  v23 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v24 = sub_22A4DD47C();

  v25 = [v23 initWithName:v14 destination:v18 payload:v24];

  (*(v6 + 16))(v9, v36, v5);
  v26 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 16) = v35;
  *(v27 + 24) = v25;
  (*(v6 + 32))(v27 + v26, v9, v5);
  *(v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
  aBlock[4] = sub_22974C5D4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_14;
  v29 = _Block_copy(aBlock);
  v30 = v28;
  v31 = v25;

  [v31 setResponseHandler_];
  _Block_release(v29);
  v32 = [v30 msgDispatcher];
  if (v32)
  {
    v33 = v32;
    [v32 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22974BAD8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_22A4DD07C();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  if (a1)
  {
    v16 = a1;
    sub_2297A46D4();
    v17 = a1;
    v18 = a3;
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v56 = a5;
      v24 = v23;
      v25 = swift_slowAlloc();
      v55 = v25;
      *v22 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v61 = v25;
      v26 = [v18 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v59, v60, &v61);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v24 = v19;
      *(v22 + 22) = 2112;
      v31 = a1;
      v32 = v19;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v33;
      v24[1] = v33;
      _os_log_impl(&dword_229538000, v20, v21, "%s Responded to %@ with %@", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v34 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v57 + 8))(v15, v58);
    v59 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    sub_2297A46D4();

    v36 = a3;
    v37 = a4;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = a5;
      v42 = v41;
      v43 = swift_slowAlloc();
      v55 = v43;
      *v40 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v61 = v43;
      v44 = [v36 logIdentifier];
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(v59, v60, &v61);

      *(v40 + 4) = v48;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v42 = v37;
      *(v40 + 22) = 2080;
      v59 = a2;
      v49 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
      v50 = sub_22A4DD64C();
      v52 = sub_2295A3E30(v50, v51, &v61);

      *(v40 + 24) = v52;
      _os_log_impl(&dword_229538000, v38, v39, "%s Responded to %@ with %s", v40, 0x20u);
      sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      v53 = v55;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v53, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    (*(v57 + 8))(v13, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

uint64_t sub_22974C028(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22A4DB7DC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22974C0EC, 0, 0);
}

uint64_t sub_22974C0EC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = [v3 administratorHandler];
  v8 = *MEMORY[0x277CD2540];
  v0[18] = v7;
  v0[19] = v8;
  v18 = v8;
  v9 = [v3 messageTargetUUID];
  sub_22A4DB79C();

  v10 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v11 = sub_22A4DB77C();
  v12 = [v10 initWithTarget_];
  v0[20] = v12;

  (*(v1 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v14;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v15 = sub_22956AC5C(inited);
  v0[21] = v15;
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  v16 = swift_task_alloc();
  v0[22] = v16;
  *v16 = v0;
  v16[1] = sub_22974C2F4;

  return sub_2297983DC(v18, v12, v15);
}

uint64_t sub_22974C2F4()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22974C468, 0, 0);
  }

  else
  {
    v3 = v2[20];
    v5 = v2[18];
    v4 = v2[19];

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_22974C468()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t objectdestroyTm_4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22974C69C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_22A4DE37C();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880910, &qword_22A581DE8);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_2296DBF94(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_22974C758(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22A4DE0EC();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    result = sub_22A4DE08C();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22A4DE29C();
  result = sub_22A4DE04C();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_22962F6C0(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 nodeID];

    sub_22A4DE27C();
    sub_22A4DE2AC();
    sub_22A4DE2BC();
    result = sub_22A4DE28C();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_22A4DE0AC())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880940, &qword_22A581DF0);
      v7 = sub_22A4DDB9C();
      sub_22A4DE15C();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_22962F424(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_22962F424(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_22962F424(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_22974CA70(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    sub_22959E62C(&qword_27D87D580, &unk_27D87E490, off_2786660B8);
    sub_22A4DDBAC();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_22A4DE12C() || (sub_229562F68(0, &unk_27D87E490, off_2786660B8), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_22953EE84(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 accessory];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x22AAD09E0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_22974CCF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757764(&v39, &selRef_characteristic, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_22A4DE0EC();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_22A4DE0EC();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v35 = v5;
        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
            v21 = sub_22958C03C(v37, j, v9);
            v23 = *v22;
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v31)
      {
        return v5;
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
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D080(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757954(&v39, &v38);
      if (v2)
      {
        goto LABEL_41;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_22A4DE0EC();
        goto LABEL_22;
      }

      if (v11)
      {
        goto LABEL_21;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v10;
        goto LABEL_23;
      }

LABEL_22:
      v15 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v15)
        {
          goto LABEL_45;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_47;
          }

          sub_2297636E4(&qword_27D8809C0, &qword_27D8809B8, &qword_22A581E20);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809B8, &qword_22A581E20);
            v22 = sub_22958C03C(v37, j, v9);
            v24 = *v23;
            (v22)(v37, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_229562F68(0, &qword_27D8809B0, off_278666278);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v15 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v15);
          v26 = v25 + v15;
          if (v7)
          {
            goto LABEL_46;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v15 > 0)
        {
          goto LABEL_44;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_43:
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D400(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757954(&v39, &v38);
      if (v2)
      {
        goto LABEL_41;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_22A4DE0EC();
        goto LABEL_22;
      }

      if (v11)
      {
        goto LABEL_21;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v10;
        goto LABEL_23;
      }

LABEL_22:
      v15 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v15)
        {
          goto LABEL_45;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_47;
          }

          sub_2297636E4(&qword_27D8809A8, &qword_27D8809A0, &qword_22A581E18);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809A0, &qword_22A581E18);
            v22 = sub_22958C03C(v37, j, v9);
            v24 = *v23;
            (v22)(v37, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_229562F68(0, &qword_27D880998, off_278666040);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v15 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v15);
          v26 = v25 + v15;
          if (v7)
          {
            goto LABEL_46;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v15 > 0)
        {
          goto LABEL_44;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_43:
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974D780(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_229757764(&v39, &selRef_lightProfile, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_22A4DE0EC();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_22A4DE0EC();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v35 = v5;
        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_2297636E4(&unk_27D880988, &qword_27D880980, &qword_22A581E10);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880980, &qword_22A581E10);
            v21 = sub_22958C03C(v37, j, v9);
            v23 = *v22;
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D880970, off_278666228);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v31)
      {
        return v5;
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
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22974DB0C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_47;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v31 = a3;
    v32 = v5;
    v33 = a3 + 32;
    while (1)
    {
      if (v35)
      {
        v8 = MEMORY[0x22AAD13F0](v6, v31);
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        v8 = *(v33 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v40 = v8;
      v11 = v4;
      a1(&v39, &v40);
      if (v4)
      {
        goto LABEL_40;
      }

      v12 = v39;
      v13 = v39 >> 62;
      if (v39 >> 62)
      {
        v14 = sub_22A4DE0EC();
      }

      else
      {
        v14 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v7 >> 62;
      if (v7 >> 62)
      {
        v28 = sub_22A4DE0EC();
        v9 = (v28 + v14);
        if (__OFADD__(v28, v14))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v7;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = (v16 + v14);
        if (__OFADD__(v16, v14))
        {
          goto LABEL_39;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          v17 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_22A4DE0EC();
        goto LABEL_21;
      }

      if (v15)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 = sub_22A4DE22C();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v37 = v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v13)
      {
        v20 = sub_22A4DE0EC();
        if (!v20)
        {
LABEL_4:

          if (v37 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v37)
      {
        goto LABEL_44;
      }

      v21 = v17 + 8 * v18 + 32;
      if (v13)
      {
        if (v20 < 1)
        {
          goto LABEL_46;
        }

        sub_2297636E4(&qword_27D880950, &qword_27D880948, &qword_22A581DF8);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880948, &qword_22A581DF8);
          v23 = sub_22958C03C(v38, i, v12);
          v25 = *v24;
          (v23)(v38, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        swift_arrayInitWithCopy();
      }

      v4 = v11;
      if (v37 > 0)
      {
        v26 = *(v17 + 16);
        v10 = __OFADD__(v26, v37);
        v27 = v26 + v37;
        if (v10)
        {
          goto LABEL_45;
        }

        *(v17 + 16) = v27;
      }

LABEL_5:
      if (v6 == v32)
      {
        return v7;
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
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v29 = a3;
    v5 = sub_22A4DE0EC();
    a3 = v29;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22974DE8C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572498(v5, v6);
      return sub_22975FC6C(a1, a2, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_22966F34C, sub_22966F34C);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_22966F34C, sub_22966F34C);
  }

  sub_22975E460(a1, &qword_281401920, off_278666038, &qword_27D87E4D0, sub_229578C60);
  return a2;
}

uint64_t sub_22974DFCC(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B20(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22966FAFC, sub_22966FAFC);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22966FAFC, sub_22966FAFC);
  }

  sub_22975E460(a1, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  return a2;
}

uint64_t sub_22974E10C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22975E460(a1, &qword_281401B70, off_278666148, &unk_27D87E480, sub_229579308);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22A4DE0EC() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22A4DE0EC();
  v2 = sub_229572B44(v5, v6);
LABEL_10:

  return sub_22975F5D4(a1, v2);
}

uint64_t sub_22974E22C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B68(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_22966FB10, sub_22966FB10);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_22966FB10, sub_22966FB10);
  }

  sub_22975E460(a1, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_229579350);
  return a2;
}

uint64_t sub_22974E36C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4 > sub_22A4DE0EC() / 8)
    {
      v6 = sub_22A4DE0EC();
      a2 = sub_229572B8C(v5, v6);
      return sub_22975FC6C(a1, a2, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_22966FB24, sub_22966FB24);
    }
  }

  else if (v4 > *(a2 + 16) >> 3)
  {
    return sub_22975FC6C(a1, a2, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_22966FB24, sub_22966FB24);
  }

  sub_22975E460(a1, &unk_27D8808F0, 0x277CD1B58, &qword_27D87E468, sub_229579374);
  return a2;
}

id sub_22974E4EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActionSetState();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22974E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() deviceWithNodeID:a3 controller:a1];

  return v3;
}

uint64_t sub_22974E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974E5C0, a4, 0);
}

uint64_t sub_22974E5C0()
{
  sub_22974F194(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22974E734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974E754, a4, 0);
}

uint64_t sub_22974E754()
{
  sub_22974E8DC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22974E8DC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v43 = sub_22A4DD07C();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB7DC();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v14 = &v37 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v11 + 16);
    v16 = v11 + 16;
    v17 = v18;
    v19 = (a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v45 = *(v16 + 56);
    v47 = (v16 - 8);
    v48 = v16;
    v41 = (v4 + 8);
    *&v12 = 136315138;
    v37 = v12;
    v44 = v18;
    v38 = v2;
    v18(v14, v19, v6);
    while (1)
    {
      if (swift_unknownObjectWeakLoadStrong() && (v21 = *(v2 + 200), v22 = swift_getObjectType(), v23 = (*(v21 + 64))(v14, v2, v22, v21), swift_unknownObjectRelease(), v23))
      {
        v24 = *(v2 + 184);
        v25 = sub_22A4DB77C();
        LOBYTE(v24) = [v24 hasRegistrationsForActionSetUUID_];

        if (v24 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v26 = *(v2 + 200), v27 = swift_getObjectType(), LOBYTE(v26) = (*(v26 + 56))(v14, v2, v27, v26), swift_unknownObjectRelease(), (v26))
        {
          sub_22974EDD8(v23);
        }

        else
        {
          sub_22974F194(v23);
        }

        result = (*v47)(v14, v6);
        v17 = v44;
      }

      else
      {
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v17(v9, v14, v6);
        v28 = sub_22A4DD05C();
        v29 = sub_22A4DDCCC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v49 = v40;
          *v30 = v37;
          sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v31 = v29;
          v32 = sub_22A4DE5CC();
          v34 = v33;
          v39 = *v47;
          v39(v9, v6);
          v35 = sub_2295A3E30(v32, v34, &v49);
          v17 = v44;

          *(v30 + 4) = v35;
          _os_log_impl(&dword_229538000, v28, v31, "Could not find Action Set: %s", v30, 0xCu);
          v36 = v40;
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AAD4E50](v36, -1, -1);
          v2 = v38;
          MEMORY[0x22AAD4E50](v30, -1, -1);

          (*v41)(v46, v43);
          result = v39(v14, v6);
        }

        else
        {

          v20 = *v47;
          (*v47)(v9, v6);
          (*v41)(v46, v43);
          result = v20(v14, v6);
        }
      }

      v19 += v45;
      if (!--v15)
      {
        break;
      }

      v17(v14, v19, v6);
    }
  }

  return result;
}

void sub_22974EDD8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  swift_beginAccess();
  if (*(*(v1 + 208) + 16) && (, sub_2296DBFE4(a1), v13 = v12, , (v13 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v14 = a1;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_229538000, v15, v16, "Action Set: %@ is already monitored", v17, 0xCu);
      sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v1 + 208);
    *(v1 + 208) = 0x8000000000000000;
    sub_2295ABA04(0, a1, isUniquelyReferenced_nonNull_native);
    *(v1 + 208) = v28;
    swift_endAccess();
    sub_22975381C();
    sub_229752A10();
    sub_229753228();
    sub_229754A38();
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v21 = a1;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCCC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_229538000, v22, v23, "Started monitoring Action Set: %@", v24, 0xCu);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    [*(v2 + 176) addObserver:v2 selector:sel_handleActionSetUpdatedWithNotification_ name:@"HMDActionSetActionsUpdatedNotification" object:v21];
    sub_2297564E4();
  }
}

uint64_t sub_22974F194(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  swift_beginAccess();
  if (!*(*(v1 + 208) + 16) || (, sub_2296DBFE4(a1), v12 = v11, , (v12 & 1) == 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v19 = a1;
    v14 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();

    if (!os_log_type_enabled(v14, v20))
    {
      v8 = v10;
      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v19;
    *v17 = v19;
    v21 = v19;
    _os_log_impl(&dword_229538000, v14, v20, "Action Set: %@ was not being monitored", v16, 0xCu);
    v8 = v10;
    goto LABEL_7;
  }

  [*(v1 + 176) removeObserver:v1 name:@"HMDActionSetActionsUpdatedNotification" object:a1];
  swift_beginAccess();
  sub_2297FD600(a1);
  swift_endAccess();
  sub_22975381C();
  sub_229752A10();
  sub_229753228();
  sub_229754A38();
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v13 = a1;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "Stoped monitoring Action Set: %@", v16, 0xCu);
LABEL_7:
    sub_22953EAE4(v17, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v17, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

LABEL_9:

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22974F4D0(void *a1)
{
  v2 = v1;
  v37 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_22A4DB7DC();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = [a1 userInfo];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v20 = sub_22A4DD49C();

  v38 = sub_22A4DD5EC();
  v39 = v21;
  sub_22A4DE18C();
  if (!*(v20 + 16) || (v22 = sub_2295402E8(v40), (v23 & 1) == 0))
  {

    sub_22954045C(v40);
LABEL_8:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_9;
  }

  sub_2295404B0(*(v20 + 56) + 32 * v22, &v41);
  sub_22954045C(v40);

  if (!*(&v42 + 1))
  {
LABEL_9:
    sub_22953EAE4(&v41, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_10;
  }

  sub_229562F68(0, &qword_281401C20, off_278666020);
  if (swift_dynamicCast())
  {
    v24 = v40[0];
    v25 = [v40[0] uuid];
    sub_22A4DB79C();

    v26 = sub_22A4DD9DC();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v28 = v35;
    v27 = v36;
    (*(v35 + 16))(v15, v17, v36);
    v29 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v37;
    (*(v28 + 32))(&v30[v29], v15, v27);

    sub_22957F3C0(0, 0, v11, &unk_22A581E88, v30);

    return (*(v28 + 8))(v17, v27);
  }

LABEL_10:
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_229538000, v32, v33, "Action Set is missing from notification", v34, 2u);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22974F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974F9A0, 0, 0);
}

uint64_t sub_22974F9A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
  v3 = sub_22A4DB7DC();
  *(v0 + 32) = v3;
  v4 = *(v3 - 8);
  *(v0 + 40) = v4;
  v5 = *(v4 + 80);
  *(v0 + 56) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 48) = v7;
  *(v7 + 16) = xmmword_22A576180;
  (*(v4 + 16))(v7 + v6, v1, v3);

  return MEMORY[0x2822009F8](sub_22974FAD4, v2, 0);
}

uint64_t sub_22974FAD4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = (*(v0 + 56) + 32) & ~*(v0 + 56);
  sub_22974E8DC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22974FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22974FBF4, a4, 0);
}

uint64_t sub_22974FBF4()
{
  sub_22974FC6C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_22974FC6C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 208) + 16) && (, sub_2296DBFE4(a1), v9 = v8, , (v9 & 1) != 0))
  {
    sub_22975381C();
    sub_229752A10();
    sub_229753228();
    sub_229754A38();
    sub_2297564E4();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v10 = a1;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCDC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_229538000, v11, v12, "Action set: %@ is not relevant", v13, 0xCu);
      sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22974FE88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_22A4DB20C();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v35 = sub_22A4DD5EC();
  v36 = v17;
  sub_22A4DE18C();
  if (!*(v16 + 16) || (v18 = sub_2295402E8(v37), (v19 & 1) == 0))
  {

    sub_22954045C(v37);
LABEL_10:
    v38 = 0u;
    v39 = 0u;
    goto LABEL_11;
  }

  sub_2295404B0(*(v16 + 56) + 32 * v18, &v38);
  sub_22954045C(v37);

  if (!*(&v39 + 1))
  {
LABEL_11:
    sub_22953EAE4(&v38, &unk_27D87DE60, &unk_22A57A960);
LABEL_12:
    sub_229541CB0(ObjectType, &off_283CE36C8);
    (*(v6 + 16))(v8, a1, v5);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315138;
      sub_229763570(&unk_2814038C0, 255, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
      v28 = sub_22A4DE5CC();
      v33 = v9;
      v30 = v29;
      (*(v6 + 8))(v8, v5);
      v31 = sub_2295A3E30(v28, v30, v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_229538000, v24, v25, "No characteristics in change notification: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);

      return (*(v34 + 8))(v11, v33);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      return (*(v34 + 8))(v11, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = v37[0];
  if (v37[0] >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_8;
    }
  }

  else if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v21 = sub_22A4DD9DC();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v2;
    v22[5] = v20;

    sub_22957F3C0(0, 0, v14, &unk_22A581E68, v22);
  }
}

uint64_t sub_229750380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297503A0, a4, 0);
}

uint64_t sub_2297503A0()
{
  sub_2297504EC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_2297504EC(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = ObjectType;
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_29:
    v7 = sub_22A4DE0EC();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (!v7)
  {
    return;
  }

  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 + 32;
  v29 = v7;
  v30 = a1;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v9)
    {
      v14 = MEMORY[0x22AAD13F0](v8, a1);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_28;
      }

      v14 = *(v35 + 8 * v8);
    }

    v15 = v14;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = *(v2 + 112);
    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = v15;
    v13 = sub_22A4DE13C();

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_7:
    if (v8 == v7)
    {
      return;
    }
  }

  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  sub_229562F68(0, &unk_27D87E490, off_2786660B8);

  v17 = sub_22A4DDECC();
  v18 = -1 << *(v11 + 32);
  v19 = v17 & ~v18;
  if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_19:

    v7 = v29;
    a1 = v30;
    v10 = v27;
    v9 = v28;
    goto LABEL_7;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v11 + 48) + 8 * v19);
    v22 = sub_22A4DDEDC();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_23:
  v23 = v32;
  sub_229541CB0(v31, &off_283CE36C8);
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_229538000, v24, v25, "Detected relevant characteristic change, refreshing on state", v26, 2u);
    MEMORY[0x22AAD4E50](v26, -1, -1);
  }

  (*(v33 + 8))(v23, v34);
  sub_2297564E4();
}

void sub_229750860(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  if ([a1 object])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (*(&v29 + 1))
  {
    sub_229562F68(0, &qword_27D880918, off_278666280);
    if (swift_dynamicCast())
    {
      v14 = v27;
      v15 = [v27 accessory];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 uuid];
          v26 = ObjectType;
          v19 = v18;
          sub_22A4DB79C();

          v20 = sub_22A4DD9DC();
          (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
          (*(v8 + 16))(v11, v13, v7);
          v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
          v25 = v14;
          v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v23 = swift_allocObject();
          *(v23 + 2) = 0;
          *(v23 + 3) = 0;
          *(v23 + 4) = v1;
          (*(v8 + 32))(&v23[v21], v11, v7);
          *&v23[v22] = v26;

          sub_22957F3C0(0, 0, v6, &unk_22A581E58, v23);

          (*(v8 + 8))(v13, v7);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_22953EAE4(v30, &unk_27D87DE60, &unk_22A57A960);
  }
}

uint64_t sub_229750BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_22A4DB7DC();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229750D18, a4, 0);
}

uint64_t sub_229750D18()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 128) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_229750DA0, 0, 0);
}

uint64_t sub_229750DA0()
{
  v49 = v0;
  v1 = v0[9];
  v2 = sub_22956F33C(v0[6], v0[16]);

  v3 = (v1 + 16);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  if (v2)
  {
    v7 = v0[11];
    sub_229541CB0(v4, &off_283CE36C8);
    (*v3)(v7, v6, v5);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCDC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    if (v10)
    {
      v46 = v0[12];
      v17 = swift_slowAlloc();
      v42 = v9;
      v18 = swift_slowAlloc();
      v48 = v18;
      *v17 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_22A4DE5CC();
      v44 = v11;
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_2295A3E30(v19, v21, &v48);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_229538000, v8, v42, "Detected relevant media profile change for %s, refreshing on state", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v12 + 8))(v44, v46);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v12 + 8))(v11, v13);
    }

    v39 = v0[5];

    return MEMORY[0x2822009F8](sub_229751234, v39, 0);
  }

  else
  {
    v23 = v0[10];
    sub_229541CB0(v4, &off_283CE36C8);
    (*v3)(v23, v6, v5);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCDC();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[8];
    if (v26)
    {
      v47 = v0[12];
      v33 = swift_slowAlloc();
      v43 = v25;
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_22A4DE5CC();
      v45 = v27;
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = sub_2295A3E30(v35, v37, &v48);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_229538000, v24, v43, "Media accessory: %s is not relevant", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v28 + 8))(v45, v47);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      (*(v28 + 8))(v27, v29);
    }

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_229751234(uint64_t a1)
{
  sub_2297564E4();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_229751308(void *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v17 - v11;
  if ([a1 object])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    return sub_22953EAE4(v20, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229562F68(0, a2, a3);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v17[1];
    v15 = sub_22A4DD9DC();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v5;
    v16[5] = v14;

    sub_22957F3C0(0, 0, v12, a5, v16);
  }

  return result;
}

uint64_t sub_2297514C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297514E4, a4, 0);
}

uint64_t sub_2297514E4()
{
  sub_2297515BC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22975155C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_2297515BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  swift_beginAccess();
  v12 = *(v2 + 168);

  v13 = sub_22956F554(a1, v12);

  if (v13)
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v14 = a1;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_229538000, v15, v16, "Detected relevant lighting profile change for %@, refreshing on state", v17, 0xCu);
      sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    sub_2297564E4();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v20 = a1;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCDC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_229538000, v21, v22, "Lighting profile: %@ is not relevant", v23, 0xCu);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2297518E0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809C8, &qword_22A581E28);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297519B8, 0, 0);
}

uint64_t sub_2297519B8()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;

  v6 = sub_22957F9B4(0, 0, v1, &unk_22A581E38, v5);
  v0[9] = v6;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D0, &qword_22A578118);
  *v7 = v0;
  v7[1] = sub_229751B2C;
  v9 = MEMORY[0x277D84A98];
  v10 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v0 + 2, v6, v8, v9, v10);
}

uint64_t sub_229751B2C()
{

  return MEMORY[0x2822009F8](sub_229751C44, 0, 0);
}

void sub_229751C44(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {

    swift_willThrowTypedImpl();
  }

  else
  {
    v21 = *(v1 + 48);
    v20 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    v3 = -1;
    v4 = -1 << *(v2 + 32);
    if (-v4 < 64)
    {
      v3 = ~(-1 << -v4);
    }

    v5 = v3 & *(v2 + 64);
    v6 = (63 - v4) >> 6;

    v7 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v8 = *(v1 + 56);
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v7 << 6);
        v11 = *(v2 + 48);
        v12 = sub_22A4DB7DC();
        (*(*(v12 - 8) + 16))(v8, v11 + *(*(v12 - 8) + 72) * v10, v12);
        v13 = *(*(v2 + 56) + v10);
        *(v8 + *(v21 + 48)) = v13;
        v14 = objc_allocWithZone(HMDActionSetResponse);
        v15 = sub_22A4DB77C();
        v16 = [v14 initWithActionSetUUID:v15 state:v13];

        v17 = sub_22953EAE4(v8, &qword_27D8809C8, &qword_22A581E28);
        if (v16)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x22AAD09E0](v17);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      v20 = v22;
    }

    while (v5);
    while (1)
    {
LABEL_10:
      v18 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v18 >= v6)
      {
        break;
      }

      v5 = *(v2 + 64 + 8 * v18);
      ++v7;
      if (v5)
      {
        v7 = v18;
        goto LABEL_8;
      }
    }

    sub_2297637F8(v2, 0);

    v19 = *(v1 + 8);

    v19(v20);
  }
}

uint64_t sub_229751EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_229751F08, a4, 0);
}

uint64_t sub_229751F08()
{
  *(v0 + 40) = sub_229752384(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_229751F74, 0, 0);
}

uint64_t sub_229752120(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_22A4DB7DC();
  v4 = sub_22A4DD83C();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_2297521F8;

  return sub_2297518E0(v4);
}

uint64_t sub_2297521F8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v6 = *v1;

  type metadata accessor for HMDActionSetResponse(0);
  v3 = sub_22A4DD81C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_229752384(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v67 = sub_22A4DD07C();
  v2 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v69 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F98];
  }

  v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  swift_beginAccess();
  v17 = *(v6 + 16);
  v16 = v6 + 16;
  v77 = v17;
  v18 = *(v16 + 56);
  v70 = (v16 - 8);
  v71 = v18;
  v19 = MEMORY[0x277D84F98];
  v65 = (v2 + 8);
  *&v20 = 136315138;
  v64 = v20;
  v72 = v9;
  v73 = v5;
  v74 = v13;
  v66 = v16;
  v63 = v4;
  while (1)
  {
    v75 = v19;
    v77(v13, v15, v5);
    if (!swift_unknownObjectWeakLoadStrong() || (v23 = v76, v24 = *(v76 + 200), v25 = swift_getObjectType(), v26 = (*(v24 + 64))(v13, v23, v25, v24), swift_unknownObjectRelease(), !v26))
    {
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v77(v9, v13, v5);
      v32 = sub_22A4DD05C();
      v33 = v4;
      v34 = sub_22A4DDCCC();
      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v78 = v36;
        *v35 = v64;
        sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v37 = sub_22A4DE5CC();
        v39 = v38;
        v40 = *v70;
        (*v70)(v72, v73);
        v41 = sub_2295A3E30(v37, v39, &v78);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_229538000, v32, v34, "Could not find Action Set: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v42 = v36;
        v9 = v72;
        MEMORY[0x22AAD4E50](v42, -1, -1);
        v43 = v35;
        v5 = v73;
        MEMORY[0x22AAD4E50](v43, -1, -1);

        v4 = v63;
        (*v65)(v63, v67);
        v13 = v74;
        v40(v74, v5);
      }

      else
      {
        v21 = v13;

        v22 = *v70;
        (*v70)(v9, v5);
        (*v65)(v33, v67);
        v22(v21, v5);
        v4 = v33;
        v13 = v21;
      }

      v19 = v75;
      goto LABEL_5;
    }

    v27 = *(v76 + 208);
    if (*(v27 + 16))
    {

      v28 = sub_2296DBFE4(v26);
      v29 = v75;
      v31 = (v30 & 1) != 0 ? *(*(v27 + 56) + v28) : 0;
    }

    else
    {
      v31 = 0;
      v29 = v75;
    }

    v44 = v69;
    v77(v69, v74, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v29;
    v46 = sub_2296DBEC0(v44);
    v48 = *(v29 + 16);
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      break;
    }

    v52 = v47;
    if (*(v29 + 24) >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = v46;
        sub_229899030();
        v46 = v60;
      }
    }

    else
    {
      sub_229895274(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_2296DBEC0(v69);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_31;
      }
    }

    v5 = v73;
    v19 = v78;
    if (v52)
    {
      *(v78[7] + v46) = v31;

      v54 = *v70;
      (*v70)(v69, v5);
      v54(v74, v5);
    }

    else
    {
      v78[(v46 >> 6) + 8] |= 1 << v46;
      v55 = v46;
      v56 = v69;
      v77((v19[6] + v46 * v71), v69, v5);
      *(v19[7] + v55) = v31;

      v57 = *v70;
      (*v70)(v56, v5);
      v57(v74, v5);
      v58 = v19[2];
      v50 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v50)
      {
        goto LABEL_30;
      }

      v19[2] = v59;
    }

    v9 = v72;
    v13 = v74;
LABEL_5:
    v15 += v71;
    if (!--v14)
    {
      return v19;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

void sub_229752A10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v75 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v70 = &v64 - v14;
  swift_beginAccess();
  v15 = *(v0 + 26);
  v16 = *(v15 + 16);
  if (v16)
  {
    v72 = ObjectType;
    v73 = v6;
    v74 = v4;
    Strong = v3;
    v17 = sub_229716310();
    v18 = sub_229715980(&v81, (v17 + 32), v16, v15);
    v19 = v81;

    sub_22953EE84(v19);
    if (v18 != v16)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v3 = Strong;
    v6 = v73;
    v4 = v74;
    ObjectType = v72;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v80 = sub_229762958(v17);
  v20 = sub_229762E64(v17);

  sub_229594AA4(v20);
  swift_beginAccess();
  v21 = *(v1 + 20);
  v22 = v80;
  if (*(v80 + 16) <= *(v21 + 16) >> 3)
  {
    v79 = *(v1 + 20);

    sub_22975E244(v22);
    v23 = v79;
  }

  else
  {

    v23 = sub_22975EB68(v22, v21);
  }

  if (*(*(v1 + 20) + 16) <= *(v22 + 16) >> 3)
  {
    v79 = v22;

    sub_22975E244(v26);

    v25 = v79;
  }

  else
  {

    v25 = sub_22975EB68(v24, v22);
  }

  v27 = v66;
  if (*(v25 + 16) || *(v23 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v65 = v25;
      v28 = *(v1 + 25);
      v29 = v23 + 56;
      v30 = 1 << *(v23 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v23 + 56);
      v33 = (v30 + 63) >> 6;
      v73 = (v76 + 32);
      v74 = v76 + 16;
      v72 = v28 + 48;
      v67 = v28 + 32;
      v71 = (v76 + 8);

      v34 = 0;
      v68 = v23;
      while (v32)
      {
LABEL_23:
        v37 = v76;
        v36 = v77;
        v38 = *(v23 + 48) + *(v76 + 72) * (__clz(__rbit64(v32)) | (v34 << 6));
        v39 = v70;
        (*(v76 + 16))(v70, v38, v77);
        (*(v37 + 32))(v27, v39, v36);
        v40 = swift_getObjectType();
        v41 = (*(v28 + 48))(v27, v1, v40, v28);
        if (v41)
        {
          v42 = v41;
          [*(v1 + 22) removeObserver:v1 name:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v41];
        }

        v32 &= v32 - 1;
        (*(v28 + 32))(v27, v1, v40, v28);
        (*v71)(v27, v77);
        v23 = v68;
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v35 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          v34 = v35;
          goto LABEL_23;
        }
      }

      swift_beginAccess();
      sub_22975E244(v23);
      swift_endAccess();

      v43 = v65;
      v44 = v65 + 56;
      v45 = 1 << *(v65 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v65 + 56);
      v48 = (v45 + 63) >> 6;
      v68 = v28 + 24;

      v49 = 0;
      v70 = v1;
      while (v47)
      {
LABEL_34:
        v52 = v43;
        v54 = v76;
        v53 = v77;
        v55 = v69;
        (*(v76 + 16))(v69, *(v43 + 48) + *(v76 + 72) * (__clz(__rbit64(v47)) | (v49 << 6)), v77);
        v56 = v75;
        (*(v54 + 32))(v75, v55, v53);
        v57 = swift_getObjectType();
        v58 = v70;
        v59 = (*(v28 + 48))(v56, v70, v57, v28);
        if (v59)
        {
          v60 = v59;
          [*(v58 + 22) addObserver:v58 selector:sel_handleMediaProfileHasMediaSessionStateChangedWithNotification_ name:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v59];
        }

        v47 &= v47 - 1;
        v50 = v75;
        (*(v28 + 24))(v75, v58, v57, v28);
        (*v71)(v50, v77);
        v43 = v52;
      }

      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v51 >= v48)
        {

          swift_beginAccess();
          sub_229594AA4(v43);
          swift_endAccess();
          swift_unknownObjectRelease();
          return;
        }

        v47 = *(v44 + 8 * v51);
        ++v49;
        if (v47)
        {
          v49 = v51;
          goto LABEL_34;
        }
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v61 = sub_22A4DD05C();
    v62 = sub_22A4DDCEC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_229538000, v61, v62, "Cannot evaluate media state with nil dataSource", v63, 2u);
      MEMORY[0x22AAD4E50](v63, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }
}

void sub_229753228()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 208);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_229716310();
    v5 = sub_229715980(v52, (v4 + 32), v3, v2);
    v6 = v52[0];

    sub_22953EE84(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = sub_22974D780(v4);

  v8 = sub_229672A20(v7);

  swift_beginAccess();
  v9 = *(v1 + 168);

  v10 = sub_22974E22C(v8, v9);

  v12 = sub_22974E22C(v11, v8);

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = v10 & 0xC000000000000001;
    if (!sub_22A4DE0EC())
    {
LABEL_9:
      if (v13)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_11;
        }
      }

      else if (*(v10 + 16))
      {
        goto LABEL_11;
      }

      return;
    }
  }

  else
  {
    v13 = v10 & 0xC000000000000001;
    if (!*(v12 + 16))
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v43 = v12 & 0xC000000000000001;
  v44 = v10;
  v45 = v12;
  if (v13)
  {

    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D880970, off_278666228);
    sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
    sub_22A4DDBAC();
    v10 = v47;
    v14 = v48;
    v15 = v49;
    v16 = v50;
    v17 = v51;
  }

  else
  {
    v18 = -1 << *(v10 + 32);
    v14 = v10 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v10 + 56);

    v16 = 0;
  }

  v42 = v15;
  v21 = (v15 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (!v17)
    {
      break;
    }

LABEL_22:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v10 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
LABEL_28:
      sub_22953EE84(v10);
      swift_beginAccess();
      sub_22975E460(v44, &unk_27D880970, off_278666228, &unk_27D87E4A0, sub_229579350);
      swift_endAccess();

      if (v43)
      {

        sub_22A4DE09C();
        sub_229562F68(0, &unk_27D880970, off_278666228);
        sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
        sub_22A4DDBAC();
        v29 = v52[0];
        v28 = v52[1];
        v30 = v52[2];
        v31 = v52[3];
        v32 = v52[4];
      }

      else
      {
        v29 = v45;
        v33 = -1 << *(v45 + 32);
        v28 = v45 + 56;
        v30 = ~v33;
        v34 = -v33;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v32 = v35 & *(v45 + 56);

        v31 = 0;
      }

      v36 = (v30 + 64) >> 6;
      if (v29 < 0)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v37 = v31;
        v38 = v32;
        v39 = v31;
        if (!v32)
        {
          break;
        }

LABEL_39:
        v40 = (v38 - 1) & v38;
        v41 = *(*(v29 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v41)
        {
LABEL_45:
          sub_22953EE84(v29);
          swift_beginAccess();
          sub_229594CB4(v45);
          swift_endAccess();
          return;
        }

        while (1)
        {
          [*(v1 + 176) addObserver:v1 selector:sel_handleNaturalLightingProfileStateChangedWithNotification_ name:@"HMDLightProfile.SettingsUpdated" object:{v41, v42}];

          v31 = v39;
          v32 = v40;
          if ((v29 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_41:
          if (sub_22A4DE12C())
          {
            sub_229562F68(0, &unk_27D880970, off_278666228);
            swift_dynamicCast();
            v41 = v46;
            v39 = v31;
            v40 = v32;
            if (v46)
            {
              continue;
            }
          }

          goto LABEL_45;
        }
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_49;
        }

        if (v39 >= v36)
        {
          goto LABEL_45;
        }

        v38 = *(v28 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_39;
        }
      }
    }

    while (1)
    {
      [*(v1 + 176) removeObserver:v1 name:@"HMDLightProfile.SettingsUpdated" object:{v26, v42}];

      v16 = v24;
      v17 = v25;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      v27 = sub_22A4DE12C();
      if (v27)
      {
        v46 = v27;
        sub_229562F68(0, &unk_27D880970, off_278666228);
        swift_dynamicCast();
        v26 = v52[0];
        v24 = v16;
        v25 = v17;
        if (v52[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_28;
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_22975381C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = v71 - v3;
  swift_beginAccess();
  v4 = *(v0 + 208);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_229716310();
    v7 = sub_229715980(v82, (v6 + 32), v5, v4);
    v8 = v82[0];

    sub_22953EE84(v8);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = sub_22974CCF4(v6);

  v10 = sub_229762550(v6, v1);

  v11 = sub_2296729C0(v10);

  v82[0] = v9;
  sub_2296F0B94(v11);
  v12 = sub_2296729C0(v82[0]);

  swift_beginAccess();
  v13 = *(v1 + 112);

  v14 = sub_22974DFCC(v12, v13);

  v16 = sub_22974DFCC(v15, v12);

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_15;
    }
  }

  else if (*(v14 + 16))
  {
    goto LABEL_15;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    if (!sub_22A4DE0EC())
    {
LABEL_13:
      swift_beginAccess();
      v17 = *(v1 + 120);
      if ((v17 & 0xC000000000000001) != 0)
      {

        v18 = sub_22A4DE0EC();

        if (v18)
        {
          goto LABEL_15;
        }
      }

      else if (*(v17 + 16))
      {
        goto LABEL_15;
      }

      return;
    }
  }

  else if (!*(v16 + 16))
  {
    goto LABEL_13;
  }

LABEL_15:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v1 + 200);
    v20 = swift_getObjectType();
    (*(v19 + 16))(v14, v1, v20, v19);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_22975E460(v14, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  swift_endAccess();
  swift_beginAccess();
  sub_22975E460(v14, &unk_27D87E490, off_2786660B8, &qword_27D87D580, sub_22957932C);
  swift_endAccess();

  sub_22974CA70(v21);
  v23 = v22;

  v24 = sub_2296729F0(v23);

  v71[0] = v16;
  sub_22974CA70(v16);
  v26 = sub_2296729F0(v25);

  v27 = sub_22974E10C(v24, v26);
  sub_22974CA70(v14);
  v29 = v28;

  v30 = sub_2296729F0(v29);

  v31 = sub_22974E10C(v24, v30);

  v32 = sub_22974E10C(v27, v31);
  v33 = v32;
  if ((v32 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
    sub_22A4DDBAC();
    v33 = v77;
    v34 = v78;
    v35 = v79;
    v36 = v80;
    v37 = v81;
  }

  else
  {
    v36 = 0;
    v38 = -1 << *(v32 + 32);
    v34 = v32 + 56;
    v35 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v37 = v40 & *(v32 + 56);
  }

  v71[1] = v35;
  v41 = (v35 + 64) >> 6;
  v74 = @"HMDAccessoryCharacteristicsChangedNotification";
  if (v33 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v42 = v36;
    v43 = v37;
    v44 = v36;
    if (!v37)
    {
      break;
    }

LABEL_28:
    v45 = (v43 - 1) & v43;
    v46 = *(*(v33 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v46)
    {
LABEL_34:
      sub_22953EE84(v33);
      if ((v27 & 0xC000000000000001) != 0)
      {
        sub_22A4DE09C();
        sub_229562F68(0, &qword_281401B70, off_278666148);
        sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
        sub_22A4DDBAC();
        v27 = v82[0];
        v48 = v82[1];
        v49 = v82[2];
        v50 = v82[3];
        v51 = v82[4];
      }

      else
      {
        v50 = 0;
        v52 = -1 << *(v27 + 32);
        v48 = v27 + 56;
        v49 = ~v52;
        v53 = -v52;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        else
        {
          v54 = -1;
        }

        v51 = v54 & *(v27 + 56);
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v55 = v50;
        v56 = v51;
        v57 = v50;
        if (!v51)
        {
          break;
        }

LABEL_45:
        v58 = (v56 - 1) & v56;
        v59 = *(*(v27 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
        if (!v59)
        {
LABEL_51:
          sub_22953EE84(v27);
          swift_beginAccess();
          v61 = v71[0];

          sub_229594A74(v62);
          swift_endAccess();

          sub_229839D7C(v63, v61);
          v65 = v64;
          v66 = sub_22A4DD9DC();
          v67 = v72;
          (*(*(v66 - 8) + 56))(v72, 1, 1, v66);
          v69 = sub_229763570(&qword_27D880958, v68, type metadata accessor for ActionSetState.Observer, &unk_22A581DB0);
          v70 = swift_allocObject();
          v70[2] = v1;
          v70[3] = v69;
          v70[4] = v1;
          v70[5] = v65;
          v70[6] = ObjectType;
          swift_retain_n();
          sub_22957F3C0(0, 0, v67, &unk_22A581E08, v70);

          return;
        }

        while (1)
        {
          [*(v1 + 176) addObserver:v1 selector:sel_handleWithCharacteristicsChangedNotification_ name:v74 object:v59];

          v50 = v57;
          v51 = v58;
          if ((v27 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_47:
          v60 = sub_22A4DE12C();
          if (v60)
          {
            v75 = v60;
            sub_229562F68(0, &qword_281401B70, off_278666148);
            swift_dynamicCast();
            v59 = v76;
            v57 = v50;
            v58 = v51;
            if (v76)
            {
              continue;
            }
          }

          goto LABEL_51;
        }
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_55;
        }

        if (v57 >= ((v49 + 64) >> 6))
        {
          goto LABEL_51;
        }

        v56 = *(v48 + 8 * v57);
        ++v55;
        if (v56)
        {
          goto LABEL_45;
        }
      }
    }

    while (1)
    {
      [*(v1 + 176) removeObserver:v1 name:v74 object:v46];

      v36 = v44;
      v37 = v45;
      if ((v33 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v47 = sub_22A4DE12C();
      if (v47)
      {
        v76 = v47;
        sub_229562F68(0, &qword_281401B70, off_278666148);
        swift_dynamicCast();
        v46 = v82[0];
        v44 = v36;
        v45 = v37;
        if (v82[0])
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      goto LABEL_34;
    }

    v43 = *(v34 + 8 * v44);
    ++v42;
    if (v43)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_22975412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = sub_22A4DD07C();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229754200, a4, 0);
}

uint64_t sub_229754200()
{
  v23 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(v0[11] + 200);
    ObjectType = swift_getObjectType();
    v20 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_229754518;
    v5 = v0[11];
    v6 = v0[12];

    return v20(v6, v5, ObjectType, v2);
  }

  else
  {
    sub_229541CB0(v0[13], &off_283CE36C8);

    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    if (v10)
    {
      v21 = v0[14];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      sub_22959E62C(&qword_27D87D580, &unk_27D87E490, off_2786660B8);
      v16 = sub_22A4DDB7C();
      v18 = sub_2295A3E30(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_229538000, v8, v9, "Error subscribing to characteristics :%s due to nil dataSource", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      (*(v12 + 8))(v11, v21);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_229754518(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_229754630, v2, 0);
}

void sub_229754630(__n128 a1)
{
  v37 = v1;
  v2 = v1[20];
  if (v2 >> 62)
  {
    v3 = sub_22A4DE0EC();
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = v1[11];
  v6 = v2 & 0xC000000000000001;
  v34 = v1[20] + 32;
  v35 = (v1[15] + 8);
  a1.n128_u64[0] = 138412290;
  v31 = a1;
  v32 = v3;
  v33 = v5;
  do
  {
    if (v6)
    {
      v12 = MEMORY[0x22AAD13F0](v4, v1[20]);
    }

    else
    {
      v12 = *(v34 + 8 * v4);
    }

    v13 = v12;
    v14 = [v12 error];
    if (v14)
    {
      v15 = v1[13];

      sub_229541CB0(v15, &off_283CE36C8);
      v16 = v13;
      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCEC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = v31.n128_u32[0];
        v21 = v6;
        v22 = [v16 request];
        v23 = [v22 characteristic];

        v6 = v21;
        *(v19 + 4) = v23;
        *v20 = v23;
        _os_log_impl(&dword_229538000, v17, v18, "Error monitoring characteristic: %@, will retry", v19, 0xCu);
        sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
        v24 = v20;
        v3 = v32;
        v5 = v33;
        MEMORY[0x22AAD4E50](v24, -1, -1);
        MEMORY[0x22AAD4E50](v19, -1, -1);
      }

      v7 = v1[16];
      v8 = v1[14];

      (*v35)(v7, v8);
      v9 = [v16 request];
      v10 = [v9 characteristic];

      swift_beginAccess();
      sub_229571F28(&v36, v10);
      v11 = v36;
      swift_endAccess();

      [*(v5 + 152) resume];
    }

    else
    {
      v25 = [v13 request];
      v26 = [v25 characteristic];

      swift_beginAccess();
      v16 = sub_22957932C(v26);
      swift_endAccess();
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_15:

  v27 = v1[11];
  swift_beginAccess();
  v28 = *(v27 + 120);
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*(v28 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v29 = sub_22A4DE0EC();

  if (!v29)
  {
LABEL_17:
    [*(v1[11] + 152) reset];
  }

LABEL_18:
  sub_2297564E4();
  swift_unknownObjectRelease();

  v30 = v1[1];

  v30();
}

void sub_229754A38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v157 = sub_22A4DD07C();
  v3 = *(v157 - 8);
  v4 = MEMORY[0x28223BE20](v157);
  v6 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v166 = &v145 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v145 - v10;
  MEMORY[0x28223BE20](v9);
  v167 = &v145 - v12;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v165 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v152 = &v145 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v168 = &v145 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v145 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v145 - v24;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_229538000, v38, v39, "Unable to evaluate subscriptions, failed to get controller identifier from data source", v40, 2u);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    (*(v3 + 8))(v6, v157);
    return;
  }

  v149 = ObjectType;
  v148 = v11;
  v146 = v3;
  v26 = v0[25];
  v27 = swift_getObjectType();
  (*(v26 + 80))(v0, v27, v26);
  swift_unknownObjectRelease();
  v151 = v14;
  v28 = *(v14 + 32);
  v155 = v13;
  v28(v25, v23, v13);
  v29 = swift_beginAccess();
  v30 = v0[26];
  v31 = *(v30 + 16);
  v32 = MEMORY[0x277D84F90];
  v164 = v1;
  if (v31)
  {
    v32 = sub_229716310();
    v33 = sub_229715980(v177, (v32 + 32), v31, v30);
    v34 = v177[0];

    v29 = sub_22953EE84(v34);
    if (v33 != v31)
    {
      goto LABEL_84;
    }

    v1 = v164;
  }

  MEMORY[0x28223BE20](v29);
  *(&v145 - 2) = v1;
  *(&v145 - 1) = v25;
  v154 = v25;
  v35 = sub_22974DB0C(sub_229763554, (&v145 - 4), v32);

  v36 = sub_229672A50(v35);

  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_22A4DE0EC();
  }

  else
  {
    v37 = *(v36 + 16);
  }

  v41 = v155;
  if (!v37)
  {
    v42 = v1[17];
    if ((v42 & 0xC000000000000001) != 0)
    {

      v43 = sub_22A4DE0EC();

      if (v43)
      {
        goto LABEL_14;
      }
    }

    else if (*(v42 + 16))
    {
      goto LABEL_14;
    }

    (*(v151 + 8))(v154, v41);

    return;
  }

LABEL_14:
  v147 = v36 & 0xC000000000000001;
  v44 = v1[16];
  if (!v44)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = v1[25];
      v46 = swift_getObjectType();
      v47 = (*(v45 + 96))(v154, v1, v46, v45);
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
    }

    v1[16] = v47;
    swift_unknownObjectRelease();
    v44 = v1[16];
    if (!v44)
    {

      v113 = v166;
      sub_229541CB0(v149, &off_283CE36C8);
      v114 = v151;
      v115 = v165;
      v116 = v154;
      (*(v151 + 16))(v165, v154, v41);
      v117 = sub_22A4DD05C();
      v118 = sub_22A4DDCEC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v177[0] = v120;
        *v119 = 136315138;
        sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v121 = sub_22A4DE5CC();
        v122 = v41;
        v124 = v123;
        v125 = *(v114 + 8);
        v126 = v115;
        v127 = v122;
        v125(v126, v122);
        v128 = sub_2295A3E30(v121, v124, v177);
        v129 = v113;
        v130 = v128;

        *(v119 + 4) = v130;
        _os_log_impl(&dword_229538000, v117, v118, "Unable to create matter device controller for identifier %s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v120);
        MEMORY[0x22AAD4E50](v120, -1, -1);
        MEMORY[0x22AAD4E50](v119, -1, -1);

        (*(v146 + 8))(v129, v157);
        v125(v154, v127);
      }

      else
      {

        v143 = *(v114 + 8);
        v143(v115, v41);
        (*(v146 + 8))(v113, v157);
        v143(v116, v41);
      }

      return;
    }
  }

  swift_unknownObjectRetain();

  v49 = v36;
  v50 = sub_22974E36C(v48, v36);

  v51 = v1[17];

  v153 = v49;
  v52 = sub_22974E36C(v49, v51);
  if ((v50 & 0xC000000000000001) != 0)
  {
    v53 = sub_22A4DE0EC();
  }

  else
  {
    v53 = *(v50 + 16);
  }

  v54 = v168;
  v163 = v44;
  if (v53)
  {
    goto LABEL_27;
  }

  if ((v52 & 0xC000000000000001) != 0)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_27;
    }

LABEL_78:

    v131 = v167;
    sub_229541CB0(v149, &off_283CE36C8);
    v132 = v151;
    v133 = v154;
    (*(v151 + 16))(v54, v154, v41);
    v134 = sub_22A4DD05C();
    v135 = sub_22A4DDCDC();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v177[0] = v137;
      *v136 = 136315138;
      sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v138 = sub_22A4DE5CC();
      v140 = v139;
      v141 = *(v132 + 8);
      v141(v54, v41);
      v142 = sub_2295A3E30(v138, v140, v177);

      *(v136 + 4) = v142;
      _os_log_impl(&dword_229538000, v134, v135, "No changes for attributes to monitor %s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x22AAD4E50](v137, -1, -1);
      MEMORY[0x22AAD4E50](v136, -1, -1);

      swift_unknownObjectRelease();
      (*(v146 + 8))(v167, v157);
      v141(v154, v41);
    }

    else
    {

      swift_unknownObjectRelease();
      v144 = *(v132 + 8);
      v144(v54, v41);
      (*(v146 + 8))(v131, v157);
      v144(v133, v41);
    }

    return;
  }

  if (!*(v52 + 16))
  {
    goto LABEL_78;
  }

LABEL_27:
  v55 = v1[17];

  v56 = sub_2297612DC(v153, v55);

  sub_229839DAC(v57, v56);
  v158 = v58;
  sub_229839DAC(v52, v50);
  v60 = sub_22974C758(v59);

  v61 = sub_229672A80(v60);

  if ((v61 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    sub_22959E62C(&qword_27D87E460, &qword_281401770, 0x277CCABB0);
    sub_22A4DDBAC();
    v61 = v172;
    v62 = v173;
    v63 = v174;
    v64 = v175;
    v65 = v176;
  }

  else
  {
    v64 = 0;
    v66 = -1 << *(v61 + 32);
    v62 = v61 + 56;
    v63 = ~v66;
    v67 = -v66;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v65 = (v68 & *(v61 + 56));
  }

  v145 = v63;
  v69 = (v63 + 64) >> 6;
  v162 = v158 & 0xC000000000000001;
  v70 = v158 & 0xFFFFFFFFFFFFFF8;
  if (v158 < 0)
  {
    v70 = v158;
  }

  v156 = v70;
  v150 = v158 + 56;
  v161 = v61;
  v160 = v62;
  v159 = (v63 + 64) >> 6;
LABEL_37:
  if (v61 < 0)
  {
    v76 = sub_22A4DE12C();
    if (!v76)
    {
      goto LABEL_65;
    }

    v170 = v76;
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    swift_dynamicCast();
    v74 = v64;
    v75 = v65;
    v167 = v171;
    if (!v171)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v72 = v64;
    v73 = v65;
    v74 = v64;
    if (!v65)
    {
      while (1)
      {
        v74 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_83;
        }

        if (v74 >= v69)
        {
          break;
        }

        v73 = *(v62 + 8 * v74);
        ++v72;
        if (v73)
        {
          goto LABEL_42;
        }
      }

LABEL_65:

      sub_22953EE84(v61);
      v97 = v153;
      if (v147)
      {
        v98 = sub_22A4DE0EC();
      }

      else
      {
        v98 = *(v153 + 16);
      }

      v99 = v155;
      v100 = v148;
      v101 = v152;
      if (v98)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_229541CB0(v149, &off_283CE36C8);
        v102 = v151;
        (*(v151 + 16))(v101, v154, v99);
        v103 = sub_22A4DD05C();
        v104 = sub_22A4DDCCC();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v171 = v106;
          *v105 = 136315138;
          sub_229763570(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v107 = sub_22A4DE5CC();
          v108 = v101;
          v110 = v109;
          (*(v102 + 8))(v108, v99);
          v111 = sub_2295A3E30(v107, v110, &v171);

          *(v105 + 4) = v111;
          _os_log_impl(&dword_229538000, v103, v104, "Shutting down matter device controller %s as its no longer needed", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v106);
          v112 = v106;
          v44 = v163;
          MEMORY[0x22AAD4E50](v112, -1, -1);
          MEMORY[0x22AAD4E50](v105, -1, -1);
        }

        else
        {

          (*(v102 + 8))(v101, v99);
        }

        (*(v146 + 8))(v100, v157);
        [v44 shutdown];
        swift_unknownObjectRelease();
        v1[16] = 0;
        swift_unknownObjectRelease();
        v97 = v153;
      }

      v1[17] = v97;

      (*(v151 + 8))(v154, v99);
      return;
    }

LABEL_42:
    v75 = (v73 - 1) & v73;
    v167 = *(*(v61 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v73)))));
    if (!v167)
    {
      goto LABEL_65;
    }
  }

  v166 = v75;
  v171 = MEMORY[0x277D84F90];
  if (v162)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
    sub_22A4DDBAC();
    v77 = v177[0];
    v78 = v177[1];
    v79 = v177[2];
    v80 = v177[3];
    v81 = v177[4];
  }

  else
  {
    v82 = -1 << *(v158 + 32);
    v79 = ~v82;
    v83 = -v82;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    else
    {
      v84 = -1;
    }

    v81 = v84 & *(v158 + 56);

    v80 = 0;
    v78 = v150;
  }

  v85 = v167;
  v165 = v79;
  v86 = (v79 + 64) >> 6;
  v168 = v77;
  while (v77 < 0)
  {
    v92 = sub_22A4DE12C();
    if (!v92 || (v169 = v92, sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58), swift_dynamicCast(), v91 = v170, v89 = v80, v90 = v81, !v170))
    {
LABEL_36:
      sub_22953EE84(v168);
      v71 = sub_229672AB0(v171);

      v44 = v163;
      v1 = v164;
      sub_229755CDC(v85, v163, v71);

      v64 = v74;
      v65 = v166;
      v61 = v161;
      v62 = v160;
      v69 = v159;
      goto LABEL_37;
    }

LABEL_63:
    v93 = [v91 nodeID];
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v94 = sub_22A4DDEDC();

    v95 = MEMORY[0x277D84FA0];
    if (v94)
    {
      v96 = [v91 attributePaths];
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      v85 = v167;
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v95 = sub_22A4DDB6C();
    }

    sub_2296F0D2C(v95);
    v80 = v89;
    v81 = v90;
    v77 = v168;
  }

  v87 = v80;
  v88 = v81;
  v89 = v80;
  if (v81)
  {
LABEL_59:
    v90 = (v88 - 1) & v88;
    v91 = *(*(v77 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));
    if (!v91)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v86)
    {
      goto LABEL_36;
    }

    v88 = *(v78 + 8 * v89);
    ++v87;
    if (v88)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_229755CDC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v59[-v16];
  if ((a3 & 0xC000000000000001) != 0)
  {
    v18 = sub_22A4DE0EC();
  }

  else
  {
    v18 = *(a3 + 16);
  }

  swift_beginAccess();
  v19 = *(v4 + 144);

  v20 = sub_22974C69C(a1, v19);

  if (v20)
  {
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = [a2 deviceFor_];
    if (!v18)
    {
LABEL_14:
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v24 = a1;
      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCCC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = v20;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v24;
        *v29 = v24;
        v30 = v24;
        _os_log_impl(&dword_229538000, v25, v26, "No longer monitoring nodeID: %@", v28, 0xCu);
        sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v29, -1, -1);
        v31 = v28;
        v20 = v27;
        MEMORY[0x22AAD4E50](v31, -1, -1);
      }

      (*(v64 + 8))(v12, v65);
      [v20 removeDelegate_];
      swift_beginAccess();
      sub_2297FD4B4(v24);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_beginAccess();
    v21 = *(v4 + 144);
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v22 = *(v4 + 144);
      }

      else
      {
        v22 = v21 & 0xFFFFFFFFFFFFFF8;
      }

      swift_unknownObjectRetain_n();
      v23 = sub_22A4DE0EC();
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return;
      }

      *(v4 + 144) = sub_22975DE14(v22, v23 + 1);
    }

    else
    {
      swift_unknownObjectRetain_n();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v4 + 144);
    sub_2295AB888(v20, a1, isUniquelyReferenced_nonNull_native);
    *(v4 + 144) = v66;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v4 + 200);
    v34 = swift_getObjectType();
    v35 = (*(v33 + 88))(v4, v34, v33);
    swift_unknownObjectRelease();
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v36 = a1;

    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCCC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61 = v40;
      v62 = swift_slowAlloc();
      v67[0] = v62;
      *v39 = 138412546;
      *(v39 + 4) = v36;
      *v40 = v36;
      *(v39 + 12) = 2080;
      v63 = v20;
      v60 = v38;
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v41 = v36;
      v42 = sub_22A4DDB7C();
      v44 = sub_2295A3E30(v42, v43, v67);

      *(v39 + 14) = v44;
      v20 = v63;
      _os_log_impl(&dword_229538000, v37, v60, "Now monitoring nodeID: %@ for %s", v39, 0x16u);
      v45 = v61;
      sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      v46 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    (*(v64 + 8))(v17, v65);
    v47 = sub_22975E184(a3, sub_229716310, sub_229715AD4);
    sub_22986A0C0(v47);

    v48 = sub_22A4DD81C();

    [v20 addDelegate:v4 queue:v35 interestedPathsForAttributes:v48 interestedPathsForEvents:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v49 = a1;

    v50 = sub_22A4DD05C();
    v51 = sub_22A4DDCEC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67[0] = v62;
      *v52 = 138412546;
      *(v52 + 4) = v49;
      *v53 = v49;
      *(v52 + 12) = 2080;
      v63 = v20;
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v54 = v49;
      v55 = sub_22A4DDB7C();
      v57 = sub_2295A3E30(v55, v56, v67);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_229538000, v50, v51, "No queue to monitor nodeID: %@ for %s", v52, 0x16u);
      sub_22953EAE4(v53, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v53, -1, -1);
      v58 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v52, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v64 + 8))(v15, v65);
  }
}

void sub_2297564E4()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v52 = v1 + 64;
  v53 = v1;
  for (i = v6; ; v6 = i)
  {
    if (!v5)
    {
      do
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_72;
        }

        if (v8 >= v6)
        {

          return;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
      }

      while (!v5);
      v7 = v8;
    }

    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v56 = *(*(v1 + 56) + v9);
    v58 = *(*(v1 + 48) + 8 * v9);
    v10 = [v58 actions];
    sub_229562F68(0, &qword_27D880928, off_278666018);
    v11 = sub_22A4DD83C();

    v59 = v11;
    if (v11 >> 62)
    {
      break;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_65:

    if ((v56 & 1) == 0)
    {
      v47 = 1;
LABEL_67:
      swift_beginAccess();
      v48 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(v60 + 208);
      *(v60 + 208) = 0x8000000000000000;
      sub_2295ABA04(v47, v48, isUniquelyReferenced_nonNull_native);

      *(v60 + 208) = v61;
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = *(v60 + 200);
        ObjectType = swift_getObjectType();
        (*(v50 + 40))(v48, v47, v60, ObjectType, v50);
        swift_unknownObjectRelease();
      }
    }

LABEL_4:
    v5 &= v5 - 1;
  }

  v12 = sub_22A4DE0EC();
  if (!v12)
  {
    goto LABEL_65;
  }

LABEL_12:
  v13 = 0;
  v57 = v12;
  while (1)
  {
    if ((v59 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AAD13F0](v13, v59);
    }

    else
    {
      if (v13 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v15 = *(v59 + 32 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_73;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v18 = [v16 type];
    if (v18 > 2)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_60;
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
LABEL_58:

        if ((v56 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      sub_229756B74(v26);
    }

    else
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (!v28)
      {
        goto LABEL_60;
      }

      v27 = sub_229763134(v28);
    }

    v14 = v27;

    if ((v14 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_14:
    if (v13 == v12)
    {
      goto LABEL_65;
    }
  }

  if (v18 == 3)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {
      goto LABEL_58;
    }

    v30 = v29;
    v31 = [v29 isNaturalLightingEnabled];
    v32 = [v30 lightProfile];
    if (!v32)
    {
      goto LABEL_60;
    }

    v33 = v32;
    v34 = v16;
    v35 = [v32 isNaturalLightingEnabled];

    v36 = v31 == v35;
LABEL_52:
    v12 = v57;
    if (!v36)
    {
      goto LABEL_61;
    }

    goto LABEL_14;
  }

  if (v18 == 4)
  {
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
      goto LABEL_58;
    }

    v38 = v37;
    v39 = [v37 targetSleepWakeState];
    v40 = [v38 accessory];
    if (!v40)
    {
LABEL_60:

LABEL_61:

      if ((v56 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_62:
      v47 = 0;
      goto LABEL_67;
    }

    v41 = v40;
    v42 = v16;
    v43 = [v40 mediaProfile];

    v44 = [v43 mediaSession];
    if (!v44)
    {

      goto LABEL_61;
    }

    v45 = [v44 state];

    v46 = [v45 sleepWakeState];
    v36 = v39 == v46;
    goto LABEL_52;
  }

  if (v18 != 5)
  {
    goto LABEL_60;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    goto LABEL_58;
  }

  v54 = v16;
  v20 = [v19 commands];
  sub_229562F68(0, &qword_27D880930, off_278666260);
  v21 = sub_22A4DD83C();

  if (v21 >> 62)
  {
    v22 = sub_22A4DE0EC();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  while (2)
  {
    if (v22 == v23)
    {

      v2 = v52;
      v1 = v53;
      v12 = v57;
      goto LABEL_14;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x22AAD13F0](v23, v21);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      goto LABEL_34;
    }

    if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }

    v25 = *(v21 + 8 * v23 + 32);
    if (!__OFADD__(v23, 1))
    {
LABEL_34:
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v24 = sub_229758B54(v25);

      ++v23;
      if ((v24 & 1) == 0)
      {

        v2 = v52;
        v1 = v53;
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void sub_229756B74(NSObject *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v104 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v104 - v10;
  MEMORY[0x28223BE20](v9);
  v107 = &v104 - v12;
  v119 = a1;
  v13 = [a1 mediaProfiles];
  v14 = sub_229562F68(0, &qword_27D880918, off_278666280);
  sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
  v15 = sub_22A4DDB6C();

  v110 = v3;
  v111 = v2;
  v108 = v8;
  v105 = v11;
  v113 = v14;
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v15 = v121[1];
    v16 = v121[2];
    v17 = v121[3];
    v18 = v121[4];
    v19 = v121[5];
  }

  else
  {
    v18 = 0;
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);
  }

  v112 = v17;
  v23 = (v17 + 64) >> 6;
  v114 = v15;
  v115 = v16;
  while (1)
  {
    if (v15 < 0)
    {
      v29 = sub_22A4DE12C();
      if (!v29 || (v120 = v29, swift_dynamicCast(), v28 = v121[0], v26 = v18, v27 = v19, !v121[0]))
      {
LABEL_45:
        sub_22953EE84(v15);
        return;
      }
    }

    else
    {
      v24 = v18;
      v25 = v19;
      v26 = v18;
      if (!v19)
      {
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            goto LABEL_45;
          }

          v25 = *(v16 + 8 * v26);
          ++v24;
          if (v25)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

LABEL_14:
      v27 = (v25 - 1) & v25;
      v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    v116 = v19;
    v117 = v18;
    v30 = [v28 mediaSession];
    if (!v30)
    {
      v63 = v106;
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v56 = v28;
      v57 = sub_22A4DD05C();
      v58 = sub_22A4DDCCC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v56;
        v61 = v56;
        _os_log_impl(&dword_229538000, v57, v58, "Expected media session for profile %@", v59, 0xCu);
        sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
        v62 = v60;
        v15 = v114;
        MEMORY[0x22AAD4E50](v62, -1, -1);
        MEMORY[0x22AAD4E50](v59, -1, -1);
      }

      else
      {
        v61 = v57;
        v57 = v56;
      }

      v82 = v110;
      v81 = v111;
      sub_22953EE84(v15);

      goto LABEL_65;
    }

    v31 = v30;
    v118 = v28;
    v32 = v119;
    v33 = [v119 playbackArchive];
    v34 = &selRef_startSubscriptionForHome_;
    if (v33)
    {
      break;
    }

LABEL_37:
    if ([v32 v34[54]])
    {
      v48 = [v32 v34[54]];
      v49 = [v31 v34[54]];
      v50 = [v49 playbackState];

      v46 = v48 == v50;
      v32 = v119;
      v34 = &selRef_startSubscriptionForHome_;
      if (!v46)
      {
        v63 = v105;
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v64 = v31;
        v65 = v32;
        v66 = v64;
        v67 = v65;
        v68 = sub_22A4DD05C();
        v69 = sub_22A4DDCDC();
        if (os_log_type_enabled(v68, v69))
        {
          v71 = swift_slowAlloc();
          *v71 = 134218240;
          *(v71 + 4) = [v67 state];

          *(v71 + 12) = 2048;
          v72 = [v66 state];
          v73 = [v72 playbackState];

          *(v71 + 14) = v73;
          _os_log_impl(&dword_229538000, v68, v69, "Expected playback state %ld does not match current media state %ld", v71, 0x16u);
          MEMORY[0x22AAD4E50](v71, -1, -1);
          sub_22953EE84(v15);
          v67 = v118;
        }

        else
        {

          sub_22953EE84(v15);
          v68 = v118;
        }

        v82 = v110;
        v81 = v111;

        goto LABEL_64;
      }
    }

    v51 = [v32 volume];
    if (v51)
    {
      v52 = v51;
      v53 = [v31 v34[54]];
      v54 = [v53 volume];

      if (!v54)
      {

LABEL_51:
        v63 = v108;
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v74 = v31;
        v66 = v52;
        v68 = sub_22A4DD05C();
        v75 = sub_22A4DDCDC();

        if (os_log_type_enabled(v68, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          LODWORD(v119) = v75;
          v78 = v77;
          *v76 = 138412546;
          *(v76 + 4) = v66;
          *v77 = v66;
          *(v76 + 12) = 2112;
          v66 = v66;
          v79 = [v74 v34[54]];
          v80 = [v79 volume];

          *(v76 + 14) = v80;
          v78[1] = v80;
          _os_log_impl(&dword_229538000, v68, v119, "Expected volume %@ does not match current media state %@", v76, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v78, -1, -1);
          MEMORY[0x22AAD4E50](v76, -1, -1);
          sub_22953EE84(v15);
        }

        else
        {

          sub_22953EE84(v15);
          v74 = v68;
          v68 = v118;
        }

        v82 = v110;
        v81 = v111;

LABEL_64:
LABEL_65:
        (*(v82 + 8))(v63, v81);
        return;
      }

      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v55 = sub_22A4DDEDC();

      if ((v55 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v18 = v26;
    v19 = v27;
  }

  v35 = v33;
  v36 = [v33 playbackSessionIdentifier];
  if (v36)
  {
    v37 = v36;
    v38 = sub_22A4DD5EC();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = [v31 state];
  v42 = [v41 mediaUniqueIdentifier];

  if (!v42)
  {
    v34 = &selRef_startSubscriptionForHome_;
    if (v40)
    {
      goto LABEL_57;
    }

    goto LABEL_35;
  }

  v43 = sub_22A4DD5EC();
  v45 = v44;

  v34 = &selRef_startSubscriptionForHome_;
  if (v40)
  {
    if (!v45)
    {
      goto LABEL_57;
    }

    v46 = v38 == v43 && v40 == v45;
    if (v46)
    {

      goto LABEL_36;
    }

    v47 = sub_22A4DE60C();

    if ((v47 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_35:

LABEL_36:
    v15 = v114;
    v16 = v115;
    v32 = v119;
    goto LABEL_37;
  }

  if (!v45)
  {
    goto LABEL_35;
  }

LABEL_57:

LABEL_58:
  v83 = v107;
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v84 = v35;
  v85 = v31;
  v86 = sub_22A4DD05C();
  v87 = sub_22A4DDCDC();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v121[0] = v119;
    *v88 = 136315394;
    v89 = [v84 playbackSessionIdentifier];
    v90 = v110;
    if (v89)
    {
      v91 = v89;
      v92 = sub_22A4DD5EC();
      v94 = v93;
    }

    else
    {
      v94 = 0xE300000000000000;
      v92 = 7104878;
    }

    v95 = sub_2295A3E30(v92, v94, v121);

    *(v88 + 4) = v95;
    *(v88 + 12) = 2080;
    v96 = [v85 state];
    v97 = [v96 mediaUniqueIdentifier];

    if (v97)
    {
      v98 = sub_22A4DD5EC();
      v100 = v99;

      v101 = v114;
    }

    else
    {
      v100 = 0xE300000000000000;
      v101 = v114;
      v98 = 7104878;
    }

    v102 = sub_2295A3E30(v98, v100, v121);

    *(v88 + 14) = v102;
    _os_log_impl(&dword_229538000, v86, v87, "Expected playback archive identifier %s does not match current media session identifier %s", v88, 0x16u);
    v103 = v119;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v103, -1, -1);
    MEMORY[0x22AAD4E50](v88, -1, -1);
    sub_22953EE84(v101);

    (*(v90 + 8))(v107, v111);
  }

  else
  {

    sub_22953EE84(v114);
    (*(v110 + 8))(v83, v111);
  }
}

uint64_t sub_229757764@<X0>(id *a1@<X0>, SEL *a3@<X2>, void *a4@<X8>)
{
  v4 = [*a1 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v5 = sub_22A4DD83C();

  v18 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_22A4DE0EC();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v15 = v8;
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        break;
      }

LABEL_6:
      ++v9;
      if (v7 == v6)
      {
        v8 = v15;
        goto LABEL_24;
      }
    }

    v13 = [v12 *a3];

    if (!v13)
    {
      goto LABEL_6;
    }

    MEMORY[0x22AAD09E0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v8 = v18;
  }

  while (v7 != v6);
LABEL_24:

  *a4 = v8;
  return result;
}