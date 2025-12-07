uint64_t sub_224CA1CC0(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v3 = sub_224DAAF28();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v119 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v126 = &v118 - v8;
  v9 = sub_224DAAF48();
  v122 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v121 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAAE38();
  v131 = *(v12 - 8);
  v132 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v124 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  *&v130 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v134 = &v118 - v20;
  v138 = sub_224DAC268();
  v21 = *(v138 - 8);
  v23 = MEMORY[0x28223BE20](v138, v22);
  v123 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v118 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v118 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v118 - v34;
  v36 = sub_224DA9908();
  v135 = *(v36 - 8);
  v136 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v133 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = &v118 - v41;
  v43 = sub_224DAAC58();
  v128 = *(v43 - 8);
  v129 = v43;
  MEMORY[0x28223BE20](v43, v44);
  v127 = (&v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = a1;
  sub_224DAC218();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v42, 1, v46) == 1)
  {
    sub_224A3311C(v42, &qword_27D6F56C0, &unk_224DB3580);
LABEL_7:
    v64 = v21;
    v65 = v138;
    (*(v21 + 16))(v31, v137, v138);
    v54 = sub_224DAB228();
    v66 = sub_224DAF288();
    if (!os_log_type_enabled(v54, v66))
    {

      (*(v64 + 8))(v31, v65);
      goto LABEL_11;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v139[0] = v68;
    *v67 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v69 = sub_224DAFD28();
    v70 = v64;
    v72 = v71;
    (*(v70 + 8))(v31, v65);
    v73 = sub_224A33F74(v69, v72, v139);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_224A2F000, v54, v66, "Cannot replicate an archive belonging to a local host %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    v63 = v67;
LABEL_9:
    MEMORY[0x22AA5EED0](v63, -1, -1);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CB0, &unk_224DBD700);
    sub_224A33088(&qword_27D6F5CB8, &qword_27D6F5CB0, &unk_224DBD700, &unk_224DB8AC8);
    swift_allocError();
    *v74 = 0;
    return swift_willThrow();
  }

  v118 = v9;
  sub_224DAA1F8();
  v49 = v48;
  (*(v47 + 8))(v42, v46);
  if (!v49)
  {
    goto LABEL_7;
  }

  sub_224DA9888();

  v51 = v135;
  v50 = v136;
  v52 = v21;
  if ((*(v135 + 48))(v35, 1, v136) == 1)
  {
    sub_224A3311C(v35, &unk_27D6F5630, &unk_224DB34C0);
    v53 = v138;
    (*(v21 + 16))(v28, v137, v138);
    v54 = sub_224DAB228();
    v55 = sub_224DAF288();
    if (!os_log_type_enabled(v54, v55))
    {

      (*(v52 + 8))(v28, v53);
      goto LABEL_11;
    }

    v56 = swift_slowAlloc();
    v57 = v52;
    v58 = swift_slowAlloc();
    v139[0] = v58;
    *v56 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v59 = sub_224DAFD28();
    v61 = v60;
    (*(v57 + 8))(v28, v53);
    v62 = sub_224A33F74(v59, v61, v139);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_224A2F000, v54, v55, "Cannot replicate an archive if we have a bad relationship ID %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x22AA5EED0](v58, -1, -1);
    v63 = v56;
    goto LABEL_9;
  }

  v76 = v133;
  (*(v51 + 32))(v133, v35, v50);
  v77 = v140;
  __swift_project_boxed_opaque_existential_1((v140 + 40), *(v140 + 64));
  v78 = v134;
  sub_224DAAC98();
  v79 = v130;
  sub_224A3796C(v78, v130, &qword_27D6F3320, &unk_224DBD6F0);
  v81 = v131;
  v80 = v132;
  if ((*(v131 + 48))(v79, 1, v132) == 1)
  {
    sub_224A3311C(v79, &qword_27D6F3320, &unk_224DBD6F0);
    v82 = v123;
    v83 = v138;
    (*(v52 + 16))(v123, v137, v138);
    v84 = sub_224DAB228();
    v85 = sub_224DAF288();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = v52;
      v88 = swift_slowAlloc();
      v139[0] = v88;
      *v86 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v89 = sub_224DAFD28();
      v91 = v90;
      (*(v87 + 8))(v82, v83);
      v92 = sub_224A33F74(v89, v91, v139);
      v50 = v136;

      *(v86 + 4) = v92;
      _os_log_impl(&dword_224A2F000, v84, v85, "Cannot replicate an archive if we have no relationship %{public}s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x22AA5EED0](v88, -1, -1);
      v93 = v86;
      v78 = v134;
      MEMORY[0x22AA5EED0](v93, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v82, v83);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CB0, &unk_224DBD700);
    sub_224A33088(&qword_27D6F5CB8, &qword_27D6F5CB0, &unk_224DBD700, &unk_224DB8AC8);
    swift_allocError();
    *v107 = 0;
    swift_willThrow();
    sub_224A3311C(v78, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v135 + 8))(v133, v50);
  }

  else
  {
    v94 = v124;
    (*(v81 + 32))(v124, v79, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    v95 = v77;
    v96 = swift_allocObject();
    v130 = xmmword_224DB3100;
    *(v96 + 16) = xmmword_224DB3100;
    sub_224DAAD98();
    (*(v81 + 8))(v94, v80);
    sub_224A3311C(v134, &qword_27D6F3320, &unk_224DBD6F0);
    v97 = v136;
    (*(v51 + 8))(v76, v136);
    v99 = v127;
    v98 = v128;
    *v127 = v96;
    v100 = v129;
    (*(v98 + 104))(v99, *MEMORY[0x277D46558], v129);
    v134 = sub_224B942B8(*(v95 + 32));
    v101 = v126;
    (*(v51 + 56))(v126, 1, 1, v97);
    sub_224DAAD38();
    v102 = v138;
    v139[3] = v138;
    v139[4] = sub_224CB0A6C(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
    (*(v52 + 16))(boxed_opaque_existential_1, v137, v102);
    v104 = v125;
    v105 = sub_224DAAD28();
    if (v104)
    {

      sub_224CB2720(v101, MEMORY[0x277D46780]);
      (*(v98 + 8))(v99, v100);
      return __swift_destroy_boxed_opaque_existential_1(v139);
    }

    else
    {
      v108 = v105;
      v109 = v101;
      v110 = v106;
      __swift_destroy_boxed_opaque_existential_1(v139);
      sub_224DA96C8();
      sub_224CB298C(v109, v119, MEMORY[0x277D46780]);
      v111 = v121;
      sub_224DAAEE8();
      sub_224A78024(v108, v110);
      sub_224CB2720(v109, MEMORY[0x277D46780]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v112 = v122;
      v113 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = v130;
      v115 = v118;
      (*(v112 + 16))(v114 + v113, v111, v118);
      v116 = v127;
      sub_224C6BB2C(v114, v127, v120);
      swift_setDeallocating();
      v117 = *(v112 + 8);
      v117(v114 + v113, v115);
      swift_deallocClassInstance();
      v117(v111, v115);
      return (*(v128 + 8))(v116, v129);
    }
  }
}

uint64_t sub_224CA2C54(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAB0B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF28();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v44 - v14;
  v52 = sub_224DAAF48();
  v46 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v16);
  v50 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v44 - v20;
  sub_224DAC218();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_224A3311C(v21, &qword_27D6F56C0, &unk_224DB3580);
  }

  sub_224DAA1F8();
  v26 = v25;
  result = (*(v23 + 8))(v21, v22);
  if (v26)
  {

    v27 = sub_224B942B8(*(v3 + 32));
    v29 = v28;
    v30 = sub_224DA9908();
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    sub_224DAAD38();
    v31 = sub_224DAC268();
    v51[3] = v31;
    v51[4] = sub_224CB0A6C(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, a1, v31);
    v33 = sub_224DAAD28();
    if (v2)
    {
      sub_224CB2720(v15, MEMORY[0x277D46780]);

      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {
      v35 = v33;
      v36 = v34;
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_224DA96C8();
      v44[2] = v27;
      v45 = v3;
      v44[1] = v29;
      sub_224CB298C(v15, v12, MEMORY[0x277D46780]);
      v37 = v50;
      sub_224DAAEE8();
      sub_224A78024(v35, v36);
      sub_224CB2720(v15, MEMORY[0x277D46780]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v38 = v46;
      v39 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_224DB3100;
      (*(v38 + 16))(v40 + v39, v37, v52);
      v42 = v47;
      v41 = v48;
      v43 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x277D46820], v49);
      __swift_project_boxed_opaque_existential_1((v45 + 40), *(v45 + 64));
      sub_224DAABF8();

      (*(v41 + 8))(v42, v43);
      return (*(v38 + 8))(v50, v52);
    }
  }

  return result;
}

uint64_t sub_224CA3234(uint64_t a1, void *a2)
{
  v4 = sub_224DAA428();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v13 = 0;
  (*(v5 + 104))(v8, *MEMORY[0x277CFA038], v4);
  (*(*(*(v10 + 8) + 8) + 56))(&v13, v8, a1, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224CA3378()
{
  v1 = v0;
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  (*(*(v3 + 8) + 80))(sub_224CB2950, v0, v2);
  v4 = v0[30];
  v5 = v1[31];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  v12 = v4;
  v13 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 80))(sub_224CB2950, v1, v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return sub_224CA3CE8();
}

void sub_224CA349C()
{
  sub_224CA35EC();
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_224CB29F4;
  *(v4 + 24) = v2;
  v6[4] = sub_224BC4B74;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_224A9B6F8;
  v6[3] = &block_descriptor_116;
  v5 = _Block_copy(v6);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_224CA39EC();
    sub_224CA3CE8();
  }
}

double sub_224CA35EC()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v1 = sub_224DA9E48();

  if (v1)
  {
    return result;
  }

  sub_224DAAAD8();
  swift_allocObject();
  sub_224DAAAC8();
  if (sub_224DAAAB8())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281365120);
    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Migrated replicator enabled state; client is enabled";
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
    sub_224DAAB28();
    sub_224DAAAA8();
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281365120);
    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Migrated replicator enabled state; client is disabled";
  }

  _os_log_impl(&dword_224A2F000, v4, v5, v7, v6, 2u);
  MEMORY[0x22AA5EED0](v6, -1, -1);
LABEL_8:

  sub_224DA9E68();
  sub_224DA9E58();

  return result;
}

uint64_t sub_224CA39EC()
{
  v1 = v0;
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9E18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  v2 = sub_224DAB488();

  v1[62] = v2;

  sub_224DA9E68();
  v3 = sub_224DA9DE8();

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365120);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3 & 1;
    _os_log_impl(&dword_224A2F000, v5, v6, "Remote Widgets initial enabled state is: %{BOOL,public}d", v7, 8u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  return sub_224DAAB28();
}

uint64_t sub_224CA3CE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  result = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v48[-1] - v5;
  v7 = v0[3];
  if (v7)
  {
    sub_224D8F43C();
    v8 = v0[61];
    v9 = qword_2813652D8;
    if ((*(v8 + qword_2813652D8) & 1) == 0)
    {
      *(v8 + qword_2813652D8) = 1;
      v10 = sub_224DAF128();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;

      sub_224D8E744(0, 0, v6, &unk_224DBD678, v11);

      v9 = qword_2813652D8;
    }

    v12 = v1[59];
    if ((*(v12 + v9) & 1) == 0)
    {
      *(v12 + v9) = 1;
      v13 = sub_224DAF128();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;

      sub_224D8E744(0, 0, v6, &unk_224DBD680, v14);

      v9 = qword_2813652D8;
    }

    v15 = v1[60];
    if ((*(v15 + v9) & 1) == 0)
    {
      *(v15 + v9) = 1;
      v16 = sub_224DAF128();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;

      sub_224D8E744(0, 0, v6, &unk_224DBD688, v17);

      v9 = qword_2813652D8;
    }

    v18 = v1[58];
    if ((*(v18 + v9) & 1) == 0)
    {
      *(v18 + v9) = 1;
      v19 = sub_224DAF128();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v18;

      sub_224D8E744(0, 0, v6, &unk_224DBD690, v20);
    }

    sub_224CA459C();
    sub_224CA46A4();
    sub_224CA4A1C();
    sub_224CA4D74();
    sub_224CA50CC();
    sub_224CA5424();
    sub_224CA577C();
    sub_224CA5AE0();
    sub_224CA5E48(v15, (v1 + 17), (v1 + 52), 1, 0, 0);
    v21 = v1[30];
    v22 = v1[31];
    v23 = __swift_project_boxed_opaque_existential_1(v1 + 27, v21);
    v49 = v21;
    v50 = *(v22 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
    sub_224CA5E48(v18, v48, (v1 + 52), 0, 0, 0);
    result = __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if ((v7 & 2) != 0)
  {
    sub_224D8F43C();
    v25 = v1[61];
    v26 = qword_2813652D8;
    if ((*(v25 + qword_2813652D8) & 1) == 0)
    {
      *(v25 + qword_2813652D8) = 1;
      v27 = sub_224DAF128();
      (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v25;

      sub_224D8E744(0, 0, v6, &unk_224DBD640, v28);

      v26 = qword_2813652D8;
    }

    v29 = v1[59];
    if ((*(v29 + v26) & 1) == 0)
    {
      *(v29 + v26) = 1;
      v30 = sub_224DAF128();
      (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v29;

      sub_224D8E744(0, 0, v6, &unk_224DBD648, v31);

      v26 = qword_2813652D8;
    }

    v32 = v1[60];
    if ((*(v32 + v26) & 1) == 0)
    {
      *(v32 + v26) = 1;
      v33 = sub_224DAF128();
      (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v32;

      sub_224D8E744(0, 0, v6, &unk_224DBD658, v34);

      v26 = qword_2813652D8;
    }

    v35 = v1[58];
    if ((*(v35 + v26) & 1) == 0)
    {
      *(v35 + v26) = 1;
      v36 = sub_224DAF128();
      (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v35;

      sub_224D8E744(0, 0, v6, &unk_224DBD660, v37);
    }

    v38 = sub_224DAF128();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DBD670, v39);

    sub_224CA675C();
    v40 = sub_224D8F378();
    sub_224CA6AC4(v40, 0);

    v41 = sub_224C9AA34(&qword_27D6F5668, &qword_224DBD770, &qword_281350FC0);
    sub_224CA6AC4(v41, 1);

    v42 = sub_224C9AA34(&qword_27D6F5668, &qword_224DBD770, &qword_281350FC0);
    sub_224CA6AC4(v42, 2);

    sub_224CA6E08(v1 + 17, v32, 0, 0);
    v43 = v1[30];
    v44 = v1[31];
    v45 = __swift_project_boxed_opaque_existential_1(v1 + 27, v43);
    v49 = v43;
    v50 = *(v44 + 8);
    v46 = __swift_allocate_boxed_opaque_existential_1(v48);
    (*(*(v43 - 8) + 16))(v46, v45, v43);

    sub_224CA6E08(v48, v35, sub_224CB0998, v1);

    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  return result;
}

double sub_224CA459C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_224DAF128();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_224D8E744(0, 0, v4, &unk_224DBD768, v6);

  return result;
}

double sub_224CA46A4()
{
  v20 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - v3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v6);
  v8 = &v19 - v7;
  v10 = v0[20];
  v9 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v10);
  v21 = (*(*(v9 + 8) + 48))(768, v10);
  v11 = v0[2];
  v22 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 104);
  v15[3] = *(v16 + 112);
  v15[4] = v14;
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);
  v17 = v19;
  sub_224DAB488();

  (*(v5 + 8))(v8, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA4A1C()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CD8, &qword_224DBD730);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  v19 = sub_224D968E0();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CE0, &qword_224DBD738);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351068, &qword_27D6F5CE0, &qword_224DBD738, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&qword_281351240, &qword_27D6F5CD8, &qword_224DBD730, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA4D74()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC0, &unk_224DBD710);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v19 = sub_224CE80BC();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&qword_281351258, &qword_27D6F5CC0, &unk_224DBD710, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA50CC()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &qword_224DBBB08);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  v19 = sub_224D5D8B8();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&qword_281351278, &unk_27D6F5360, &qword_224DBBB08, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA5424()
{
  v19 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
  v20 = sub_224D5D920(v9);
  v10 = v0[2];
  v21 = v10;
  v11 = sub_224DAF358();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v19;
  v14[2] = *(v19 + 104);
  v14[3] = *(v15 + 112);
  v14[4] = v13;
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0, MEMORY[0x277CBCD60]);
  v16 = v18;
  sub_224DAB488();

  (*(v5 + 8))(v8, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA577C()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &qword_224DBBB08);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v19 = sub_224DAD7A8();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&qword_281351278, &unk_27D6F5360, &qword_224DBBB08, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA5AE0()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v19 = sub_224DAD898();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA5E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v24 = a2;
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C88, &qword_224DBD6A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - v14;
  *&v28[0] = sub_224B93AC0();
  v16 = *(v6 + 16);
  v29 = v16;
  v17 = sub_224DAF358();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C90, &qword_224DBD6A8);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351198, &qword_27D6F5C90, &qword_224DBD6A8, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v24, v28);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  sub_224A39D14(v28, v19 + 24);
  v20 = v26;
  v21 = v27;
  *(v19 + 64) = v26;
  *(v19 + 72) = v21;
  sub_224A364AC(v20, v21);
  sub_224A33088(&qword_2813512D8, &qword_27D6F5C88, &qword_224DBD6A0, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224CA616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CA62A0, 0, 0);
}

uint64_t sub_224CA62A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 32), *(v0[3] + 56));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224CA63B4;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224CA63B4()
{

  return MEMORY[0x2822009F8](sub_224CA64B0, 0, 0);
}

uint64_t sub_224CA64B0()
{
  if (v0[2])
  {
    sub_224CA65E4(v0[2], *(v0[3] + 480));

    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_224CA63B4;
    v2 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v3 = v0[1];

    return v3();
  }
}

void sub_224CA65E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_224CB2870;
  *(v8 + 24) = v7;
  v10[4] = sub_224A8A838;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_224A9B6F8;
  v10[3] = &block_descriptor_38;
  v9 = _Block_copy(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

double sub_224CA675C()
{
  v18 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D08, &qword_224DBD798);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v19 = sub_224DADFD8();
  v9 = v0[2];
  v20 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5470, &qword_224DBD7A0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351128, &unk_27D6F5470, &qword_224DBD7A0, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v14 = v18;
  v13[2] = *(v18 + 104);
  v13[3] = *(v14 + 112);
  v13[4] = v12;
  sub_224A33088(&unk_2813512A0, &qword_27D6F5D08, &qword_224DBD798, MEMORY[0x277CBCD60]);
  v15 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA6AC4(uint64_t a1, int a2)
{
  v3 = v2;
  v22 = a2;
  v21 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CF8, &qword_224DBD778);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - v12;
  v23 = a1;
  v24 = v3[2];
  v14 = v24;
  v15 = sub_224DAF358();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D00, &unk_224DBD780);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_2813511B8, &qword_27D6F5D00, &unk_224DBD780, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v8, &qword_27D6F5090, &qword_224DB5C30);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v21;
  *(v18 + 16) = *(v21 + 104);
  *(v18 + 24) = *(v19 + 112);
  *(v18 + 32) = v17;
  *(v18 + 40) = v22;
  sub_224A33088(&qword_2813512F8, &qword_27D6F5CF8, &qword_224DBD778, MEMORY[0x277CBCD60]);
  sub_224DAB488();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224CA6E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v28 = a3;
  v26 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v31 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v10);
  v12 = &v26 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *&v32[0] = (*(*(v14 + 8) + 40))(768, v13);
  v15 = v4[2];
  v33 = v15;
  v16 = sub_224DAF358();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

  v18 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(a1, v32);
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = *(v26 + 104);
  v19[3] = *(v20 + 112);
  v19[4] = v18;
  sub_224A39D14(v32, (v19 + 5));
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v19[10] = v28;
  v19[11] = v23;
  v19[12] = v22;
  sub_224A364AC(v21, v23);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);

  v24 = v27;
  sub_224DAB488();

  (*(v31 + 8))(v12, v24);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

void sub_224CA71C8(uint64_t a1)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0) + 36));
    if (v10)
    {
      v11 = v10;
      sub_224BC2038(a1, v11);
    }

    else
    {
      sub_224BC25F4(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_224CA7320()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 43);
  __swift_destroy_boxed_opaque_existential_1(v0 + 52);

  return result;
}

uint64_t sub_224CA73D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));

  return v0;
}

uint64_t sub_224CA7480()
{
  sub_224CA73D0();

  return swift_deallocClassInstance();
}

unint64_t sub_224CA7514()
{
  sub_224DAF938();

  __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  v1 = sub_224DA9F68();
  MEMORY[0x22AA5D210](v1);

  return 0xD000000000000025;
}

uint64_t sub_224CA75F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224CA7634(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v35 - v9;
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  if (v16)
  {
    sub_224DA9888();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);

      v18 = sub_224DAB228();
      v19 = sub_224DAF288();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36 = v21;
        *v20 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v22 = sub_224DAFD28();
        v24 = sub_224A33F74(v22, v23, &v36);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_224A2F000, v18, v19, "Found remote host with an invalid relationship ID: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      return 0;
    }

    (*(v12 + 32))(v15, v10, v11);
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    sub_224DAAC98();
    v25 = sub_224DAAE38();
    if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
    {
      sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281365120);

      v27 = sub_224DAB228();
      v28 = sub_224DAF288();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v35;
        *v29 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
        v30 = sub_224DAFD28();
        v32 = sub_224A33F74(v30, v31, &v36);

        *(v29 + 4) = v32;
        _os_log_impl(&dword_224A2F000, v27, v28, "Found remote host for a missing relationship ID: %{public}s", v29, 0xCu);
        v33 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v33, -1, -1);
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      return 0;
    }

    (*(v12 + 8))(v15, v11);
    sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
  }

  return 1;
}

uint64_t sub_224CA7BC0(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365120);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_224A2F000, v5, v6, "Remote Widgets enabled state changed to: %{BOOL,public}d", v7, 8u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
  return sub_224DAAB28();
}

double sub_224CA7E28(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_224DAF128();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_224D8E744(0, 0, v5, &unk_224DBD748, v10);
  }

  return result;
}

uint64_t sub_224CA7F68()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  v2 = sub_224DAAC88();
  sub_224CA65E4(v2, v1[60]);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_224CA800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CA8140, 0, 0);
}

uint64_t sub_224CA8140()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 32), *(v0[3] + 56));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_224CA8254;
  v5 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224CA8254()
{

  return MEMORY[0x2822009F8](sub_224CA8350, 0, 0);
}

uint64_t sub_224CA8350()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    sub_224CB2510();
    sub_224CA65E4(v1, *(v2 + 480));

    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_224CA8254;
    v4 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v5 = v0[1];

    return v5();
  }
}

void sub_224CA8488(uint64_t a1, void *a2, uint64_t a3)
{
  v75 = a3;
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v74 = &v72 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v7);
  v79 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v76 = &v72 - v14;
  v88 = sub_224DAADC8();
  v15 = *(v88 - 1);
  v17 = MEMORY[0x28223BE20](v88, v16);
  v87 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v86 = &v72 - v20;
  v21 = sub_224DAAE38();
  v89 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v72 = &v72 - v27;
  *&v92[0] = a1;

  v28 = 0;
  sub_224CB0B14(v92);
  v29 = *&v92[0];
  v85 = *(*&v92[0] + 16);
  if (v85)
  {
    v30 = 0;
    v84 = v89 + 16;
    v83 = *MEMORY[0x277D46750];
    v82 = (v15 + 104);
    v31 = (v15 + 8);
    v81 = (v89 + 8);
    v32 = v88;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v33 = v29;
      (*(v89 + 16))(v24, v29 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v30, v21);
      v34 = v86;
      (*v82)(v86, v83, v32);
      v28 = v87;
      sub_224DAADD8();
      v35 = MEMORY[0x22AA59120](v34, v28);
      v36 = *v31;
      (*v31)(v28, v32);
      v36(v34, v32);
      if (v35)
      {
        break;
      }

      ++v30;
      (*v81)(v24, v21);
      v29 = v33;
      if (v85 == v30)
      {
        goto LABEL_6;
      }
    }

    v41 = v89;
    v42 = v72;
    (*(v89 + 32))(v72, v24, v21);
    (*(v41 + 56))(v42, 0, 1, v21);
    v43 = v77[20];
    v28 = v77[21];
    __swift_project_boxed_opaque_existential_1(v77 + 17, v43);
    (*(v28 + 4))(v90, 256, v43, v28);
    if (!*(&v91 + 1))
    {
      sub_224A3311C(v42, &qword_27D6F3320, &unk_224DBD6F0);
      v38 = &qword_27D6F50E0;
      v39 = &qword_224DB41A0;
      v40 = v90;
      goto LABEL_7;
    }

    v92[0] = v90[0];
    v92[1] = v90[1];
    v92[2] = v91;
    v44 = sub_224A86CAC();
    if (!v44)
    {
      sub_224A699F0(v92);
      v38 = &qword_27D6F3320;
      v39 = &unk_224DBD6F0;
      v40 = v42;
      goto LABEL_7;
    }

    v45 = 0;
    v87 = v44;
    v48 = v44[8];
    v46 = v44 + 8;
    v47 = v48;
    v49 = 1 << *(v46 - 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v47;
    v84 = (v49 + 63) >> 6;
    v85 = v46;
    v86 = (v73 + 16);
    v88 = (v73 + 8);
    v89 = v73 + 32;
    if ((v50 & v47) == 0)
    {
LABEL_14:
      if (v84 <= v45 + 1)
      {
        v53 = v45 + 1;
      }

      else
      {
        v53 = v84;
      }

      v54 = v53 - 1;
      v55 = v78;
      while (1)
      {
        v52 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v52 >= v84)
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          (*(*(v71 - 8) + 56))(v55, 1, 1, v71);
          v51 = 0;
          goto LABEL_22;
        }

        v51 = v85[v52];
        ++v45;
        if (v51)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);

      __break(1u);
      return;
    }

    while (1)
    {
      v52 = v45;
LABEL_21:
      v56 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v57 = v56 | (v52 << 6);
      v58 = v87;
      v59 = v73;
      v60 = v79;
      v61 = v80;
      (*(v73 + 16))(v79, *(v87 + 6) + *(v73 + 72) * v57, v80);
      v62 = *(*(v58 + 7) + 8 * v57);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v64 = *(v63 + 48);
      v65 = *(v59 + 32);
      v55 = v78;
      v65(v78, v60, v61);
      *(v55 + v64) = v62;
      (*(*(v63 - 8) + 56))(v55, 0, 1, v63);
      v66 = v62;
      v54 = v52;
LABEL_22:
      v67 = v76;
      sub_224A44E4C(v55, v76, &qword_27D6F4930, &unk_224DB8D00);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
      {
        break;
      }

      v69 = v79;
      v28 = v80;
      (*v89)(v79, v67, v80);
      v70 = v74;
      sub_224CA8E00(v69, v77 + 17, v74);
      sub_224C9ABA4(v70, v75, &qword_27D6F3828, &unk_224DBD6B0, MEMORY[0x277CFA0D8], &qword_27D6F5CE8, &unk_224DBD750, byte_27D6F5CF0, sub_224C6BB2C, sub_224CB287C);
      sub_224A3311C(v70, &qword_27D6F3828, &unk_224DBD6B0);
      (*v88)(v69, v28);
      v45 = v54;
      if (!v51)
      {
        goto LABEL_14;
      }
    }

    sub_224A699F0(v92);

    v38 = &qword_27D6F3320;
    v39 = &unk_224DBD6F0;
    v40 = v72;
  }

  else
  {
LABEL_6:

    v37 = v72;
    (*(v89 + 56))(v72, 1, 1, v21);
    v38 = &qword_27D6F3320;
    v39 = &unk_224DBD6F0;
    v40 = v37;
  }

LABEL_7:
  sub_224A3311C(v40, v38, v39);
}

uint64_t sub_224CA8E00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_224DAB8F8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    (*(v16 + 32))(v23, 768, v15, v16);
    if (v23[5])
    {
      v17 = sub_224A86CAC();
      sub_224A699F0(v23);
      if (v17)
      {
        if (v17[2])
        {
          v18 = sub_224A683FC(a1);
          if (v19)
          {
            v20 = *(v17[7] + 8 * v18);

LABEL_10:
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
            (*(*(v21 - 8) + 16))(a3, a1, v21);
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
            *(a3 + *(result + 36)) = v20;
            v22 = a3 + *(result + 40);
            *v22 = 0;
            *(v22 + 8) = 1;
            return result;
          }
        }
      }
    }

    else
    {
      sub_224A3311C(v23, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v20 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

double sub_224CA904C(uint64_t *a1, uint64_t a2)
{
  v40 = sub_224DACB98();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v11);
  v38 = &v30 - v12;
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(v13 + 16);
    v16 = v42;
    if (v15)
    {
      v17 = (v10 + 48);
      v35 = (v10 + 32);
      v34 = *MEMORY[0x277CF9BE8];
      v32 = (v3 + 8);
      v33 = (v3 + 104);
      v31 = (v10 + 8);
      v18 = v13 + 48;
      v19 = MEMORY[0x277CFA130];
      v36 = (v10 + 48);
      v37 = v9;
      do
      {
        v28 = *(v18 - 16);
        v44 = *(v18 - 8);
        v29 = *v19;
        swift_beginAccess();
        sub_224A3796C(v28 + v29, v9, &unk_27D6F5060, &qword_224DB5620);
        if ((*v17)(v9, 1, v16) == 1)
        {
          sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
        }

        else
        {
          v20 = v38;
          (*v35)(v38, v9, v16);
          v21 = Strong[46];
          v43 = Strong[48];
          __swift_project_boxed_opaque_existential_1(Strong + 43, v21);
          v22 = v39;
          v23 = v40;
          (*v33)(v39, v34, v40);
          v24 = v28;

          sub_224DAC728();

          v25 = v22;
          v9 = v37;
          v26 = v23;
          v16 = v42;
          (*v32)(v25, v26);
          v27 = v20;
          v17 = v36;
          (*v31)(v27, v16);
        }

        v18 += 24;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

void sub_224CA93E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
    MEMORY[0x22AA5C290](&v16);
    v7 = v16;
    v8 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v8 + 1))
    {
    }

    else
    {
      v14 = v7;
      v9 = sub_224DADF08();
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        while (v11 < *(v9 + 16))
        {
          v12 = (*(v3 + 16))(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
          v8 = MEMORY[0x22AA5E4C0](v12);
          sub_224CA95F8(v6, Strong, v14);
          ++v11;
          objc_autoreleasePoolPop(v8);
          (*(v3 + 8))(v6, v2);
          if (v10 == v11)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        objc_autoreleasePoolPop(v8);
        __break(1u);
      }

      else
      {
LABEL_8:
      }
    }
  }
}

void sub_224CA95F8(NSObject *a1, uint64_t a2, char *a3)
{
  v130 = a3;
  v124 = a2;
  v110 = sub_224DAB0B8();
  v118 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v4);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = MEMORY[0x28223BE20](v99, v7);
  v98 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v108 = &v96 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v114 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CD0, &qword_224DBD728);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = (&v96 - v17);
  v113 = sub_224DAAC58();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v19);
  v21 = (&v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_224DAC268();
  isa = v22[-1].isa;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v122 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v96 - v28;
  if (qword_2813516C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v30 = sub_224DAB258();
    v31 = __swift_project_value_buffer(v30, qword_281365120);
    v32 = *(isa + 16);
    v125 = a1;
    v32(v29, a1, v22);
    v123 = v31;
    a1 = sub_224DAB228();
    v33 = sub_224DAF278();
    v34 = os_log_type_enabled(a1, v33);
    v109 = v6;
    v121 = v21;
    v127 = v22;
    v111 = isa;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v112 = v18;
      v37 = v36;
      v128 = v36;
      *v35 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v38 = sub_224DAFD28();
      v40 = v39;
      v126 = *(isa + 8);
      v126(v29, v22);
      v41 = sub_224A33F74(v38, v40, &v128);

      v42 = v35;
      *(v35 + 4) = v41;
      _os_log_impl(&dword_224A2F000, a1, v33, "Reload completed for %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v43 = v37;
      v18 = v112;
      v21 = v121;
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);
    }

    else
    {

      v126 = *(isa + 8);
      v126(v29, v22);
    }

    __swift_project_boxed_opaque_existential_1((v124 + 176), *(v124 + 200));
    v44 = sub_224CE9F80(v130, v125);
    v46 = v113;
    v29 = v114;
    if (!v44)
    {
      break;
    }

    isa = v44;
    v47 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 >> 62)
    {
      v48 = sub_224DAF838();
      if (!v48)
      {
LABEL_37:

        return;
      }
    }

    else
    {
      v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_37;
      }
    }

    v100 = v47;
    v6 = 0;
    v119 = isa & 0xC000000000000001;
    v125 = v111 + 1;
    v116 = &v115[6];
    v106 = &v115[4];
    v105 = *MEMORY[0x277D46828];
    v104 = (v118 + 104);
    v103 = (v118 + 8);
    v107 = &v115[1];
    *&v45 = 136446466;
    v97 = v45;
    *(&v49 + 1) = 2;
    v102 = xmmword_224DB3100;
    *&v49 = 138543362;
    v96 = v49;
    v117 = isa;
    v118 = v48;
    v112 = v18;
    while (1)
    {
      if (v119)
      {
        v50 = MEMORY[0x22AA5DCC0](v6, isa);
      }

      else
      {
        if (v6 >= *(v100 + 16))
        {
          goto LABEL_34;
        }

        v50 = *(isa + 8 * v6 + 32);
      }

      a1 = v50;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v130 = (v6 + 1);
      v51 = v122;
      sub_224DABE58();
      sub_224CAA474(v18);
      v126(v51, v127);
      if ((*v116)(v18, 1, v46) == 1)
      {
        sub_224A3311C(v18, &qword_27D6F5CD0, &qword_224DBD728);
        v52 = sub_224DAB228();
        v53 = sub_224DAF278();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_224A2F000, v52, v53, "Variant has no remote destinations", v54, 2u);
          v55 = v54;
          v21 = v121;
          MEMORY[0x22AA5EED0](v55, -1, -1);
        }
      }

      else
      {
        (*v106)(v21, v18, v46);
        sub_224DABE68();
        v56 = v129;
        if (v129)
        {
          v57 = __swift_project_boxed_opaque_existential_1(&v128, v129);
          v58 = *(v56 - 8);
          MEMORY[0x28223BE20](v57, v57);
          v60 = &v96 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v58 + 16))(v60);
          sub_224A3311C(&v128, &unk_27D6F3CB0, &unk_224DB7860);
          sub_224DAEA88();
          (*(v58 + 8))(v60, v56);
          v61 = sub_224DA9878();
          (*(*(v61 - 8) + 56))(v29, 0, 1, v61);
        }

        else
        {
          sub_224A3311C(&v128, &unk_27D6F3CB0, &unk_224DB7860);
          v62 = sub_224DA9878();
          (*(*(v62 - 8) + 56))(v29, 1, 1, v62);
        }

        v63 = v108;
        sub_224A3796C(v29, v108, &qword_27D6F32B0, &qword_224DB3EA0);
        v22 = a1;
        v64 = sub_224DAB228();
        v65 = sub_224DAF2A8();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = v63;
          v101 = swift_slowAlloc();
          v128 = v101;
          *v66 = v97;
          v68 = v122;
          v115 = v22;
          sub_224DABE58();
          sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v69 = v127;
          v70 = sub_224DAFD28();
          v72 = v71;
          v73 = v68;
          v74 = v111;
          v126(v73, v69);
          v75 = sub_224A33F74(v70, v72, &v128);

          *(v66 + 4) = v75;
          *(v66 + 12) = 2082;
          sub_224A3796C(v67, v98, &qword_27D6F32B0, &qword_224DB3EA0);
          v76 = sub_224DAEE28();
          v78 = v77;
          sub_224A3311C(v67, &qword_27D6F32B0, &qword_224DB3EA0);
          v79 = sub_224A33F74(v76, v78, &v128);

          *(v66 + 14) = v79;
          v22 = v115;
          _os_log_impl(&dword_224A2F000, v64, v65, "Received local placeholder archive for %{public}s; created %{public}s", v66, 0x16u);
          v80 = v101;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v80, -1, -1);
          MEMORY[0x22AA5EED0](v66, -1, -1);
        }

        else
        {

          sub_224A3311C(v63, &qword_27D6F32B0, &qword_224DB3EA0);
          v74 = v111;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3580, &qword_224DB94A0);
        v81 = (LOBYTE(v74[10].isa) + 32) & ~LOBYTE(v74[10].isa);
        v82 = swift_allocObject();
        *(v82 + 16) = v102;
        sub_224DABE58();
        v83 = v109;
        v84 = v110;
        (*v104)(v109, v105, v110);
        v85 = v120;
        a1 = v121;
        sub_224D906AC(v82, v121, v83);
        if (v85)
        {
          (*v103)(v83, v84);
          swift_setDeallocating();
          v126((v82 + v81), v127);
          swift_deallocClassInstance();
          v86 = v85;
          v87 = sub_224DAB228();
          v88 = sub_224DAF288();

          if (os_log_type_enabled(v87, v88))
          {
            a1 = v85;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v89 = v96;
            v91 = v85;
            v92 = _swift_stdlib_bridgeErrorToNSError();
            *(v89 + 4) = v92;
            *v90 = v92;
            _os_log_impl(&dword_224A2F000, v87, v88, "Could not add placeholder to replicator: %{public}@", v89, 0xCu);
            sub_224A3311C(v90, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v90, -1, -1);
            MEMORY[0x22AA5EED0](v89, -1, -1);
          }

          v29 = v114;
          sub_224A3311C(v114, &qword_27D6F32B0, &qword_224DB3EA0);
          v21 = v121;
          v46 = v113;
          (*v107)(v121, v113);
          v120 = 0;
          v18 = v112;
        }

        else
        {
          v120 = 0;
          swift_setDeallocating();
          v126((v82 + v81), v127);
          swift_deallocClassInstance();

          (*v103)(v83, v84);
          v29 = v114;
          sub_224A3311C(v114, &qword_27D6F32B0, &qword_224DB3EA0);
          v46 = v113;
          (*v107)(a1, v113);
          v18 = v112;
          v21 = a1;
        }
      }

      isa = v117;
      ++v6;
      if (v130 == v118)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v93 = sub_224DAB228();
  v94 = sub_224DAF278();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_224A2F000, v93, v94, "Variant has no remotely hosted entries", v95, 2u);
    MEMORY[0x22AA5EED0](v95, -1, -1);
  }
}

uint64_t sub_224CAA474@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v32 - v4;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - v18;
  sub_224DAC218();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = &qword_27D6F56C0;
    v21 = &unk_224DB3580;
    v22 = v14;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_224DAA1F8();
    if (!v23)
    {
      (*(v16 + 8))(v19, v15);
      goto LABEL_8;
    }

    sub_224DA9888();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v26 = *(v7 + 32);
      v26(v10, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
      v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_224DB3100;
      v26((v28 + v27), v10, v6);
      (*(v16 + 8))(v19, v15);
      *a1 = v28;
      v29 = *MEMORY[0x277D46558];
      v30 = sub_224DAAC58();
      v31 = *(v30 - 8);
      (*(v31 + 104))(a1, v29, v30);
      return (*(v31 + 56))(a1, 0, 1, v30);
    }

    (*(v16 + 8))(v19, v15);
    v20 = &unk_27D6F5630;
    v21 = &unk_224DB34C0;
    v22 = v5;
  }

  sub_224A3311C(v22, v20, v21);
LABEL_8:
  v24 = sub_224DAAC58();
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

void sub_224CAA8A0(uint64_t a1, uint64_t a2)
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v2 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v3);
  v122 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v97 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v113 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v124 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v112 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v120 = &v97 - v25;
  v115 = sub_224DABE18();
  v26 = *(v115 - 8);
  v28 = MEMORY[0x28223BE20](v115, v27);
  v121 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v97 - v31;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v35);
    v36 = sub_224DABDB8();
    v37 = &v36[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v38 = *(v37 + 1);

    if (v38)
    {

LABEL_4:
      (*(v26 + 8))(v32, v115);
      return;
    }

    v118 = v2;
    v111 = v13;
    v39 = v34;
    v40 = v34[30];
    v41 = v34[31];
    __swift_project_boxed_opaque_existential_1(v39 + 27, v40);
    (*(*(v41 + 8) + 32))(&v127, 512, v40);
    if (!*(&v129 + 1))
    {
      (*(v26 + 8))(v32, v115);

      sub_224A3311C(&v127, &qword_27D6F50E0, &qword_224DB41A0);
      return;
    }

    v123 = v39;
    v130[0] = v127;
    v130[1] = v128;
    v131 = v129;
    v42 = sub_224A86CAC();
    if (!v42)
    {

      sub_224A699F0(v130);
      goto LABEL_4;
    }

    v110 = v32;
    v43 = 0;
    v101 = v42;
    v46 = v42[8];
    v44 = v42 + 8;
    v45 = v46;
    v47 = 1 << *(v44 - 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & v45;
    v50 = (v47 + 63) >> 6;
    v100 = v113 + 16;
    v116 = (v113 + 32);
    v109 = (v26 + 16);
    v108 = (v118 + 56);
    v107 = (v26 + 56);
    v106 = (v118 + 32);
    v98 = v26;
    v105 = (v26 + 32);
    v102 = (v113 + 8);
    v119 = v23;
    v51 = v120;
    v104 = v44;
    v103 = v50;
    v52 = v111;
    v99 = v9;
    v125 = v12;
    while (v49)
    {
      v53 = v43;
LABEL_23:
      v118 = (v49 - 1) & v49;
      v56 = __clz(__rbit64(v49)) | (v53 << 6);
      v57 = v101;
      v58 = v113;
      (*(v113 + 16))(v112, v101[6] + *(v113 + 72) * v56, v52);
      v59 = *(v57[7] + 8 * v56);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v61 = *(v60 + 48);
      v23 = v119;
      v62 = v52;
      (*(v58 + 32))();
      *&v23[v61] = v59;
      (*(*(v60 - 8) + 56))(v23, 0, 1, v60);
      v63 = v59;
      v51 = v120;
      v12 = v125;
LABEL_24:
      sub_224A44E4C(v23, v51, &qword_27D6F4930, &unk_224DB8D00);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v64 - 8) + 48))(v51, 1, v64) == 1)
      {

        sub_224A699F0(v130);
        (*(v98 + 8))(v110, v115);
        return;
      }

      (*v116)(v124, v51, v62);
      sub_224DAA238();
      v65 = v115;
      (*v109)(v121, v110, v115);
      v117 = *v108;
      v66 = v114;
      v117(v12, 1, 1, v114);
      v67 = type metadata accessor for HostDescriptorPredicate(0);
      v12[v67[5]] = 3;
      v12[v67[6]] = 3;
      v68 = v67[7];
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v69 - 8) + 56))(&v12[v68], 1, 1, v69);
      v70 = v67[8];
      v71 = *v107;
      (*v107)(&v125[v70], 1, 1, v65);
      v72 = v67[9];
      v73 = sub_224DAC268();
      (*(*(v73 - 8) + 56))(&v125[v72], 1, 1, v73);
      v74 = &v125[v67[10]];
      *v74 = 0;
      v74[8] = 1;
      sub_224A3311C(v125, &qword_27D6F3390, &qword_224DB35B8);
      (*v106)(v125, v122, v66);
      v117(v125, 0, 1, v66);
      sub_224A3311C(&v125[v70], &unk_27D6F6130, &unk_224DBB6A0);
      (*v105)(&v125[v70], v121, v65);
      v75 = &v125[v70];
      v12 = v125;
      v71(v75, 0, 1, v65);
      v76 = *(v67 - 1);
      (*(v76 + 56))(v12, 0, 1, v67);
      v77 = *(&v131 + 1);
      if (*(*(&v131 + 1) + 16))
      {
        v126 = 0;
        v78 = v99;
        sub_224A3796C(v12, v99, &qword_27D6F46D0, &unk_224DBD6D0);
        if ((*(v76 + 48))(v78, 1, v67) == 1)
        {
          v79 = sub_224A3311C(v78, &qword_27D6F46D0, &unk_224DBD6D0);
          v23 = v119;
        }

        else
        {
          v81 = *(v78 + v67[10] + 8);
          v79 = sub_224CB2720(v78, type metadata accessor for HostDescriptorPredicate);
          v23 = v119;
          if ((v81 & 1) == 0)
          {
            sub_224A3796C(v130, &v127, &qword_27D6F52B8, &unk_224DBB690);
            if (*(&v128 + 1))
            {
              __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
              v82 = sub_224DADE28();
              __swift_destroy_boxed_opaque_existential_1(&v127);
            }

            else
            {
              sub_224A3311C(&v127, &qword_27D6F52B8, &unk_224DBB690);
              v82 = MEMORY[0x277D84F90];
            }

            v84 = sub_224AE8AF4(v82);

            v126 = v84;
          }
        }

        MEMORY[0x28223BE20](v79, v80);
        *(&v97 - 2) = v12;

        v85 = sub_224A6C07C(sub_224CB2A08, (&v97 - 4), v77);
        v86 = swift_allocObject();
        *(v86 + 16) = 0;
        v87 = sub_224A6CF18(v85);

        MEMORY[0x28223BE20](v88, v89);
        *(&v97 - 4) = v12;
        *(&v97 - 3) = &v126;
        *(&v97 - 2) = v86;
        sub_224A6D2D0(sub_224CB2A24, (&v97 - 6), v87);

        swift_beginAccess();
        v90 = *(v86 + 16);

        sub_224A3311C(v12, &qword_27D6F46D0, &unk_224DBD6D0);
        if (v90)
        {
          if (v90 >> 62)
          {
            v91 = sub_224DAF838();
            if (v91)
            {
LABEL_37:
              v92 = 0;
              while (1)
              {
                if ((v90 & 0xC000000000000001) != 0)
                {
                  v93 = MEMORY[0x22AA5DCC0](v92, v90);
                }

                else
                {
                  if (v92 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_53;
                  }

                  v93 = *(v90 + 8 * v92 + 32);
                }

                v94 = v93;
                v95 = v92 + 1;
                if (__OFADD__(v92, 1))
                {
                  break;
                }

                v96 = MEMORY[0x22AA5E4C0]();
                sub_224CAB76C(v94, v124, v123);
                objc_autoreleasePoolPop(v96);

                ++v92;
                if (v95 == v91)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          else
          {
            v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v91)
            {
              goto LABEL_37;
            }
          }

LABEL_47:

          v12 = v125;
          v52 = v111;
          v23 = v119;
        }

        else
        {
          v52 = v111;
        }

        v51 = v120;
      }

      else
      {
        sub_224A3311C(v12, &qword_27D6F46D0, &unk_224DBD6D0);
        v52 = v111;
        v51 = v120;
        v23 = v119;
      }

      v49 = v118;
      (*v102)(v124, v52);
      v44 = v104;
      v50 = v103;
    }

    if (v50 <= v43 + 1)
    {
      v54 = v43 + 1;
    }

    else
    {
      v54 = v50;
    }

    v55 = v54 - 1;
    while (1)
    {
      v53 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v53 >= v50)
      {
        v62 = v52;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        (*(*(v83 - 8) + 56))(v23, 1, 1, v83);
        v118 = 0;
        v43 = v55;
        goto LABEL_24;
      }

      v49 = v44[v53];
      ++v43;
      if (v49)
      {
        v43 = v53;
        goto LABEL_23;
      }
    }

LABEL_54:
    __break(1u);
  }
}

uint64_t sub_224CAB76C(void *a1, uint64_t a2, uint64_t *a3)
{
  v82 = *a3;
  v6 = sub_224DAB0B8();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v71 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v10 = MEMORY[0x28223BE20](v68, v9);
  v67 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v75 = &v64[-v14];
  MEMORY[0x28223BE20](v13, v15);
  v77 = &v64[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v64[-v19];
  v76 = sub_224DAC268();
  v21 = *(v76 - 8);
  v23 = MEMORY[0x28223BE20](v76, v22);
  v69 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v64[-v26];
  v28 = [a1 widget];
  v29 = [a1 metrics];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v31 = *(v30 - 8);
  (*(v31 + 16))(v20, a2, v30);
  (*(v31 + 56))(v20, 0, 1, v30);
  sub_224DAC228();
  v74 = a3;
  v82 = v27;
  v32 = v70;
  sub_224DAC418();
  if (v32)
  {

    v70 = 0;
    v81 = 0;
    memset(v80, 0, sizeof(v80));
  }

  else
  {
    v70 = 0;
  }

  sub_224A3796C(v80, v78, &unk_27D6F3CB0, &unk_224DB7860);
  v34 = v76;
  v33 = v77;
  v35 = v69;
  if (v79)
  {
    __swift_project_boxed_opaque_existential_1(v78, v79);
    sub_224DAEA88();
    v36 = sub_224DA9878();
    (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    sub_224A3311C(v78, &unk_27D6F3CB0, &unk_224DB7860);
    v37 = sub_224DA9878();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
  }

  v38 = v75;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281365120);
  (*(v21 + 16))(v35, v82, v34);
  sub_224A3796C(v33, v38, &qword_27D6F32B0, &qword_224DB3EA0);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v78[0] = v66;
    *v42 = 136446466;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v43 = sub_224DAFD28();
    v45 = v44;
    v65 = v41;
    v46 = *(v21 + 8);
    v46(v35, v34);
    v47 = sub_224A33F74(v43, v45, v78);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = v75;
    sub_224A3796C(v75, v67, &qword_27D6F32B0, &qword_224DB3EA0);
    v49 = sub_224DAEE28();
    v51 = v50;
    v52 = v48;
    v53 = v46;
    v33 = v77;
    sub_224A3311C(v52, &qword_27D6F32B0, &qword_224DB3EA0);
    v54 = v49;
    v34 = v76;
    v55 = sub_224A33F74(v54, v51, v78);

    *(v42 + 14) = v55;
    _os_log_impl(&dword_224A2F000, v40, v65, "Received local snapshot archive for %{public}s; created %{public}s", v42, 0x16u);
    v56 = v66;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v56, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    sub_224A3311C(v38, &qword_27D6F32B0, &qword_224DB3EA0);
    v57 = v35;
    v53 = *(v21 + 8);
    v53(v57, v34);
  }

  v59 = v71;
  v58 = v72;
  v60 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D46828], v73);
  v61 = v82;
  v62 = sub_224CABF44(v82, v33, 1, v59);
  (*(v58 + 8))(v59, v60, v62);
  sub_224A3311C(v33, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A3311C(v80, &unk_27D6F3CB0, &unk_224DB7860);
  return v53(v61, v34);
}

double sub_224CABF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v4 = a3;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v45 = v4;
  v15 = sub_224CB262C(v4);
  v16 = qword_2813516C8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  v18 = __swift_project_value_buffer(v17, qword_281365120);
  v42 = *(v7 + 16);
  v42(v14, a1, v6);
  v43 = v18;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v39 = a1;
    v40 = v11;
    v21 = v7;
    v41 = v15;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47[0] = v23;
    v24 = 0xEB00000000726564;
    v25 = v45;
    *v22 = 136446466;
    v26 = 0xE800000000000000;
    v27 = 0x656E696C656D6974;
    v28 = 0xEF77656976657270;
    if (v25 != 3)
    {
      v28 = 0xEC0000006576696CLL;
    }

    if (v25 != 2)
    {
      v27 = 0x2D6C6F72746E6F63;
      v26 = v28;
    }

    v29 = 0x746F687370616E73;
    if (v25)
    {
      v24 = 0xE800000000000000;
    }

    else
    {
      v29 = 0x6C6F686563616C70;
    }

    if (v25 <= 1)
    {
      v30 = v29;
    }

    else
    {
      v30 = v27;
    }

    if (v25 <= 1)
    {
      v31 = v24;
    }

    else
    {
      v31 = v26;
    }

    v32 = sub_224A33F74(v30, v31, v47);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2082;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v33 = sub_224DAFD28();
    v35 = v34;
    v44 = *(v21 + 8);
    v44(v14, v6);
    v36 = sub_224A33F74(v33, v35, v47);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_224A2F000, v19, v20, "Requesting replication of %{public}s archive for key: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v22, -1, -1);

    a1 = v39;
  }

  else
  {

    v44 = *(v7 + 8);
    v44(v14, v6);
  }

  sub_224CA1CC0(a1, v46);

  return result;
}

void sub_224CAC608(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v34 - v13;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v38 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    v15 = sub_224DAC248();
    v16 = *(v3 + 8);
    v16(v14, v2);
    v17 = [v15 extensionIdentity];

    v18 = &v17[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v18 + 1))
    {
    }

    else
    {
      v37 = v16;
      v19 = v38;
      sub_224DAC838();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v20 = sub_224DAB258();
      __swift_project_value_buffer(v20, qword_281365120);
      (*(v3 + 16))(v7, v19, v2);
      v21 = sub_224DAB228();
      v22 = sub_224DAF2A8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v35 = v23;
        v36 = swift_slowAlloc();
        v39 = v36;
        *v23 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v24 = sub_224DAFD28();
        v26 = v25;
        v27 = v7;
        v28 = v37;
        v37(v27, v2);
        v29 = sub_224A33F74(v24, v26, &v39);

        v30 = v35;
        *(v35 + 1) = v29;
        v31 = v30;
        _os_log_impl(&dword_224A2F000, v21, v22, "Received local snapshot archive removal for %{public}s", v30, 0xCu);
        v32 = v36;
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x22AA5EED0](v32, -1, -1);
        MEMORY[0x22AA5EED0](v31, -1, -1);
      }

      else
      {

        v33 = v7;
        v28 = v37;
        v37(v33, v2);
      }

      sub_224CAC9D8(v19, 1);

      v28(v19, v2);
    }
  }
}

double sub_224CAC9D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = v26 - v11;
  v27 = v2;
  sub_224CB262C(v2);
  v13 = qword_2813516C8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  v15 = __swift_project_value_buffer(v14, qword_281365120);
  v29 = *(v5 + 16);
  v29(v12, a1, v4);
  v30 = v15;
  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v5;
    v19 = v18;
    v26[0] = swift_slowAlloc();
    v26[1] = v9;
    v32 = v26[0];
    *v19 = 136446210;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v20 = sub_224DAFD28();
    v22 = v21;
    v31 = *(v28 + 8);
    v31(v12, v4);
    v23 = sub_224A33F74(v20, v22, &v32);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_224A2F000, v16, v17, "Requesting deletion of archive for: %{public}s", v19, 0xCu);
    v24 = v26[0];
    __swift_destroy_boxed_opaque_existential_1(v26[0]);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {

    v31 = *(v5 + 8);
    v31(v12, v4);
  }

  sub_224CA2C54(a1);

  return result;
}

void sub_224CACFB0(uint64_t a1, uint64_t a2)
{
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v128 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v2);
  v131 = &v105 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v119 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v105 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v121 = *(v124 - 8);
  v12 = MEMORY[0x28223BE20](v124, v11);
  v134 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v120 = &v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v123 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v129 = &v105 - v21;
  v132 = sub_224DACB98();
  v22 = *(v132 - 1);
  MEMORY[0x28223BE20](v132, v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DACC88();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_224DAB0B8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v31);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_224DABE18();
  v108 = *(v125 - 8);
  v35 = MEMORY[0x28223BE20](v125, v34);
  v130 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v105 - v38;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v133 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
  MEMORY[0x22AA5BB00]();
  sub_224DAD788();
  sub_224DACC68();
  (*(v27 + 8))(v30, v26);
  sub_224A6B3FC(v33);
  (*(v22 + 8))(v25, v132);
  v41 = sub_224DABDB8();
  v42 = &v41[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v43 = *(v42 + 1);

  if (v43)
  {

LABEL_4:
    (*(v108 + 8))(v39, v125);
LABEL_5:
    (*(v106 + 8))(v33, v107);
    return;
  }

  v44 = v133[20];
  v45 = v133[21];
  __swift_project_boxed_opaque_existential_1(v133 + 17, v44);
  (*(v45 + 32))(&v137, 512, v44, v45);
  if (!*(&v139 + 1))
  {
    (*(v108 + 8))(v39, v125);

    sub_224A3311C(&v137, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_5;
  }

  v140[0] = v137;
  v140[1] = v138;
  v141 = v139;
  v46 = sub_224A86CAC();
  if (!v46)
  {

    sub_224A699F0(v140);
    goto LABEL_4;
  }

  v118 = v39;
  v132 = v33;
  v47 = 0;
  v110 = v46;
  v50 = v46[8];
  v48 = v46 + 8;
  v49 = v50;
  v51 = 1 << *(v48 - 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v49;
  v105 = (v51 + 63) >> 6;
  v109 = v121 + 16;
  v126 = (v121 + 32);
  v117 = (v108 + 16);
  v116 = (v128 + 56);
  v115 = (v108 + 56);
  v114 = (v128 + 32);
  v113 = (v108 + 32);
  v111 = (v121 + 8);
  v54 = v124;
  v55 = v123;
  v56 = v129;
  v112 = v48;
  v135 = v10;
  while (v53)
  {
    v57 = v47;
LABEL_24:
    v128 = (v53 - 1) & v53;
    v60 = __clz(__rbit64(v53)) | (v57 << 6);
    v61 = v110;
    v62 = v121;
    v63 = v120;
    (*(v121 + 16))(v120, v110[6] + *(v121 + 72) * v60, v54);
    v64 = *(v61[7] + 8 * v60);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v66 = *(v65 + 48);
    (*(v62 + 32))(v55, v63, v54);
    *(v55 + v66) = v64;
    (*(*(v65 - 8) + 56))(v55, 0, 1, v65);
    v67 = v64;
    v56 = v129;
LABEL_25:
    sub_224A44E4C(v55, v56, &qword_27D6F4930, &unk_224DB8D00);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v68 - 8) + 48))(v56, 1, v68) == 1)
    {

      sub_224A699F0(v140);
      (*(v108 + 8))(v118, v125);
      v33 = v132;
      goto LABEL_5;
    }

    (*v126)(v134, v56, v54);
    sub_224DAA238();
    v69 = v125;
    (*v117)(v130, v118, v125);
    v127 = *v116;
    v70 = v135;
    v71 = v122;
    v127(v135, 1, 1, v122);
    v72 = type metadata accessor for HostDescriptorPredicate(0);
    *(v70 + v72[5]) = 3;
    *(v70 + v72[6]) = 3;
    v73 = v72[7];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v74 - 8) + 56))(v70 + v73, 1, 1, v74);
    v75 = v72[8];
    v76 = *v115;
    (*v115)(&v135[v75], 1, 1, v69);
    v77 = v72[9];
    v78 = sub_224DAC268();
    (*(*(v78 - 8) + 56))(&v135[v77], 1, 1, v78);
    v79 = &v135[v72[10]];
    *v79 = 0;
    v79[8] = 1;
    sub_224A3311C(v135, &qword_27D6F3390, &qword_224DB35B8);
    (*v114)(v135, v131, v71);
    v127(v135, 0, 1, v71);
    sub_224A3311C(&v135[v75], &unk_27D6F6130, &unk_224DBB6A0);
    (*v113)(&v135[v75], v130, v69);
    v80 = &v135[v75];
    v81 = v135;
    v76(v80, 0, 1, v69);
    v82 = *(v72 - 1);
    (*(v82 + 56))(v81, 0, 1, v72);
    v83 = *(&v141 + 1);
    if (!*(*(&v141 + 1) + 16))
    {
      sub_224A3311C(v81, &qword_27D6F46D0, &unk_224DBD6D0);
LABEL_47:
      v54 = v124;
      v56 = v129;
      v55 = v123;
      goto LABEL_13;
    }

    v136 = 0;
    v84 = v81;
    v85 = v119;
    sub_224A3796C(v84, v119, &qword_27D6F46D0, &unk_224DBD6D0);
    if ((*(v82 + 48))(v85, 1, v72) == 1)
    {
      v86 = sub_224A3311C(v85, &qword_27D6F46D0, &unk_224DBD6D0);
      v88 = v135;
    }

    else
    {
      v89 = *(v85 + v72[10] + 8);
      v86 = sub_224CB2720(v85, type metadata accessor for HostDescriptorPredicate);
      v88 = v135;
      if ((v89 & 1) == 0)
      {
        sub_224A3796C(v140, &v137, &qword_27D6F52B8, &unk_224DBB690);
        if (*(&v138 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v137, *(&v138 + 1));
          v90 = sub_224DADE28();
          __swift_destroy_boxed_opaque_existential_1(&v137);
        }

        else
        {
          sub_224A3311C(&v137, &qword_27D6F52B8, &unk_224DBB690);
          v90 = MEMORY[0x277D84F90];
        }

        v92 = sub_224AE8AF4(v90);

        v136 = v92;
      }
    }

    MEMORY[0x28223BE20](v86, v87);
    *(&v105 - 2) = v88;

    v93 = sub_224A6C07C(sub_224A6CCF4, (&v105 - 4), v83);
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = sub_224A6CF18(v93);

    MEMORY[0x28223BE20](v96, v97);
    *(&v105 - 4) = v88;
    *(&v105 - 3) = &v136;
    *(&v105 - 2) = v94;
    sub_224A6D2D0(sub_224A6D3D0, (&v105 - 6), v95);

    swift_beginAccess();
    v98 = *(v94 + 16);

    sub_224A3311C(v88, &qword_27D6F46D0, &unk_224DBD6D0);
    if (!v98)
    {
      goto LABEL_47;
    }

    if (v98 >> 62)
    {
      v99 = sub_224DAF838();
      if (v99)
      {
LABEL_39:
        v100 = 0;
        while (1)
        {
          if ((v98 & 0xC000000000000001) != 0)
          {
            v101 = MEMORY[0x22AA5DCC0](v100, v98);
          }

          else
          {
            if (v100 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v101 = *(v98 + 8 * v100 + 32);
          }

          v102 = v101;
          v103 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            break;
          }

          v104 = MEMORY[0x22AA5E4C0]();
          sub_224CAE08C(v102, v134, v133, v132);
          objc_autoreleasePoolPop(v104);

          ++v100;
          if (v103 == v99)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v99)
      {
        goto LABEL_39;
      }
    }

LABEL_12:

    v54 = v124;
    v55 = v123;
    v56 = v129;
LABEL_13:
    (*v111)(v134, v54);
    v48 = v112;
    v53 = v128;
  }

  if (v105 <= v47 + 1)
  {
    v58 = v47 + 1;
  }

  else
  {
    v58 = v105;
  }

  v59 = v58 - 1;
  while (1)
  {
    v57 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v57 >= v105)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v91 - 8) + 56))(v55, 1, 1, v91);
      v128 = 0;
      v47 = v59;
      goto LABEL_25;
    }

    v53 = v48[v57];
    ++v47;
    if (v53)
    {
      v47 = v57;
      goto LABEL_24;
    }
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_224CAE08C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v62 = a4;
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v7 = MEMORY[0x28223BE20](v58, v6);
  v57 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7, v9);
  v61 = &v54[-v11];
  MEMORY[0x28223BE20](v10, v12);
  v64 = &v54[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v54[-v16];
  v69 = sub_224DAC268();
  v18 = *(v69 - 8);
  v20 = MEMORY[0x28223BE20](v69, v19);
  v59 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v54[-v23];
  v25 = [a1 widget];
  v26 = [a1 metrics];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v28 = *(v27 - 8);
  (*(v28 + 16))(v17, v63, v27);
  (*(v28 + 56))(v17, 0, 1, v27);
  sub_224DAC228();
  v63 = a3;
  v29 = v60;
  sub_224DAC418();
  if (v29)
  {

    v60 = 0;
    v68 = 0;
    memset(v67, 0, sizeof(v67));
  }

  else
  {
    v60 = 0;
  }

  sub_224A3796C(v67, v65, &unk_27D6F3CB0, &unk_224DB7860);
  v30 = v64;
  v31 = v61;
  if (v66)
  {
    __swift_project_boxed_opaque_existential_1(v65, v66);
    sub_224DAEA88();
    v32 = sub_224DA9878();
    (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    sub_224A3311C(v65, &unk_27D6F3CB0, &unk_224DB7860);
    v33 = sub_224DA9878();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  }

  v34 = v69;
  v35 = v59;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281365120);
  (*(v18 + 16))(v35, v24, v34);
  sub_224A3796C(v30, v31, &qword_27D6F32B0, &qword_224DB3EA0);
  v37 = sub_224DAB228();
  v38 = sub_224DAF2A8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v59 = v24;
    v40 = v39;
    v56 = swift_slowAlloc();
    v65[0] = v56;
    *v40 = 136446466;
    sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v55 = v38;
    v41 = sub_224DAFD28();
    v43 = v42;
    v44 = *(v18 + 8);
    v44(v35, v69);
    v45 = sub_224A33F74(v41, v43, v65);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    sub_224A3796C(v31, v57, &qword_27D6F32B0, &qword_224DB3EA0);
    v46 = sub_224DAEE28();
    v48 = v47;
    sub_224A3311C(v31, &qword_27D6F32B0, &qword_224DB3EA0);
    v49 = v46;
    v30 = v64;
    v50 = sub_224A33F74(v49, v48, v65);

    *(v40 + 14) = v50;
    v34 = v69;
    _os_log_impl(&dword_224A2F000, v37, v55, "Received local timeline archive update for %{public}s; created %{public}s", v40, 0x16u);
    v51 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v51, -1, -1);
    v52 = v40;
    v24 = v59;
    MEMORY[0x22AA5EED0](v52, -1, -1);
  }

  else
  {

    sub_224A3311C(v31, &qword_27D6F32B0, &qword_224DB3EA0);
    v44 = *(v18 + 8);
    v44(v35, v34);
  }

  sub_224CABF44(v24, v30, 2, v62);
  sub_224A3311C(v30, &qword_27D6F32B0, &qword_224DB3EA0);
  sub_224A3311C(v67, &unk_27D6F3CB0, &unk_224DB7860);
  return (v44)(v24, v34);
}

void sub_224CAE788(void *a1, uint64_t a2)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v43 = &v41 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v41 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong[20];
    v17 = Strong[21];
    __swift_project_boxed_opaque_existential_1(Strong + 17, v16);
    (*(v17 + 32))(v45, 514, v16, v17);
    if (v46)
    {
      if (*(v46 + 16))
      {

        v19 = sub_224B3DF0C(v18);

        v20 = sub_224A699F0(v45);
        MEMORY[0x28223BE20](v20, v21);
        *(&v41 - 2) = a1;
        v22 = sub_224B449EC(sub_224CB0AB4, (&v41 - 4), v19);

        if (v22)
        {

          return;
        }
      }

      else
      {
        sub_224A699F0(v45);
      }
    }

    else
    {
      sub_224A3311C(v45, &qword_27D6F50E0, &qword_224DB41A0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
    sub_224DAC838();
    v23 = sub_224DAC248();
    v24 = *(v4 + 8);
    v24(v14, v3);
    v25 = [v23 extensionIdentity];

    v26 = &v25[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v26 + 1))
    {
    }

    else
    {
      v41 = v25;
      v42 = v24;
      v27 = v43;
      sub_224DAC838();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281365120);
      (*(v4 + 16))(v8, v27, v3);
      v29 = sub_224DAB228();
      v30 = sub_224DAF2A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v44 = v32;
        *v31 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v33 = sub_224DAFD28();
        v35 = v34;
        v36 = v8;
        v37 = v42;
        v42(v36, v3);
        v38 = sub_224A33F74(v33, v35, &v44);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_224A2F000, v29, v30, "Received local timeline archive removal for %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x22AA5EED0](v32, -1, -1);
        v39 = v31;
        v27 = v43;
        MEMORY[0x22AA5EED0](v39, -1, -1);
      }

      else
      {

        v40 = v8;
        v37 = v42;
        v42(v40, v3);
      }

      sub_224CAC9D8(v27, 2);

      v37(v27, v3);
    }
  }
}

uint64_t sub_224CAEC48(id *a1, uint64_t a2)
{
  v3 = [*a1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  v7[2] = a2;
  v5 = sub_224B449EC(sub_224CB0AD4, v7, v4);

  return v5 & 1;
}

uint64_t sub_224CAED04(id *a1, uint64_t a2)
{
  v3 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v4 = sub_224DAF008();

  v7[2] = a2;
  v5 = sub_224B449EC(sub_224CB0AF4, v7, v4);

  return v5 & 1;
}

uint64_t sub_224CAEDC0(void **a1, void *a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v18[0] = v9;
  v11 = [v9 widget];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
  v18[2] = a2;
  sub_224DAC838();
  v12 = sub_224DAC248();
  v13 = *(v5 + 8);
  v19 = v4;
  v13(v8, v4);
  v18[1] = v10;
  LOBYTE(v9) = sub_224DAF6A8();

  if (v9)
  {
    v14 = [v18[0] metrics];
    sub_224DAC838();
    v15 = sub_224DAC258();
    v13(v8, v19);
    v16 = sub_224DAF6A8();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224CAEFB4(uint64_t a1, int a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v53 = a5;
  v54 = a4;
  v55 = a3;
  v47 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v48 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v46 = &v45 - v11;
  v12 = sub_224DAA428();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v51 = &v45 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3808, &qword_224DB4188);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v45 - v26;
  v52 = a1;
  sub_224A3796C(a1, &v45 - v26, &qword_27D6F3808, &qword_224DB4188);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v48;
    v28 = v49;
    v30 = v50;
    (*(v49 + 32))(v48, v27, v50);
    v31 = v55[3];
    v32 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v31);
    v56 = 0;
    (*(v13 + 104))(v17, *MEMORY[0x277CFA038], v12);
    (*(*(v32 + 8) + 56))(&v56, v17, v29, v31);
    (*(v13 + 8))(v17, v12);
    result = (*(v28 + 8))(v29, v30);
    v34 = v54;
    if (!v54)
    {
      return result;
    }

    return v34(v52);
  }

  v35 = v55;
  sub_224A44E4C(v27, v23, &qword_27D6F3828, &unk_224DBD6B0);
  if (v47)
  {
    v36 = v12;
    v37 = v13;
    v38 = v51;
    if (qword_27D6F2CE8 != -1)
    {
      swift_once();
    }

    v39 = *&v23[*(v20 + 36)];
    if (v39)
    {
      v39 = sub_224C92388(0xD000000000000024, 0x8000000224DCCB10, qword_27D6F71D0);
    }
  }

  else
  {
    v39 = *&v23[*(v20 + 36)];
    v40 = v39;
    v36 = v12;
    v37 = v13;
    v38 = v51;
  }

  (*(v37 + 104))(v38, *MEMORY[0x277CFA040], v36);
  if (v23[*(v20 + 40) + 8] == 1)
  {
    v41 = v39;
  }

  else
  {
    v41 = v39;
    v42 = v46;
    sub_224DAA418();
    result = (*(v37 + 48))(v42, 1, v36);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v37 + 8))(v38, v36);
    (*(v37 + 32))(v38, v42, v36);
  }

  v43 = v35[3];
  v44 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v43);
  v56 = v39;
  (*(*(v44 + 8) + 56))(&v56, v38, v23, v43);

  (*(v37 + 8))(v38, v36);
  result = sub_224A3311C(v23, &qword_27D6F3828, &unk_224DBD6B0);
  v34 = v54;
  if (v54)
  {
    return v34(v52);
  }

  return result;
}

void sub_224CAF52C(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DABDB8();
  v3 = sub_224DABDD8();
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_224B44674(Strong + 296, v7);

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_224A95C1C(v2, v3, v5);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }
}

void sub_224CAF5F8(uint64_t a1, uint64_t a2, char a3)
{
  v134 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v129 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v123 = &v120 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  MEMORY[0x28223BE20](v127, v7);
  v9 = &v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v125 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v126 = &v120 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v120 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v128 = &v120 - v22;
  v23 = sub_224DACB98();
  v131 = *(v23 - 8);
  v132 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v130 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v120 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v120 - v36;
  v38 = sub_224DAC268();
  v135 = *(v38 - 8);
  v136 = v38;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v124 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v120 - v44;
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v120 - v47;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a3)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v61 = sub_224DAB258();
      __swift_project_value_buffer(v61, qword_281365120);
      sub_224A3796C(v134, v30, &qword_27D6F56D8, &qword_224DBD790);
      v62 = sub_224DAB228();
      v63 = sub_224DAF2A8();
      v64 = os_log_type_enabled(v62, v63);
      v65 = Strong;
      if (v64)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v138[0] = v67;
        *v66 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v68 = sub_224DAFD28();
        v70 = v69;
        sub_224A3311C(v30, &qword_27D6F56D8, &qword_224DBD790);
        v71 = sub_224A33F74(v68, v70, v138);

        *(v66 + 4) = v71;
        _os_log_impl(&dword_224A2F000, v62, v63, "Received remote placeholder archive for %{public}s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x22AA5EED0](v67, -1, -1);
        MEMORY[0x22AA5EED0](v66, -1, -1);
      }

      else
      {

        sub_224A3311C(v30, &qword_27D6F56D8, &qword_224DBD790);
      }

      v97 = v130;
      v96 = v131;
      v98 = sub_224DAC248();
      v99 = [v98 extensionIdentity];

      __swift_project_boxed_opaque_existential_1((v65 + 176), *(v65 + 200));
      v100 = v132;
      (*(v96 + 104))(v97, *MEMORY[0x277CF9B60], v132);
      sub_224CEB668(v99, v97);

      (*(v96 + 8))(v97, v100);
      goto LABEL_33;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v138[0] = 0;
        v138[1] = 0xE000000000000000;
        sub_224DAF938();
        v137 = a3;
        sub_224DAFA48();
        MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
        sub_224DAFB58();
        __break(1u);
        return;
      }

      v72 = v134;
      (*(v135 + 16))(v48, v134, v136);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v73 = sub_224DAB258();
      __swift_project_value_buffer(v73, qword_281365120);
      sub_224A3796C(v72, v37, &qword_27D6F56D8, &qword_224DBD790);
      v74 = sub_224DAB228();
      v75 = sub_224DAF2A8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v138[0] = v77;
        *v76 = 136446210;
        sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v78 = sub_224DAFD28();
        v80 = v79;
        sub_224A3311C(v37, &qword_27D6F56D8, &qword_224DBD790);
        v81 = sub_224A33F74(v78, v80, v138);

        *(v76 + 4) = v81;
        _os_log_impl(&dword_224A2F000, v74, v75, "Received remote timeline archive for %{public}s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x22AA5EED0](v77, -1, -1);
        MEMORY[0x22AA5EED0](v76, -1, -1);
      }

      else
      {

        sub_224A3311C(v37, &qword_27D6F56D8, &qword_224DBD790);
      }

      v101 = Strong;
      __swift_project_boxed_opaque_existential_1((Strong + 344), *(Strong + 368));
      v102 = sub_224DAC248();
      v104 = v130;
      v103 = v131;
      v105 = v132;
      (*(v131 + 104))(v130, *MEMORY[0x277CF9B60], v132);
      sub_224DAC718();

      (*(v103 + 8))(v104, v105);
      v106 = sub_224DAC248();
      v107 = [v106 extensionIdentity];

      v108 = sub_224DAC248();
      v109 = [v108 kind];

      v110 = sub_224DAEE18();
      v112 = v111;

      __swift_project_boxed_opaque_existential_1((v101 + 296), *(v101 + 320));
      sub_224D99640(v107, v110, v112);

      (*(v135 + 8))(v48, v136);
      goto LABEL_33;
    }

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v49 = sub_224DAB258();
    __swift_project_value_buffer(v49, qword_281365120);
    sub_224A3796C(v134, v34, &qword_27D6F56D8, &qword_224DBD790);
    v50 = sub_224DAB228();
    v51 = sub_224DAF2A8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v121 = v52;
      v122 = swift_slowAlloc();
      v138[0] = v122;
      *v52 = 136446210;
      sub_224CB0A6C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v53 = v136;
      v54 = sub_224DAFD28();
      v56 = v55;
      sub_224A3311C(v34, &qword_27D6F56D8, &qword_224DBD790);
      v57 = sub_224A33F74(v54, v56, v138);

      v58 = v121;
      *(v121 + 1) = v57;
      v59 = v58;
      _os_log_impl(&dword_224A2F000, v50, v51, "Received remote snapshot archive for %{public}s", v58, 0xCu);
      v60 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x22AA5EED0](v60, -1, -1);
      MEMORY[0x22AA5EED0](v59, -1, -1);
    }

    else
    {

      sub_224A3311C(v34, &qword_27D6F56D8, &qword_224DBD790);
      v53 = v136;
    }

    v82 = v127;
    (*(v135 + 16))(v45, v134, v53);
    v83 = v128;
    sub_224DAC218();
    if (qword_27D6F2C98 != -1)
    {
      swift_once();
    }

    v84 = __swift_project_value_buffer(v4, qword_27D6F7198);
    v85 = v129;
    (*(v129 + 16))(v20, v84, v4);
    v86 = *(v85 + 56);
    v134 = v85 + 56;
    v127 = v86;
    (v86)(v20, 0, 1, v4);
    v87 = v82[12];
    sub_224A3796C(v83, v9, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3796C(v20, &v9[v87], &qword_27D6F56C0, &unk_224DB3580);
    v88 = *(v85 + 48);
    if (v88(v9, 1, v4) == 1)
    {
      sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3311C(v83, &qword_27D6F56C0, &unk_224DB3580);
      v89 = v88(&v9[v87], 1, v4);
      v90 = Strong;
      v92 = v130;
      v91 = v131;
      if (v89 == 1)
      {
        sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
        v93 = v132;
        v94 = v136;
LABEL_31:
        Strong = sub_224DAC248();
        sub_224DAC258();
        (v127)(v125, 1, 1, v4);
        v118 = v124;
        sub_224DAC228();
        v119 = v135;
        (*(v135 + 8))(v45, v94);
        (*(v119 + 32))(v45, v118, v94);
        goto LABEL_32;
      }
    }

    else
    {
      v95 = v126;
      sub_224A3796C(v9, v126, &qword_27D6F56C0, &unk_224DB3580);
      if (v88(&v9[v87], 1, v4) != 1)
      {
        v113 = v129;
        v114 = &v9[v87];
        v115 = v123;
        (*(v129 + 32))(v123, v114, v4);
        sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
        v116 = sub_224DAEDD8();
        v117 = *(v113 + 8);
        v117(v115, v4);
        sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v128, &qword_27D6F56C0, &unk_224DB3580);
        v117(v95, v4);
        sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
        v93 = v132;
        v90 = Strong;
        v92 = v130;
        v91 = v131;
        v94 = v136;
        if (v116)
        {
          goto LABEL_31;
        }

LABEL_32:
        __swift_project_boxed_opaque_existential_1((v90 + 256), *(v90 + 280));
        (*(v91 + 104))(v92, *MEMORY[0x277CF9B60], v93);
        sub_224D68DAC(v45, v92);
        (*(v91 + 8))(v92, v93);
        (*(v135 + 8))(v45, v94);
LABEL_33:

        return;
      }

      sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3311C(v128, &qword_27D6F56C0, &unk_224DB3580);
      (*(v129 + 8))(v95, v4);
      v90 = Strong;
      v92 = v130;
      v91 = v131;
    }

    sub_224A3311C(v9, &qword_27D6F33C8, &qword_224DB3600);
    v93 = v132;
    v94 = v136;
    goto LABEL_32;
  }
}

uint64_t sub_224CB05CC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3828, &unk_224DBD6B0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v15)
    {
    }

    else
    {
      sub_224CA8E00(a1, a3, v13);
      if (a4)
      {
        a4(v13);
      }

      sub_224C9ABA4(v13, a6, &qword_27D6F3828, &unk_224DBD6B0, MEMORY[0x277CFA0D8], &qword_27D6F5CE8, &unk_224DBD750, byte_27D6F5CF0, sub_224C6BB2C, sub_224CB287C);

      return sub_224A3311C(v13, &qword_27D6F3828, &unk_224DBD6B0);
    }
  }

  return result;
}

uint64_t sub_224CB077C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9E268(a1, v4, v5, v6);
}

uint64_t sub_224CB0830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9DDB4(a1, v4, v5, v6);
}

uint64_t sub_224CB08E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA616C(a1, v4, v5, v6);
}

uint64_t sub_224CB099C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9E268(a1, v4, v5, v6);
}

uint64_t sub_224CB0A6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224CB0B14(uint64_t *a1)
{
  v2 = *(sub_224DAAE38() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_224CB24E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_224CB0BBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_224CB0BBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_224DAFD18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_224DAAE38();
        v6 = sub_224DAF058();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_224DAAE38() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_224CB1088(v8, v9, a1, v4);
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
    return sub_224CB0CE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_224CB0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_224DA9908();
  v8 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65, v9);
  v64 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v63 = &v46 - v13;
  v14 = sub_224DAAE38();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v62 = &v46 - v20;
  result = MEMORY[0x28223BE20](v19, v21);
  v61 = &v46 - v24;
  v48 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v58 = (v8 + 8);
    v59 = v27;
    v57 = (v26 - 8);
    v60 = v26;
    v29 = (v25 + v28 * (a3 - 1));
    v53 = -v28;
    v54 = (v26 + 16);
    v30 = a1 - a3;
    v55 = v25;
    v47 = v28;
    v31 = v25 + v28 * a3;
    v32 = v63;
LABEL_5:
    v51 = v29;
    v52 = a3;
    v49 = v31;
    v50 = v30;
    v66 = v30;
    while (1)
    {
      v33 = v61;
      v34 = v59;
      v59(v61, v31, v14);
      v35 = v14;
      v36 = v62;
      v34(v62, v29, v35);
      sub_224DAAD98();
      v37 = v64;
      sub_224DAAD98();
      v67 = MEMORY[0x22AA57C30](v32, v37);
      v38 = *v58;
      v39 = v37;
      v40 = v65;
      (*v58)(v39, v65);
      v38(v32, v40);
      v41 = *v57;
      v42 = v36;
      v14 = v35;
      (*v57)(v42, v35);
      result = v41(v33, v35);
      if ((v67 & 1) == 0)
      {
LABEL_4:
        a3 = v52 + 1;
        v29 = &v51[v47];
        v30 = v50 - 1;
        v31 = v49 + v47;
        if (v52 + 1 == v48)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v43 = *v54;
      v44 = v56;
      (*v54)(v56, v31, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = v43(v29, v44, v35);
      v29 += v53;
      v31 += v53;
      if (__CFADD__(v66++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224CB1088(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v143 = a1;
  v165 = sub_224DA9908();
  v8 = *(v165 - 8);
  v10 = MEMORY[0x28223BE20](v165, v9);
  v164 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v163 = &v139 - v13;
  v14 = sub_224DAAE38();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v146 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v155 = &v139 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v162 = &v139 - v24;
  result = MEMORY[0x28223BE20](v23, v25);
  v166 = &v139 - v27;
  v28 = a3[1];
  v151 = a3;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_96:
    v14 = v30;
    v30 = *v143;
    if (!*v143)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v58 = v151;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_224CB23F0(v14);
      v14 = result;
    }

    v168 = v14;
    v135 = *(v14 + 16);
    if (v135 >= 2)
    {
      while (*v58)
      {
        v136 = *(v14 + 16 * v135);
        v137 = *(v14 + 16 * (v135 - 1) + 40);
        sub_224CB1C88(*v58 + *(v15 + 72) * v136, *v58 + *(v15 + 72) * *(v14 + 16 * (v135 - 1) + 32), *v58 + *(v15 + 72) * v137, v30);
        if (v5)
        {
        }

        if (v137 < v136)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_224CB23F0(v14);
        }

        if (v135 - 2 >= *(v14 + 16))
        {
          goto LABEL_122;
        }

        v138 = (v14 + 16 * v135);
        *v138 = v136;
        v138[1] = v137;
        v168 = v14;
        result = sub_224CB2364(v135 - 1);
        v14 = v168;
        v135 = *(v168 + 16);
        if (v135 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v139 = a4;
  v29 = 0;
  v159 = (v8 + 8);
  v160 = v15 + 16;
  v157 = (v15 + 32);
  v158 = (v15 + 8);
  v30 = MEMORY[0x277D84F90];
  v161 = v14;
  v142 = v15;
  while (1)
  {
    v31 = v29 + 1;
    if (v29 + 1 >= v28)
    {
      v47 = v29 + 1;
      v58 = v151;
    }

    else
    {
      v152 = v28;
      v140 = v30;
      v141 = v5;
      v32 = v29;
      v144 = v29;
      v33 = *v151;
      v167 = v33;
      v34 = *(v15 + 72);
      v35 = (v33 + v34 * v31);
      v36 = v14;
      v37 = *(v15 + 16);
      (v37)(v166, v35, v14);
      v38 = v162;
      v153 = v37;
      (v37)(v162, v33 + v34 * v32, v36);
      v39 = v163;
      sub_224DAAD98();
      v40 = v164;
      sub_224DAAD98();
      LODWORD(v154) = MEMORY[0x22AA57C30](v39, v40);
      v41 = *v159;
      v42 = v40;
      v43 = v165;
      (*v159)(v42, v165);
      v150 = v41;
      (v41)(v39, v43);
      v44 = *(v142 + 8);
      v30 = v158;
      v44(v38, v36);
      v149 = v44;
      result = (v44)(v166, v36);
      v45 = v144 + 2;
      v156 = v34;
      v46 = v167 + v34 * (v144 + 2);
      while (1)
      {
        v47 = v152;
        if (v152 == v45)
        {
          break;
        }

        v48 = v161;
        v49 = v153;
        v153();
        v50 = v162;
        v49(v162, v35, v48);
        v51 = v163;
        sub_224DAAD98();
        v52 = v164;
        sub_224DAAD98();
        LOBYTE(v167) = MEMORY[0x22AA57C30](v51, v52) & 1;
        LODWORD(v167) = v167;
        v53 = v52;
        v54 = v165;
        v55 = v35;
        v56 = v150;
        (v150)(v53, v165);
        v56(v51, v54);
        v30 = v158;
        v57 = v149;
        (v149)(v50, v48);
        result = v57(v166, v48);
        ++v45;
        v46 += v156;
        v35 = &v156[v55];
        if ((v154 & 1) != v167)
        {
          v47 = v45 - 1;
          goto LABEL_9;
        }
      }

      v5 = v141;
      v58 = v151;
      v15 = v142;
      v14 = v161;
      v29 = v144;
      if ((v154 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v47 < v144)
      {
        goto LABEL_125;
      }

      if (v144 < v47)
      {
        v59 = v47;
        v60 = v156 * (v47 - 1);
        v61 = v47 * v156;
        v152 = v47;
        v62 = v144;
        v63 = v144 * v156;
        do
        {
          if (v62 != --v59)
          {
            v64 = *v58;
            if (!v64)
            {
              goto LABEL_131;
            }

            v65 = *v157;
            (*v157)(v146, v64 + v63, v14);
            if (v63 < v60 || v64 + v63 >= (v64 + v61))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v65)(v64 + v60, v146, v14);
            v58 = v151;
          }

          ++v62;
          v60 -= v156;
          v61 -= v156;
          v63 += v156;
        }

        while (v62 < v59);
        v5 = v141;
        v15 = v142;
        v30 = v140;
        v29 = v144;
        v47 = v152;
      }

      else
      {
LABEL_23:
        v30 = v140;
      }
    }

    v66 = v58[1];
    if (v47 < v66)
    {
      if (__OFSUB__(v47, v29))
      {
        goto LABEL_124;
      }

      if (v47 - v29 < v139)
      {
        if (__OFADD__(v29, v139))
        {
          goto LABEL_126;
        }

        if (v29 + v139 >= v66)
        {
          v67 = v58[1];
        }

        else
        {
          v67 = v29 + v139;
        }

        if (v67 < v29)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v47 != v67)
        {
          break;
        }
      }
    }

    v68 = v47;
    if (v47 < v29)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_224AD92E0(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v70 = *(v30 + 2);
    v69 = *(v30 + 3);
    v71 = v70 + 1;
    v58 = v15;
    if (v70 >= v69 >> 1)
    {
      result = sub_224AD92E0((v69 > 1), v70 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v71;
    v72 = &v30[16 * v70];
    *(v72 + 4) = v29;
    *(v72 + 5) = v68;
    v73 = *v143;
    if (!*v143)
    {
      goto LABEL_133;
    }

    v147 = v68;
    if (v70)
    {
      v15 = v73;
      while (1)
      {
        v74 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v75 = *(v30 + 4);
          v76 = *(v30 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_55:
          if (v78)
          {
            goto LABEL_112;
          }

          v91 = &v30[16 * v71];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_115;
          }

          v97 = &v30[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_119;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v71 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v101 = &v30[16 * v71];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_69:
        if (v96)
        {
          goto LABEL_114;
        }

        v104 = &v30[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_117;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_76:
        v112 = v74 - 1;
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*v151)
        {
          goto LABEL_130;
        }

        v113 = *&v30[16 * v112 + 32];
        v114 = *&v30[16 * v74 + 40];
        sub_224CB1C88(*v151 + v58[9] * v113, *v151 + v58[9] * *&v30[16 * v74 + 32], *v151 + v58[9] * v114, v15);
        if (v5)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_224CB23F0(v30);
        }

        if (v112 >= *(v30 + 2))
        {
          goto LABEL_109;
        }

        v115 = &v30[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v168 = v30;
        result = sub_224CB2364(v74);
        v30 = v168;
        v71 = *(v168 + 16);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v30[16 * v71 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_110;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_111;
      }

      v86 = &v30[16 * v71];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_113;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_116;
      }

      if (v90 >= v82)
      {
        v108 = &v30[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_120;
        }

        if (v77 < v111)
        {
          v74 = v71 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v28 = v151[1];
    v29 = v147;
    v15 = v58;
    if (v147 >= v28)
    {
      goto LABEL_96;
    }
  }

  v140 = v30;
  v141 = v5;
  v116 = *v58;
  v117 = *(v15 + 72);
  v156 = *(v15 + 16);
  v118 = (v116 + v117 * (v47 - 1));
  v153 = -v117;
  v144 = v29;
  v119 = (v29 - v47);
  v154 = v116;
  v145 = v117;
  v120 = v116 + v47 * v117;
  v147 = v67;
LABEL_87:
  v152 = v47;
  v148 = v120;
  v149 = v119;
  v121 = v120;
  v150 = v118;
  v122 = v118;
  while (1)
  {
    v58 = v166;
    v123 = v156;
    (v156)(v166, v121, v14);
    v124 = v162;
    v123(v162, v122, v14);
    v125 = v163;
    sub_224DAAD98();
    v126 = v164;
    sub_224DAAD98();
    LODWORD(v167) = MEMORY[0x22AA57C30](v125, v126);
    v127 = *v159;
    v128 = v126;
    v129 = v165;
    (*v159)(v128, v165);
    v130 = v125;
    v14 = v161;
    v127(v130, v129);
    v131 = *v158;
    (*v158)(v124, v14);
    result = v131(v58, v14);
    if ((v167 & 1) == 0)
    {
LABEL_86:
      v47 = v152 + 1;
      v118 = &v150[v145];
      v119 = v149 - 1;
      v68 = v147;
      v120 = v148 + v145;
      if (v152 + 1 != v147)
      {
        goto LABEL_87;
      }

      v5 = v141;
      v15 = v142;
      v30 = v140;
      v29 = v144;
      if (v147 < v144)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v154)
    {
      break;
    }

    v132 = *v157;
    v133 = v155;
    (*v157)(v155, v121, v14);
    swift_arrayInitWithTakeFrontToBack();
    v132(v122, v133, v14);
    v122 = v153 + v122;
    v121 += v153;
    if (__CFADD__(v119++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_224CB1C88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = a3;
  v72 = sub_224DA9908();
  v7 = *(v72 - 8);
  v9 = MEMORY[0x28223BE20](v72, v8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v70 = &v60 - v12;
  v76 = sub_224DAAE38();
  v13 = *(v76 - 8);
  v15 = MEMORY[0x28223BE20](v76, v14);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v74 = &v60 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_61;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_62;
  }

  v23 = (a2 - a1) / v21;
  v80 = a1;
  v79 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v25;
    if (v25 >= 1)
    {
      v43 = -v21;
      v64 = (v7 + 8);
      v65 = (v13 + 16);
      v62 = a4;
      v63 = (v13 + 8);
      v44 = v42;
      v75 = a1;
      v66 = -v21;
      v45 = v76;
      while (2)
      {
        while (1)
        {
          v60 = v42;
          v46 = a2;
          v47 = a2 + v43;
          v67 = v46;
          v68 = v47;
          while (1)
          {
            v48 = v77;
            if (v46 <= a1)
            {
              v80 = v46;
              v78 = v60;
              goto LABEL_59;
            }

            v61 = v42;
            v77 += v43;
            v49 = v44 + v43;
            v50 = *v65;
            (*v65)();
            v51 = v69;
            (v50)(v69, v47, v45);
            v52 = v70;
            sub_224DAAD98();
            v53 = v71;
            sub_224DAAD98();
            v73 = MEMORY[0x22AA57C30](v52, v53);
            v54 = *v64;
            v55 = v53;
            v56 = v72;
            (*v64)(v55, v72);
            v54(v52, v56);
            v57 = *v63;
            (*v63)(v51, v45);
            v57(v74, v45);
            if (v73)
            {
              break;
            }

            v42 = v49;
            v58 = v62;
            if (v48 < v44 || v77 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v47 = v68;
              v43 = v66;
            }

            else
            {
              v47 = v68;
              v43 = v66;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v49;
            a1 = v75;
            v46 = v67;
            if (v49 <= v58)
            {
              a2 = v67;
              goto LABEL_58;
            }
          }

          v59 = v62;
          if (v48 < v67 || v77 >= v67)
          {
            break;
          }

          a2 = v68;
          a1 = v75;
          v42 = v61;
          v43 = v66;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_58;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v75;
        v42 = v61;
        v43 = v66;
        if (v44 > v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v80 = a2;
    v78 = v42;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v13 + 16);
      v64 = (v7 + 8);
      v65 = v27;
      v66 = v21;
      v67 = v13 + 16;
      v63 = (v13 + 8);
      v28 = v76;
      do
      {
        v75 = a1;
        v29 = v74;
        v30 = v65;
        (v65)(v74, a2, v28);
        v31 = v69;
        (v30)(v69, a4, v28);
        v32 = v70;
        sub_224DAAD98();
        v33 = v71;
        sub_224DAAD98();
        v73 = MEMORY[0x22AA57C30](v32, v33);
        v34 = a2;
        v35 = *v64;
        v36 = v33;
        v37 = a4;
        v38 = v72;
        (*v64)(v36, v72);
        v35(v32, v38);
        v39 = *v63;
        (*v63)(v31, v28);
        v39(v29, v28);
        if (v73)
        {
          v40 = v66;
          a2 = v34 + v66;
          v41 = v75;
          a4 = v37;
          if (v75 < v34 || v75 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v34;
          v40 = v66;
          a4 = v37 + v66;
          v41 = v75;
          if (v75 < v37 || v75 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v75 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 = v41 + v40;
        v80 = a1;
      }

      while (a4 < v68 && a2 < v77);
    }
  }

LABEL_59:
  sub_224CB2404(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_224CB2364(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_224CB23F0(v3);
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

uint64_t sub_224CB2404(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_224DAAE38();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_224CB2510()
{
  v1 = v0;
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  (*(*(v3 + 8) + 80))(sub_224CB2950, v0, v2);
  v4 = v0[30];
  v5 = v1[31];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
  v12 = v4;
  v13 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 80))(sub_224CB2950, v1, v8);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_224CB262C(char a1)
{
  if (a1 == 1)
  {
    v2 = 472;
    return *(v1 + v2);
  }

  if (a1 == 2)
  {
    v2 = 488;
    return *(v1 + v2);
  }

  sub_224DAF938();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
  result = sub_224DAFB58();
  __break(1u);
  return result;
}

uint64_t sub_224CB2720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224CB27BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA7F48(a1, v4, v5, v6);
}

uint64_t sub_224CB289C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224CA800C(a1, v4, v5, v6);
}

uint64_t sub_224CB298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CB2AA0()
{
  v1 = [v0 controlItems];
  sub_224DAF5D8();
  v2 = sub_224DAF008();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_224DAF838();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA5DCC0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 controlIdentity];
      v9 = [v8 extensionIdentity];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v3 != v5);

    return v10;
  }

  return result;
}

uint64_t sub_224CB2C30()
{
  v1 = [v0 controlItems];
  sub_224DAF5D8();
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
    sub_224DAF838();
  }

  v3 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v3);

  return 0x203A736D657469;
}

void *sub_224CB2D08@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = sub_224DAA1C8();
  v6 = v5;
  v7 = [v3 description];
  v8 = sub_224DAEE18();
  v10 = v9;

  a2[3] = &type metadata for _ConfigurationItemForStateCapture;
  a2[4] = sub_224CB3584();
  result = swift_allocObject();
  *a2 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = v10;
  return result;
}

uint64_t sub_224CB2DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAD6B8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_224CB2EC0(uint64_t a1)
{
  v3 = [*v1 controlItems];
  sub_224DAF5D8();
  v4 = sub_224DAF008();

  v8[2] = a1;
  sub_224D41B20(sub_224CB3564, v8, v4);
  v6 = v5;

  return v6;
}

uint64_t sub_224CB2F60(uint64_t a1)
{
  v3 = *(v1 + qword_28135C9F0);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224D70330(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v4;
    v4 = sub_224A7AE9C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return v4;
}

void sub_224CB303C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAE6E8();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA428();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + qword_28135C9F0);
  os_unfair_lock_lock(*(v14 + 16));
  v15 = sub_224D70330(v3, a1);
  if (v2)
  {

    os_unfair_lock_unlock(*(v14 + 16));
    __break(1u);
  }

  else
  {
    v16 = v15;
    os_unfair_lock_unlock(*(v14 + 16));
    if (v16)
    {
      (*(v10 + 104))(v13, *MEMORY[0x277CFA040], v9);
      sub_224CB348C(&qword_281351828, MEMORY[0x277CFA048], MEMORY[0x277CFA058]);
      sub_224DAEFA8();
      sub_224DAEFA8();

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_224AD1978();
      (*(v17 + 104))(v8, *MEMORY[0x277CE3BE8], v5);
      sub_224DAF638();
      swift_willThrow();
    }
  }
}

uint64_t sub_224CB3310()
{
  sub_224D701A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHostService(uint64_t a1)
{
  result = qword_28135A000;
  if (!qword_28135A000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CB3434(uint64_t a1)
{
  result = sub_224CB348C(&qword_28135A018, type metadata accessor for ControlHostService, &unk_224DB5F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224CB348C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_224CB34D4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224A7A7A8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_224CB3584()
{
  result = qword_281352B88[0];
  if (!qword_281352B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281352B88);
  }

  return result;
}

id sub_224CB35D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - v9;
  v11 = *(v3 + 16);
  v11(v7, a1, v2);
  swift_beginAccess();
  sub_224ADC7EC(v10, v7);
  (*(v3 + 8))(v10, v2);
  swift_endAccess();
  v12 = swift_allocObject();
  swift_weakInit();
  v11(v10, a1, v2);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v3 + 32))(v14 + v13, v10, v2);
  aBlock[4] = sub_224CB3A2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_39;
  v15 = _Block_copy(aBlock);
  v16 = objc_opt_self();

  v17 = [v16 responderWithHandler_];
  _Block_release(v15);

  v18 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v17];

  return v18;
}

double sub_224CB3894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D68, qword_224DBD968);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9[-v6];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B0299C(a3, v7);
    sub_224CB3AAC(v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224CB39C4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  LOBYTE(a1) = sub_224CD6C50(a1, v4);

  return a1 & 1;
}

double sub_224CB3A2C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224CB3894(a1, v4, v5);
}

uint64_t sub_224CB3AAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D68, qword_224DBD968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CB3C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_224ACED1C;

  return v9(a1, a2, a3);
}

double sub_224CB3D54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224CB4154();
  }

  return result;
}

double sub_224CB3DAC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224CB4154();
  }

  return result;
}

uint64_t sub_224CB3E04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  v4 = sub_224DAFF38();
  MEMORY[0x22AA5D210](v4);

  MEMORY[0x22AA5D210](0x746567646977203ELL, 0xED0000203A78614DLL);
  [*(a1 + 72) widgetMaxBudget];
  v5 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0x4D796C696164202CLL, 0xEC000000203A7861);
  [*(a1 + 72) dailyMaxBudget];
  v6 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v6);

  MEMORY[0x22AA5D210](0xD000000000000015, 0x8000000224DCCE30);
  BSDispatchQueueAssert();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
  sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0, MEMORY[0x277D83B68]);
  sub_224AFC154();
  v7 = sub_224DAEF98();
  v9 = v8;

  MEMORY[0x22AA5D210](v7, v9);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_224CB4060(uint64_t result)
{
  if (*(result + 48) != *(result + 56))
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281365150);
    v2 = sub_224DAB228();
    v3 = sub_224DAF2A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_224A2F000, v2, v3, "Updating configuration explicitly due to unprocessed pending configurations present.", v4, 2u);
      MEMORY[0x22AA5EED0](v4, -1, -1);
    }

    sub_224CB5118();
  }
}

void sub_224CB4154()
{
  v1 = v0;
  v2 = sub_224DAF3B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB8, &qword_224DBDAF0);
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v56 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DC0, &unk_224DBDAF8);
  v60 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v59 = &v46 - v20;
  v21 = v0[15];
  v22 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
  (*(v22 + 32))(v62, 768, v21, v22);
  if (!v63)
  {
    sub_224A3311C(v62, &qword_27D6F50E0, &qword_224DB41A0);
    return;
  }

  if (!*(v63 + 16))
  {
    sub_224A699F0(v62);
    return;
  }

  v23 = sub_224A79FA8(v63);
  sub_224A699F0(v62);
  if (v23 >> 62)
  {
    v45 = sub_224DAF838();

    if (!v45)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v24)
    {
      return;
    }
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281365150);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  v28 = os_log_type_enabled(v26, v27);
  v50 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_224A2F000, v26, v27, "Configuration manager received first configuration update", v29, 2u);
    MEMORY[0x22AA5EED0](v29, -1, -1);
  }

  sub_224CB5118();
  if (v1[4])
  {

    sub_224DAB328();
  }

  v51 = v6;
  v52 = v3;
  v53 = v2;
  v1[4] = 0;

  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_224A2F000, v30, v31, "Configuration manager first update handled, now debouncing requests.", v32, 2u);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  v33 = v1[15];
  v34 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v33);
  v62[0] = (*(*(v34 + 8) + 40))(768, v33);
  v61 = v1[5];
  v35 = v61;
  v47 = sub_224DAF358();
  v36 = *(v47 - 8);
  v48 = *(v36 + 56);
  v49 = v36 + 56;
  v48(v10, 1, 1, v47);
  v46 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0, MEMORY[0x277CBCD60]);
  v37 = v55;
  v38 = v56;
  sub_224DAB3E8();

  (*(v54 + 8))(v14, v37);
  v39 = v51;
  sub_224DAF388();
  v62[0] = v1[5];
  v40 = v62[0];
  v48(v10, 1, 1, v47);
  sub_224A33088(&qword_281351378, &qword_27D6F5DB8, &qword_224DBDAF0, MEMORY[0x277CBCC08]);
  v41 = v40;
  v42 = v58;
  v43 = v59;
  sub_224DAB468();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  (*(v52 + 8))(v39, v53);
  (*(v57 + 8))(v38, v42);
  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351320, &qword_27D6F5DC0, &unk_224DBDAF8, MEMORY[0x277CBCCF8]);
  v44 = v50;
  sub_224DAB488();

  (*(v60 + 8))(v43, v44);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224CB4A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v3 = a1;
    *(a2 + 48) = v8;
    if (qword_281351700 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281365150);

  v10 = sub_224DAB228();
  v11 = sub_224DAF278();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v4 + 48);

    _os_log_impl(&dword_224A2F000, v10, v11, "Configuration manager received pending update; pending sequence number: %lld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a3, v3, v13);
}

double sub_224CB4B94(uint64_t a1, uint64_t a2)
{
  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365150);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "Configuration manager received debounced update.", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224CB5118();
  }

  return result;
}

uint64_t sub_224CB4CA8()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 75;
}

uint64_t sub_224CB4DC4()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 40;
}

uint64_t sub_224CB4EE0()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 750;
}

uint64_t sub_224CB4FFC()
{
  v1 = *(v0 + 16);
  v2 = sub_224DAEDE8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_224A3311C(v9, &qword_27D6F4760, &unk_224DB3680);
  }

  return 2;
}

void sub_224CB5118()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  BSDispatchQueueAssert();
  v6 = v0[6];
  if (v0[7] == v6)
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281365150);
    v24 = sub_224DAB228();
    v8 = sub_224DAF278();
    if (os_log_type_enabled(v24, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224A2F000, v24, v8, "Update ignored because sequence numbers match.", v9, 2u);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    v10 = v24;
  }

  else
  {
    v0[7] = v6;
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281365150);

    v12 = sub_224DAB228();
    v13 = sub_224DAF278();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v1[7];

      _os_log_impl(&dword_224A2F000, v12, v13, "Updated last processed configuration number: %lld", v14, 0xCu);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    else
    {
    }

    v15 = v1[15];
    v16 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v15);
    (*(v16 + 32))(v25, 768, v15, v16);
    if (v25[5])
    {
      if (qword_281356838 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for HostDescriptorPredicate(0);
      v18 = __swift_project_value_buffer(v17, qword_281365218);
      sub_224CB9250(v18, v5);
      (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
      v19 = sub_224A6BAF8(v5);
      sub_224A3311C(v5, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v25);
      if (v19)
      {
        sub_224CB6338(v19);

        sub_224CB6620();
        sub_224CB551C();
        return;
      }
    }

    else
    {
      sub_224A3311C(v25, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v20 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_224A2F000, v20, v21, "Update ignored because no widgets configuration was present.", v22, 2u);
      MEMORY[0x22AA5EED0](v22, -1, -1);
    }
  }
}

uint64_t sub_224CB551C()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  (*(v2 + 32))(v151, 768, v1, v2);
  if (!v152)
  {
    return sub_224A3311C(v151, &qword_27D6F50E0, &qword_224DB41A0);
  }

  if (!*(v152 + 16))
  {
    return sub_224A699F0(v151);
  }

  v4 = sub_224B3DF0C(v3);

  sub_224A699F0(v151);
  v5 = v4;
  v123 = v4;
  if (v4 >> 62)
  {
    goto LABEL_133;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
  }

LABEL_5:
  v7 = 0;
  v124 = v5 & 0xC000000000000001;
  v120 = v5 + 32;
  v121 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = &off_27853F000;
  v9 = &off_27853F000;
  v122 = v6;
LABEL_7:
  if (v124)
  {
    v10 = v7;
    v11 = MEMORY[0x22AA5DCC0](v7, v5);
  }

  else
  {
    if (v7 >= *(v121 + 16))
    {
      goto LABEL_132;
    }

    v10 = v7;
    v11 = *(v120 + 8 * v7);
  }

  v126 = v11;
  v12 = __OFADD__(v10, 1);
  v13 = v10 + 1;
  if (v12)
  {
    goto LABEL_131;
  }

  v125 = v13;
  v14 = [v11 rateLimitPolicies];
  if (!v14)
  {
    v21 = MEMORY[0x277D84F98];
    goto LABEL_74;
  }

  v15 = v14;
  sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
  sub_224A3B758(&unk_281350920, &qword_281350930, 0x277CFA408, MEMORY[0x277D85378]);
  v16 = sub_224DAF1B8();

  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v16 = v151[0];
    v17 = v151[1];
    v18 = v151[2];
    v19 = v151[3];
    v20 = v151[4];
  }

  else
  {
    v19 = 0;
    v22 = -1 << *(v16 + 32);
    v17 = v16 + 56;
    v18 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v16 + 56);
  }

  v25 = (v18 + 64) >> 6;
  v21 = MEMORY[0x277D84F98];
  v131 = v17;
  v132 = v16;
  for (i = v25; ; v25 = i)
  {
    if (v16 < 0)
    {
      v31 = sub_224DAF878();
      if (v31)
      {
        v147 = v31;
        swift_dynamicCast();
        v30 = v146[0];
        v134 = v20;
        v136 = v19;
        if (v146[0])
        {
          goto LABEL_32;
        }
      }

LABEL_73:
      sub_224A3B7E4(v16);
LABEL_74:
      v77 = [v126 containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v78 = sub_224DAF008();

      v79 = v78;
      if (!(v78 >> 62))
      {
        v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_76;
        }

LABEL_6:

        v5 = v123;
        v7 = v125;
        if (v125 == v122)
        {
        }

        goto LABEL_7;
      }

      v80 = sub_224DAF838();
      v79 = v78;
      if (!v80)
      {
        goto LABEL_6;
      }

LABEL_76:
      v81 = 0;
      v133 = v79 & 0xC000000000000001;
      v127 = v79 + 32;
      v128 = v79 & 0xFFFFFFFFFFFFFF8;
      v130 = v80;
      while (2)
      {
        if (v133)
        {
          v82 = MEMORY[0x22AA5DCC0](v81);
        }

        else
        {
          if (v81 >= *(v128 + 16))
          {
            goto LABEL_127;
          }

          v82 = *(v127 + 8 * v81);
        }

        v83 = v82;
        v12 = __OFADD__(v81, 1);
        v84 = v81 + 1;
        if (v12)
        {
          goto LABEL_124;
        }

        v85 = [v82 widgets];
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v86 = sub_224DAF008();

        v137 = v84;
        if (!(v86 >> 62))
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v135 = v83;
          if (v87)
          {
            break;
          }

          goto LABEL_77;
        }

        v87 = sub_224DAF838();
        v135 = v83;
        if (!v87)
        {
LABEL_77:

          v81 = v137;
          if (v137 == v130)
          {
            goto LABEL_6;
          }

          continue;
        }

        break;
      }

      if (v87 >= 1)
      {
        v88 = 0;
        v144 = v86;
        v145 = v86 & 0xC000000000000001;
        v142 = v87;
        while (1)
        {
          if (v145)
          {
            v89 = MEMORY[0x22AA5DCC0](v88, v86);
          }

          else
          {
            v89 = *(v86 + 8 * v88 + 32);
          }

          v90 = v89;
          v91 = [v89 v8[388]];
          objc_opt_self();
          v92 = swift_dynamicCastObjCClass();
          if (v92)
          {
            v93 = [v92 v9[389]];
            if (v93)
            {
              v94 = v93;
              v95 = sub_224DAEE18();
              if (v21[2])
              {
                v97 = v8;
                v98 = v9;
                sub_224A3A40C(v95, v96);
                v99 = v21;
                v101 = v100;

                if (v101)
                {
                  v141 = v99;

                  v102 = [v90 extensionBundleIdentifier];
                  if (!v102)
                  {
                    sub_224DAEE18();
                    v102 = sub_224DAEDE8();
                  }

                  v103 = [v90 uniqueIdentifier];
                  v87 = v142;
                  if (!v103)
                  {
                    sub_224DAEE18();
                    v103 = sub_224DAEDE8();
                  }

                  v104 = _CHSUniqueWidgetRateLimitConfigurationName();

                  v105 = v104;
                  if (!v104)
                  {
                    sub_224DAEE18();
                    v105 = sub_224DAEDE8();
                  }

                  v106 = sub_224DAEE18();
                  v108 = v107;
                  if (qword_281351700 != -1)
                  {
                    swift_once();
                  }

                  v140 = v105;
                  v109 = sub_224DAB258();
                  __swift_project_value_buffer(v109, qword_281365150);

                  v110 = sub_224DAB228();
                  v111 = sub_224DAF2A8();

                  if (os_log_type_enabled(v110, v111))
                  {
                    v112 = v106;
                    v113 = swift_slowAlloc();
                    v114 = swift_slowAlloc();
                    v146[0] = v114;
                    *v113 = 136446210;
                    v115 = sub_224A33F74(v112, v108, v146);

                    *(v113 + 4) = v115;
                    _os_log_impl(&dword_224A2F000, v110, v111, "Updating rate limit configuration: %{public}s", v113, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v114);
                    MEMORY[0x22AA5EED0](v114, -1, -1);
                    MEMORY[0x22AA5EED0](v113, -1, -1);
                  }

                  else
                  {
                  }

                  v21 = v141;
                  v86 = v144;
                  v116 = *(v138 + 64);
                  sub_224A3B79C(0, &qword_27D6F5D98, 0x277D06A10);
                  v117 = v116;
                  v118 = sub_224DAEFF8();

                  [v117 createRateLimitConfigurationWithName:v140 rateLimits:v118];
                  swift_unknownObjectRelease();

                  v8 = &off_27853F000;
                  v9 = &off_27853F000;
                }

                else
                {

                  swift_unknownObjectRelease();
                  v21 = v99;
                  v9 = v98;
                  v8 = v97;
                  v87 = v142;
                  v86 = v144;
                }

                goto LABEL_89;
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

LABEL_89:
          if (v87 == ++v88)
          {
            goto LABEL_77;
          }
        }
      }

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
      v6 = sub_224DAF838();
      v5 = v123;
      if (!v6)
      {
      }

      goto LABEL_5;
    }

    v27 = v19;
    v28 = v20;
    for (j = v19; !v28; ++v27)
    {
      j = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_125;
      }

      if (j >= v25)
      {
        goto LABEL_73;
      }

      v28 = *(v17 + 8 * j);
    }

    v134 = (v28 - 1) & v28;
    v136 = j;
    v30 = *(*(v16 + 48) + ((j << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v30)
    {
      goto LABEL_73;
    }

LABEL_32:
    v139 = v30;
    v32 = [v30 rateLimits];
    sub_224A3B79C(0, &unk_281350A20, 0x277CFA400);
    sub_224A3B758(&unk_281350A10, &unk_281350A20, 0x277CFA400, MEMORY[0x277D85378]);
    v33 = sub_224DAF1B8();

    if ((v33 & 0xC000000000000001) == 0)
    {
      break;
    }

    v34 = sub_224DAF838();
    if (v34)
    {
      v35 = v34;
      v150 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v147 = sub_224DAF7D8();
      v148 = v36;
      v149 = 1;
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      goto LABEL_38;
    }

LABEL_62:

    v60 = MEMORY[0x277D84F90];
LABEL_63:
    v61 = [v139 identifier];
    v62 = sub_224DAEE18();
    v64 = v63;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146[0] = v21;
    v66 = sub_224A3A40C(v62, v64);
    v68 = v21[2];
    v69 = (v67 & 1) == 0;
    v12 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v12)
    {
      goto LABEL_128;
    }

    v71 = v67;
    if (v21[3] < v70)
    {
      sub_224B17CE0(v70, isUniquelyReferenced_nonNull_native);
      v66 = sub_224A3A40C(v62, v64);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_137;
      }

LABEL_68:
      v17 = v131;
      v16 = v132;
      if (v71)
      {
        goto LABEL_21;
      }

      goto LABEL_69;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_68;
    }

    v76 = v66;
    sub_224B29530();
    v66 = v76;
    v17 = v131;
    v16 = v132;
    if (v71)
    {
LABEL_21:
      v26 = v66;

      v21 = v146[0];
      *(*(v146[0] + 7) + 8 * v26) = v60;

      goto LABEL_22;
    }

LABEL_69:
    v21 = v146[0];
    *(v146[0] + (v66 >> 6) + 8) |= 1 << v66;
    v73 = (v21[6] + 16 * v66);
    *v73 = v62;
    v73[1] = v64;
    *(v21[7] + 8 * v66) = v60;

    v74 = v21[2];
    v12 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v12)
    {
      goto LABEL_130;
    }

    v21[2] = v75;
LABEL_22:
    v20 = v134;
    v19 = v136;
    v8 = &off_27853F000;
  }

  v35 = *(v33 + 16);
  if (!v35)
  {
    goto LABEL_62;
  }

  v150 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v37 = sub_224DAF798();
  v38 = *(v33 + 36);
  v147 = v37;
  v148 = v38;
  v149 = 0;
LABEL_38:
  v39 = 0;
  v143 = objc_opt_self();
  while (1)
  {
    if (v39 >= v35)
    {
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
      goto LABEL_126;
    }

    v12 = __OFADD__(v39++, 1);
    if (v12)
    {
      goto LABEL_119;
    }

    v41 = v21;
    v43 = v147;
    v42 = v148;
    v44 = v149;
    sub_224CB9AFC(v147, v148, v149, v33);
    v46 = v45;
    v47 = [v45 maximumRefreshes];
    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    v48 = v47;
    [v46 window];
    v49 = [v143 rateLimitWithMaximum:v48 perWindow:?];

    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (v44)
      {
        goto LABEL_136;
      }

      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      v50 = 1 << *(v33 + 32);
      if (v43 >= v50)
      {
        goto LABEL_121;
      }

      v51 = v43 >> 6;
      v52 = *(v33 + 56 + 8 * (v43 >> 6));
      if (((v52 >> v43) & 1) == 0)
      {
        goto LABEL_122;
      }

      if (*(v33 + 36) != v42)
      {
        goto LABEL_123;
      }

      v53 = v52 & (-2 << (v43 & 0x3F));
      if (v53)
      {
        v50 = __clz(__rbit64(v53)) | v43 & 0x7FFFFFFFFFFFFFC0;
        v9 = &off_27853F000;
      }

      else
      {
        v54 = v51 << 6;
        v55 = v51 + 1;
        v56 = (v33 + 64 + 8 * v51);
        v9 = &off_27853F000;
        while (v55 < (v50 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            sub_224A3E204(v43, v42, 0);
            v50 = __clz(__rbit64(v57)) + v54;
            goto LABEL_60;
          }
        }

        sub_224A3E204(v43, v42, 0);
      }

LABEL_60:
      v59 = *(v33 + 36);
      v147 = v50;
      v148 = v59;
      v149 = 0;
      goto LABEL_40;
    }

    if (!v44)
    {
      break;
    }

    if (sub_224DAF7F8())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    v9 = &off_27853F000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5DA0, &unk_224DBDAE0);
    v40 = sub_224DAF1E8();
    sub_224DAF8A8();
    v40(v146, 0);
LABEL_40:
    v21 = v41;
    if (v39 == v35)
    {
      sub_224A3E204(v147, v148, v149);

      v60 = v150;
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CB6338(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssert();
  v3 = sub_224CB4CA8();
  v4 = [*(v2 + 72) widgetMaxBudget];
  v5 = v3 != v4;
  if (v3 != v4)
  {
    [*(v2 + 72) setWidgetMaxBudget_];
  }

  v6 = sub_224CB4DC4();
  if (v6 != [*(v2 + 72) systemAddedWidgetMaxBudget])
  {
    [*(v2 + 72) setSystemAddedWidgetMaxBudget_];
    v5 = 1;
  }

  v25 = MEMORY[0x277D84F98];

  v8 = sub_224CB8EC0(v7, &v25);

  if (v8 >> 62)
  {
    v9 = sub_224DAF838();

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = [*(v2 + 72) widgetMaxBudget];
  if (!is_mul_ok(v9, v10))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_18;
  }

  v11 = v9 * v10;
  v12 = sub_224CB4EE0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = [*(v2 + 72) widgetMaxBudget];
  if (v14 > v13)
  {
    v13 = v14;
  }

  if (v13 == [*(v2 + 72) dailyMaxBudget])
  {
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [*(v2 + 72) setDailyMaxBudget_];
  }

  if (qword_281351700 != -1)
  {
    goto LABEL_27;
  }

LABEL_18:
  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281365150);

  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    v20 = sub_224CB8B80();
    v22 = sub_224A33F74(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_224A2F000, v16, v17, "Configuration manager updated budget: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  [*(v2 + 64) setBudget_];
LABEL_21:
}

uint64_t sub_224CB6620()
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  BSDispatchQueueAssert();
  BSDispatchQueueAssert();
  v10 = *(v0 + 152);
  *(v0 + 152) = 1;
  sub_224DA9868();
  sub_224CB678C((v10 & 1) == 0, v9);
  sub_224CB73CC((v10 & 1) == 0);
  v11 = *(v2 + 8);
  result = v11(v9, v1);
  if (!*(v0 + 144))
  {
    sub_224DA9868();
    sub_224CB8614(v6, v9);
    v11(v6, v1);
    sub_224CB7BA8(v9);
    return v11(v9, v1);
  }

  return result;
}

uint64_t sub_224CB678C(int a1, uint64_t a2)
{
  v97 = a2;
  v93 = a1;
  v98 = sub_224DAD738();
  v91 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v3);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v92 = &v90 - v8;
  v9 = sub_224DA99A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v96 = sub_224DA99B8();
  v14 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v15);
  v17 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v90 - v20;
  v22 = sub_224DA9878();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v94 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v95 = v2;
  if (sub_224CB4FFC() < 0)
  {
    __break(1u);
LABEL_24:
    v41 = sub_224DAF838();
    v90 = v23;
    if (v41)
    {
      goto LABEL_11;
    }

LABEL_25:

    v42 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  sub_224DA9988();
  (*(v10 + 104))(v13, *MEMORY[0x277CC9968], v9);
  sub_224DA9978();
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v96);
  if ((v23[6])(v21, 1, v22) == 1)
  {
    return sub_224A3311C(v21, &qword_27D6F32B0, &qword_224DB3EA0);
  }

  v17 = v94;
  (v23[4])(v94, v21, v22);
  v27 = v95[15];
  v28 = v95[16];
  __swift_project_boxed_opaque_existential_1(v95 + 12, v27);
  (*(v28 + 32))(&v101, 768, v27, v28);
  if (v103)
  {
    sub_224DA9758();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    v32 = v92;
    (*(*(v31 - 8) + 56))(v92, 1, 1, v31);
    v33 = type metadata accessor for HostDescriptorPredicate(0);
    *(v32 + v33[5]) = 3;
    *(v32 + v33[6]) = 3;
    v34 = v33[7];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
    v36 = v33[8];
    v37 = sub_224DABE18();
    (*(*(v37 - 8) + 56))(v32 + v36, 1, 1, v37);
    v38 = v33[9];
    v39 = sub_224DAC268();
    (*(*(v39 - 8) + 56))(v32 + v38, 1, 1, v39);
    v40 = v32 + v33[10];
    *v40 = v30;
    *(v40 + 8) = 0;
    (*(*(v33 - 1) + 56))(v32, 0, 1, v33);
    v21 = sub_224A6BAF8(v32);
    sub_224A3311C(v32, &qword_27D6F46D0, &unk_224DBD6D0);
    sub_224A699F0(&v101);
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_224A3311C(&v101, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_9:
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  v41 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v90 = v23;
  if (!v41)
  {
    goto LABEL_25;
  }

LABEL_11:
  v101 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v92 = v22;
  v42 = v101;
  v43 = v21;
  v97 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v44 = 0;
    v45 = (v91 + 8);
    v96 = xmmword_224DB2780;
    do
    {
      v46 = MEMORY[0x22AA5DCC0](v44, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v47 = swift_allocObject();
      *(v47 + 16) = v96;
      *(v47 + 32) = v46;
      swift_unknownObjectRetain();
      sub_224DAD708();
      v48 = sub_224DAD6F8();
      v50 = v49;
      swift_unknownObjectRelease();
      (*v45)(v5, v98);
      v101 = v42;
      v52 = *(v42 + 16);
      v51 = *(v42 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_224A3DFD8((v51 > 1), v52 + 1, 1);
        v42 = v101;
      }

      ++v44;
      *(v42 + 16) = v52 + 1;
      v53 = v42 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 = v97;
    }

    while (v41 != v44);
  }

  else
  {
    v54 = (v91 + 8);
    v55 = 32;
    v96 = xmmword_224DB2780;
    do
    {
      v56 = *(v43 + v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v57 = swift_allocObject();
      *(v57 + 16) = v96;
      *(v57 + 32) = v56;
      v58 = v56;
      sub_224DAD708();
      v59 = sub_224DAD6F8();
      v61 = v60;

      (*v54)(v5, v98);
      v101 = v42;
      v63 = *(v42 + 16);
      v62 = *(v42 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_224A3DFD8((v62 > 1), v63 + 1, 1);
        v42 = v101;
      }

      *(v42 + 16) = v63 + 1;
      v64 = v42 + 16 * v63;
      *(v64 + 32) = v59;
      *(v64 + 40) = v61;
      v55 += 8;
      --v41;
      v43 = v97;
    }

    while (v41);
  }

  v22 = v92;
LABEL_26:
  v65 = sub_224AE8AF4(v42);

  if ((v93 & 1) == 0)
  {
    v66 = v95[10];

    v67 = sub_224CBDDB8(v65, v66);

    if (v67)
    {

      v17 = v90;
      v9 = v94;
      if (qword_281351700 == -1)
      {
LABEL_29:
        v68 = sub_224DAB258();
        __swift_project_value_buffer(v68, qword_281365150);
        v69 = sub_224DAB228();
        v70 = sub_224DAF2A8();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_224A2F000, v69, v70, "Configuration manager found no changes to the exempt identifiers", v71, 2u);
          MEMORY[0x22AA5EED0](v71, -1, -1);
        }

        return v17[1](v9, v22);
      }

LABEL_46:
      swift_once();
      goto LABEL_29;
    }
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v72 = sub_224DAB258();
  __swift_project_value_buffer(v72, qword_281365150);

  v73 = sub_224DAB228();
  v74 = sub_224DAF2A8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v100 = v76;
    *v75 = 136446210;
    if (*(v65 + 16))
    {
      v101 = 2314;
      v102 = 0xE200000000000000;
      v99 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
      sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0, MEMORY[0x277D83B68]);
      sub_224AFC154();
      v77 = sub_224DAEF98();
      MEMORY[0x22AA5D210](v77);

      v78 = v101;
      v79 = v102;
    }

    else
    {
      v79 = 0xE600000000000000;
      v78 = 0x3E656E6F6E3CLL;
    }

    v80 = sub_224A33F74(v78, v79, &v100);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_224A2F000, v73, v74, "Configuration manager updating exempt identifiers: %{public}s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v76, -1, -1);
    MEMORY[0x22AA5EED0](v75, -1, -1);
  }

  v81 = v95;
  v95[10] = v65;

  v82 = v81[8];
  v83 = *(v65 + 16);
  if (!v83)
  {
    goto LABEL_42;
  }

  v84 = sub_224B0CC2C(*(v65 + 16), 0);
  v85 = sub_224B2F374(&v101, v84 + 4, v83, v65);
  v86 = v101;
  v87 = v82;
  sub_224A3B7E4(v86);
  if (v85 != v83)
  {
    __break(1u);
LABEL_42:
    v88 = v82;
  }

  v17 = v90;
  v9 = v94;
  v89 = sub_224DAEFF8();

  [v82 setOverridesForWidgetBudgetIDs_];

  return v17[1](v9, v22);
}

void sub_224CB73CC(int a1)
{
  v2 = v1;
  v55 = a1;
  v65 = sub_224DAD738();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v71 = MEMORY[0x277D84FA0];
  v7 = v1[15];
  v8 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v7);
  (*(v8 + 4))(&v68, 768, v7, v8);
  if (v70)
  {
    if (*(v70 + 16))
    {
      v9 = sub_224A79FA8(v70);
      sub_224A699F0(&v68);
      if (v9 >> 62)
      {
        goto LABEL_31;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v54 = v2;
        v11 = 0;
        v60 = v9 & 0xC000000000000001;
        v57 = v9 & 0xFFFFFFFFFFFFFF8;
        v56 = v9 + 32;
        v64 = (v3 + 1);
        v3 = &selRef_pairingState;
        v63 = xmmword_224DB2780;
        v59 = v9;
        v58 = i;
        while (1)
        {
          if (v60)
          {
            v12 = MEMORY[0x22AA5DCC0](v11, v9);
          }

          else
          {
            if (v11 >= *(v57 + 16))
            {
              goto LABEL_30;
            }

            v12 = *(v56 + 8 * v11);
          }

          v2 = v12;
          v13 = __OFADD__(v11, 1);
          v14 = v11 + 1;
          if (v13)
          {
            break;
          }

          v9 = [v12 widgets];
          sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
          v15 = sub_224DAF008();

          v61 = v2;
          v62 = v14;
          if (v15 >> 62)
          {
            v16 = sub_224DAF838();
            if (!v16)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v16)
            {
              goto LABEL_6;
            }
          }

          if (v16 < 1)
          {
            goto LABEL_29;
          }

          for (j = 0; j != v16; ++j)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x22AA5DCC0](j, v15);
            }

            else
            {
              v18 = *(v15 + 8 * j + 32);
            }

            v19 = v18;
            if ([v18 v3[106]])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
              v20 = swift_allocObject();
              *(v20 + 16) = v63;
              *(v20 + 32) = v19;
              v21 = v19;
              sub_224DAD708();
              v22 = sub_224DAD6F8();
              v2 = v3;
              v24 = v23;
              (*v64)(v6, v65);
              v25 = v24;
              v3 = v2;
              sub_224ADAF60(&v68, v22, v25);
            }

            else
            {
            }
          }

LABEL_6:

          v11 = v62;
          v9 = v59;
          if (v62 == v58)
          {

            v2 = v54;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        ;
      }
    }

    else
    {
      sub_224A699F0(&v68);
    }
  }

  else
  {
    sub_224A3311C(&v68, &qword_27D6F50E0, &qword_224DB41A0);
  }

LABEL_33:
  if ((v55 & 1) != 0 || (v26 = v71, v27 = v2[11], , , v28 = sub_224CBDDB8(v26, v27), , , (v28 & 1) == 0))
  {
    if (qword_281351700 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281365150);
    v34 = sub_224DAB228();
    v35 = sub_224DAF2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v2;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67[0] = v38;
      *v37 = 136446210;
      swift_beginAccess();
      if (*(v71 + 16))
      {
        v68 = 2314;
        v69 = 0xE200000000000000;
        v66 = v71;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D70, &unk_224DBDAC0);
        sub_224A33088(&qword_281350B48, &unk_27D6F5D70, &unk_224DBDAC0, MEMORY[0x277D83B68]);
        sub_224AFC154();
        v39 = sub_224DAEF98();
        v41 = v40;

        MEMORY[0x22AA5D210](v39, v41);

        v42 = v68;
        v43 = v69;
      }

      else
      {
        v43 = 0xE600000000000000;
        v42 = 0x3E656E6F6E3CLL;
      }

      v44 = sub_224A33F74(v42, v43, v67);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_224A2F000, v34, v35, "Configuration manager updating system added identifiers: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x22AA5EED0](v38, -1, -1);
      MEMORY[0x22AA5EED0](v37, -1, -1);

      v2 = v36;
    }

    else
    {
    }

    swift_beginAccess();
    v45 = v71;
    v2[11] = v71;
    swift_bridgeObjectRetain_n();

    v46 = v2[8];
    v47 = *(v45 + 16);
    if (v47)
    {
      v48 = sub_224B0CC2C(*(v45 + 16), 0);
      v49 = sub_224B2F374(&v68, v48 + 4, v47, v45);
      v50 = v68;
      v51 = v46;
      sub_224A3B7E4(v50);
      if (v49 == v47)
      {
LABEL_52:
        v30 = sub_224DAEFF8();

        [v46 setSystemAddedWidgetBudgetIDs_];

        goto LABEL_53;
      }

      __break(1u);
    }

    v52 = v46;

    goto LABEL_52;
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281365150);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_224A2F000, v30, v31, "Configuration manager found no changes to the system added identifiers", v32, 2u);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

LABEL_53:
}

uint64_t sub_224CB7BA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAB848();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB798();
  v57 = *(v9 - 8);
  v58 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v55 = &v53 - v14;
  v15 = sub_224DAB898();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAF438();
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v68 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DA9878();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (*(v1 + 144))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_224DAF478();
    swift_unknownObjectRelease();
    *(v1 + 144) = 0;
    swift_unknownObjectRelease();
  }

  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v26 = sub_224DAB258();
  __swift_project_value_buffer(v26, qword_281365150);
  (*(v22 + 16))(v25, a1, v21);
  v27 = sub_224DAB228();
  v28 = sub_224DAF2A8();
  v29 = os_log_type_enabled(v27, v28);
  v71 = a1;
  if (!v29)
  {

    (*(v22 + 8))(v25, v21);
    goto LABEL_9;
  }

  v54 = v1;
  v2 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  aBlock[0] = v30;
  *v2 = 136446210;
  if (qword_281351A50 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v31 = qword_281351A58;
    v32 = sub_224DA9778();
    v33 = [v31 stringFromDate_];

    v34 = sub_224DAEE18();
    v36 = v35;

    (*(v22 + 8))(v25, v21);
    v37 = sub_224A33F74(v34, v36, aBlock);

    *(v2 + 4) = v37;
    _os_log_impl(&dword_224A2F000, v27, v28, "Schedule next budget list refresh timer for: %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    MEMORY[0x22AA5EED0](v2, -1, -1);

    v2 = v54;
LABEL_9:
    v30 = sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
    v38 = *(v2 + 40);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_224CB8E60();
    v25 = v38;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5D80, &unk_224DBDAD0);
    sub_224A33088(&qword_281350B88, &unk_27D6F5D80, &unk_224DBDAD0, MEMORY[0x277D83970]);
    v39 = v68;
    v22 = v70;
    sub_224DAF788();
    v21 = sub_224DAF448();

    (*(v69 + 8))(v39, v22);
    sub_224DA97D8();
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v40 <= -9.22337204e18)
    {
      goto LABEL_14;
    }

    if (v40 < 9.22337204e18)
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v41 = v59;
  sub_224DAB888();
  ObjectType = swift_getObjectType();
  v43 = v55;
  *v55 = 10;
  v45 = v57;
  v44 = v58;
  v46 = *(v57 + 104);
  v46(v43, *MEMORY[0x277D85188], v58);
  v47 = v56;
  v46(v56, *MEMORY[0x277D85180], v44);
  MEMORY[0x22AA5D910](v41, v47, v43, ObjectType);
  v48 = *(v45 + 8);
  v48(v47, v44);
  v48(v43, v44);
  aBlock[4] = sub_224CB8EB8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_40;
  v49 = _Block_copy(aBlock);

  v50 = v62;
  sub_224AD5C90(ObjectType);
  v51 = v64;
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v49);
  (*(v66 + 8))(v51, v67);
  (*(v63 + 8))(v50, v65);

  sub_224DAF488();
  (*(v60 + 8))(v41, v61);
  *(v2 + 144) = v21;
  return swift_unknownObjectRelease();
}

uint64_t sub_224CB8434(uint64_t a1)
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  BSDispatchQueueAssert();
  sub_224DA9868();
  sub_224CB8614(v6, v9);
  v10 = *(v2 + 8);
  v10(v6, v1);
  if (qword_281351700 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281365150);
  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_224A2F000, v12, v13, "Scheduled event fired.", v14, 2u);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  sub_224CB6620();
  sub_224CB7BA8(v9);
  return (v10)(v9, v1);
}

uint64_t sub_224CB8614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v2 = sub_224DA99A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v55 = &v44 - v12;
  v57 = sub_224DA9878();
  v13 = *(v57 - 8);
  v15 = MEMORY[0x28223BE20](v57, v14);
  v54 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v44 - v18;
  v20 = sub_224DA9A08();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = sub_224DA9948();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DA99B8();
  v50 = *(v27 - 8);
  v51 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v26, *MEMORY[0x277CC9830], v22);
  sub_224DA9958();
  (*(v23 + 8))(v26, v22);
  sub_224DA99F8();
  sub_224DA9998();
  sub_224DA9968();
  v31 = *MEMORY[0x277CC9980];
  v45 = *(v3 + 104);
  v45(v6, v31, v2);
  v32 = v55;
  v52 = v19;
  sub_224DA9978();
  v33 = v57;
  v34 = *(v3 + 8);
  v46 = v2;
  v47 = v6;
  v49 = v3 + 8;
  v34(v6, v2);
  v35 = *(v13 + 48);
  result = v35(v32, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v54;
    v55 = *(v13 + 32);
    (v55)(v54, v32, v33);
    if (sub_224DA9818() == -1)
    {
      v42 = v57;
      (*(v13 + 8))(v52, v57);
      goto LABEL_6;
    }

    v56 = v13;
    v38 = v37;
    v40 = v46;
    v39 = v47;
    v45(v47, *MEMORY[0x277CC9968], v46);
    v41 = v48;
    sub_224DA9978();
    v34(v39, v40);
    v42 = v57;
    result = v35(v41, 1, v57);
    if (result != 1)
    {
      v43 = *(v56 + 8);
      v43(v38, v42);
      v43(v52, v42);
      v37 = v41;
LABEL_6:
      (*(v50 + 8))(v30, v51);
      return (v55)(v53, v37, v42);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CB8B80()
{
  BSDispatchQueueAssert();
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD000000000000017, 0x8000000224DCCE50);
  [*(v0 + 72) systemAddedWidgetMaxBudget];
  v1 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v1);

  MEMORY[0x22AA5D210](0x746567646977202CLL, 0xED0000203A78614DLL);
  [*(v0 + 72) widgetMaxBudget];
  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](0x4D796C696164202CLL, 0xEC000000203A7861);
  [*(v0 + 72) dailyMaxBudget];
  v3 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v3);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_224CB8D14()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_224CB8D7C()
{
  sub_224CB8D14();

  return swift_deallocClassInstance();
}

uint64_t sub_224CB8DD4()
{
  v1 = *(*v0 + 40);
  sub_224DAF3E8();

  return v3;
}

unint64_t sub_224CB8E60()
{
  result = qword_2813509E8;
  if (!qword_2813509E8)
  {
    sub_224DAF438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813509E8);
  }

  return result;
}

uint64_t sub_224CB8EC0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = sub_224DAC268();
  v32 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v10 = sub_224DAF838();
    if (v10)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v11 = 0;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v37 = a1 & 0xC000000000000001;
  v30 = v3;
  v31 = v32 + 16;
  v33 = (v32 + 8);
  v34 = v10;
  v35 = a1;
  while (1)
  {
    if (v37)
    {
      v12 = MEMORY[0x22AA5DCC0](v11, a1);
      v3 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v11 >= *(v36 + 16))
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 8 * v11 + 32);
      v3 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v38 = v3;
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = v12;
    v15 = [v12 widget];
    v3 = v14;
    v16 = [v14 metrics];
    sub_224DAC238();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = a2;
    v39 = *a2;
    a1 = v39;
    v18 = v9;
    a2 = sub_224A61E5C(v9);
    v20 = *(a1 + 16);
    v21 = (v19 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_24;
    }

    v23 = v19;
    if (*(a1 + 24) < v22)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224B296A4();
    }

LABEL_15:
    isUniquelyReferenced_nonNull_native = v13;
    a1 = v39;
    if (v23)
    {
      *(*(v39 + 56) + a2) = 1;
      a2 = v17;
      *v17 = a1;
      v9 = v18;
      (*v33)(v18, v13);
    }

    else
    {
      *(v39 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v9 = v18;
      (*(v32 + 16))(*(a1 + 48) + *(v32 + 72) * a2, v18, v13);
      *(*(a1 + 56) + a2) = 1;
      v26 = *(a1 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_25;
      }

      *(a1 + 16) = v28;
      a2 = v17;
      *v17 = a1;
      (*v33)(v18, v13);
      sub_224DAF9B8();
      sub_224DAF9F8();
      v9 = v18;
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    v3 = v38;
    ++v11;
    a1 = v35;
    if (v38 == v34)
    {
      return v40;
    }
  }

  sub_224B17CF4(v22, isUniquelyReferenced_nonNull_native);
  v24 = sub_224A61E5C(v18);
  if ((v23 & 1) == (v25 & 1))
  {
    a2 = v24;
    goto LABEL_15;
  }

  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CB9250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostDescriptorPredicate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224CB93B4(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_224DAF7D8();
    }

    else
    {
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_224A3DFF8(v38, v39, v40, v1, MEMORY[0x277CFA140]);
        v12 = v11;
        v13 = [v11 tokenString];
        v14 = sub_224DAEE18();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_224A3DFD8((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_224DAF7F8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DC8, &qword_224DBDB98);
          v6 = sub_224DAF1E8();
          sub_224DAF8A8();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_224A3E204(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_224A3E204(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_224A3E204(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_224CB9730()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DD0, &qword_224DBDBA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DD8, &qword_224DBDBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224CB9B10();
  sub_224DA9EB8();
  *(v0 + 16) = sub_224DA9EA8();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v1 + 24) = v4;
  return v1;
}

void sub_224CB986C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));

  sub_224DA9E88();

  v2 = 0;
  v3 = v9;
  v4 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
LABEL_2:
  v6 = v3 + 40 + 16 * v2;
  while (1)
  {
    if (v5 == v2)
    {

      sub_224A3DADC(v4);

      os_unfair_lock_unlock(*(v1 + 16));
      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    ++v2;
    v7 = v6 + 16;
    sub_224DAF538();

    v8 = sub_224DAF4F8();
    v6 = v7;
    if (v8)
    {
      MEMORY[0x22AA5D350]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
      v4 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_224CB99CC()
{

  return swift_deallocClassInstance();
}

void sub_224CB9A30(uint64_t a1)
{
  v3 = *(*v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  sub_224CB93B4(a1);

  sub_224DA9E98();

  os_unfair_lock_unlock(*(v3 + 16));
}

unint64_t sub_224CB9B10()
{
  result = qword_281350B98;
  if (!qword_281350B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4710, &unk_224DB65E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B98);
  }

  return result;
}

double sub_224CB9B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_224CB9BE0()
{
  v1 = v0;
  v2 = sub_224DAB7C8();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351630 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365000);
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_224A2F000, v7, v8, "Start", v9, 2u);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  aBlock = *(v1[2] + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58F0, &qword_224DBDC20);
  sub_224A33088(&qword_281350F28, &unk_27D6F58F0, &qword_224DBDC20, MEMORY[0x277CBCE20]);
  aBlock = sub_224DAB3A8();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DE0, &qword_224DBDC28);
  v10 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_281351060, &qword_27D6F5DE0, &qword_224DBDC28, MEMORY[0x277CBCD90]);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224AEDEB0();
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  aBlock = sub_224D277EC();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DE8, &unk_224DBDC30);
  sub_224A33088(&qword_281351148, &qword_27D6F5DE8, &unk_224DBDC30, v10);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  if ([objc_opt_self() isHealthDataAvailable])
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_weakInit();
    v25 = sub_224CBB588;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_224CB9B8C;
    v24 = &block_descriptor_17;
    v13 = _Block_copy(&aBlock);

    [v11 setAuthorizationStreamEventHandler_];
    _Block_release(v13);
    [v11 subscribeToAuthorizationStreamWithIdentifier_];
  }

  sub_224AC319C();
  v15 = v19;
  v14 = v20;
  (*(v19 + 104))(v5, *MEMORY[0x277D851D0], v20);
  v16 = sub_224DAF428();
  (*(v15 + 8))(v5, v14);
  v17 = swift_allocObject();
  swift_weakInit();
  v25 = sub_224CBB580;
  v26 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224CBAE3C;
  v24 = &block_descriptor_13;
  v18 = _Block_copy(&aBlock);

  tcc_events_subscribe();
  _Block_release(v18);
}

double sub_224CBA174(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for NetworkAuthorizationChangeInfo(0);
  v4 = *(v3 - 1);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(v12 + 16);
    if (v15)
    {
      v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      *&v14 = 136446210;
      v29 = v14;
      v32 = v8;
      v30 = Strong;
      do
      {
        sub_224AEFCBC(v16, v11);
        if ((*v11 & 1) == 0 && v11[v3[6]] != 1 && v11[v3[7]] == 1)
        {
          if (qword_281351630 != -1)
          {
            swift_once();
          }

          v18 = sub_224DAB258();
          __swift_project_value_buffer(v18, qword_281365000);
          sub_224AEFCBC(v11, v8);
          v19 = sub_224DAB228();
          v20 = sub_224DAF2A8();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v33 = v31;
            *v21 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
            v22 = sub_224DAFD28();
            v24 = v23;
            sub_224AEFD20(v32);
            v25 = sub_224A33F74(v22, v24, &v33);

            *(v21 + 4) = v25;
            v26 = v31;
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x22AA5EED0](v26, -1, -1);
            v27 = v21;
            v8 = v32;
            MEMORY[0x22AA5EED0](v27, -1, -1);
          }

          else
          {

            sub_224AEFD20(v8);
          }

          sub_224CBAEAC(&v11[v3[5]]);
        }

        sub_224AEFD20(v11);
        v16 += v17;
        --v15;
      }

      while (v15);
    }
  }

  return *&v14;
}

double sub_224CBA4B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_281351630 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281365000);
    (*(v4 + 16))(v7, a1, v3);
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
      v15 = sub_224DAFD28();
      v17 = v16;
      (*(v4 + 8))(v7, v3);
      v18 = sub_224A33F74(v15, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v10, v11, "[appAuth:%{public}s] location authorization changed", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      v19 = v13;
      a1 = v21;
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    sub_224CBAEAC(a1);
  }

  return result;
}

uint64_t sub_224CBA764(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224DAEEB8();
    if (sub_224DAEE88() < 1)
    {
    }

    else
    {
      sub_224DA9FF8();
      if (qword_281351630 != -1)
      {
        swift_once();
      }

      v12 = sub_224DAB258();
      __swift_project_value_buffer(v12, qword_281365000);
      (*(v3 + 16))(v7, v10, v2);
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = v15;
        v27 = swift_slowAlloc();
        v28 = v27;
        *v15 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
        v25 = v14;
        v16 = sub_224DAFD28();
        v18 = v17;
        v19 = *(v3 + 8);
        v19(v7, v2);
        v20 = sub_224A33F74(v16, v18, &v28);

        v21 = v26;
        *(v26 + 1) = v20;
        v22 = v21;
        _os_log_impl(&dword_224A2F000, v13, v25, "[appAuth:%{public}s] healthkit authorization changed", v21, 0xCu);
        v23 = v27;
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x22AA5EED0](v23, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }

      else
      {

        v19 = *(v3 + 8);
        v19(v7, v2);
      }

      sub_224CBAEAC(v10);

      return (v19)(v10, v2);
    }
  }

  return result;
}

void sub_224CBAAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25[-v10];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (tcc_authorization_record_get_subject_identity())
    {
      if (tcc_identity_get_type())
      {

LABEL_5:
        swift_unknownObjectRelease();
        return;
      }

      tcc_identity_get_identifier();
      sub_224DAEEB8();
      if (sub_224DAEE88() < 1)
      {

        goto LABEL_5;
      }

      sub_224DA9FF8();
      if (qword_281351630 != -1)
      {
        swift_once();
      }

      v12 = sub_224DAB258();
      __swift_project_value_buffer(v12, qword_281365000);
      (*(v4 + 16))(v8, v11, v3);
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v28 = v15;
        v29 = swift_slowAlloc();
        v30 = v29;
        *v15 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
        v27 = v13;
        v16 = sub_224DAFD28();
        v18 = v17;
        v19 = *(v4 + 8);
        v26 = v14;
        v19(v8, v3);
        v20 = sub_224A33F74(v16, v18, &v30);

        v22 = v27;
        v21 = v28;
        *(v28 + 1) = v20;
        v23 = v21;
        _os_log_impl(&dword_224A2F000, v22, v26, "[appAuth:%{public}s] tcc authorization(s) changed", v21, 0xCu);
        v24 = v29;
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x22AA5EED0](v24, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);
      }

      else
      {

        v19 = *(v4 + 8);
        v19(v8, v3);
      }

      sub_224CBAEAC(v11);
      swift_unknownObjectRelease();

      v19(v11, v3);
    }

    else
    {
    }
  }
}

uint64_t sub_224CBAE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_224CBAEAC(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_224DAB848();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v6);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DAB798();
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_224DAB878();
  v36 = *(v12 - 8);
  v37 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v35 = &v31 - v18;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v19 = sub_224DAC668();
  v20 = *(v19 + 16);
  if (v20)
  {
    v32 = v3;
    v33 = v2;
    sub_224A865C4(0, v20, 0, MEMORY[0x277D84F90]);

    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v19 + 32;
      do
      {
        sub_224A3317C(v22, aBlock);
        __swift_project_boxed_opaque_existential_1(aBlock, v44);
        sub_224DAE3C8();
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v22 += 40;
        --v21;
      }

      while (v21);
    }

    v31 = v1[20];
    sub_224DAB858();
    *v11 = 2;
    v23 = v34;
    (*(v8 + 104))(v11, *MEMORY[0x277D85188], v34);
    v24 = v35;
    sub_224DAB868();
    (*(v8 + 8))(v11, v23);
    v25 = v37;
    v36 = *(v36 + 8);
    (v36)(v16, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = v19;
    *(v26 + 24) = v1;
    v45 = sub_224CBB568;
    v46 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v44 = &block_descriptor_41;
    v27 = _Block_copy(aBlock);

    v28 = v38;
    sub_224DAB7E8();
    v42 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v29 = v40;
    v30 = v33;
    sub_224DAF788();
    MEMORY[0x22AA5D6A0](v24, v28, v29, v27);
    _Block_release(v27);
    (*(v32 + 8))(v29, v30);
    (*(v39 + 8))(v28, v41);
    (v36)(v24, v25);
  }

  else
  {
  }
}

uint64_t sub_224CBB3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = a1 + 32;
    do
    {
      sub_224A3317C(v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 40;
      --v1;
    }

    while (v1);
    v2 = v7;
  }

  v6[0] = v2;
  sub_224DAB348();
}

uint64_t sub_224CBB4DC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

id sub_224CBB5FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v72 = a4;
  v78 = a2;
  v89 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v75 = v14;
  v76 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v71 - v16;
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  v19 = __swift_project_value_buffer(v18, qword_281364DF0);
  v20 = *(v11 + 16);
  v80 = a1;
  v73 = v20;
  v74 = v11 + 16;
  v20(v17, a1, v10);

  v71[1] = v19;
  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  v23 = os_log_type_enabled(v21, v22);
  v77 = v11;
  v79 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v71[0] = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446722;
    *(v25 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, &aBlock);
    *(v25 + 12) = 2082;
    sub_224CBC2FC();
    v27 = sub_224DAFD28();
    v28 = v11;
    v30 = v29;
    (*(v28 + 8))(v17, v10);
    v31 = sub_224A33F74(v27, v30, &aBlock);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_224A33F74(v72, a5, &aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "%{public}s - Acquiring keep-alive assertion for %{public}s, reason: %{public}s", v25, 0x20u);
    swift_arrayDestroy();
    v32 = v26;
    v6 = v79;
    MEMORY[0x22AA5EED0](v32, -1, -1);
    v33 = v25;
    a3 = v71[0];
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v17, v10);
  }

  v34 = v80;
  if (!*(v6 + 24))
  {
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v6;
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v37 = 136446210;
      *(v37 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, &aBlock);
      _os_log_impl(&dword_224A2F000, v35, v36, "%{public}s - Creating KeepAliveTransaction for chronod", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v40 = v39;
      v6 = v38;
      MEMORY[0x22AA5EED0](v40, -1, -1);
      MEMORY[0x22AA5EED0](v37, -1, -1);
    }

    sub_224DAD198();
    *(v6 + 24) = sub_224DAD188();
  }

  swift_beginAccess();
  v41 = *(v6 + 16);
  if (*(v41 + 16))
  {

    v42 = sub_224B0B830(v34);
    if (v43)
    {
      v44 = *(*(v41 + 56) + 8 * v42);

      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_224DB2780;
  v46 = sub_224DAEDE8();
  v47 = sub_224DAEDE8();
  v48 = [objc_opt_self() attributeWithDomain:v46 name:v47];

  *(v45 + 32) = v48;
  aBlock = 0;
  v84 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD00000000000002DLL;
  v84 = 0x8000000224DCD0A0;
  sub_224CBC2FC();
  v49 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v49);

  v50 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v51 = sub_224DAEDE8();

  sub_224CBC360();
  v52 = sub_224DAEFF8();

  v53 = [v50 initWithExplanation:v51 target:v78 attributes:v52];

  aBlock = 0;
  v54 = [v53 acquireWithError_];
  v55 = aBlock;
  if (!v54)
  {
    v68 = aBlock;
    v69 = sub_224DA9528();

    v81 = v69;
    swift_willThrow();

    return v53;
  }

  v56 = v79;
  swift_beginAccess();
  v57 = v55;
  v44 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(v56 + 16);
  *(v56 + 16) = 0x8000000000000000;
  sub_224B21AF4(v44, v34, isUniquelyReferenced_nonNull_native);
  *(v56 + 16) = v82;
  swift_endAccess();
LABEL_16:
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = v76;
  v73(v76, v34, v10);
  v61 = v77;
  v62 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = a3;
  (*(v61 + 32))(v63 + v62, v60, v10);
  v87 = sub_224CBC3AC;
  v88 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_224A3837C;
  v86 = &block_descriptor_42;
  v64 = _Block_copy(&aBlock);
  v65 = objc_opt_self();

  v66 = a3;
  v67 = [v65 responderWithHandler_];
  _Block_release(v64);

  [v67 setQueue_];
  v53 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v67];

  return v53;
}

double sub_224CBBE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    BSDispatchQueueAssert();
    if (qword_281351480 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    v14 = __swift_project_value_buffer(v13, qword_281364DF0);
    (*(v6 + 16))(v9, a4, v5);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29[1] = v14;
      v18 = v17;
      v29[0] = swift_slowAlloc();
      v30[0] = v29[0];
      *v18 = 136446466;
      *(v18 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, v30);
      *(v18 + 12) = 2082;
      sub_224CBC2FC();
      v19 = sub_224DAFD28();
      v21 = v20;
      (*(v6 + 8))(v9, v5);
      v22 = sub_224A33F74(v19, v21, v30);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_224A2F000, v15, v16, "%{public}s - Invalidating keep-alive assertion for %{public}s", v18, 0x16u);
      v23 = v29[0];
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v23, -1, -1);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    swift_beginAccess();
    v24 = sub_224B3E288(a4);
    swift_endAccess();
    [v24 invalidate];

    if (!*(*(v12 + 16) + 16))
    {
      v25 = sub_224DAB228();
      v26 = sub_224DAF2A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30[0] = v28;
        *v27 = 136446210;
        *(v27 + 4) = sub_224A33F74(0xD000000000000033, 0x8000000224DCD0D0, v30);
        _os_log_impl(&dword_224A2F000, v25, v26, "%{public}s - No active keep-alive assertions, dropping KeepAliveTransaction", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x22AA5EED0](v28, -1, -1);
        MEMORY[0x22AA5EED0](v27, -1, -1);
      }

      *(v12 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_224CBC274()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224CBC2FC()
{
  result = qword_27D6F5DF0;
  if (!qword_27D6F5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F6570, &qword_224DB3C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5DF0);
  }

  return result;
}

unint64_t sub_224CBC360()
{
  result = qword_281350B00;
  if (!qword_281350B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350B00);
  }

  return result;
}

double sub_224CBC3AC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_224CBBE7C(a1, v4, v5, v6);
}

id sub_224CBC42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v7;
  *(inited + 48) = sub_224CBC5D0(v5);
  *(inited + 56) = v8;
  v9 = sub_224D9FE14(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
  if (a3)
  {
    v10 = sub_224DAEE18();
    sub_224B07D10(a2, a3, v10, v11);
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_224DAEDE8();
  sub_224D9F01C(v9);

  v14 = sub_224DAECC8();

  v15 = [v12 initWithDomain:v13 code:v5 + 1 userInfo:v14];

  return v15;
}

unint64_t sub_224CBC5D0(char a1)
{
  result = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000002ELL;
      break;
    case 6:
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 25:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000031;
      break;
    case 9:
    case 20:
      result = 0xD000000000000016;
      break;
    case 10:
      v3 = 34;
      goto LABEL_19;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
    case 23:
      result = 0xD000000000000012;
      break;
    case 15:
    case 18:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      v3 = 10;
LABEL_19:
      result = v3 | 0xD000000000000011;
      break;
    case 19:
    case 26:
      result = 0xD00000000000001FLL;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 27:
      result = 0x7573657220646142;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}