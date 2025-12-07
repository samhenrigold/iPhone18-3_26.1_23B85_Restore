uint64_t sub_2297BD8FC(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    result = sub_22A4DD07C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2297BDA24()
{
  if (!*v0)
  {
    return 0x7465736E75;
  }

  v1 = [*v0 description];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  MEMORY[0x22AAD08C0](v2, v4);

  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 678716787;
}

uint64_t sub_2297BDAD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v93 = a2;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v90 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v90 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v90 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v90 - v23;
  if (*(v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating) == 1)
  {
    (*(v6 + 16))(&v90 - v23, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();

    v28 = v6;
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v94 = v30;
      *v29 = 136315138;
      v97 = 91;
      v98 = 0xE100000000000000;
      v31 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v31);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v32 = sub_2295A3E30(v97, v98, &v94);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_229538000, v26, v27, "%s NO: busy coordinating reports", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v28 + 8))(v25, v5);
    return 0;
  }

  v92 = v6;
  if (a1 == 1)
  {
    return 1;
  }

  v34 = v24;
  v91 = a1;
  v35 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v36 = *(v3 + v35);
  if (!*(v36 + 16) || (v37 = sub_2296DC084(1), (v38 & 1) == 0))
  {
    v50 = v92;
    (*(v92 + 16))(v9, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCCC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 136315394;
      v94 = 91;
      v95 = 0xE100000000000000;
      v96 = v54;
      v55 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v55);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v56 = sub_2295A3E30(v94, v95, &v96);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2048;
      *(v53 + 14) = 1;
      _os_log_impl(&dword_229538000, v51, v52, "%s NO: unknown report value for contributor type %lu", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    (*(v50 + 8))(v9, v5);
    return 0;
  }

  v39 = *(*(v36 + 56) + 8 * v37);
  if (v39)
  {
    v40 = v39;
    v41 = sub_2297BE85C(v40);
    if (v42)
    {
      v43 = v92;
      (*(v92 + 16))(v12, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

      v44 = sub_22A4DD05C();
      v45 = sub_22A4DDCCC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 136315394;
        v93 = v40;
        v94 = 91;
        v95 = 0xE100000000000000;
        v96 = v47;
        v48 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v48);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v49 = sub_2295A3E30(v94, v95, &v96);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2048;
        *(v46 + 14) = 1;
        _os_log_impl(&dword_229538000, v44, v45, "%s NO: unknown state for contributor type %lu", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x22AAD4E50](v47, -1, -1);
        MEMORY[0x22AAD4E50](v46, -1, -1);
      }

      else
      {
      }

      (*(v43 + 8))(v12, v5);
      return 0;
    }

    v66 = v92;
    if (v93 != 1)
    {
      v79 = MEMORY[0x277D84F90];
      if (v41 == 3)
      {
        v79 = &unk_283CDBDD8;
      }

      if (v41 == 2)
      {
        v80 = &unk_283CDBDA8;
      }

      else
      {
        v80 = v79;
      }

      v81 = v80[2];
      v82 = 4;
      while (v81)
      {
        v83 = v80[v82++];
        --v81;
        if (v83 == v91)
        {

          return 1;
        }
      }

      (*(v66 + 16))(v34, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

      v84 = sub_22A4DD05C();
      v85 = sub_22A4DDCCC();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 136315650;
        v93 = v40;
        v94 = 91;
        v95 = 0xE100000000000000;
        v96 = v87;
        v88 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v88);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v89 = sub_2295A3E30(v94, v95, &v96);

        *(v86 + 4) = v89;
        *(v86 + 12) = 2048;
        *(v86 + 14) = v91;
        *(v86 + 22) = 2048;
        *(v86 + 24) = 1;
        _os_log_impl(&dword_229538000, v84, v85, "%s NO: contributor type %lu is not relevant to current state of contributor type %lu", v86, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x22AAD4E50](v87, -1, -1);
        MEMORY[0x22AAD4E50](v86, -1, -1);
      }

      else
      {
      }

      (*(v66 + 8))(v34, v5);
      return 0;
    }

    (*(v92 + 16))(v16, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v67 = sub_22A4DD05C();
    v68 = sub_22A4DDCCC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 136315394;
      v93 = v40;
      v94 = 91;
      v95 = 0xE100000000000000;
      v96 = v70;
      v71 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v71);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v72 = sub_2295A3E30(v94, v95, &v96);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2048;
      *(v69 + 14) = v91;
      _os_log_impl(&dword_229538000, v67, v68, "%s YES: previous value for contributor type %lu was nil", v69, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AAD4E50](v70, -1, -1);
      MEMORY[0x22AAD4E50](v69, -1, -1);
    }

    else
    {
    }

    (*(v66 + 8))(v16, v5);
    return 1;
  }

  else
  {
    v57 = *(v92 + 16);
    v58 = v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
    if (v93 != 1)
    {
      v57(v19, v58, v5);

      v73 = sub_22A4DD05C();
      v74 = sub_22A4DDCCC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 136315394;
        v94 = 91;
        v95 = 0xE100000000000000;
        v96 = v76;
        v77 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v77);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v78 = sub_2295A3E30(v94, v95, &v96);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2048;
        *(v75 + 14) = 1;
        _os_log_impl(&dword_229538000, v73, v74, "%s NO: unset report value for contributor type %lu", v75, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x22AAD4E50](v76, -1, -1);
        MEMORY[0x22AAD4E50](v75, -1, -1);
      }

      (*(v92 + 8))(v19, v5);
      return 0;
    }

    v59 = v5;
    v57(v22, v58, v5);

    v60 = sub_22A4DD05C();
    v61 = sub_22A4DDCCC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 136315394;
      v94 = 91;
      v95 = 0xE100000000000000;
      v96 = v63;
      v64 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v64);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v65 = sub_2295A3E30(v94, v95, &v96);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2048;
      *(v62 + 14) = v91;
      _os_log_impl(&dword_229538000, v60, v61, "%s YES: previous value for contributor type %lu was nil", v62, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AAD4E50](v63, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);
    }

    (*(v92 + 8))(v22, v59);
    return 1;
  }
}

id sub_2297BE85C(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    v14 = [v12 state];
    if (v14 < 2)
    {
      (*(v5 + 16))(v10, v2 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v4);
      v27 = v13;

      v28 = sub_22A4DD05C();
      v29 = sub_22A4DDCEC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315650;
        v40 = 91;
        v41 = 0xE100000000000000;
        v42 = v31;
        v32 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v32);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596840);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v33 = sub_2295A3E30(v40, v41, &v42);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2048;
        *(v30 + 14) = 1;
        *(v30 + 22) = 2112;
        *(v30 + 24) = v27;
        v34 = v38;
        *v38 = v27;
        v35 = v27;
        _os_log_impl(&dword_229538000, v28, v29, "%s Found user activity report with invalid state for contributor type %lu: %@", v30, 0x20u);
        sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        v36 = v39;
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v30, -1, -1);

        (*(v5 + 8))(v10, v4);
        return 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    else
    {
      if ((v14 - 2) <= 1)
      {
        v15 = [v12 state];

        return v15;
      }
    }
  }

  else
  {
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v4);
    v17 = a1;

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315650;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v21;
      v22 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v22);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596840);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v23 = sub_2295A3E30(v40, v41, &v42);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 1;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v17;
      v24 = v38;
      *v38 = v17;
      v25 = v17;
      _os_log_impl(&dword_229538000, v18, v19, "%s Found user activity report with incorrect contributor type, expected contributor type %lu: %@", v20, 0x20u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v26 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);

      (*(v5 + 8))(v8, v4);
      return 0;
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t sub_2297BEDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DD07C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BEE98, v2, 0);
}

uint64_t sub_2297BEE98()
{
  v33 = v0;
  v1 = [*(v0 + 16) latestReport];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 value];
      *(v0 + 72) = v6;
      v7 = swift_task_alloc();
      *(v0 + 80) = v7;
      *v7 = v0;
      v7[1] = sub_2297BF2D4;

      return sub_2297BC704(v6);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = [swift_getObjCClassFromObject() contributorType];
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_2297BF468;
      v11 = *(v0 + 24);

      return sub_2297BD514(v9, v11);
    }

    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, *(v0 + 40));
    v12 = v2;

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    if (v15)
    {
      v31 = *(v0 + 56);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315394;
      v30 = v18;
      v32[0] = v20;
      v32[1] = 91;
      v32[2] = 0xE100000000000000;
      v21 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v21);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A596750);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v22 = sub_2295A3E30(91, 0xE100000000000000, v32);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = v12;
      v24 = [v23 description];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      v28 = sub_2295A3E30(v25, v27, v32);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_229538000, v13, v14, "%s Found unexpected user activity report value: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v17 + 8))(v31, v30);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2297BF2D4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2297BF3FC, v2, 0);
}

uint64_t sub_2297BF3FC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2297BF468()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2297BF578, v1, 0);
}

uint64_t sub_2297BF578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297BF5E0()
{
  v1 = v0;
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - v6;
  v8 = sub_22A4DB74C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider) now];
  sub_22A4DB70C();

  sub_22A4DB6DC();
  v19 = v15;
  v20 = *(v9 + 8);
  v68 = v9 + 8;
  v20(v19, v8);
  v65 = v3;
  v21 = *(v3 + 16);
  v59 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v60 = v21;
  v69 = v2;
  v61 = v3 + 16;
  v21(v7, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);
  v22 = *(v9 + 16);
  v66 = v17;
  v22(v12, v17, v8);

  v63 = v7;
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCCC();

  v25 = os_log_type_enabled(v23, v24);
  v64 = v8;
  v67 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72[0] = v27;
    *v26 = 136315394;
    v28 = v8;
    v70 = 91;
    v71 = 0xE100000000000000;
    v29 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v29);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5967E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v30 = sub_2295A3E30(v70, v71, v72);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = sub_22A4DB6AC();
    v32 = [v31 hmf_localTimeDescription];

    v33 = sub_22A4DD5EC();
    v35 = v34;

    v67(v12, v28);
    v36 = sub_2295A3E30(v33, v35, v72);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_229538000, v23, v24, "%s Scheduling periodic update timer to fire at %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);
  }

  else
  {

    v20(v12, v8);
  }

  v37 = *(v65 + 8);
  v37(v63, v69);
  v38 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager);
  v39 = sub_22A4DD5AC();
  v40 = v66;
  v41 = sub_22A4DB6AC();
  v70 = 0;
  v42 = [v38 scheduleTaskWithIdentifier:v39 fireDate:v41 onObserver:v1 selector:sel_handleBackgroundTaskManagerTimerFiredWithNotification_ error:&v70];

  if (v42)
  {
    v43 = v70;
    return (v67)(v40, v64);
  }

  else
  {
    v45 = v70;
    v46 = sub_22A4DB3EC();

    swift_willThrow();
    v47 = v62;
    v60(v62, v1 + v59, v69);

    v48 = v46;
    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCEC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v72[0] = v63;
      *v51 = 136315394;
      v70 = 91;
      v71 = 0xE100000000000000;
      v53 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v53);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5967E0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v54 = sub_2295A3E30(v70, v71, v72);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2112;
      v55 = v46;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v56;
      *v52 = v56;
      _os_log_impl(&dword_229538000, v49, v50, "%s Failed to schedule periodic update timer with error: %@", v51, 0x16u);
      sub_22953EAE4(v52, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v52, -1, -1);
      v57 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);

      v37(v62, v69);
      v58 = v66;
    }

    else
    {

      v37(v47, v69);
      v58 = v40;
    }

    return (v67)(v58, v64);
  }
}

uint64_t sub_2297BFD58(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_22A4DD49C();

  v18[1] = sub_22A4DD5EC();
  v18[2] = v10;
  sub_22A4DE18C();
  if (!*(v9 + 16) || (v11 = sub_2295402E8(v19), (v12 & 1) == 0))
  {

    sub_22954045C(v19);
LABEL_8:
    v20 = 0u;
    v21 = 0u;
    return sub_22953EAE4(&v20, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v9 + 56) + 32 * v11, &v20);
  sub_22954045C(v19);

  if (!*(&v21 + 1))
  {
    return sub_22953EAE4(&v20, &unk_27D87DE60, &unk_22A57A960);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v14 = v19[0];
    v15 = v19[1];
    v16 = sub_22A4DD9DC();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v2;
    v17[5] = v14;
    v17[6] = v15;

    sub_22957F3C0(0, 0, v6, &unk_22A583A20, v17);
  }

  return result;
}

uint64_t sub_2297BFF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297C0030(a5, a6);
}

uint64_t sub_2297C0030(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C00F4, v2, 0);
}

uint64_t sub_2297C00F4()
{
  v23 = v0;
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier) == v0[5] && *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier + 8) == v0[6])
  {
LABEL_7:
    (*(v0[9] + 16))(v0[10], v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();

    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    if (v5)
    {
      v21 = v0[10];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315138;
      v22[0] = v10;
      v22[1] = 91;
      v22[2] = 0xE100000000000000;
      v11 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v11);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD000000000000024, 0x800000022A596770);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v12 = sub_2295A3E30(91, 0xE100000000000000, v22);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_229538000, v3, v4, "%s Sending periodic reports", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);

      (*(v7 + 8))(v21, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v13 = v0[7];
    v14 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    swift_beginAccess();
    v15 = *(v13 + v14);
    if (*(v15 + 16))
    {
      v16 = sub_2296DC084(1);
      if (v17)
      {
        if (*(*(v15 + 56) + 8 * v16))
        {
          sub_2297C0578(0, 6, 1);
        }
      }
    }

    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v18[1] = sub_2297C0418;

    return sub_2297C0BEC();
  }

  if (sub_22A4DE60C())
  {
    v1 = v0[7];
    goto LABEL_7;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2297C0418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2297C0578(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v75 = a3;
  v74 = a2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB74C();
  v70 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v79 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v71 = v11;
  if (a1 && (v13 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports, swift_beginAccess(), v14 = *(v3 + v13), *(v14 + 16)) && (v15 = sub_2296DC084(a1), (v16 & 1) != 0) && (v17 = *(*(v14 + 56) + 8 * v15)) != 0)
  {
    (*(v7 + 16))(v9, v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v6);
    v77 = v17;
    v18 = v17;

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCDC();

    LODWORD(v78) = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81[0] = v73;
      *v21 = 136315650;
      v82 = 91;
      v83 = 0xE100000000000000;
      v69 = v19;
      v22 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v22);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000003DLL, 0x800000022A5967A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v23 = sub_2295A3E30(v82, v83, v81);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      a1 = v76;
      v24 = v72;
      *v72 = v77;
      *(v21 + 22) = 2048;
      *(v21 + 24) = a1;
      v25 = v18;
      v26 = v69;
      _os_log_impl(&dword_229538000, v69, v78, "%s Updating lastUpdateTimestamp of other reports to match latest report %@ from contributorType %lu", v21, 0x20u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v27 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    v68 = [v18 lastUpdateTimestamp];
    sub_22A4DB70C();
  }

  else
  {
    v18 = [*(v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider) now];
    sub_22A4DB70C();
  }

  v28 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v29 = *(v28 + v4);
  v30 = v29 + 8;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29[8];
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v72 = v29;
  v73 = v28;
  while (v33)
  {
LABEL_18:
    v40 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v41 = (v35 << 9) | (8 * v40);
    v42 = *(v29[6] + v41);
    v43 = *(v29[7] + v41);
    if (v42 != a1 && v43 != 0)
    {
      v45 = v43;
      v46 = sub_22A4DB6AC();
      v47 = v74;
      if ((v75 & 1) == 0)
      {
        v47 = [v45 reason];
      }

      v77 = v45;
      v48 = [v45 copyReportWithLastUpdateTimestamp:v46 reason:v47];

      swift_beginAccess();
      v78 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v4;
      v51 = isUniquelyReferenced_nonNull_native;
      v80 = *(v28 + v50);
      v52 = v80;
      v53 = v50;
      *(v28 + v50) = 0x8000000000000000;
      v54 = v42;
      v56 = sub_2296DC084(v42);
      v57 = v52[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_37;
      }

      v60 = v55;
      if (v52[3] >= v59)
      {
        if ((v51 & 1) == 0)
        {
          sub_229899CFC();
        }
      }

      else
      {
        sub_2298966F8(v59, v51);
        v61 = sub_2296DC084(v54);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_39;
        }

        v56 = v61;
      }

      v4 = v53;
      v63 = v80;
      if (v60)
      {
        v36 = v80[7];
        v37 = *(v36 + 8 * v56);
        v38 = v78;
        *(v36 + 8 * v56) = v78;
      }

      else
      {
        v80[(v56 >> 6) + 8] |= 1 << v56;
        *(v63[6] + 8 * v56) = v54;
        v38 = v78;
        *(v63[7] + 8 * v56) = v78;
        v64 = v63[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_38;
        }

        v63[2] = v66;
      }

      v28 = v73;
      *(v73 + v53) = v63;
      swift_endAccess();

      a1 = v76;
      v29 = v72;
    }
  }

  while (1)
  {
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v39 >= v34)
    {
      (*(v70 + 8))(v79, v71);
    }

    v33 = v30[v39];
    ++v35;
    if (v33)
    {
      v35 = v39;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  type metadata accessor for HMDHomeActivityStateContributorType(0);
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2297C0BEC()
{
  v1[9] = v0;
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C0CC4, v0, 0);
}

uint64_t sub_2297C0CC4()
{
  v63 = v0;
  v1 = sub_2297C163C();
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  if (v1)
  {
    v5 = v1;
    v6 = *(v3 + 16);
    v58 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
    v6(v0[14], v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();

    v55 = v8;
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[14];
    v11 = v0[11];
    v56 = v0[10];
    if (v9)
    {
      v12 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v12 = 136315394;
      v60 = v54;
      v61 = 91;
      v62 = 0xE100000000000000;
      v13 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v13);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v14 = sub_2295A3E30(91, 0xE100000000000000, &v60);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2080;
      type metadata accessor for HMDHomeActivityStateContributorType(0);
      sub_2297C282C();
      v15 = sub_22A4DD4AC();
      v17 = sub_2295A3E30(v15, v16, &v60);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_229538000, v7, v55, "%s Sending report values: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);
    }

    else
    {
    }

    v30 = v56;
    v57 = *(v11 + 8);
    v57(v10, v30);
    v31 = v0[13];
    v32 = v0[10];
    sub_2297B9D10(v5);
    v34 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v36;
    *(inited + 48) = v34;
    v37 = sub_22956AEBC(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87D508, &qword_22A5787E8);
    v6(v31, v4 + v58, v32);

    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCDC();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[13];
    v42 = v0[10];
    if (v40)
    {
      v59 = v0[13];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 136315394;
      v60 = v44;
      v61 = 91;
      v62 = 0xE100000000000000;
      v45 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v45);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v46 = sub_2295A3E30(v61, v62, &v60);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v47 = sub_22A4DD4AC();
      v49 = sub_2295A3E30(v47, v48, &v60);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_229538000, v38, v39, "%s Sending report payload: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      v50 = v59;
    }

    else
    {

      v50 = v41;
    }

    v57(v50, v42);
    v51 = __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger), *(v0[9] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger + 24));
    sub_2296F7FBC(v37);
    v0[15] = v52;

    v53 = *v51;
    v0[16] = *v51;

    return MEMORY[0x2822009F8](sub_2297C1434, v53, 0);
  }

  else
  {
    (*(v3 + 16))(v0[12], v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[10];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v60 = v25;
      v61 = 91;
      v62 = 0xE100000000000000;
      v26 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v26);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v27 = sub_2295A3E30(91, 0xE100000000000000, &v60);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_229538000, v18, v19, "%s No reports to send", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v22 + 8))(v21, v23);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2297C1434()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
  v4 = @"HMDUserActivityReportUpdatedMessage";
  v5 = sub_22A4DB77C();
  v6 = sub_22A4DB77C();
  v7 = [v3 initWithTarget:v5 homeUUID:v6];

  v8 = objc_allocWithZone(HMDRemoteMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v9 = sub_22A4DD47C();
  v10 = [v8 initWithName:v4 destination:v7 payload:v9 type:0 timeout:1 secure:60.0];

  *(v1 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = 0;
  sub_2295B0060(v10);

  return MEMORY[0x2822009F8](sub_2297C15C0, v2, 0);
}

uint64_t sub_2297C15C0()
{
  sub_2297BF5E0();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2297C163C()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!*(v7 + 16) || (v8 = sub_2296DC084(1), (v9 & 1) == 0))
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315394;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v17;
      v18 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v18);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F547365756C6176, 0xEE002928646E6553);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v19 = sub_2295A3E30(v40, v41, &v42);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 1;
      _os_log_impl(&dword_229538000, v14, v15, "%s Contributor type %lu value is unknown, not sending values", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2297BE85C(v11);
    if ((v13 & 1) == 0)
    {
      v35 = v12;

      sub_2297C2884(v36, v1, v35);
      v38 = v37;

      return v38;
    }

    return 0;
  }

  v21 = *(v1 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  result = sub_22A4DE3DC();
  v22 = 0;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  if (v25)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v28 = v27 | (v22 << 6);
LABEL_20:
      v31 = *(*(v21 + 48) + 8 * v28);
      *(result + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v28;
      *(result[6] + 8 * v28) = v31;
      *(result[7] + 8 * v28) = 0;
      v32 = result[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      result[2] = v34;
      if (!v25)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        return result;
      }

      v30 = *(v21 + 64 + 8 * v22);
      ++v29;
      if (v30)
      {
        v25 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v22 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2297C1A30@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v5;
  v6 = sub_22A4DDFDC();
  v7 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 72) = v7;
  *(inited + 48) = v6;
  v8 = sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  if (v3)
  {
    v9 = sub_22A4DD5EC();
    v11 = v10;
    v39 = v7;
    v38[0] = sub_22A4DDEAC();
    sub_229543C58(v38, v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v8;
    v13 = __swift_mutable_project_boxed_opaque_existential_0(v36, v37);
    MEMORY[0x28223BE20](v13);
    v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    sub_2297FED80(*v15, v9, v11, isUniquelyReferenced_nonNull_native, &v40);

    __swift_destroy_boxed_opaque_existential_0(v36);
    v17 = v40;
    v18 = sub_22A4DD5EC();
    v20 = v19;
    v21 = [v3 serializedRemoteMessagePayload];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v22 = sub_22A4DD49C();

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v38[0] = v22;
    sub_229543C58(v38, v36);
    LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
    v40 = v17;
    v23 = __swift_mutable_project_boxed_opaque_existential_0(v36, v37);
    MEMORY[0x28223BE20](v23);
    v25 = (v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    sub_2297FED6C(*v25, v18, v20, v21, &v40);
  }

  else
  {
    v27 = sub_22A4DD5EC();
    v29 = v28;
    v39 = v7;
    v38[0] = sub_22A4DDEAC();
    sub_229543C58(v38, v36);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v8;
    v31 = __swift_mutable_project_boxed_opaque_existential_0(v36, v37);
    MEMORY[0x28223BE20](v31);
    v33 = (v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    sub_2297FED80(*v33, v27, v29, v30, &v40);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v36);
  *a2 = v40;
  return result;
}

uint64_t sub_2297C1EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297C1F50(a5, a6);
}

uint64_t sub_2297C1F50(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C2014, v2, 0);
}

uint64_t sub_2297C2014()
{
  v25 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_2296DC084(v0[5]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[11] = v6;
    v7 = v6;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_2297C2318;
    v9 = v0[6];

    return sub_2297BEDD4(v7, v9);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];
    if (v13)
    {
      v23 = v0[10];
      v22 = v0[5];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v24[0] = v18;
      v24[1] = 91;
      v24[2] = 0xE100000000000000;
      v19 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v19);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD000000000000026, 0x800000022A596720);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v20 = sub_2295A3E30(91, 0xE100000000000000, v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v22;
      _os_log_impl(&dword_229538000, v11, v12, "%s Unexpectedly asked to handle state change for detector of unknown type: %lu", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v15 + 8))(v23, v16);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2297C2318()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2297C2428, v1, 0);
}

uint64_t sub_2297C2428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297C25B0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2297C2600(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2297C2654(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2297C266C(void *result, int a2)
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

uint64_t sub_2297C269C(uint64_t a1)
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

  return sub_2297C1EA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C2764(uint64_t a1)
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

  return sub_2297BFF84(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2297C282C()
{
  result = qword_27D881370;
  if (!qword_27D881370)
  {
    type metadata accessor for HMDHomeActivityStateContributorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881370);
  }

  return result;
}

void sub_2297C2884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  if (a3 == 3)
  {
    v9 = &unk_283CDBDD8;
  }

  if (a3 == 2)
  {
    v10 = &unk_283CDBDA8;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  while (v7)
  {
LABEL_18:
    v19 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v20 = *(*(a1 + 48) + v19);
    v21 = *(*(a1 + 56) + v19);
    v22 = v21;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v21)
    {
      v23 = v22;
      v24 = [v23 contributorType];
      v25 = v10[2];
      v26 = 4;
      while (v25)
      {
        v27 = v10[v26++];
        --v25;
        if (v27 == v24)
        {
          goto LABEL_34;
        }
      }

      v21 = 0;
LABEL_34:
    }

    v32 = *(v3 + 16);
    if (*(v3 + 24) <= v32)
    {
      sub_2298966F8(v32 + 1, 1);
      v3 = v34;
    }

    sub_22A4DE77C();
    MEMORY[0x22AAD1960](v20);
    v12 = sub_22A4DE7BC();
    v13 = v3 + 64;
    v14 = -1 << *(v3 + 32);
    v15 = v12 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v3 + 64 + 8 * (v15 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v14) >> 6;
      while (++v16 != v29 || (v28 & 1) == 0)
      {
        v30 = v16 == v29;
        if (v16 == v29)
        {
          v16 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v16);
        if (v31 != -1)
        {
          v17 = __clz(__rbit64(~v31)) + (v16 << 6);
          goto LABEL_12;
        }
      }

      goto LABEL_39;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_12:
    v7 &= v7 - 1;
    *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v20;
    *(*(v3 + 56) + 8 * v17) = v21;
    ++*(v3 + 16);
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v18);
    ++v11;
    if (v7)
    {
      v11 = v18;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_2297C2B3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_2297BB030(v2, v3);
}

uint64_t sub_2297C2BE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2297BADFC(v2, v3, v4);
}

uint64_t sub_2297C2C9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2297BA994(v2, v3);
}

uint64_t sub_2297C2D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297BA380(a1, v4, v5, v7, v6);
}

uint64_t sub_2297C2E08(uint64_t a1)
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

  return sub_2297BA178(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(v4 + 16);
  v23[0] = *v4;
  v23[1] = v13;
  v24 = *(v4 + 32);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v22[4] = sub_2297C3B60(&qword_27D87EE20, &unk_27D87EC90, &unk_22A57CFD0);
  sub_229564F88(a3, v12, &unk_27D87D2A0, &unk_22A578BD0);
  v14 = 0;
  v15 = 0;
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = sub_2296B2730(v23);
    v15 = v16;
    (*(v7 + 8))(v9, v6);
  }

  v22[0] = v14;
  v22[1] = v15;
  v17 = v21;

  return sub_229890DC4(v22, v20, v17);
}

uint64_t sub_2297C30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v19 = a1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v21[4] = sub_2297C3B60(&qword_27D87EE20, &unk_27D87EC90, &unk_22A57CFD0);
  sub_229564F88(a3, v13, &unk_27D881AA0, &qword_22A57BC20);
  v14 = 0;
  v15 = 0;
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v13, v4);
    (*(v5 + 16))(v11, v7, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
    v14 = sub_2297C337C(v11);
    v15 = v16;
    sub_22953EAE4(v11, &unk_27D881AA0, &qword_22A57BC20);
    (*(v5 + 8))(v7, v4);
  }

  v21[0] = v14;
  v21[1] = v15;
  v17 = v20;

  return sub_229890DC4(v21, v19, v17);
}

uint64_t sub_2297C337C(uint64_t a1)
{
  v2 = sub_22A4DB91C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, v8, &unk_27D881AA0, &qword_22A57BC20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22953EAE4(v8, &unk_27D881AA0, &qword_22A57BC20);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    sub_22A4DB90C();
    v15 = sub_22A4DB8EC();
    (*(v3 + 8))(v5, v2);
    [v14 setTimeZone_];

    v16 = sub_22A4DB6AC();
    v17 = [v14 stringFromDate_];

    v18 = sub_22A4DD5EC();
    (*(v10 + 8))(v12, v9);
    return v18;
  }
}

uint64_t sub_2297C3648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  if ([v0 lastKnownValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v8 = *(&v32 + 1);
    v9 = __swift_project_boxed_opaque_existential_0(&v31, *(&v32 + 1));
    v30 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
    sub_229543C58(v29, &v34);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v31 = v34;
  v32 = v35;
  if (*(&v35 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v11 = 0;
      v12 = *v29;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v31, &unk_27D87FC20, &unk_22A578810);
  }

  v11 = 1;
  v12 = 0.0;
LABEL_9:
  if ([v1 previousValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v13 = *(&v32 + 1);
    v14 = __swift_project_boxed_opaque_existential_0(&v31, *(&v32 + 1));
    v30 = v13;
    v15 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    sub_229543C58(v29, &v34);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v31 = v34;
  v32 = v35;
  if (*(&v35 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v16 = 0;
      v17 = *v29;
      goto LABEL_17;
    }
  }

  else
  {
    sub_22953EAE4(&v31, &unk_27D87FC20, &unk_22A578810);
  }

  v16 = 1;
  v17 = 0.0;
LABEL_17:
  v18 = [v1 characteristicType];
  v19 = sub_22A4DD5EC();
  v21 = v20;

  *(&v32 + 1) = MEMORY[0x277D837D0];
  v33 = &off_283CDFC68;
  *&v31 = v19;
  *(&v31 + 1) = v21;
  sub_229890DC4(&v31, 0xD000000000000012, 0x800000022A596960);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880210, &unk_22A583B10);
  *(&v32 + 1) = v22;
  v23 = sub_2297C3B60(&qword_27D881390, &qword_27D880210, &unk_22A583B10);
  v33 = v23;
  *&v31 = v12;
  BYTE4(v31) = v11;
  sub_229890DC4(&v31, 0x776F6E4B7473616CLL, 0xEE0065756C61566ELL);
  v24 = [v1 lastKnownValueUpdateTime];
  if (v24)
  {
    v25 = v24;
    sub_22A4DB70C();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_22A4DB74C();
  (*(*(v27 - 8) + 56))(v4, v26, 1, v27);
  sub_2296692F8(v4, v7);
  sub_2297C30F0(0xD000000000000018, 0x800000022A593760, v7);
  sub_22953EAE4(v7, &qword_27D87D100, &unk_22A583B00);
  *(&v32 + 1) = v22;
  v33 = v23;
  *&v31 = v17;
  BYTE4(v31) = v16;
  return sub_229890DC4(&v31, 0x73756F6976657270, 0xED000065756C6156);
}

uint64_t sub_2297C3B60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2297C3BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = sub_22A4DD18C();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD16C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD12C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = 0;
  }

  else
  {
    *v14 = 0;
    v14[8] = 1;
    (*(v12 + 104))(v14, *MEMORY[0x277CCE630], v11);
    sub_22A4DD17C();
    sub_22A4DD17C();
    v15 = sub_22A4DD14C();
    (*(v18 + 8))(v6, v4);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }

  return v15 & 1;
}

uint64_t sub_2297C3EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = a3;
  v21 = a4;
  v19[1] = a2;
  v20 = sub_22A4DD18C();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD16C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DD12C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      *v15 = v21;
      v17 = MEMORY[0x277CCE628];
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      *v15 = v21;
      v17 = MEMORY[0x277CCE620];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      *v15 = v21;
      v15[8] = 0;
      v17 = MEMORY[0x277CCE630];
      goto LABEL_10;
    }

    if (a1 == 1)
    {
      *v15 = v21;
      v17 = MEMORY[0x277CCE618];
LABEL_10:
      (*(v13 + 104))(v15, *v17, v12);
      sub_22A4DD17C();
      sub_22A4DD17C();
      v16 = sub_22A4DD14C();
      (*(v5 + 8))(v7, v20);
      (*(v9 + 8))(v11, v8);
      (*(v13 + 8))(v15, v12);
    }
  }

  return v16 & 1;
}

uint64_t sub_2297C41F4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon31ShimAccessoryMatterCapabilities_impl;
  v2 = sub_22A4DD1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2297C4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD1AC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_22A4DD13C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C43C4, 0, 0);
}

uint64_t sub_2297C43C4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = MEMORY[0x277CCE640];
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = MEMORY[0x277CCE648];
LABEL_5:
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    (*(v6 + 104))(v4, *v2, v7);
    v8 = *(v6 + 16);
    v8(v3, v4, v7);
    *(v0 + 96) = type metadata accessor for ShimAccessoryMatterCapabilities(0);
    *(v0 + 104) = swift_allocObject();
    v8(v5, v3, v7);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_2297C4584;
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);

    return MEMORY[0x2821211C8](v11, v10);
  }

  [*(v0 + 24) rejectWithError_];

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2297C4584()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2297C47A4;
  }

  else
  {
    v2 = sub_2297C4698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297C4698()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0[8] + 8);
  v6(v0[10], v0[7]);
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC13HomeKitDaemon31ShimAccessoryMatterCapabilities_impl, v2, v4);
  [v5 fulfillWithValue_];

  v6(v0[11], v0[7]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2297C47A4()
{
  v1 = v0[15];
  v2 = v0[3];
  v3 = *(v0[8] + 8);
  v3(v0[10], v0[7]);
  swift_deallocPartialClassInstance();
  v4 = sub_22A4DB3DC();
  v5 = sub_22A4DB3DC();

  [v2 rejectWithError_];
  v3(v0[11], v0[7]);

  v6 = v0[1];

  return v6();
}

HMDMatterCapabilitiesFactory __swiftcall HMDMatterCapabilitiesFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for ShimAccessoryMatterCapabilities(uint64_t a1)
{
  result = qword_27D8813F8;
  if (!qword_27D8813F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297C49D0(uint64_t a1)
{
  result = sub_22A4DD1AC();
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

unint64_t type metadata accessor for HMDMatterCapabilitiesFactory()
{
  result = qword_27D881408;
  if (!qword_27D881408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881408);
  }

  return result;
}

id sub_2297C4AE4(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v12[0] = 0;
  v5 = [objc_opt_self() futureWithPromise_];
  v6 = v12[0];
  if (!v12[0])
  {
    __break(1u);
  }

  v7 = v5;
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v6;
  v10 = v6;
  sub_22957F3C0(0, 0, v4, &unk_22A583BA8, v9);

  return v7;
}

uint64_t sub_2297C4C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297C4290(a1, v4, v5, v7, v6);
}

void sub_2297C4D28(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  type metadata accessor for ThermostatSuggestedPreset.Current(0);
  type metadata accessor for ThermostatSuggestedPreset.MKF(0);
  sub_22A4DB69C();
  LOBYTE(a2) = a2[1];
  v13 = v12 / 60.0;
  v14 = type metadata accessor for ThermostatSuggestedPresetLogEvent();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_coreAnalyticsEventName];
  *v16 = 0xD000000000000039;
  v16[1] = 0x800000022A596A60;
  *&v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_coreAnalyticsEventOptions] = 1;
  v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_presetScenario] = v10;
  v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_nextPresetScenario] = v11;
  *&v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_durationInMinutes] = v13;
  v15[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_changedReason] = a2;
  v34.receiver = v15;
  v34.super_class = v14;
  v17 = objc_msgSendSuper2(&v34, sel_init);
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v18 = v17;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v3;
    v33 = v22;
    v23 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A596AE0, &v33);
    *(v21 + 12) = 2080;
    sub_22970D804();
    sub_22956540C();
    v24 = sub_22A4DD4AC();
    v31 = v6;
    v25 = v24;
    v27 = v26;

    v28 = sub_2295A3E30(v25, v27, &v33);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_229538000, v19, v20, "%s Submitting log event %s", v21, 0x16u);
    swift_arrayDestroy();
    v29 = v23;
    v3 = v32;
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v7 + 8))(v9, v31);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  [*(v3 + 16) submitLogEvent_];
}

uint64_t sub_2297C50A4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_2297C51B8(uint64_t a1)
{
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);

  v6(v7);

  v8 = sub_22A4DB6AC();
  (*(v3 + 8))(v5, v2);

  return v8;
}

void sub_2297C52BC(void *a1)
{
  v1 = [a1 startOfDayByAddingDayCount_];
  sub_22A4DB70C();
}

void sub_2297C53AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v21 = a8;
  v12 = (a5)(0, a2);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  v16 = sub_22A4DD5EC();
  v18 = v17;
  swift_unknownObjectRetain_n();
  v19 = a1;
  a6(a3);
  v21(v16, v18, v15, v12, a7);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v15, v12);
}

void sub_2297C6258(uint64_t a1)
{
  v1 = sub_22A4DBE6C();
  sub_22A4DBE8C();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFADD__(v1, v2))
  {
LABEL_9:
    __break(1u);
  }
}

id sub_2297C6480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventCounterGroupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2297C6528@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_2297C6574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = type metadata accessor for EventCounterGroupBridge();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v14 = &v13[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v14 = sub_2297C6D60;
  v14[1] = v11;
  v15 = objc_opt_self();

  v16 = [v15 sharedInstance];
  v19.receiver = v13;
  v19.super_class = v12;
  v17 = objc_msgSendSuper2(&v19, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v16);

  swift_unknownObjectRelease();

  (*(v7 + 8))(a3, v6);
  return v17;
}

id sub_2297C676C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for EventCounterGroupBridge();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v9 = &v8[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v9 = sub_2297C6DD4;
  v9[1] = v6;
  v10 = objc_opt_self();
  v11 = a3;

  v12 = [v10 sharedInstance];
  v15.receiver = v8;
  v15.super_class = v7;
  v13 = objc_msgSendSuper2(&v15, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v12);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_2297C6898(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_229543DBC(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_229897F24();
      }
    }

    else
    {
      sub_22989385C(v30, v43 & 1);
      v32 = sub_229543DBC(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_22953EE84(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

void sub_2297C6B34(void *a1, uint64_t a2)
{
  v3 = [a1 eventCounters];
  if (v3)
  {
    v4 = v3;
    sub_229678A8C();
    v5 = sub_22A4DD49C();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + 8 * (v12 | (v11 << 6)));

        v14 = v13;
        v15 = [v14 integerValue];
        v16 = sub_22A4DD5AC();
        (*(a2 + 16))(a2, v16, v15);

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2297C6CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2297C6D60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_2297C6DDC()
{
  type metadata accessor for HindsightDigestController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD18, &unk_22A577A50);
  result = sub_22A4DD64C();
  qword_27D8AB990 = result;
  *algn_27D8AB998 = v1;
  return result;
}

uint64_t sub_2297C6E30()
{
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB990;

  return v0;
}

uint64_t sub_2297C6E98(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22A4DB7DC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_22A4DD07C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C6FCC, 0, 0);
}

uint64_t sub_2297C6FCC()
{
  v0[11] = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = *algn_27D8AB998;
  v0[12] = qword_27D8AB990;
  v0[13] = v2;

  sub_22A4DD06C();
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_229538000, v4, v5, "Ensuring digests for home %@", v7, 0xCu);
    sub_2295A1C40(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v0[14] = v14;
  v0[15] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  v15 = [v13 spiClientIdentifier];
  sub_22A4DB79C();

  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_2297C7210;
  v17 = v0[5];

  return MEMORY[0x282171C00](v17);
}

uint64_t sub_2297C7210()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2297C7518;
  }

  else
  {
    v5 = sub_2297C7380;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2297C7380()
{
  v1 = *(v0 + 16);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_229538000, v3, v4, "Finished ensuring digests for home %@", v6, 0xCu);
    sub_2295A1C40(v7);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  (*(v0 + 112))(*(v0 + 72), *(v0 + 48));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2297C7518()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  if (v7)
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2112;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_229538000, v5, v6, "Failed to ensure digests for home %@: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {
  }

  (*(v0 + 112))(*(v0 + 64), *(v0 + 48));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2297C7724(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C7820, 0, 0);
}

id sub_2297C7820()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
    sub_22A4DD5EC();
    if (qword_27D87BA88 != -1)
    {
      swift_once();
    }

    sub_22A4DD06C();
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();
    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 40);
    v48 = *(v0 + 48);
    v50 = *(v0 + 32);
    if (v47)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_229538000, v45, v46, "Home manager is gone", v51, 2u);
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }

    (*(v49 + 8))(v48, v50);
    goto LABEL_64;
  }

  v4 = Strong;
  *(v0 + 16) = MEMORY[0x277D84F90];
  result = [Strong homes];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v7 = sub_22A4DD83C();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_51:

    sub_22A4DD5EC();
    if (qword_27D87BA88 != -1)
    {
      swift_once();
    }

    sub_22A4DD06C();
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDD0C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_229538000, v54, v55, "Skipping digest creation when there are no homes", v56, 2u);
      MEMORY[0x22AAD4E50](v56, -1, -1);
    }

    v57 = *(v0 + 56);
    v58 = *(v0 + 32);
    v59 = *(v0 + 40);

    (*(v59 + 8))(v57, v58);
    goto LABEL_64;
  }

  v8 = sub_22A4DE0EC();
  if (!v8)
  {
    goto LABEL_51;
  }

LABEL_5:
  v69 = v8;
  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v67 = v4;
    v9 = 0;
    v70 = v7 & 0xC000000000000001;
    v71 = (*(v0 + 40) + 8);
    v1 = MEMORY[0x277D84F90];
    v68 = v7;
    v10 = v8;
    do
    {
      if (v70)
      {
        v17 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        v17 = *(v7 + 8 * v9 + 32);
      }

      v18 = v17;
      v19 = [objc_msgSend(v17 residentDeviceManager)];
      swift_unknownObjectRelease();
      sub_229562F68(0, &qword_281401B10, off_278666300);
      v20 = sub_22A4DD83C();

      if (v20 >> 62)
      {
        v21 = sub_22A4DE0EC();
        v7 = v68;
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_22A4DD5EC();
      if (v21)
      {
        v22 = v1;
        if (qword_27D87BA88 != -1)
        {
          swift_once();
        }

        sub_22A4DD06C();
        v23 = v18;
        v24 = sub_22A4DD05C();
        v25 = sub_22A4DDCCC();

        if (os_log_type_enabled(v24, v25))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          *(v11 + 4) = v23;
          *v12 = v23;
          v13 = v23;
          _os_log_impl(&dword_229538000, v24, v25, "Skipping home that has residents: %@", v11, 0xCu);
          sub_2295A1C40(v12);
          v14 = v12;
          v10 = v69;
          MEMORY[0x22AAD4E50](v14, -1, -1);
          MEMORY[0x22AAD4E50](v11, -1, -1);
        }

        else
        {
          v13 = v24;
          v24 = v23;
        }

        v1 = v22;
        v15 = *(v0 + 80);
        v16 = *(v0 + 32);

        v2 = *v71;
        (*v71)(v15, v16);
        v7 = v68;
      }

      else
      {
        if (qword_27D87BA88 != -1)
        {
          swift_once();
        }

        sub_22A4DD06C();
        v26 = v18;
        v27 = sub_22A4DD05C();
        v28 = sub_22A4DDCCC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&dword_229538000, v27, v28, "Home has no residents: %@", v29, 0xCu);
          sub_2295A1C40(v30);
          MEMORY[0x22AAD4E50](v30, -1, -1);
          MEMORY[0x22AAD4E50](v29, -1, -1);
        }

        v32 = *(v0 + 88);
        v33 = *(v0 + 32);

        v2 = *v71;
        (*v71)(v32, v33);
        v34 = v26;
        MEMORY[0x22AAD09E0]();
        if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
          v7 = v68;
        }

        sub_22A4DD87C();

        v1 = *(v0 + 16);
        v10 = v69;
      }

      ++v9;
      *(v0 + 104) = v1;
    }

    while (v10 != v9);

    if (!(v1 >> 62))
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

LABEL_58:

      sub_22A4DD5EC();
      if (qword_27D87BA88 == -1)
      {
LABEL_59:

        sub_22A4DD06C();
        v60 = sub_22A4DD05C();
        v61 = sub_22A4DDD0C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_229538000, v60, v61, "Skipping digest creation as all homes have a resident", v62, 2u);
          MEMORY[0x22AAD4E50](v62, -1, -1);
        }

        v63 = *(v0 + 64);
        v64 = *(v0 + 32);

        v2(v63, v64);
        goto LABEL_64;
      }

LABEL_68:
      swift_once();
      goto LABEL_59;
    }
  }

  if (!sub_22A4DE0EC())
  {
    goto LABEL_58;
  }

LABEL_30:
  sub_22A4DD5EC();
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();

  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCCC();
  v37 = v1 >> 62;
  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    if (v37)
    {
      v66 = v38;
      v39 = sub_22A4DE0EC();
      v38 = v66;
    }

    else
    {
      v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 4) = v39;
    v40 = v36;
    v41 = v38;
    _os_log_impl(&dword_229538000, v35, v40, "Creating digests for %ld home(s)", v38, 0xCu);
    MEMORY[0x22AAD4E50](v41, -1, -1);
  }

  *(v0 + 112) = v1;
  v2(*(v0 + 72), *(v0 + 32));

  if (v37)
  {
    v42 = sub_22A4DE0EC();
    *(v0 + 120) = v42;
    if (v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v42 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = v42;
    if (v42)
    {
LABEL_38:
      if (v42 >= 1)
      {
        *(v0 + 128) = 0;
        v43 = *(v0 + 104);
        if ((*(v0 + 112) & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x22AAD13F0](0, v43);
        }

        else
        {
          v44 = *(v43 + 32);
        }

        v52 = v44;
        *(v0 + 136) = v44;
        v53 = swift_task_alloc();
        *(v0 + 144) = v53;
        *v53 = v0;
        v53[1] = sub_2297C833C;

        return sub_2297C6E98(v52);
      }

      __break(1u);
      goto LABEL_68;
    }
  }

LABEL_64:

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_2297C833C()
{

  return MEMORY[0x2822009F8](sub_2297C8438, 0, 0);
}

uint64_t sub_2297C8438()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128) + 1;
    *(v0 + 128) = v5;
    if ((*(v0 + 112) & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v6 = *(*(v0 + 104) + 8 * v5 + 32);
    }

    v7 = v6;
    *(v0 + 136) = v6;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_2297C833C;

    return sub_2297C6E98(v7);
  }
}

uint64_t sub_2297C85B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C8658, v2, 0);
}

uint64_t sub_2297C8658()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v2 + 112);
  v0[6] = v5;
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;
  swift_retain_n();

  v8 = sub_22957F3C0(0, 0, v1, &unk_22A583C98, v7);
  v0[7] = v8;
  *(v2 + 112) = v8;

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2297C87D4;

  return MEMORY[0x282200460]();
}

uint64_t sub_2297C87D4()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2297C8900, v1, 0);
}

uint64_t sub_2297C8900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297C8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    v7 = swift_task_alloc();
    v6[4] = v7;
    *v7 = v6;
    v7[1] = sub_2297C8AD4;

    return MEMORY[0x282200460]();
  }

  else
  {
    v10 = (a5 + *a5);
    v8 = swift_task_alloc();
    v6[5] = v8;
    *v8 = v6;
    v8[1] = sub_22977AF5C;

    return v10();
  }
}

uint64_t sub_2297C8AD4()
{

  return MEMORY[0x2822009F8](sub_2297C8BD0, 0, 0);
}

uint64_t sub_2297C8BD0()
{
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22977AF5C;

  return v3();
}

uint64_t sub_2297C8CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297C8968(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C8DA8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_22A4DD07C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C8E9C, v1, 0);
}

uint64_t sub_2297C8E9C()
{
  v37 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong home];
    v0[14] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 backingStore];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 context];
        v0[15] = v7;

        if (v7)
        {
          v8 = v0[7];
          v9 = v0[8];
          v10 = v0[6];
          v11 = sub_22A4DDBDC();
          v0[16] = v11;
          v12 = swift_allocObject();
          v0[17] = v12;
          v12[2] = v2;
          v12[3] = v10;
          v12[4] = v8;
          v12[5] = v11;
          v12[6] = v7;
          v12[7] = v9;
          v13 = v2;

          v14 = v11;
          v15 = v7;

          return MEMORY[0x2822009F8](sub_2297C9394, 0, 0);
        }
      }
    }

    sub_22A4DD5EC();
    sub_22A4DD06C();

    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[10];
    if (v27)
    {
      v31 = v0[7];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_2295A3E30(*(v31 + 120), *(v31 + 128), v36);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, v36);
      _os_log_impl(&dword_229538000, v25, v26, "%s %s Missing context, failed to save", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v30 + 8))(v28, v29);
    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
  }

  else
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    if (v18)
    {
      v22 = v0[7];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + 120), *(v22 + 128), v36);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, v36);
      _os_log_impl(&dword_229538000, v16, v17, "%s %s User is nil", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    type metadata accessor for HMError(0);
    v0[3] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_2297C9394()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[18] = v3;
  v3[2] = v2;
  v3[3] = sub_2297C9E3C;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2297C94A0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v5);
}

uint64_t sub_2297C94A0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2297C9668;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 56);

    v3 = sub_2297C95D0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2297C95D0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2297C9668()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2297C96DC, v1, 0);
}

uint64_t sub_2297C96DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

void sub_2297C9768(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v60 = a2;
  v61 = a4;
  v62 = a3;
  v7 = sub_22A4DD07C();
  v63 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = sub_22A4DB7DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = [a1 uuid];
  sub_22A4DB79C();

  v19 = sub_22A4DB77C();
  (*(v14 + 8))(v16, v13);
  v20 = [v17 findUserWithModelID_];

  v64 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v5)
  {
    v21 = v60;
    v22 = v61;
    v57 = v12;
    v58 = v7;
    v23 = v65;
    v24 = [v65 adaptiveTemperatureAutomationsDisclosureStatus];
    if (!v24)
    {
      sub_229678A8C();
      v24 = sub_22A4DDEBC();
    }

    if ([v24 integerValue] >= v21)
    {
      sub_22A4DD5EC();
      v44 = v10;
      sub_22A4DD06C();
      v45 = v62;

      v46 = sub_22A4DD05C();
      v47 = sub_22A4DDCCC();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v58;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v61 = v44;
        v51 = v50;
        v52 = swift_slowAlloc();
        v53 = v45;
        v54 = v52;
        v65 = v52;
        *v51 = 136315394;
        *(v51 + 4) = sub_2295A3E30(*(v53 + 120), *(v53 + 128), &v65);
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, &v65);
        _os_log_impl(&dword_229538000, v46, v47, "%s %s Not saving because value has not changed", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v54, -1, -1);
        MEMORY[0x22AAD4E50](v51, -1, -1);

        swift_unknownObjectRelease();
        (*(v63 + 8))(v61, v49);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v63 + 8))(v44, v49);
      }
    }

    else
    {
      v60 = v23;
      v25 = v23;
      v26 = v22;
      [v25 setAdaptiveTemperatureAutomationsDisclosureStatus_];
      sub_22A4DD5EC();
      v27 = v57;
      sub_22A4DD06C();
      v28 = v62;

      v29 = v27;
      v30 = v24;
      v31 = v26;
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCCC();

      v56 = v32;
      v34 = os_log_type_enabled(v32, v33);
      v35 = v63;
      if (v34)
      {
        v36 = swift_slowAlloc();
        v61 = v30;
        v37 = v36;
        v38 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65 = v55;
        *v37 = 136315906;
        *(v37 + 4) = sub_2295A3E30(*(v28 + 120), *(v28 + 128), &v65);
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, &v65);
        *(v37 + 22) = 2112;
        *(v37 + 24) = v61;
        *(v37 + 32) = 2112;
        *(v37 + 34) = v31;
        *v38 = v61;
        v38[1] = v31;
        v39 = v61;
        v40 = v31;
        v41 = v56;
        _os_log_impl(&dword_229538000, v56, v33, "%s %s Saving from %@ to %@", v37, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v38, -1, -1);
        v42 = v55;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v42, -1, -1);
        v43 = v37;
        v30 = v61;
        MEMORY[0x22AAD4E50](v43, -1, -1);

        (*(v35 + 8))(v57, v58);
      }

      else
      {

        (*(v35 + 8))(v29, v58);
      }

      sub_2297082C0();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2297C9DD8()
{
  MEMORY[0x22AAD4F90](v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297C9E60(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  *(v2 + 120) = 91;
  *(v2 + 128) = 0xE100000000000000;
  return v2;
}

unint64_t sub_2297C9F24()
{
  result = qword_27D87ED18;
  if (!qword_27D87ED18)
  {
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87ED18);
  }

  return result;
}

uint64_t sub_2297C9F7C(uint64_t a1)
{
  v3 = [*v1 serviceType];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A78, &qword_22A5822B0) + 36);
  v8 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0) + 20) + v7);

  *v8 = v4;
  v8[1] = v6;
  return result;
}

id sub_2297CA0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v5 = [objc_opt_self() *a5];

  return v5;
}

id sub_2297CA2DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2297CA334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2297CA358, a4, 0);
}

uint64_t sub_2297CA358()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297CA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2297CA3F4, a4, 0);
}

uint64_t sub_2297CA3F4()
{
  sub_2297CA9F4(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2297CA4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297CA550, 0, 0);
}

uint64_t sub_2297CA550()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v0[8] = sub_22957F3C0(0, 0, v1, &unk_22A583E58, v6);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2297CA6B8;

  return MEMORY[0x282200460]();
}

uint64_t sub_2297CA6B8()
{

  return MEMORY[0x2822009F8](sub_2297CA7D0, 0, 0);
}

uint64_t sub_2297CA7D0()
{
  (*(v0 + 40))();

  v1 = *(v0 + 8);

  return v1();
}

void sub_2297CA9F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    sub_2297CD744();
    sub_22A4DDBAC();
    v2 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
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

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_22953EE84(v2);
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        sub_2297CD744();
        sub_22A4DDBAC();
        a1 = v35;
        v17 = v36;
        v18 = v37;
        v19 = v38;
        v20 = v39;
      }

      else
      {
        v21 = -1 << *(a1 + 32);
        v17 = a1 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(a1 + 56);

        v19 = 0;
      }

      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v24 = v19;
        v25 = v20;
        v26 = v19;
        if (!v20)
        {
          break;
        }

LABEL_29:
        v27 = (v25 - 1) & v25;
        v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
LABEL_35:
          sub_22953EE84(a1);
          return;
        }

        while (1)
        {
          sub_2297CAD80(v28);

          v19 = v26;
          v20 = v27;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_22A4DE12C())
          {
            sub_229562F68(0, &qword_281401C30, off_278665FE8);
            swift_dynamicCast();
            v28 = v29;
            v26 = v19;
            v27 = v20;
            if (v29)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_37;
        }

        if (v26 >= ((v18 + 64) >> 6))
        {
          goto LABEL_35;
        }

        v25 = *(v17 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      sub_2297CB6CC(v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_22A4DE12C();
      if (v16)
      {
        v29 = v16;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        swift_dynamicCast();
        v15 = v35;
        v13 = v6;
        v14 = v7;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_2297CAD80(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD07C();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v74 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_2296DC0F0(a1), v20 = v19, , (v20 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v21 = a1;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCDC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_229538000, v22, v23, "Ignoring request to monitor reachability for %@ as it is already tracked", v24, 0xCu);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v78 + 8))(v11, v79);
  }

  else
  {
    v75 = [a1 home];
    if (v75)
    {
      v27 = v5;
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v28 = a1;
      v29 = sub_22A4DD05C();
      v30 = sub_22A4DDCCC();

      v31 = os_log_type_enabled(v29, v30);
      v76 = v28;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v81[0] = v73;
        *v32 = 136315138;
        v33 = [v28 uuid];
        sub_22A4DB79C();

        sub_229586A3C();
        v34 = sub_22A4DE5CC();
        v36 = v35;
        (*(v27 + 8))(v7, v4);
        v37 = sub_2295A3E30(v34, v36, v81);
        v28 = v76;

        *(v32 + 4) = v37;
        _os_log_impl(&dword_229538000, v29, v30, "Starting monitoring of %s", v32, 0xCu);
        v38 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v32, -1, -1);
      }

      v73 = *(v78 + 8);
      (v73)(v18, v79);
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsRemotelyReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v28];
      v39 = sub_2297CD6A4(v28);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_2295AC358(v39 & 1, v28, isUniquelyReferenced_nonNull_native);
      v41 = v80;
      *(v2 + 112) = v80;
      swift_endAccess();
      v42 = 1 << *(v41 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v41 + 64);
      v45 = (v42 + 63) >> 6;
      swift_retain_n();
      v46 = 0;
      while (v44)
      {
LABEL_18:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v49 = *(*(v41 + 48) + ((v46 << 9) | (8 * v48)));
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v50 = v49;
        if ((sub_22A4DDEDC() & 1) != 0 || (v51 = [v50 home]) == 0)
        {

          v28 = v76;
        }

        else
        {
          v52 = v51;
          sub_229562F68(0, &qword_2814017B0, off_278666198);
          v53 = v75;
          v54 = sub_22A4DDEDC();

          v28 = v76;
          if (v54)
          {

            return;
          }
        }
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          return;
        }

        if (v47 >= v45)
        {
          break;
        }

        v44 = *(v41 + 64 + 8 * v47);
        ++v46;
        if (v44)
        {
          v46 = v47;
          goto LABEL_18;
        }
      }

      v55 = v74;
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v56 = v28;
      v57 = v75;
      v58 = v75;
      v59 = sub_22A4DD05C();
      v60 = sub_22A4DDCCC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = v28;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412546;
        *(v62 + 4) = v58;
        *(v62 + 12) = 2112;
        *(v62 + 14) = v56;
        *v63 = v57;
        v63[1] = v61;
        v64 = v56;
        v65 = v58;
        _os_log_impl(&dword_229538000, v59, v60, "Monitoring resident changes in %@ due to monitoring %@", v62, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v63, -1, -1);
        MEMORY[0x22AAD4E50](v62, -1, -1);
      }

      (v73)(v55, v79);
      v66 = *(v2 + 136);
      [v66 addObserver:v2 selector:sel_handlePrimaryResidentDeviceManagerUpdatePrimaryResidentWithNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v58, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v67 = a1;
      v68 = sub_22A4DD05C();
      v69 = sub_22A4DDCEC();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        *(v70 + 4) = v67;
        *v71 = v67;
        v72 = v67;
        _os_log_impl(&dword_229538000, v68, v69, "Accessory %@ to start monitoring is missing a home", v70, 0xCu);
        sub_22953EAE4(v71, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v71, -1, -1);
        MEMORY[0x22AAD4E50](v70, -1, -1);
      }

      (*(v78 + 8))(v14, v79);
    }
  }
}

void sub_2297CB6CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_2296DC0F0(a1), v18 = v17, , (v18 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v19 = a1;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCDC();

    v22 = os_log_type_enabled(v20, v21);
    v75 = ObjectType;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&dword_229538000, v20, v21, "Stopping monitoring of %@", v23, 0xCu);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      v26 = v24;
      ObjectType = v75;
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    v73 = *(v6 + 8);
    v74 = v6 + 8;
    v73(v16, v5);
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsRemotelyReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v19];
    swift_beginAccess();
    sub_2297FD62C(v19);
    swift_endAccess();
    v27 = [v19 home];
    if (v27)
    {
      v76 = v27;
      v72 = v5;
      v28 = *(v2 + 112);
      v31 = *(v28 + 64);
      v30 = v28 + 64;
      v29 = v31;
      v32 = 1 << *(*(v2 + 112) + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & v29;
      v35 = (v32 + 63) >> 6;
      v77 = *(v2 + 112);
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
LABEL_19:
        v48 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v49 = *(*(v77 + 48) + ((v36 << 9) | (8 * v48)));
        v50 = [v49 home];
        if (v50)
        {
          v51 = v50;
          sub_229562F68(0, &qword_2814017B0, off_278666198);
          v52 = v76;
          v53 = sub_22A4DDEDC();

          if (v53)
          {

            return;
          }
        }

        else
        {
        }
      }

      v46 = v75;
      while (1)
      {
        v47 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return;
        }

        if (v47 >= v35)
        {
          break;
        }

        v34 = *(v30 + 8 * v47);
        ++v36;
        if (v34)
        {
          v36 = v47;
          goto LABEL_19;
        }
      }

      v54 = v78;
      sub_229541CB0(v46, &off_283CE58C8);
      v55 = v76;
      v56 = v76;
      v57 = sub_22A4DD05C();
      v58 = sub_22A4DDCCC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v55;
        v61 = v56;
        _os_log_impl(&dword_229538000, v57, v58, "No longer monitoring resident changes in %@", v59, 0xCu);
        sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v60, -1, -1);
        MEMORY[0x22AAD4E50](v59, -1, -1);
      }

      v73(v54, v72);
      v62 = *(v2 + 136);
      [v62 removeObserver:v2 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v56, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v63 = v19;
      v64 = sub_22A4DD05C();
      v65 = sub_22A4DDCEC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v5;
        v68 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v68 = v19;
        v69 = v63;
        _os_log_impl(&dword_229538000, v64, v65, "Accessory %@ to stop monitoring is missing a home", v66, 0xCu);
        sub_22953EAE4(v68, &qword_27D87D7D0, &unk_22A578D90);
        v70 = v68;
        v5 = v67;
        MEMORY[0x22AAD4E50](v70, -1, -1);
        MEMORY[0x22AAD4E50](v66, -1, -1);
      }

      v73(v12, v5);
    }
  }

  else
  {
    v37 = v6;
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v38 = a1;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v5;
      v43 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v43 = v38;
      v44 = v38;
      _os_log_impl(&dword_229538000, v39, v40, "Ignoring request to stop monitoring reachability for %@ as it was not being tracked", v41, 0xCu);
      sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
      v45 = v43;
      v5 = v42;
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (*(v37 + 8))(v9, v5);
  }
}

uint64_t sub_2297CBEB4(void *a1)
{
  v2 = v1;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v40 = sub_22A4DD07C();
  v42 = *(v40 - 8);
  v4 = MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v6;
  v7 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = *(v1 + 112);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (sub_2297CC3CC(v16))
    {
      v17 = v16;
      MEMORY[0x22AAD09E0]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      v7 = v44;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_24:
      v30 = sub_22A4DE0EC();
      v18 = v41;
      if (v30)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v12 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_24;
  }

  v18 = v41;
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_229541CB0(ObjectType, &off_283CE58C8);

    v19 = v18;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 134218242;
      v24 = v42;
      if (v12)
      {
        v25 = sub_22A4DE0EC();
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v40;
      *(v22 + 4) = v25;

      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v27 = v19;
      _os_log_impl(&dword_229538000, v20, v21, "Notifying delegate of changes to %ld accessories' reachability for home %@", v22, 0x16u);
      sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    else
    {

      v26 = v40;
      v24 = v42;
    }

    (*(v24 + 8))(v43, v26);
    if (!*(v2 + 120))
    {
    }

    v28 = off_283CE2C20[0];
    _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
    swift_unknownObjectRetain();
    v28(v2, v7);

    return swift_unknownObjectRelease();
  }

LABEL_25:

  v31 = v39;
  sub_229541CB0(ObjectType, &off_283CE58C8);
  v32 = v18;
  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCDC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_229538000, v33, v34, "No updated accessory reachability for home %@", v35, 0xCu);
    sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  return (*(v42 + 8))(v31, v40);
}

uint64_t sub_2297CC3CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  swift_beginAccess();
  v12 = *(v1 + 112);
  if (!*(v12 + 16))
  {
    goto LABEL_8;
  }

  v13 = sub_2296DC0F0(a1);
  if ((v14 & 1) == 0)
  {

LABEL_8:
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v26 = a1;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_229538000, v27, v28, "Ignoring request to calculate reachability for %@ as it is not tracked", v29, 0xCu);
      sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v15 = *(*(v12 + 56) + v13);

  v16 = sub_2297CD6A4(a1);
  if (v15 == (v16 & 1))
  {
    return 0;
  }

  v17 = v16;
  sub_229541CB0(ObjectType, &off_283CE58C8);
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCDC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 67109378;
    *(v21 + 4) = v17 & 1;
    *(v21 + 8) = 2112;
    *(v21 + 10) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "Widget reachability changed to %{BOOL}d for %@", v21, 0x12u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_2295AC358(v17 & 1, v18, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v33;
  swift_endAccess();
  return 1;
}

uint64_t sub_2297CC77C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = sub_22A4DB20C();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v27[1] = sub_22A4DD5EC();
  v27[2] = v12;
  sub_22A4DE18C();
  if (!*(v11 + 16) || (v13 = sub_2295402E8(v28), (v14 & 1) == 0))
  {

    sub_22954045C(v28);
LABEL_9:
    v29 = 0u;
    v30 = 0u;
    return sub_22953EAE4(&v29, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v11 + 56) + 32 * v13, &v29);
  sub_22954045C(v28);

  if (!*(&v30 + 1))
  {
    return sub_22953EAE4(&v29, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229562F68(0, &qword_281401B10, off_278666300);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v28[0];
    v17 = [v28[0] home];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22A4DD9DC();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v1;
      v20[5] = v18;

      sub_22957F3C0(0, 0, v9, &unk_22A583E38, v20);
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v21 = v16;
      v22 = sub_22A4DD05C();
      v23 = sub_22A4DDCEC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_229538000, v22, v23, "Resident %@ is missing a home", v24, 0xCu);
        sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v25, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);
      }

      else
      {
        v26 = v22;
        v22 = v21;
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2297CCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297CCB74, a4, 0);
}

uint64_t sub_2297CCB74()
{
  sub_2297CBEB4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297CCBEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v67 = sub_22A4DB21C();
  v5 = *(v67 - 8);
  v6 = MEMORY[0x28223BE20](v67);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v63 - v12;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v63 - v21;
  sub_22A4DB1FC();
  if (v71[3])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v23 = v70;
      v24 = [v70 home];
      if (v24)
      {
        v25 = v24;
        v26 = sub_22A4DD9DC();
        (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = v2;
        v27[5] = v25;

        sub_22957F3C0(0, 0, v22, &unk_22A583E28, v27);
      }

      else
      {
        v47 = v19;
        sub_229541CB0(ObjectType, &off_283CE58C8);
        v48 = v5;
        v49 = v66;
        v50 = v67;
        (*(v5 + 16))(v66, a1, v67);
        v51 = v23;
        v52 = sub_22A4DD05C();
        v53 = sub_22A4DDCEC();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v71[0] = v63;
          *v54 = 138412546;
          *(v54 + 4) = v51;
          *v55 = v51;
          *(v54 + 12) = 2080;
          v65 = v51;
          v56 = sub_22A4DB1EC();
          v57 = sub_22A4DD5EC();
          v64 = v47;
          v58 = v57;
          v60 = v59;

          (*(v48 + 8))(v49, v50);
          v61 = sub_2295A3E30(v58, v60, v71);

          *(v54 + 14) = v61;
          _os_log_impl(&dword_229538000, v52, v53, "Accessory %@ is missing a home for notification %s", v54, 0x16u);
          sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v55, -1, -1);
          v62 = v63;
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x22AAD4E50](v62, -1, -1);
          MEMORY[0x22AAD4E50](v54, -1, -1);

          return (*(v69 + 8))(v64, v68);
        }

        else
        {

          (*(v48 + 8))(v49, v50);
          return (*(v69 + 8))(v47, v68);
        }
      }
    }
  }

  else
  {
    sub_22953EAE4(v71, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229541CB0(ObjectType, &off_283CE58C8);
  v29 = *(v5 + 16);
  v30 = v67;
  v29(v11, a1, v67);
  v29(v8, a1, v30);
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v66 = v17;
    v34 = v33;
    v65 = swift_slowAlloc();
    v70 = v65;
    *v34 = 136315394;
    LODWORD(v64) = v32;
    v35 = sub_22A4DB1EC();
    v36 = sub_22A4DD5EC();
    v38 = v37;

    v39 = *(v5 + 8);
    v39(v11, v30);
    v40 = sub_2295A3E30(v36, v38, &v70);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    sub_22A4DB1FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
    v41 = sub_22A4DD64C();
    v43 = v42;
    v39(v8, v30);
    v44 = sub_2295A3E30(v41, v43, &v70);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_229538000, v31, v64, "%s is missing an accessory as its object: %s", v34, 0x16u);
    v45 = v65;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v45, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);

    return (*(v69 + 8))(v66, v68);
  }

  else
  {

    v46 = *(v5 + 8);
    v46(v8, v30);
    v46(v11, v30);
    return (*(v69 + 8))(v17, v68);
  }
}

uint64_t sub_2297CD338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297CD950, a4, 0);
}

uint64_t sub_2297CD370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2297CD49C()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297CD524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297CD338(a1, v4, v5, v7, v6);
}

uint64_t sub_2297CD5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297CCB54(a1, v4, v5, v7, v6);
}

id sub_2297CD6A4(void *a1)
{
  v2 = [a1 home];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = &selRef_isReachable;
  if (([a1 isDemoAccessory] & 1) == 0 && !objc_msgSend(v3, sel_isCurrentDevicePrimaryResident))
  {
    v4 = &selRef_isRemotelyReachable;
  }

  v5 = [a1 *v4];

  return v5;
}

unint64_t sub_2297CD744()
{
  result = qword_281401C28;
  if (!qword_281401C28)
  {
    sub_229562F68(255, &qword_281401C30, off_278665FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401C28);
  }

  return result;
}

uint64_t sub_2297CD7AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2297CA4AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2297CD888(uint64_t a1)
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

  return sub_2297CA3D0(a1, v4, v5, v6, v7, v8);
}

void *sub_2297CDA58()
{
  v1 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event + 24);
  v2 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v38 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v36 = v8;
  v37 = v4;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = (*(v38 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_22957F1C4(*(v38 + 56) + 40 * v14, v41);
    v40[0] = v17;
    v40[1] = v16;
    v18 = v42;
    v19 = v43;
    __swift_project_boxed_opaque_existential_0(v41, v42);
    v20 = *(v19 + 8);
    swift_bridgeObjectRetain_n();
    v21 = v20(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v23 = sub_229543DBC(v17, v16);
    v25 = v10[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_229893848(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_229543DBC(v17, v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v34 = v23;
    sub_229897F10();
    v23 = v34;
    v10 = v39;
    if (v29)
    {
LABEL_4:
      v11 = v10[7];
      v12 = *(v11 + 8 * v23);
      *(v11 + 8 * v23) = v21;

      goto LABEL_5;
    }

LABEL_17:
    v10[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v10[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v16;
    *(v10[7] + 8 * v23) = v21;
    v32 = v10[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v10[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    sub_22953EAE4(v40, &unk_27D8814B0, &qword_22A583F08);
    v8 = v36;
    v4 = v37;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

id sub_2297CDE14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Metric.LogEventAdaptor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2297CDE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A583E70;
  *(inited + 32) = 0x69466957736168;
  *(inited + 40) = 0xE700000000000000;
  v2 = *v0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &off_283CE59B8;
  *(inited + 48) = v2;
  *(inited + 88) = 0x7265687445736168;
  *(inited + 96) = 0xEB0000000074656ELL;
  v4 = v0[1];
  *(inited + 128) = v3;
  *(inited + 136) = &off_283CE59B8;
  *(inited + 104) = v4;
  strcpy((inited + 144), "primaryService");
  *(inited + 159) = -18;
  v5 = v0[2];
  v6 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &off_283CE59C8;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000022A5970E0;
  v7 = v0[3];
  *(inited + 240) = v6;
  *(inited + 248) = &off_283CE59C8;
  *(inited + 216) = v7;
  *(inited + 256) = 0x4973614869666977;
  *(inited + 264) = 0xE900000000000050;
  LOBYTE(v7) = v0[4];
  *(inited + 296) = v3;
  *(inited + 304) = &off_283CE59B8;
  *(inited + 272) = v7;
  strcpy((inited + 312), "ethernetHasIP");
  *(inited + 326) = -4864;
  LOBYTE(v7) = v0[5];
  *(inited + 352) = v3;
  *(inited + 360) = &off_283CE59B8;
  *(inited + 328) = v7;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x800000022A597100;
  LOBYTE(v7) = v0[6];
  *(inited + 408) = v3;
  *(inited + 416) = &off_283CE59B8;
  *(inited + 384) = v7;
  *(inited + 424) = 0xD000000000000016;
  *(inited + 432) = 0x800000022A597120;
  LOBYTE(v7) = v0[7];
  *(inited + 464) = v3;
  *(inited + 472) = &off_283CE59B8;
  *(inited + 440) = v7;
  *(inited + 480) = 0x616D697250736168;
  *(inited + 488) = 0xEA00000000007972;
  LOBYTE(v7) = v0[8];
  *(inited + 520) = v3;
  *(inited + 528) = &off_283CE59B8;
  *(inited + 496) = v7;
  strcpy((inited + 536), "numResidents");
  *(inited + 549) = 0;
  *(inited + 550) = -5120;
  *(inited + 576) = v6;
  *(inited + 584) = &off_283CE59C8;
  v8 = *(v0 + 3);
  *(inited + 552) = *(v0 + 2);
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x800000022A597140;
  *(inited + 632) = v6;
  *(inited + 640) = &off_283CE59C8;
  *(inited + 608) = v8;
  strcpy((inited + 648), "wifiRSSIStatus");
  *(inited + 663) = -18;
  v9 = v0[32];
  *(inited + 688) = v6;
  *(inited + 696) = &off_283CE59C8;
  *(inited + 664) = v9;
  *(inited + 704) = 0x4969466957736168;
  *(inited + 712) = 0xEB000000006F666ELL;
  LOBYTE(v6) = v0[33];
  *(inited + 744) = v3;
  *(inited + 752) = &off_283CE59B8;
  *(inited + 720) = v6;
  v10 = sub_22956B634(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  return v10;
}

void *sub_2297CE1E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A583E80;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022A596ED0;
  *(v2 + 72) = MEMORY[0x277D837D0];
  *(v2 + 80) = &off_283CE59A8;
  *(v2 + 48) = *v1;
  strcpy((v2 + 88), "numUniqueSSIDs");
  *(v2 + 103) = -18;
  v3 = MEMORY[0x277D83B88];
  *(v2 + 128) = MEMORY[0x277D83B88];
  *(v2 + 136) = &off_283CE59C8;
  v4 = *(v1 + 152);
  *(v2 + 104) = *(v1 + 144);
  *(v2 + 144) = 0x7571696E556D756ELL;
  *(v2 + 152) = 0xEF73444953534265;
  *(v2 + 184) = v3;
  *(v2 + 192) = &off_283CE59C8;
  *(v2 + 160) = v4;
  strcpy((v2 + 200), "numSharedSSIDs");
  *(v2 + 215) = -18;
  *(v2 + 240) = v3;
  *(v2 + 248) = &off_283CE59C8;
  v5 = *(v1 + 168);
  *(v2 + 216) = *(v1 + 160);
  *(v2 + 256) = 0x65726168536D756ELL;
  *(v2 + 264) = 0xEF73444953534264;
  *(v2 + 296) = v3;
  *(v2 + 304) = &off_283CE59C8;
  *(v2 + 272) = v5;
  *(v2 + 312) = 0xD000000000000023;
  *(v2 + 320) = 0x800000022A596EF0;
  *(v2 + 352) = v3;
  *(v2 + 360) = &off_283CE59C8;
  v6 = *(v1 + 184);
  *(v2 + 328) = *(v1 + 176);
  *(v2 + 368) = 0xD000000000000023;
  *(v2 + 376) = 0x800000022A596F20;
  *(v2 + 408) = v3;
  *(v2 + 416) = &off_283CE59C8;
  *(v2 + 384) = v6;
  *(v2 + 424) = 0xD000000000000022;
  *(v2 + 432) = 0x800000022A596F50;
  LOBYTE(v6) = *(v1 + 192);
  v7 = MEMORY[0x277D839B0];
  *(v2 + 464) = MEMORY[0x277D839B0];
  *(v2 + 472) = &off_283CE59B8;
  *(v2 + 440) = v6;
  *(v2 + 480) = 0xD00000000000001FLL;
  *(v2 + 488) = 0x800000022A596F80;
  LOBYTE(v6) = *(v1 + 193);
  *(v2 + 520) = v7;
  *(v2 + 528) = &off_283CE59B8;
  *(v2 + 496) = v6;
  *(v2 + 536) = 0xD00000000000001FLL;
  *(v2 + 544) = 0x800000022A596FA0;
  LOBYTE(v6) = *(v1 + 194);
  *(v2 + 576) = v7;
  *(v2 + 584) = &off_283CE59B8;
  *(v2 + 552) = v6;
  *(v2 + 592) = 0xD00000000000001CLL;
  *(v2 + 600) = 0x800000022A596FC0;
  LOBYTE(v6) = *(v1 + 195);
  *(v2 + 632) = v7;
  *(v2 + 640) = &off_283CE59B8;
  *(v2 + 608) = v6;
  *(v2 + 648) = 0xD000000000000020;
  *(v2 + 656) = 0x800000022A596FE0;
  LOBYTE(v6) = *(v1 + 196);
  *(v2 + 688) = v7;
  *(v2 + 696) = &off_283CE59B8;
  *(v2 + 664) = v6;
  *(v2 + 704) = 0xD00000000000001DLL;
  *(v2 + 712) = 0x800000022A597010;
  LOBYTE(v6) = *(v1 + 197);
  *(v2 + 744) = v7;
  *(v2 + 752) = &off_283CE59B8;
  *(v2 + 720) = v6;
  *(v2 + 760) = 0xD00000000000001BLL;
  *(v2 + 768) = 0x800000022A597030;
  *(v2 + 800) = v3;
  *(v2 + 808) = &off_283CE59C8;
  v8 = *(v1 + 208);
  *(v2 + 776) = *(v1 + 200);
  *(v2 + 816) = 0xD00000000000001ELL;
  *(v2 + 824) = 0x800000022A597050;
  *(v2 + 856) = v3;
  *(v2 + 864) = &off_283CE59C8;
  *(v2 + 832) = v8;
  *(v2 + 872) = 0xD00000000000001CLL;
  *(v2 + 880) = 0x800000022A597070;
  v9 = *(v1 + 216);
  *(v2 + 912) = v3;
  *(v2 + 920) = &off_283CE59C8;
  *(v2 + 888) = v9;
  *(v2 + 928) = 0xD000000000000014;
  *(v2 + 936) = 0x800000022A597090;
  LOBYTE(v3) = *(v1 + 224);
  *(v2 + 968) = v7;
  *(v2 + 976) = &off_283CE59B8;
  *(v2 + 944) = v3;
  *(v2 + 984) = 0xD000000000000024;
  *(v2 + 992) = 0x800000022A5970B0;
  v10 = *(v1 + 225);
  *(v2 + 1024) = v7;
  *(v2 + 1032) = &off_283CE59B8;
  *(v2 + 1000) = v10;
  sub_2295B2DF0(v1, &v99);
  v11 = sub_22956B634(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = *(v1 + 40);
  *&v101[216] = *(v1 + 24);
  v102 = v12;
  v93 = v1;
  v103 = *(v1 + 56);
  v13 = sub_2297CDE98();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v94 = v13;

  v19 = 0;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = (*(v94 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    sub_22957F1C4(*(v94 + 56) + 40 * v22, v101);
    v99 = v24;
    v100 = v25;
    *&v98[0] = 0x6C6C6F72746E6F63;
    *(&v98[0] + 1) = 0xEB000000005F7265;

    MEMORY[0x22AAD08C0](v24, v25);
    v26 = v98[0];
    sub_22957F1C4(v101, v98);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v11;
    v28 = sub_229543DBC(v26, *(&v26 + 1));
    v30 = v11[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_68;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_229896E80(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_229543DBC(v26, *(&v26 + 1));
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_74;
      }

LABEL_16:
      v11 = v106;
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v28;
    sub_22989A114();
    v28 = v38;
    v11 = v106;
    if (v34)
    {
LABEL_4:
      v20 = (v11[7] + 40 * v28);
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_229557188(v98, v20);

      goto LABEL_5;
    }

LABEL_17:
    v11[(v28 >> 6) + 8] |= 1 << v28;
    *(v11[6] + 16 * v28) = v26;
    sub_229557188(v98, v11[7] + 40 * v28);
    v36 = v11[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_69;
    }

    v11[2] = v37;
LABEL_5:
    v17 &= v17 - 1;
    sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  v39 = v93;
  v40 = *(v93 + 64);
  if (v40 != 2)
  {
    v107[0] = *(v93 + 72);
    *(v107 + 10) = *(v93 + 82);
    v106 = v40;
    v41 = sub_2297CDE98();
    v42 = v41 + 64;
    v43 = 1 << *(v41 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v41 + 64);
    v46 = (v43 + 63) >> 6;
    v95 = v41;

    v47 = 0;
    while (v45)
    {
LABEL_32:
      v50 = __clz(__rbit64(v45)) | (v47 << 6);
      v51 = (*(v95 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      sub_22957F1C4(*(v95 + 56) + 40 * v50, v101);
      v99 = v52;
      v100 = v53;
      *&v98[0] = 0x726F737365636361;
      *(&v98[0] + 1) = 0xEA00000000005F79;

      MEMORY[0x22AAD08C0](v52, v53);
      v54 = v98[0];
      sub_22957F1C4(v101, v98);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v11;
      v56 = sub_229543DBC(v54, *(&v54 + 1));
      v58 = v11[2];
      v59 = (v57 & 1) == 0;
      v32 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v32)
      {
        goto LABEL_70;
      }

      v61 = v57;
      if (v11[3] >= v60)
      {
        if ((v55 & 1) == 0)
        {
          v65 = v56;
          sub_22989A114();
          v56 = v65;
        }
      }

      else
      {
        sub_229896E80(v60, v55);
        v56 = sub_229543DBC(v54, *(&v54 + 1));
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_74;
        }
      }

      v11 = v104;
      if (v61)
      {
        v48 = (v104[7] + 40 * v56);
        __swift_destroy_boxed_opaque_existential_0(v48);
        sub_229557188(v98, v48);
      }

      else
      {
        v104[(v56 >> 6) + 8] |= 1 << v56;
        *(v11[6] + 16 * v56) = v54;
        sub_229557188(v98, v11[7] + 40 * v56);
        v63 = v11[2];
        v32 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v32)
        {
          goto LABEL_72;
        }

        v11[2] = v64;
      }

      v45 &= v45 - 1;
      sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_66;
      }

      if (v49 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_32;
      }
    }

    v39 = v93;
  }

  v66 = *(v39 + 104);
  if (v66 == 2)
  {
    return v11;
  }

  v105[0] = *(v39 + 112);
  *(v105 + 10) = *(v39 + 122);
  v104 = v66;
  v67 = sub_2297CDE98();
  v68 = v67 + 64;
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 64);
  v72 = (v69 + 63) >> 6;
  v96 = v67;

  v73 = 0;
  while (2)
  {
    if (v71)
    {
LABEL_53:
      v76 = __clz(__rbit64(v71)) | (v73 << 6);
      v77 = (*(v96 + 48) + 16 * v76);
      v78 = *v77;
      v79 = v77[1];
      sub_22957F1C4(*(v96 + 56) + 40 * v76, v101);
      v99 = v78;
      v100 = v79;
      *&v98[0] = 0x5F7972616D697270;
      *(&v98[0] + 1) = 0xE800000000000000;

      MEMORY[0x22AAD08C0](v78, v79);
      v80 = v98[0];
      sub_22957F1C4(v101, v98);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v11;
      v82 = sub_229543DBC(v80, *(&v80 + 1));
      v84 = v11[2];
      v85 = (v83 & 1) == 0;
      v32 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v32)
      {
        goto LABEL_71;
      }

      v87 = v83;
      if (v11[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v91 = v82;
          sub_22989A114();
          v82 = v91;
          v11 = v97;
          if ((v87 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_229896E80(v86, v81);
        v82 = sub_229543DBC(v80, *(&v80 + 1));
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_74;
        }
      }

      if ((v87 & 1) == 0)
      {
LABEL_59:
        v11[(v82 >> 6) + 8] |= 1 << v82;
        *(v11[6] + 16 * v82) = v80;
        sub_229557188(v98, v11[7] + 40 * v82);
        v89 = v11[2];
        v32 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v32)
        {
          goto LABEL_73;
        }

        v11[2] = v90;
        goto LABEL_47;
      }

LABEL_46:
      v74 = (v11[7] + 40 * v82);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_229557188(v98, v74);

LABEL_47:
      v71 &= v71 - 1;
      sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
      continue;
    }

    break;
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v72)
    {

      return v11;
    }

    v71 = *(v68 + 8 * v75);
    ++v73;
    if (v71)
    {
      v73 = v75;
      goto LABEL_53;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

unint64_t sub_2297CED40(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A578C10;
  *(inited + 32) = 0xD00000000000001DLL;
  v5 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000022A594410;
  *(inited + 72) = v5;
  *(inited + 80) = &off_283CE59B8;
  *(inited + 48) = a1 & 1;
  *(inited + 88) = 0xD000000000000022;
  *(inited + 96) = 0x800000022A594430;
  *(inited + 128) = v5;
  *(inited + 136) = &off_283CE59B8;
  *(inited + 104) = BYTE1(a1) & 1;
  strcpy((inited + 144), "fetchSucceeded");
  *(inited + 159) = -18;
  *(inited + 184) = v5;
  *(inited + 192) = &off_283CE59B8;
  *(inited + 160) = BYTE2(a1) & 1;
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x800000022A594470;
  *(inited + 240) = v5;
  *(inited + 248) = &off_283CE59B8;
  *(inited + 216) = BYTE3(a1) & 1;
  *(inited + 256) = 0xD000000000000016;
  *(inited + 264) = 0x800000022A594490;
  *(inited + 296) = v5;
  *(inited + 304) = &off_283CE59B8;
  *(inited + 272) = BYTE4(a1) & 1;
  *(inited + 312) = 0xD000000000000026;
  *(inited + 320) = 0x800000022A5944B0;
  *(inited + 352) = v5;
  *(inited + 360) = &off_283CE59B8;
  *(inited + 328) = BYTE5(a1) & 1;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x800000022A5944E0;
  *(inited + 408) = v5;
  *(inited + 416) = &off_283CE59B8;
  *(inited + 384) = BYTE6(a1) & 1;
  v6 = MEMORY[0x277D839F8];
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x800000022A594500;
  *(inited + 464) = v6;
  *(inited + 472) = &off_283CE59D8;
  *(inited + 440) = a2;
  v7 = sub_22956B634(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_2297CEF3C()
{
  v1 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v3 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v2 | v3 | v4;
  v6 = 0x100000000;
  if ((*(v0 + 4) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((*(v0 + 6) & 1) == 0)
  {
    v8 = 0;
  }

  return sub_2297CED40(v5 | v6 | v7 | v8, *(v0 + 8));
}

id sub_2297CEFC0@<X0>(void (**a1)(char *, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v177 = a3;
  v172 = a2;
  v154 = a4;
  v188 = sub_22A4DBC5C();
  v159 = *(v188 - 8);
  v5 = MEMORY[0x28223BE20](v188);
  v163 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v143 - v8;
  MEMORY[0x28223BE20](v7);
  v186 = &v143 - v10;
  v187 = sub_22A4DBAEC();
  v185 = *(v187 - 8);
  v11 = MEMORY[0x28223BE20](v187);
  v155 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v143 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v143 - v15;
  v179 = sub_22A4DBC3C();
  v164 = *(v179 - 8);
  v17 = MEMORY[0x28223BE20](v179);
  v166 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v161 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v143 - v21;
  v23 = sub_22A4DBB4C();
  v181 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v162 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v144 = &v143 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v173 = &v143 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v180 = &v143 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v174 = (&v143 - v33);
  MEMORY[0x28223BE20](v32);
  v35 = &v143 - v34;
  v165 = a1;
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v37 = result;
  v38 = [result nearbyVisibleDeviceInfos];

  if (!v38 || (v189 = 0, sub_229562F68(0, &qword_27D87D790, 0x277CD16D8), sub_22A4DD82C(), v38, (v39 = v189) == 0))
  {

    v39 = MEMORY[0x277D84F90];
  }

  if (v39 >> 62)
  {
    goto LABEL_152;
  }

  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v145 = v16;
    v182 = v23;
    v183 = v9;
    v176 = v22;
    if (i)
    {
      v9 = 0;
      v178 = (v39 & 0xC000000000000001);
      v175 = v39 & 0xFFFFFFFFFFFFFF8;
      v184 = (v181 + 32);
      v41 = MEMORY[0x277D84F90];
      v170 = i;
      v171 = v39;
      while (1)
      {
        if (v178)
        {
          v42 = MEMORY[0x22AAD13F0](v9, v39);
        }

        else
        {
          if (v9 >= *(v175 + 16))
          {
            goto LABEL_144;
          }

          v42 = *(v39 + 8 * v9 + 32);
        }

        v43 = v42;
        v44 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v45 = [v42 idsIdentifierString];
        if (v45)
        {
          v22 = v35;
          v46 = v45;
          sub_22A4DD5EC();

          v47 = [v43 mediaRouteIdString];
          if (v47)
          {
            v48 = v47;
            sub_22A4DD5EC();
          }

          v49 = v174;
          sub_22A4DBB1C();

          v50 = *v184;
          v51 = v49;
          v23 = v182;
          (*v184)(v35, v51, v182);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_22958AD88(0, *(v41 + 2) + 1, 1, v41);
          }

          i = v170;
          v16 = *(v41 + 2);
          v52 = *(v41 + 3);
          if (v16 >= v52 >> 1)
          {
            v41 = sub_22958AD88((v52 > 1), v16 + 1, 1, v41);
          }

          *(v41 + 2) = v16 + 1;
          v50(&v41[((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v16], v35, v23);
          v39 = v171;
        }

        else
        {
        }

        ++v9;
        if (v44 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_25:

    result = [v165 appleMediaAccessoryDiagnosticInfo];
    if (!result)
    {
      goto LABEL_155;
    }

    v53 = result;
    v54 = [result networkVisibleDeviceInfos];

    v22 = MEMORY[0x277D84F90];
    if (v54)
    {
      v189 = 0;
      sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
      sub_22A4DD82C();

      if (v189)
      {
        v22 = v189;
      }
    }

    v39 = v22 >> 62 ? sub_22A4DE0EC() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v168 = v41;
    if (!v39)
    {
      break;
    }

    v9 = 0;
    v178 = (v22 & 0xC000000000000001);
    v175 = v22 & 0xFFFFFFFFFFFFFF8;
    v184 = (v181 + 32);
    v55 = MEMORY[0x277D84F90];
    v171 = v22;
    v174 = v39;
    while (1)
    {
      if (v178)
      {
        v56 = MEMORY[0x22AAD13F0](v9, v22);
      }

      else
      {
        if (v9 >= *(v175 + 16))
        {
          goto LABEL_146;
        }

        v56 = *(v22 + 8 * v9 + 32);
      }

      v35 = v56;
      v57 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v58 = [v56 idsIdentifierString];
      if (v58)
      {
        v59 = v58;
        sub_22A4DD5EC();

        v60 = [v35 mediaRouteIdString];
        if (v60)
        {
          v61 = v60;
          sub_22A4DD5EC();

          v62 = v182;
        }

        else
        {
          v62 = v23;
        }

        v63 = v173;
        sub_22A4DBB1C();

        v64 = *v184;
        (*v184)(v180, v63, v62);
        v23 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_22958AD88(0, *(v55 + 2) + 1, 1, v55);
        }

        v22 = v171;
        v66 = *(v55 + 2);
        v65 = *(v55 + 3);
        v16 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v55 = sub_22958AD88((v65 > 1), v66 + 1, 1, v55);
        }

        *(v55 + 2) = v16;
        v64(&v55[((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v66], v180, v62);
        v39 = v174;
      }

      else
      {
      }

      ++v9;
      if (v57 == v39)
      {
        goto LABEL_50;
      }
    }

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
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_50:
  v67 = v55;

  v68 = v165;
  v69 = sub_2296B6AF0(v165);
  v71 = v70;
  v22 = v72;
  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_156;
  }

  v73 = result;
  v74 = [result cloudInfo];

  v75 = v179;
  if (!v74)
  {
LABEL_57:
    v77 = 0;
    goto LABEL_58;
  }

  if (![v74 hasCloudState])
  {

    goto LABEL_57;
  }

  v76 = [v74 firstCloudImportComplete];

  if (v76)
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

LABEL_58:
  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_157;
  }

  v78 = result;
  v79 = [result wifiInfo];

  v153 = v79;
  if (v79)
  {
    v80 = [v79 networkRSSI];

    if (v80 >= -80)
    {
      if (v80 >= -60)
      {
        LODWORD(v79) = (v80 >> 31) & 3;
      }

      else
      {
        LODWORD(v79) = 2;
      }
    }

    else
    {
      LODWORD(v79) = 1;
    }
  }

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_158;
  }

  v81 = result;
  v180 = v69;
  v16 = [result numResidents];

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v82 = result;
  v149 = v16;
  v150 = v79;
  v151 = v77;
  v152 = v22;
  v167 = v67;
  v148 = [result numAppleMediaAccessories];

  result = [v68 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
LABEL_160:
    __break(1u);
    return result;
  }

  v83 = result;
  v147 = [result primaryResidentStatus];

  v84 = *(v164 + 7);
  v184 = (v164 + 56);
  v178 = v84;
  v84(v176, 1, 1, v75);
  v158 = v71;
  v85 = *(v71 + 16);
  v39 = v161;
  if (v85)
  {
    v86 = *(v164 + 2);
    v87 = v158 + ((v164[80] + 32) & ~v164[80]);
    v88 = *(v164 + 9);
    v89 = (v164 + 8);
    v16 = (v164 + 32);
    v90 = v179;
    v86(v161, v87, v179);
    while (1)
    {
      if (sub_22A4DBC2C())
      {
        v22 = v176;
        sub_22953EAE4(v176, &qword_27D8814C0, &unk_22A583F10);
        (*v16)(v22, v39, v90);
        v178(v22, 0, 1, v90);
      }

      else
      {
        (*v89)(v39, v90);
      }

      v87 += v88;
      if (!--v85)
      {
        break;
      }

      v86(v39, v87, v90);
    }
  }

  v35 = v180;
  v9 = *(v180 + 2);
  LODWORD(v178) = *MEMORY[0x277D0EFC8];
  v184 = v9;
  if (v9)
  {
    v91 = 0;
    LODWORD(v161) = 0;
    v156 = 0;
    v157 = 0;
    v174 = &v180[(*(v185 + 80) + 32) & ~*(v185 + 80)];
    v173 = (v185 + 16);
    v171 = (v164 + 48);
    v165 = (v164 + 16);
    v164 += 8;
    v160 = (v159 + 88);
    LODWORD(v175) = *MEMORY[0x277D0EFC0];
    v92 = (v159 + 8);
    v93 = (v159 + 104);
    v170 = (v185 + 8);
    v146 = v9 - 1;
    v94 = v145;
    v23 = v179;
LABEL_77:
    v22 = v91;
    while (1)
    {
      if (v22 >= *(v35 + 16))
      {
        goto LABEL_147;
      }

      (*(v185 + 16))(v94, v174 + *(v185 + 72) * v22, v187);
      v16 = sub_22A4DBACC();
      v96 = v95;
      v97 = v176;
      if ((*v171)(v176, 1, v23))
      {

        v98 = v183;
      }

      else
      {
        v99 = v166;
        (*v165)(v166, v97, v23);
        v100 = sub_22A4DBBBC();
        v102 = v101;
        (*v164)(v99, v23);
        if (v16 == v100 && v96 == v102)
        {

          v98 = v183;
          v35 = v180;
        }

        else
        {
          v16 = sub_22A4DE60C();

          v98 = v183;
          v35 = v180;
          if ((v16 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v16 = v163;
        sub_22A4DBADC();
        v103 = (*v160)(v16, v188);
        if (v103 == v175)
        {
          v104 = 2;
        }

        else if (v103 == v178)
        {
          v104 = 1;
        }

        else
        {
          (*v92)(v163, v188);
          v104 = 3;
        }

        LODWORD(v161) = v104;
      }

LABEL_91:
      v105 = *(sub_22A4DBA9C() + 16);

      if (v105 || (v39 = *(sub_22A4DBAAC() + 16), , v39))
      {
        v106 = v186;
        v39 = v94;
        sub_22A4DBADC();
        v16 = *v93;
        v107 = v188;
        (*v93)(v98, v178, v188);
        v108 = sub_22A4DBC4C();
        v109 = *v92;
        (*v92)(v98, v107);
        v109(v106, v107);
        if (v108)
        {
          (*v170)(v39, v187);
          v91 = v22 + 1;
          v157 = 1;
          v110 = v146 == v22;
          v94 = v39;
          v23 = v179;
          v35 = v180;
          goto LABEL_100;
        }

        sub_22A4DBADC();
        (v16)(v98, v175, v107);
        v16 = sub_22A4DBC4C();
        v109(v98, v107);
        v109(v106, v107);
        (*v170)(v39, v187);
        v94 = v39;
        v23 = v179;
        v35 = v180;
        if (v16)
        {
          v91 = v22 + 1;
          v156 = 1;
          v110 = v146 == v22;
LABEL_100:
          v9 = v184;
          if (v110)
          {
            goto LABEL_104;
          }

          goto LABEL_77;
        }
      }

      else
      {
        (*v170)(v94, v187);
      }

      ++v22;
      v9 = v184;
      if (v184 == v22)
      {
        goto LABEL_104;
      }
    }
  }

  LODWORD(v161) = 0;
  v156 = 0;
  v157 = 0;
LABEL_104:
  v111 = 0;
  v179 = v185 + 16;
  v174 = (v159 + 8);
  v175 = v159 + 104;
  v173 = (v185 + 8);
  v23 = v187;
  v112 = v188;
  v113 = v183;
  do
  {
    v171 = v111;
    if (v9 == v111)
    {
      break;
    }

    v22 = v111;
    if (v111 >= *(v180 + 2))
    {
      goto LABEL_148;
    }

    v114 = v185;
    v39 = v169;
    (*(v185 + 16))(v169, &v180[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v111++], v23);
    v22 = v186;
    sub_22A4DBADC();
    (*v175)(v113, v178, v112);
    v35 = sub_22A4DBC4C();
    v16 = *v174;
    (*v174)(v113, v112);
    (v16)(v22, v112);
    v115 = *(v114 + 8);
    v9 = v184;
    v115(v39, v23);
  }

  while ((v35 & 1) == 0);
  v116 = 0;
  LODWORD(v178) = *MEMORY[0x277D0EFC0];
  v23 = v155;
  v35 = v180;
  do
  {
    v16 = v116;
    if (v9 == v116)
    {
      break;
    }

    if (v116 >= *(v35 + 16))
    {
      goto LABEL_149;
    }

    v117 = v185;
    v22 = v187;
    (*(v185 + 16))(v23, v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v116++, v187);
    sub_22A4DBADC();
    v118 = v183;
    (*v175)(v183, v178, v112);
    v39 = sub_22A4DBC4C();
    v119 = *v174;
    v120 = v118;
    v121 = v186;
    (*v174)(v120, v188);
    v119(v121, v188);
    v112 = v188;
    v122 = *(v117 + 8);
    v9 = v184;
    v122(v23, v22);
  }

  while ((v39 & 1) == 0);
  v123 = *(v168 + 2);
  if (v123)
  {
    v124 = 0;
    v125 = v182;
    v23 = &v168[(*(v181 + 80) + 32) & ~*(v181 + 80)];
    v35 = v181 + 8;
    v9 = v144;
    while (1)
    {
      if (v124 >= *(v168 + 2))
      {
        goto LABEL_150;
      }

      (*(v181 + 16))(v9, v23 + *(v181 + 72) * v124, v125);
      v39 = v9;
      v126 = sub_22A4DBB2C();
      v22 = v127;
      if (v177)
      {
        if (v126 == v172 && v127 == v177)
        {

          (*v35)(v9, v182);
LABEL_125:
          v128 = 1;
LABEL_126:
          v9 = v184;
          goto LABEL_127;
        }

        v39 = sub_22A4DE60C();

        (*v35)(v9, v182);
        if (v39)
        {
          goto LABEL_125;
        }
      }

      else
      {
        (*v35)(v9, v125);
      }

      if (v123 == ++v124)
      {
        v128 = 0;
        goto LABEL_126;
      }
    }
  }

  v128 = 0;
LABEL_127:

  v35 = *(v167 + 2);
  v22 = v162;
  if (v35)
  {
    LODWORD(v188) = v128;
    v23 = 0;
    v129 = &v167[(*(v181 + 80) + 32) & ~*(v181 + 80)];
    v130 = (v181 + 8);
    while (1)
    {
      if (v23 >= *(v167 + 2))
      {
        goto LABEL_151;
      }

      v131 = v182;
      v39 = v22;
      (*(v181 + 16))(v22, v129 + *(v181 + 72) * v23, v182);
      v132 = sub_22A4DBB2C();
      if (v177)
      {
        if (v132 == v172 && v133 == v177)
        {

          (*v130)(v162, v182);
LABEL_140:
          v134 = 1;
LABEL_141:
          LOBYTE(v128) = v188;
          goto LABEL_142;
        }

        v39 = sub_22A4DE60C();

        v22 = v162;
        (*v130)(v162, v182);
        if (v39)
        {
          goto LABEL_140;
        }
      }

      else
      {
        (*v130)(v22, v131);
      }

      if (v35 == ++v23)
      {
        v134 = 0;
        goto LABEL_141;
      }
    }
  }

  v134 = 0;
LABEL_142:
  v135 = v9 != v16;
  v136 = v9 != v171;
  v137 = v153 != 0;

  v138 = v156 & 1;
  v139 = v157 & 1;
  v140 = v147 == 2;
  result = sub_22953EAE4(v176, &qword_27D8814C0, &unk_22A583F10);
  v141 = v154;
  *v154 = v136;
  v141[1] = v135;
  v141[2] = v161;
  v141[3] = v151;
  v141[4] = v139;
  v141[5] = v138;
  v141[6] = v128;
  v141[7] = v134;
  v141[8] = v140;
  v142 = v149;
  *(v141 + 2) = v148;
  *(v141 + 3) = v142;
  v141[32] = v150;
  v141[33] = v137;
  return result;
}

void sub_2297D06C8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (**a8)(char *, uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (**a15)(char *, uint64_t, uint64_t), char *a16, char *a17, uint64_t a18, uint64_t a19, char *a20, unsigned __int8 a21)
{
  v402 = a8;
  v356 = a4;
  v357 = a7;
  v386 = a6;
  v358 = a5;
  v355 = a3;
  v353 = a1;
  v354 = a2;
  v387 = a19;
  v381 = a18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  MEMORY[0x28223BE20](v22 - 8);
  v389 = &v337 - v23;
  v406 = sub_22A4DBC5C();
  v365 = *(v406 - 8);
  v24 = MEMORY[0x28223BE20](v406);
  v369 = &v337 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v404 = &v337 - v27;
  MEMORY[0x28223BE20](v26);
  v405 = &v337 - v28;
  v408 = sub_22A4DBAEC();
  v410 = *(v408 - 8);
  v29 = MEMORY[0x28223BE20](v408);
  v377 = &v337 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v376 = &v337 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v340 = &v337 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v407 = &v337 - v36;
  MEMORY[0x28223BE20](v35);
  v409 = &v337 - v37;
  v390 = sub_22A4DBC3C();
  v385 = *(v390 - 8);
  v38 = MEMORY[0x28223BE20](v390);
  v370 = &v337 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v378 = &v337 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v396 = &v337 - v43;
  MEMORY[0x28223BE20](v42);
  v399 = &v337 - v44;
  v45 = sub_22A4DBB4C();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v368 = &v337 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v339 = &v337 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v380 = &v337 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v379 = &v337 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v382 = &v337 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v383 = &v337 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v397 = &v337 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v398 = &v337 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v392 = &v337 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v400 = &v337 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v393 = &v337 - v68;
  MEMORY[0x28223BE20](v67);
  v70 = &v337 - v69;
  v364 = a17;
  if (!a17)
  {
    goto LABEL_9;
  }

  v71 = [v364 appleMediaAccessoryDiagnosticInfo];
  if (!v71)
  {
    goto LABEL_271;
  }

  v72 = v71;
  v73 = [v71 idsInfo];

  if (!v73)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v74 = [v73 idsIdentifierString];

  if (!v74)
  {
LABEL_9:
    v78 = v387 == 0;
    goto LABEL_10;
  }

  v75 = sub_22A4DD5EC();
  v77 = v76;

  if (v387)
  {
    if (v75 == v381 && v77 == v387)
    {

      v78 = 1;
LABEL_10:
      v352 = v78;
      goto LABEL_11;
    }

    v352 = sub_22A4DE60C();
  }

  else
  {

    v352 = 0;
  }

LABEL_11:
  v367 = a20;
  if (a20)
  {
    v79 = [v367 appleMediaAccessoryDiagnosticInfo];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 nearbyVisibleDeviceInfos];

      if (v81)
      {
        *&v426[0] = 0;
        sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
        sub_22A4DD82C();

        v82 = *&v426[0];
        if (*&v426[0])
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
    return;
  }

LABEL_15:

  v82 = MEMORY[0x277D84F90];
LABEL_16:
  if (v82 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v351 = a9;
    v391 = v45;
    v388 = v46;
    if (i)
    {
      v84 = 0;
      v394 = v82 & 0xFFFFFFFFFFFFFF8;
      v395 = (v82 & 0xC000000000000001);
      v401 = v46 + 32;
      v85 = MEMORY[0x277D84F90];
      v384 = v82;
      v375 = i;
      while (1)
      {
        if (v395)
        {
          v86 = MEMORY[0x22AAD13F0](v84, v82);
        }

        else
        {
          if (v84 >= *(v394 + 16))
          {
            goto LABEL_64;
          }

          v86 = *(v82 + 8 * v84 + 32);
        }

        v46 = v86;
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        v88 = [v86 idsIdentifierString];
        if (v88)
        {
          a9 = v70;
          v403 = v85;
          v89 = v88;
          sub_22A4DD5EC();

          v90 = [v46 mediaRouteIdString];
          if (v90)
          {
            v91 = v90;
            sub_22A4DD5EC();
          }

          v92 = v393;
          sub_22A4DBB1C();

          v93 = *v401;
          v45 = v391;
          (*v401)(v70, v92, v391);
          v94 = v403;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_22958AD88(0, v94[2] + 1, 1, v94);
          }

          v46 = v388;
          v96 = v94[2];
          v95 = v94[3];
          v97 = v94;
          if (v96 >= v95 >> 1)
          {
            v97 = sub_22958AD88((v95 > 1), v96 + 1, 1, v94);
          }

          v97[2] = v96 + 1;
          v85 = v97;
          v93(v97 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v96, v70, v45);
          v82 = v384;
          i = v375;
        }

        else
        {

          v45 = v391;
          v46 = v388;
        }

        ++v84;
        if (v87 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v85 = MEMORY[0x277D84F90];
LABEL_36:
    v403 = v85;

    if (v367)
    {
      v98 = [v367 appleMediaAccessoryDiagnosticInfo];
      if (!v98)
      {
        goto LABEL_274;
      }

      v99 = v98;
      v100 = [v98 networkVisibleDeviceInfos];

      v82 = MEMORY[0x277D84F90];
      if (v100)
      {
        *&v426[0] = 0;
        sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
        sub_22A4DD82C();

        if (*&v426[0])
        {
          v82 = *&v426[0];
        }
      }
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }

    if (!(v82 >> 62))
    {
      a9 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a9)
      {
        break;
      }

      goto LABEL_45;
    }

    a9 = sub_22A4DE0EC();
    if (!a9)
    {
      break;
    }

LABEL_45:
    v101 = 0;
    v394 = v82 & 0xFFFFFFFFFFFFFF8;
    v395 = (v82 & 0xC000000000000001);
    v401 = v46 + 32;
    v102 = MEMORY[0x277D84F90];
    v393 = v82;
    v384 = a9;
    while (1)
    {
      if (v395)
      {
        v103 = MEMORY[0x22AAD13F0](v101, v82);
      }

      else
      {
        if (v101 >= *(v394 + 16))
        {
          goto LABEL_66;
        }

        v103 = *(v82 + 8 * v101 + 32);
      }

      v70 = v103;
      v104 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v105 = [v103 idsIdentifierString];
      if (v105)
      {
        v106 = v105;
        sub_22A4DD5EC();

        v107 = [v70 mediaRouteIdString];
        if (v107)
        {
          v108 = v107;
          sub_22A4DD5EC();
        }

        v109 = v392;
        sub_22A4DBB1C();

        v110 = *v401;
        v45 = v391;
        (*v401)(v400, v109, v391);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v388;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v102 = sub_22958AD88(0, v102[2] + 1, 1, v102);
        }

        a9 = v384;
        v113 = v102[2];
        v112 = v102[3];
        v114 = v102;
        if (v113 >= v112 >> 1)
        {
          v114 = sub_22958AD88((v112 > 1), v113 + 1, 1, v102);
        }

        v114[2] = v113 + 1;
        v102 = v114;
        v110(v114 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v113, v400, v45);
        v82 = v393;
      }

      else
      {
      }

      ++v101;
      if (v104 == a9)
      {
        goto LABEL_70;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v102 = MEMORY[0x277D84F90];
LABEL_70:
  v392 = a16;
  v366 = a11;
  v348 = a21;
  v395 = a15;
  v350 = a14;
  v361 = a12;
  v349 = a13;

  v115 = 0;
  v116 = v102;
  v117 = v102[2];
  v393 = v46 + 16;
  v394 = (v46 + 8);
  do
  {
    v119 = v115;
    if (v117 == v115)
    {
      break;
    }

    if (v115 >= v116[2])
    {
      goto LABEL_263;
    }

    (*(v46 + 2))(v398, v116 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v115, v45);
    if (sub_22A4DBB2C() == v402 && v120 == a10)
    {

      (*v394)(v398, v45);
      break;
    }

    ++v115;
    v118 = sub_22A4DE60C();

    (*v394)(v398, v45);
  }

  while ((v118 & 1) == 0);
  v347 = v119;
  v121 = 0;
  v384 = v403[2];
  do
  {
    v123 = v121;
    if (v384 == v121)
    {
      break;
    }

    if (v121 >= v403[2])
    {
      goto LABEL_264;
    }

    (*(v46 + 2))(v397, v403 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v121, v45);
    if (sub_22A4DBB2C() == v402 && v124 == a10)
    {

      (*v394)(v397, v45);
      break;
    }

    ++v121;
    v122 = sub_22A4DE60C();

    (*v394)(v397, v45);
  }

  while ((v122 & 1) == 0);
  v346 = v123;
  v125 = 0;
  v126 = v366;
  do
  {
    if (v117 == v125)
    {
      v345 = v125;
      goto LABEL_93;
    }

    if (v125 >= v116[2])
    {
      goto LABEL_265;
    }

    (*(v46 + 2))(v383, v116 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v125, v45);
    if (sub_22A4DBB2C() == v395 && v129 == v392)
    {
      v345 = v125;

      (*v394)(v383, v45);
      goto LABEL_93;
    }

    v127 = v125++;
    v128 = sub_22A4DE60C();

    (*v394)(v383, v45);
  }

  while ((v128 & 1) == 0);
  v345 = v127;
LABEL_93:

  v130 = 0;
  v131 = v390;
  do
  {
    v383 = v130;
    if (v384 == v130)
    {
      break;
    }

    if (v130 >= v403[2])
    {
      goto LABEL_266;
    }

    (*(v46 + 2))(v382, v403 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v130, v45);
    if (sub_22A4DBB2C() == v395 && v133 == v392)
    {

      (*v394)(v382, v45);
      break;
    }

    v130 = v383 + 1;
    v132 = sub_22A4DE60C();

    (*v394)(v382, v45);
  }

  while ((v132 & 1) == 0);

  v422 = MEMORY[0x277D84FA0];
  v423 = MEMORY[0x277D84FA0];
  v420 = MEMORY[0x277D84FA0];
  v421 = MEMORY[0x277D84FA0];
  v418 = MEMORY[0x277D84FA0];
  v419 = MEMORY[0x277D84FA0];
  v362 = xmmword_22A57B4D0;
  v363 = 0u;
  v344 = v117;
  if (v367)
  {
    v134 = v367;
    sub_2297CEFC0(v134, v381, v387, v424);
    v341 = v424[0];
    v342 = v424[1];
    v343 = v425;
    v403 = sub_2296B6AF0(v134);
    v375 = v136;
    v338 = v135;
    if (v135)
    {
      v137 = v135;
      v138 = [v135 SSID];
      if (v138)
      {
        v139 = v137;
        v140 = v138;
        v141 = sub_22A4DD5EC();
        v143 = v142;

        sub_229570788(v426, v141, v143);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = v141;
        *(inited + 40) = v143;
        v360 = sub_229760F9C(inited, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        v137 = v139;
        swift_arrayDestroy();
      }

      else
      {
        v360 = MEMORY[0x277D84FA0];
      }

      v146 = [v137 networkBSSID];
      if (v146)
      {
        v147 = v146;
        v148 = sub_22A4DD5EC();
        v150 = v149;

        sub_229570788(v426, v148, v150);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
        v151 = swift_initStackObject();
        *(v151 + 16) = xmmword_22A576180;
        *(v151 + 32) = v148;
        *(v151 + 40) = v150;
        v359 = sub_229760F9C(v151, MEMORY[0x277D84FA0]);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        v359 = MEMORY[0x277D84FA0];
      }

      v131 = v390;
      v126 = v366;
    }

    else
    {
      v359 = MEMORY[0x277D84FA0];
      v360 = MEMORY[0x277D84FA0];
    }

    v152 = v375;
    v374 = *(v375 + 16);
    if (v374)
    {
      v337 = v134;
      v402 = v403[2];
      v373 = (v375 + ((*(v385 + 80) + 32) & ~*(v385 + 80)));
      v372 = v385 + 16;
      v400 = v410 + 16;
      v401 = (v410 + 8);
      LODWORD(v398) = *MEMORY[0x277D0EFB8];
      v397 = (v365 + 104);
      v153 = (v365 + 8);
      v371 = (v385 + 8);

      v154 = 0;
      v155 = v408;
      v156 = v399;
      v157 = v409;
      while (1)
      {
        if (v154 >= *(v152 + 16))
        {
          goto LABEL_267;
        }

        v159 = *(v385 + 72);
        v382 = v154;
        (*(v385 + 16))(v156, v373 + v159 * v154, v131);
        if (!v402)
        {
LABEL_114:
          v131 = v390;
          (*v371)(v156, v390);
          v152 = v375;
          v158 = v382;
          goto LABEL_115;
        }

        v160 = 0;
        v161 = v403 + ((*(v410 + 80) + 32) & ~*(v410 + 80));
        while (1)
        {
          if (v160 >= v403[2])
          {
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          (*(v410 + 16))(v409, &v161[*(v410 + 72) * v160], v155);
          v162 = sub_22A4DBACC();
          v164 = v163;
          if (v162 == sub_22A4DBBBC() && v164 == v165)
          {
            break;
          }

          v166 = sub_22A4DE60C();

          if (v166)
          {
            goto LABEL_126;
          }

          (*v401)(v409, v155);
LABEL_120:
          if (v402 == ++v160)
          {
            goto LABEL_114;
          }
        }

LABEL_126:
        v167 = v405;
        sub_22A4DBADC();
        v168 = v404;
        v169 = v406;
        (*v397)(v404, v398, v406);
        sub_2297D3180();
        v170 = sub_22A4DD58C();
        v171 = *v153;
        (*v153)(v168, v169);
        v172 = v167;
        v156 = v399;
        v155 = v408;
        v171(v172, v169);
        (*v401)(v157, v155);
        if (v170)
        {
          goto LABEL_120;
        }

        v173 = sub_22A4DBBEC();
        if (v174)
        {
          v175 = v173;
          v176 = v174;

          sub_229570788(v426, v175, v176);

          sub_229570788(v426, v175, v176);
        }

        v177 = sub_22A4DBBFC();
        v131 = v390;
        v152 = v375;
        v158 = v382;
        if (v178)
        {
          sub_229570788(v426, v177, v178);
        }

        (*v371)(v156, v131);
LABEL_115:
        v154 = v158 + 1;
        if (v154 == v374)
        {

          v45 = v391;
          v46 = v388;
          v126 = v366;
          v134 = v337;
          break;
        }
      }
    }

    v145 = v364;
    if (v364)
    {
      goto LABEL_134;
    }

LABEL_105:
    LODWORD(v372) = 0;
    goto LABEL_162;
  }

  v343 = 0;
  v359 = MEMORY[0x277D84FA0];
  v360 = MEMORY[0x277D84FA0];
  v341 = xmmword_22A57B4D0;
  v342 = 0uLL;
  v145 = v364;
  if (!v364)
  {
    goto LABEL_105;
  }

LABEL_134:
  v179 = v145;
  sub_2297CEFC0(v179, v381, v387, v426);
  v362 = v426[0];
  v363 = v426[1];
  LODWORD(v372) = v427;
  v338 = v179;
  v409 = sub_2296B6AF0(v179);
  v182 = v181;
  v371 = v180;
  if (v180)
  {
    v183 = [v180 SSID];
    if (v183)
    {
      v184 = v183;
      v185 = sub_22A4DD5EC();
      v187 = v186;

      sub_229570788(&v411, v185, v187);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v188 = swift_initStackObject();
      *(v188 + 16) = xmmword_22A576180;
      *(v188 + 32) = v185;
      *(v188 + 40) = v187;
      v360 = sub_229760F9C(v188, v360);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v189 = [v371 networkBSSID];
    if (v189)
    {
      v190 = v189;
      v191 = sub_22A4DD5EC();
      v193 = v192;

      sub_229570788(&v411, v191, v193);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v194 = swift_initStackObject();
      *(v194 + 16) = xmmword_22A576180;
      *(v194 + 32) = v191;
      *(v194 + 40) = v193;
      v359 = sub_229760F9C(v194, v359);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v126 = v366;
  }

  v397 = *(v182 + 16);
  if (v397)
  {
    v403 = *(v409 + 2);
    v382 = (v182 + ((*(v385 + 80) + 32) & ~*(v385 + 80)));
    v375 = v385 + 16;
    v401 = (v410 + 16);
    v402 = (v410 + 8);
    LODWORD(v400) = *MEMORY[0x277D0EFB8];
    v399 = (v365 + 104);
    v195 = (v365 + 8);
    v373 = (v385 + 8);

    v196 = 0;
    v197 = v408;
    v198 = v396;
    v374 = v182;
    v199 = v404;
    while (1)
    {
      if (v196 >= *(v182 + 16))
      {
        goto LABEL_268;
      }

      v200 = *(v385 + 72);
      v398 = v196;
      (*(v385 + 16))(v198, &v382[v200 * v196], v131);
      if (!v403)
      {
LABEL_142:
        v131 = v390;
        (*v373)(v198, v390);
        v182 = v374;
        goto LABEL_143;
      }

      v201 = 0;
      v202 = &v409[(*(v410 + 80) + 32) & ~*(v410 + 80)];
      while (1)
      {
        if (v201 >= *(v409 + 2))
        {
          goto LABEL_261;
        }

        (*(v410 + 16))(v407, &v202[*(v410 + 72) * v201], v197);
        v203 = sub_22A4DBACC();
        v205 = v204;
        if (v203 == sub_22A4DBBBC() && v205 == v206)
        {
          break;
        }

        v207 = sub_22A4DE60C();

        if (v207)
        {
          goto LABEL_154;
        }

        (*v402)(v407, v197);
LABEL_148:
        if (v403 == ++v201)
        {
          goto LABEL_142;
        }
      }

LABEL_154:
      v208 = v405;
      v209 = v407;
      sub_22A4DBADC();
      v210 = v406;
      (*v399)(v199, v400, v406);
      sub_2297D3180();
      v211 = sub_22A4DD58C();
      v212 = *v195;
      (*v195)(v199, v210);
      v213 = v208;
      v197 = v408;
      v212(v213, v210);
      v214 = v209;
      v198 = v396;
      (*v402)(v214, v197);
      if (v211)
      {
        goto LABEL_148;
      }

      v215 = sub_22A4DBBEC();
      if (v216)
      {
        v217 = v215;
        v218 = v216;

        sub_229570788(&v411, v217, v218);

        sub_229570788(&v411, v217, v218);
      }

      v219 = sub_22A4DBBFC();
      v131 = v390;
      v182 = v374;
      if (v220)
      {
        sub_229570788(&v411, v219, v220);
      }

      (*v373)(v198, v131);
LABEL_143:
      v196 = v398 + 1;
      if (v398 + 1 == v397)
      {

        v45 = v391;
        v46 = v388;
        v126 = v366;
        break;
      }
    }
  }

  v145 = v364;
LABEL_162:
  if (v358 <= -61)
  {
    v221 = 2;
  }

  else
  {
    v221 = (v358 >> 31) & 3;
  }

  if (v358 >= -80)
  {
    v222 = v221;
  }

  else
  {
    v222 = 1;
  }

  if (v145)
  {
    v223 = [v145 version];
    if ((v223 & 0x8000000000000000) != 0)
    {
      goto LABEL_269;
    }

    v224 = v367;
    if (!v367)
    {
      goto LABEL_174;
    }

LABEL_173:
    v224 = [v224 version];
    if ((v224 & 0x8000000000000000) != 0)
    {
      goto LABEL_270;
    }

    goto LABEL_174;
  }

  v223 = 0;
  v224 = v367;
  if (v367)
  {
    goto LABEL_173;
  }

LABEL_174:
  v373 = v224;
  v374 = v223;
  LODWORD(v371) = v222;
  v225 = 0;
  v226 = *(v126 + 16);
  do
  {
    v228 = v225;
    if (v226 == v225)
    {
      break;
    }

    (*(v46 + 2))(v379, v126 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v225, v45);
    if (sub_22A4DBB2C() == v395 && v229 == v392)
    {

      (*v394)(v379, v45);
      break;
    }

    ++v225;
    v227 = sub_22A4DE60C();

    (*v394)(v379, v45);
  }

  while ((v227 & 1) == 0);
  v367 = v228;
  v379 = v226;
  v230 = 0;
  v231 = v361;
  v232 = *(v361 + 16);
  do
  {
    v234 = v230;
    if (v232 == v230)
    {
      break;
    }

    (*(v46 + 2))(v380, v231 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v230, v45);
    if (sub_22A4DBB2C() == v395 && v235 == v392)
    {

      (*v394)(v380, v45);
      break;
    }

    ++v230;
    v233 = sub_22A4DE60C();

    (*v394)(v380, v45);
  }

  while ((v233 & 1) == 0);
  v236 = v356;
  v237 = [v356 SSID];
  v380 = v232;
  v364 = v234;
  if (v237)
  {

    v238 = [v236 networkBSSID];
    v239 = v357;
    v240 = v378;
    if (v238)
    {

      v358 = 1;
    }

    else
    {
      v358 = 0;
    }
  }

  else
  {
    v358 = 0;
    v239 = v357;
    v240 = v378;
  }

  v241 = *(v385 + 56);
  v409 = (v385 + 56);
  v407 = v241;
  (v241)(v389, 1, 1, v131);
  v242 = *(v239 + 16);
  if (v242)
  {
    v243 = *(v385 + 16);
    v244 = v239 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
    v245 = *(v385 + 72);
    v403 = (v385 + 8);
    v246 = (v385 + 32);
    do
    {
      v247 = v240;
      v248 = v240;
      v249 = v390;
      v243(v247, v244, v390);
      if (sub_22A4DBC2C())
      {
        v250 = v243;
        v251 = v389;
        sub_22953EAE4(v389, &qword_27D8814C0, &unk_22A583F10);
        (*v246)(v251, v248, v249);
        v252 = v251;
        v243 = v250;
        (v407)(v252, 0, 1, v249);
      }

      else
      {
        (*v403)(v248, v249);
      }

      v244 += v245;
      --v242;
      v240 = v378;
    }

    while (v242);
  }

  v253 = *(v386 + 16);
  v409 = v253;
  if (!v253)
  {
    goto LABEL_224;
  }

  LODWORD(v382) = 0;
  LODWORD(v375) = 0;
  LODWORD(v378) = 0;
  v401 = (v386 + ((*(v410 + 80) + 32) & ~*(v410 + 80)));
  v400 = v410 + 16;
  v399 = (v385 + 48);
  v395 = (v385 + 16);
  v392 = (v385 + 8);
  v385 = v365 + 88;
  LODWORD(v402) = *MEMORY[0x277D0EFC0];
  LODWORD(v398) = *MEMORY[0x277D0EFC8];
  v254 = (v365 + 8);
  v397 = (v410 + 8);
  v255 = v404;
  v256 = v340;
  v396 = (v365 + 104);
  v257 = 0;
  do
  {
    while (1)
    {
      (*(v410 + 16))(v256, &v401[*(v410 + 72) * v257], v408);
      if (__OFADD__(v257, 1))
      {
        goto LABEL_262;
      }

      v403 = v257;
      v407 = (v257 + 1);
      v258 = sub_22A4DBACC();
      v260 = v259;
      v261 = v389;
      v262 = v390;
      if ((*v399)(v389, 1, v390))
      {
      }

      else
      {
        v263 = v370;
        (*v395)(v370, v261, v262);
        v264 = sub_22A4DBBBC();
        v266 = v265;
        (*v392)(v263, v262);
        if (v258 == v264 && v260 == v266)
        {

          v255 = v404;
        }

        else
        {
          v267 = sub_22A4DE60C();

          v255 = v404;
          if ((v267 & 1) == 0)
          {
            goto LABEL_215;
          }
        }

        v268 = v369;
        sub_22A4DBADC();
        v269 = v406;
        v270 = (*v385)(v268, v406);
        if (v270 == v402)
        {
          v271 = 2;
        }

        else if (v270 == v398)
        {
          v271 = 1;
        }

        else
        {
          (*v254)(v369, v269);
          v271 = 3;
        }

        LODWORD(v382) = v271;
      }

LABEL_215:
      v272 = *(sub_22A4DBA9C() + 16);

      if (!v272)
      {
        v273 = *(sub_22A4DBAAC() + 16);

        if (!v273)
        {
          (*v397)(v256, v408);
          break;
        }
      }

      v274 = v405;
      v275 = v256;
      sub_22A4DBADC();
      v276 = *v396;
      v277 = v406;
      (*v396)(v255, v398, v406);
      v278 = sub_22A4DBC4C();
      v279 = *v254;
      (*v254)(v255, v277);
      v279(v274, v277);
      if (v278)
      {
        (*v397)(v275, v408);
        LODWORD(v378) = 1;
        v253 = v409;
        v281 = v407;
        v256 = v275;
        if (v407 == v409)
        {
          goto LABEL_225;
        }

        goto LABEL_222;
      }

      sub_22A4DBADC();
      v276(v255, v402, v277);
      v280 = sub_22A4DBC4C();
      v279(v255, v277);
      v279(v274, v277);
      (*v397)(v275, v408);
      v256 = v275;
      if ((v280 & 1) == 0)
      {
        break;
      }

      LODWORD(v375) = 1;
      v253 = v409;
      v281 = v407;
      if (v407 == v409)
      {
        goto LABEL_225;
      }

LABEL_222:
      v257 = v281;
      if (v281 >= v253)
      {
        goto LABEL_223;
      }
    }

    v257 = v403 + 1;
    v253 = v409;
    if (v407 == v409)
    {
      goto LABEL_225;
    }
  }

  while (v257 < v409);
LABEL_223:
  __break(1u);
LABEL_224:
  LODWORD(v382) = 0;
  LODWORD(v375) = 0;
  LODWORD(v378) = 0;
LABEL_225:
  v282 = 0;
  v407 = (v410 + 16);
  LODWORD(v398) = *MEMORY[0x277D0EFC8];
  v403 = (v365 + 104);
  v402 = (v365 + 8);
  v401 = (v410 + 8);
  v283 = v405;
  v284 = v408;
  do
  {
    v399 = v282;
    if (v253 == v282)
    {
      break;
    }

    v285 = v410;
    v286 = v376;
    (*(v410 + 16))(v376, v386 + ((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v282++, v284);
    sub_22A4DBADC();
    v287 = v404;
    v288 = v406;
    (*v403)(v404, v398, v406);
    LODWORD(v400) = sub_22A4DBC4C();
    v289 = *v402;
    (*v402)(v287, v288);
    v289(v283, v288);
    v253 = v409;
    (*(v285 + 8))(v286, v284);
  }

  while ((v400 & 1) == 0);
  v290 = 0;
  LODWORD(v398) = *MEMORY[0x277D0EFC0];
  v291 = v408;
  do
  {
    v292 = v290;
    if (v253 == v290)
    {
      break;
    }

    v293 = v410;
    v294 = v377;
    (*(v410 + 16))(v377, v386 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v290++, v291);
    sub_22A4DBADC();
    v295 = v404;
    v296 = v406;
    (*v403)(v404, v398, v406);
    LODWORD(v400) = sub_22A4DBC4C();
    v297 = *v402;
    v298 = v295;
    v299 = v405;
    (*v402)(v298, v296);
    v297(v299, v296);
    v253 = v409;
    (*(v293 + 8))(v294, v291);
  }

  while ((v400 & 1) == 0);
  v300 = v380;
  if (!v380)
  {
    LODWORD(v410) = 0;
    v302 = v389;
    goto LABEL_245;
  }

  v301 = v292;
  v302 = v389;
  v303 = v361 + ((v388[80] + 32) & ~v388[80]);
  v304 = *(v388 + 9);
  v305 = v380;
  v306 = *(v388 + 2);
  v307 = v339;
  v308 = v391;
  v306(v339, v303, v391);
  while (2)
  {
    v309 = sub_22A4DBB2C();
    if (!v387)
    {
      (*v394)(v307, v308);

LABEL_234:
      v303 += v304;
      --v305;
      v302 = v389;
      if (!v305)
      {
        LODWORD(v410) = 0;
        goto LABEL_244;
      }

      v306(v307, v303, v308);
      continue;
    }

    break;
  }

  if (v309 != v381 || v310 != v387)
  {
    v311 = sub_22A4DE60C();

    (*v394)(v307, v391);
    if (v311)
    {
      LODWORD(v410) = 1;
      v302 = v389;
      goto LABEL_244;
    }

    goto LABEL_234;
  }

  (*v394)(v307, v391);
  LODWORD(v410) = 1;
LABEL_244:
  v300 = v380;
  v292 = v301;
LABEL_245:
  v312 = v368;
  v313 = v379;
  if (!v379)
  {
    LODWORD(v403) = 0;
    goto LABEL_259;
  }

  v314 = v292;
  v315 = v366 + ((v388[80] + 32) & ~v388[80]);
  v316 = *(v388 + 9);
  v317 = *(v388 + 2);
  while (2)
  {
    v318 = v391;
    v317(v312, v315, v391);
    v319 = sub_22A4DBB2C();
    if (!v387)
    {
      (*v394)(v312, v318);

LABEL_248:
      v315 += v316;
      if (!--v313)
      {
        LODWORD(v403) = 0;
        goto LABEL_258;
      }

      continue;
    }

    break;
  }

  if (v319 != v381 || v320 != v387)
  {
    v321 = sub_22A4DE60C();

    v312 = v368;
    (*v394)(v368, v391);
    if (v321)
    {
      goto LABEL_257;
    }

    goto LABEL_248;
  }

  (*v394)(v368, v391);
LABEL_257:
  LODWORD(v403) = 1;
LABEL_258:
  v302 = v389;
  v300 = v380;
  v292 = v314;
LABEL_259:
  v322 = v409 != v292;
  v323 = v409 != v399;
  LODWORD(v402) = v387 != 0;
  LODWORD(v409) = v300 != v364;
  LODWORD(v407) = v379 != v367;
  LODWORD(v408) = v384 != v383;
  LODWORD(v405) = v344 != v345;
  LODWORD(v406) = v384 != v346;
  LODWORD(v404) = v344 != v347;
  LODWORD(v398) = v375 & 1;
  v324 = v378 & 1;
  sub_22953EAE4(v302, &qword_27D8814C0, &unk_22A583F10);
  v401 = *(v423 + 16);
  v325 = v354;

  v400 = *(v422 + 16);

  v399 = v360[2];

  v326 = v359[2];

  v327 = *(v421 + 16);

  v328 = *(v418 + 16);

  v329 = sub_22966FDBC(v420, v419);

  v330 = v329[2];

  v331 = v351;
  *v351 = v353;
  v331[1] = v325;
  *(v331 + 16) = v355;
  *(v331 + 24) = v323;
  *(v331 + 25) = v322;
  *(v331 + 17) = v411;
  *(v331 + 5) = *(&v411 + 3);
  v332 = v352 & 1;
  v333 = v348 & 1;
  *(v331 + 26) = v382;
  *(v331 + 27) = 1;
  *(v331 + 28) = v324;
  *(v331 + 29) = v398;
  *(v331 + 30) = v410;
  *(v331 + 31) = v403;
  *(v331 + 32) = v402;
  v331[5] = v350;
  v331[6] = v349;
  *(v331 + 56) = v371;
  *(v331 + 57) = v358;
  *(v331 + 58) = v416;
  *(v331 + 31) = v417;
  v334 = v363;
  *(v331 + 4) = v362;
  *(v331 + 5) = v334;
  *(v331 + 48) = v372;
  *(v331 + 98) = v414;
  *(v331 + 51) = v415;
  v335 = v342;
  *(v331 + 13) = v341;
  *(v331 + 15) = v335;
  *(v331 + 68) = v343;
  *(v331 + 71) = v413;
  *(v331 + 138) = v412;
  v331[18] = v401;
  v331[19] = v400;
  v331[20] = v399;
  v331[21] = v326;
  v331[22] = v327;
  v331[23] = v328;
  *(v331 + 192) = v407;
  *(v331 + 193) = v409;
  *(v331 + 194) = v405;
  *(v331 + 195) = v408;
  *(v331 + 196) = v404;
  *(v331 + 197) = v406;
  v336 = v374;
  v331[25] = v330;
  v331[26] = v336;
  v331[27] = v373;
  *(v331 + 224) = v332;
  *(v331 + 225) = v333;
}

unint64_t sub_2297D3180()
{
  result = qword_27D8814C8;
  if (!qword_27D8814C8)
  {
    sub_22A4DBC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814C8);
  }

  return result;
}

__n128 __swift_memcpy226_8(uint64_t a1, __int128 *a2)
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
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 112);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2297D3224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 226))
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

uint64_t sub_2297D326C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 226) = 1;
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

    *(result + 226) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Metric.Setup.PrimaryResidentWiFiInfosFetch(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Metric.Setup.PrimaryResidentWiFiInfosFetch(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2297D33B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[34])
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

uint64_t sub_2297D3404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2297D3480()
{
  result = qword_27D8814F0;
  if (!qword_27D8814F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814F0);
  }

  return result;
}

unint64_t sub_2297D3508()
{
  result = qword_27D8814F8;
  if (!qword_27D8814F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8814F8);
  }

  return result;
}

unint64_t sub_2297D3560()
{
  result = qword_27D881500;
  if (!qword_27D881500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881500);
  }

  return result;
}

unint64_t sub_2297D35B8()
{
  result = qword_27D881508;
  if (!qword_27D881508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881508);
  }

  return result;
}

uint64_t sub_2297D361C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2297D368C, 0, 0);
}

uint64_t sub_2297D368C()
{
  v1 = v0[7];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 2);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2297D37D4;

  return sub_2296C31A8();
}

uint64_t sub_2297D37D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_2297D3970;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_2297D3908;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2297D3908()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];

  return v1(v2, v3);
}

uint64_t sub_2297D3970()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297D39D4()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2297D3A44, 0, 0);
}

uint64_t sub_2297D3A44()
{
  v1 = v0[7];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 2);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2297D3B8C;

  return sub_2296C50B4();
}

uint64_t sub_2297D3B8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_2297D3970;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_2297D3CB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2297D3CB4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_2297D3D1C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  return sub_22A4DD8FC();
}

id sub_2297D3DA8()
{
  v1 = sub_22A4DB7DC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22A4DD07C();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = v0;
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v6 = sub_22A4DD83C();

  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v8 = 0;
    v48 = v6 & 0xC000000000000001;
    v47 = *MEMORY[0x277CD0E60];
    while (1)
    {
      if (v48)
      {
        v9 = MEMORY[0x22AAD13F0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 serviceType];
      v13 = sub_22A4DD5EC();
      v15 = v14;

      if (v13 == sub_22A4DD5EC() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22A4DE60C();

      if (v18)
      {
        goto LABEL_20;
      }

      v19 = [v10 serviceType];
      v20 = sub_22A4DD5EC();
      v22 = v21;

      if (v20 == sub_22A4DD5EC() && v22 == v23)
      {
LABEL_19:

LABEL_20:

        v25 = [v10 matterEndpointID];

        return v25;
      }

      v24 = sub_22A4DE60C();

      if (v24)
      {
        goto LABEL_20;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  v27 = v46;
  sub_22A4DD08C();
  v28 = v45;
  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCEC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315394;
    v33 = [v28 uuid];
    v34 = v40;
    sub_22A4DB79C();

    sub_2297E3070(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = v42;
    v36 = sub_22A4DE5CC();
    v38 = v37;
    (*(v41 + 8))(v34, v35);
    v39 = sub_2295A3E30(v36, v38, &v49);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2295A3E30(0xD000000000000018, 0x800000022A597160, &v49);
    _os_log_impl(&dword_229538000, v29, v30, "[%s] %s Unable to find thermostat service", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v31, -1, -1);
  }

  (*(v43 + 8))(v27, v44);
  return 0;
}

id sub_2297D42FC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = [v2 home];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_msgSend(v11 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_22A584290;
      *(v14 + 32) = [objc_opt_self() policyWithOperationTypes_];
      v15 = objc_opt_self();
      *(v14 + 40) = [v15 policyWithEntitlements_];
      *(v14 + 48) = [objc_opt_self() defaultSecurePolicy];
      *(v14 + 56) = [objc_allocWithZone(HMDHomeAdministratorHandlerMessagePolicy) init];
      v16 = [a1 name];
      v17 = sub_22A4DD5EC();
      v19 = v18;
      if (v17 == sub_22A4DD5EC() && v19 == v20)
      {
        goto LABEL_5;
      }

      v41 = sub_22A4DE60C();

      if (v41)
      {
        goto LABEL_12;
      }

      v16 = [a1 name];
      v46 = sub_22A4DD5EC();
      v48 = v47;
      if (v46 == sub_22A4DD5EC() && v48 == v49)
      {
        goto LABEL_5;
      }

      v50 = sub_22A4DE60C();

      if (v50)
      {
        goto LABEL_12;
      }

      v16 = [a1 name];
      v51 = sub_22A4DD5EC();
      v53 = v52;
      if (v51 == sub_22A4DD5EC() && v53 == v54)
      {
        goto LABEL_5;
      }

      v55 = sub_22A4DE60C();

      if (v55)
      {
        goto LABEL_12;
      }

      v16 = [a1 name];
      v56 = sub_22A4DD5EC();
      v58 = v57;
      if (v56 == sub_22A4DD5EC() && v58 == v59)
      {
LABEL_5:

LABEL_12:
        v42 = [a1 name];
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v43 = sub_22A4DD81C();

        v44 = HMFCreateMessageBindingWithReceiver();

        return v44;
      }

      v60 = sub_22A4DE60C();

      if (v60)
      {
        goto LABEL_12;
      }

      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_22A576190;
      *(v61 + 32) = [v15 policyWithEntitlements_];
      v62 = [a1 name];
      v63 = sub_22A4DD5EC();
      v65 = v64;
      if (v63 == sub_22A4DD5EC() && v65 == v66)
      {
        goto LABEL_33;
      }

      v67 = sub_22A4DE60C();

      if (v67)
      {
        goto LABEL_12;
      }

      v62 = [a1 name];
      v68 = sub_22A4DD5EC();
      v70 = v69;
      if (v68 == sub_22A4DD5EC() && v70 == v71)
      {
LABEL_33:

        goto LABEL_12;
      }

      v72 = sub_22A4DE60C();

      if (v72)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_229562F68(0, &qword_281401B70, off_278666148);
      sub_22A4DDC0C();
      sub_22A4DD08C();
      v31 = v2;
      v32 = sub_22A4DD05C();
      v33 = sub_22A4DDCEC();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 136315394;
        v74 = 91;
        v75 = 0xE100000000000000;
        v76 = v35;
        v36 = [v31 logIdentifier];
        v37 = sub_22A4DD5EC();
        v73 = v4;
        v39 = v38;

        MEMORY[0x22AAD08C0](v37, v39);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v40 = sub_2295A3E30(v74, v75, &v76);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A597480, &v76);
        _os_log_impl(&dword_229538000, v32, v33, "%s %s Home Activity State feature is not enabled, unable to register for messages", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v35, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);

        (*(v5 + 8))(v10, v73);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }
    }
  }

  else
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v21 = v2;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315394;
      v74 = 91;
      v75 = 0xE100000000000000;
      v76 = v25;
      v26 = [v21 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v74, v75, &v76);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A597480, &v76);
      _os_log_impl(&dword_229538000, v22, v23, "%s %s Missing home or administratorHandlers or msgDispatcher, unable to register for messages", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

void sub_2297D4F60()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v9 = [v0 home];
  if (v9)
  {
    v10 = v9;
    v11 = [v0 msgDispatcher];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_msgSend(v10 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = [v10 administratorHandler];
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22A5842A0;
        *(v15 + 32) = [objc_opt_self() policyWithOperationTypes_];
        v16 = objc_opt_self();
        *(v15 + 40) = [v16 policyWithEntitlements_];
        *(v15 + 48) = [objc_opt_self() defaultSecurePolicy];
        v17 = *MEMORY[0x277CCECF8];
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v18 = sub_22A4DD81C();
        [v14 registerForMessage:v17 receiver:v1 policies:v18 selector:sel_handleAccessoryHasOnboardedForAdaptiveTemperatureAutomationsMessage_];

        v19 = *MEMORY[0x277CCED00];
        v20 = sub_22A4DD81C();
        [v14 registerForMessage:v19 receiver:v1 policies:v20 selector:sel_handleAccessoryHasOnboardedForCleanEnergyAutomationMessage_];

        v21 = *MEMORY[0x277CCF098];
        v22 = sub_22A4DD81C();
        [v14 registerForMessage:v21 receiver:v1 policies:v22 selector:sel_handleSetThermostatSleepScheduleMessage_];

        v23 = *MEMORY[0x277CD0F68];
        v24 = sub_22A4DD81C();

        [v14 registerForMessage:v23 receiver:v1 policies:v24 selector:sel_handleSetAdaptiveThermostatDriverMessage_];

        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_22A576190;
        *(v25 + 32) = [v16 policyWithEntitlements_];
        v26 = *MEMORY[0x277CCFD40];
        v27 = sub_22A4DD81C();
        [v12 registerForMessage:v26 receiver:v1 policies:v27 selector:sel_handleFetchAdaptiveThermostatDriverSettingsMessage_];

        v28 = *MEMORY[0x277CCF090];
        v53 = sub_22A4DD81C();

        [v12 registerForMessage:v28 receiver:v1 policies:v53 selector:sel_handleFetchThermostatSleepScheduleMessage_];

        v29 = v53;
      }

      else
      {
        v53 = v2;
        sub_229562F68(0, &qword_281401B70, off_278666148);
        sub_22A4DDC0C();
        sub_22A4DD08C();
        v40 = v0;
        v41 = sub_22A4DD05C();
        v42 = sub_22A4DDCEC();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v52 = v44;
          *v43 = 136315394;
          v54 = 91;
          v55 = 0xE100000000000000;
          v56 = v44;
          v45 = [v40 logIdentifier];
          v46 = sub_22A4DD5EC();
          v48 = v47;

          MEMORY[0x22AAD08C0](v46, v48);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v49 = sub_2295A3E30(v54, v55, &v56);

          *(v43 + 4) = v49;
          *(v43 + 12) = 2080;
          *(v43 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A597460, &v56);
          _os_log_impl(&dword_229538000, v41, v42, "%s %s Home Activity State feature is not enabled, unable to register for messages", v43, 0x16u);
          v50 = v52;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v50, -1, -1);
          MEMORY[0x22AAD4E50](v43, -1, -1);
        }

        (*(v3 + 8))(v8, v53);
      }

      return;
    }
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v30 = v0;
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 136315394;
    v54 = 91;
    v55 = 0xE100000000000000;
    v56 = v34;
    v35 = [v30 logIdentifier];
    v36 = sub_22A4DD5EC();
    v38 = v37;

    MEMORY[0x22AAD08C0](v36, v38);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v39 = sub_2295A3E30(v54, v55, &v56);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A597460, &v56);
    _os_log_impl(&dword_229538000, v31, v32, "%s %s Missing home or administratorHandler or msgDispatcher, unable to register for messages", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

void sub_2297D5754()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v64 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v60[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v60[-v8];
  [v0 stopObservingClimateNotifications];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v10 = v0;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  v13 = os_log_type_enabled(v11, v12);
  v63 = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v62 = v15;
    *v14 = 136315394;
    v65 = 91;
    v66 = 0xE100000000000000;
    v67 = v15;
    v16 = [v10 logIdentifier];
    v61 = v12;
    v17 = v16;
    v18 = sub_22A4DD5EC();
    v19 = v10;
    v20 = v2;
    v21 = v1;
    v23 = v22;

    MEMORY[0x22AAD08C0](v18, v23);
    v1 = v21;
    v2 = v20;
    v10 = v19;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(v65, v66, &v67);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v67);
    _os_log_impl(&dword_229538000, v11, v61, "%s %s Starting", v14, 0x16u);
    v25 = v62;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  v26 = *(v2 + 8);
  v26(v9, v1);
  v27 = [v10 home];
  if (!v27)
  {
    goto LABEL_8;
  }

  v28 = v27;
  v29 = [objc_msgSend(v27 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v29)
  {

LABEL_8:
    sub_22A4DDC0C();
    v33 = v64;
    sub_22A4DD08C();
    v34 = v10;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v62 = v2;
      v38 = v37;
      v39 = swift_slowAlloc();
      *v38 = 136315394;
      v65 = 91;
      v66 = 0xE100000000000000;
      v67 = v39;
      v40 = [v34 logIdentifier];
      v41 = v1;
      v42 = sub_22A4DD5EC();
      v44 = v43;

      MEMORY[0x22AAD08C0](v42, v44);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v45 = sub_2295A3E30(v65, v66, &v67);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v67);
      _os_log_impl(&dword_229538000, v35, v36, "%s %s Not observing - home is missing or the feature is not enabled", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);

      v46 = v64;
      v47 = v41;
    }

    else
    {

      v46 = v33;
      v47 = v1;
    }

    goto LABEL_11;
  }

  if ([v28 isCurrentDeviceConfirmedPrimaryResident])
  {
    v30 = [v28 notificationCenter];
    [v30 addObserver:v10 selector:sel_handleChipAccessoryServerConfiguredNotification_ name:@"HMDCHIPAccessoryServerConfiguredNotification" object:v10];

    v31 = [v28 notificationCenter];
    [v31 addObserver:v10 selector:sel_handleMobileAssetsUpdatedNotification_ name:@"HMDMobileAssetManagerFoundUpdateNotification" object:0];

    v32 = [v28 notificationCenter];
    [v32 addObserver:v10 selector:sel_handleAccessoryFirmwareVersionChangedNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:v10];

    return;
  }

  v64 = v1;
  sub_22A4DDC0C();
  v48 = v63;
  sub_22A4DD08C();
  v49 = v10;
  v50 = sub_22A4DD05C();
  v51 = sub_22A4DDCCC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v62 = v2;
    v53 = v52;
    v54 = swift_slowAlloc();
    *v53 = 136315394;
    v65 = 91;
    v66 = 0xE100000000000000;
    v67 = v54;
    v55 = [v49 logIdentifier];
    v56 = sub_22A4DD5EC();
    v58 = v57;

    MEMORY[0x22AAD08C0](v56, v58);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v59 = sub_2295A3E30(v65, v66, &v67);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A597430, &v67);
    _os_log_impl(&dword_229538000, v50, v51, "%s %s Not observing - device is not the primary resident", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v54, -1, -1);
    MEMORY[0x22AAD4E50](v53, -1, -1);

    v46 = v63;
  }

  else
  {

    v46 = v48;
  }

  v47 = v64;
LABEL_11:
  v26(v46, v47);
}