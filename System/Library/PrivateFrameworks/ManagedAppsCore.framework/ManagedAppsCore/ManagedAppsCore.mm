uint64_t sub_257FD5578(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v56 = a4;
  v57 = a1;
  v58 = a3;
  v64 = *MEMORY[0x277D85DE8];
  v52 = sub_2580499C0();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49[-v7];
  v9 = sub_258049A20();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v49[-v13];
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks;
  type metadata accessor for SingletonTaskManager();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  v17 = MEMORY[0x277D84F90];
  *(v16 + 112) = sub_2580367CC(MEMORY[0x277D84F90]);
  *(v4 + v15) = v16;
  v18 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = v17;
  v21 = v55;
  *(v19 + 112) = sub_2580367CC(v20);
  *(v4 + v18) = v19;
  sub_257FDA854(v57, v4 + 112);
  v54 = v4;
  *(v4 + 152) = v21;
  sub_257FDA958(v58, v8, &qword_27F915220, &qword_25804EC90);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    v23 = v10;
    sub_258049B10();
    v24 = v9;
    if (v22(v8, 1, v9) != 1)
    {
      sub_257FDAB84(v8, &qword_27F915220, &qword_25804EC90);
    }
  }

  else
  {
    v23 = v10;
    v25 = *(v10 + 32);
    v24 = v9;
    v25(v14, v8, v9);
  }

  *&v61 = 0x656761726F7453;
  *(&v61 + 1) = 0xE700000000000000;
  v26 = v51;
  v27 = v50;
  v28 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CC91D8], v52);
  sub_257FDA8B8();
  v29 = v53;
  v55 = v14;
  sub_258049A10();
  (*(v26 + 8))(v27, v28);
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  sub_258049A00();
  v32 = sub_25804A100();

  v33 = [v31 fileExistsAtPath_];

  v34 = v54;
  if ((v33 & 1) == 0)
  {
    v35 = [v30 defaultManager];
    v36 = sub_2580499E0();
    *&v61 = 0;
    v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v61];

    if (!v37)
    {
      v46 = v61;
      sub_2580499B0();

      swift_willThrow();
      v47 = *(v23 + 8);
      v47(v29, v24);
      v47(v55, v24);
      __swift_destroy_boxed_opaque_existential_1((v34 + 112));

      type metadata accessor for AppAssetResolverImpl(0);
      swift_defaultActor_destroy();
      sub_257FDAB84(v56, &qword_27F915230, &qword_25804B380);
      sub_257FDAB84(v58, &qword_27F915220, &qword_25804EC90);
      __swift_destroy_boxed_opaque_existential_1(v57);
      swift_deallocPartialClassInstance();
      return v34;
    }

    v38 = v61;
  }

  (*(v23 + 16))(v34 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetDirectoryURL, v29, v24);
  v39 = v56;
  sub_257FDA958(v56, &v59, &qword_27F915230, &qword_25804B380);
  if (v60)
  {
    sub_257FDAB84(v39, &qword_27F915230, &qword_25804B380);
    sub_257FDAB84(v58, &qword_27F915220, &qword_25804EC90);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v40 = *(v23 + 8);
    v40(v29, v24);
    v40(v55, v24);
    sub_257FDAA0C(&v59, &v61);
  }

  else
  {
    v41 = type metadata accessor for RemoteManagementAssetResolverImpl();
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D84F90];
    *(v42 + 16) = sub_2580368D0(MEMORY[0x277D84F90]);
    v44 = sub_2580368D0(v43);
    swift_beginAccess();
    *(v42 + 16) = v44;

    *(v42 + 24) = sub_257FDA9C0();
    v62 = v41;
    v63 = &off_286938E70;
    *&v61 = v42;
    sub_257FDAB84(v39, &qword_27F915230, &qword_25804B380);
    sub_257FDAB84(v58, &qword_27F915220, &qword_25804EC90);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v45 = *(v23 + 8);
    v45(v29, v24);
    v45(v55, v24);
    if (v60)
    {
      sub_257FDAB84(&v59, &qword_27F915230, &qword_25804B380);
    }
  }

  sub_257FDAA0C(&v61, v34 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver);
  return v34;
}

uint64_t sub_257FD5CFC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for AppRecordLookalike(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257FD5DF8, v2, 0);
}

uint64_t sub_257FD5DF8()
{
  v14 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[17] = __swift_project_value_buffer(v1, qword_27F919DD0);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_258032C5C(v5, v4, &v13);
    _os_log_impl(&dword_257FD4000, v2, v3, "%s - managementKey: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v0[12] + 112), *(v0[12] + 136));
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_257FD6010;
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];

  return sub_257FE1590(v9, v10, v11);
}

uint64_t sub_257FD6010()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_257FD63F0;
  }

  else
  {
    v4 = sub_257FD613C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_257FD613C()
{
  v16 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    sub_257FDAB84(v1, &qword_27F915280, &qword_25804ED30);

    v2 = sub_258049D10();
    v3 = sub_25804A2D0();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[10];
      v4 = v0[11];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v15);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_258032C5C(v5, v4, &v15);
      _os_log_impl(&dword_257FD4000, v2, v3, "%s - no record found for managementKey: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v7, -1, -1);
      MEMORY[0x259C77210](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[12];
    sub_257FDABE4(v1, v0[16]);
    v0[3] = 0;
    v0[2] = 0;
    v11 = MEMORY[0x277D84F90];
    v0[8] = MEMORY[0x277D84F90];
    v0[9] = v11;
    v12 = *__swift_project_boxed_opaque_existential_1((v10 + 112), *(v10 + 136));
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_257FD6610;
    v14 = v0[16];

    return sub_257FDEBB8(v14, v12, (v0 + 2), (v0 + 8), (v0 + 9));
  }
}

uint64_t sub_257FD63F0()
{
  v15 = v0;
  v1 = v0[19];

  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v14);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%s - Failed to resolve assets for app record (%s) with error: %@", v7, 0x20u);
    sub_257FDAB84(v8, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_257FD6610()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_257FD6A6C;
  }

  else
  {
    v4 = sub_257FD673C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_257FD673C()
{
  v1 = v0[8];
  v2 = v0[12];
  v0[22] = v1;
  v3 = v1[2];
  v4 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_configTasks;
  v0[23] = v3;
  v0[24] = v4;
  if (v3)
  {
    v0[25] = 0;
    if (v1[2])
    {
      v5 = v0[3];
      if (v5)
      {
        v7 = v1[4];
        v6 = v1[5];
        v8 = v0[2];

        v0[4] = v7;
        v0[5] = v6;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v8, v5);
        v9 = v0[4];
        v10 = v0[5];
        v0[26] = v10;
        v0[27] = *(v2 + v4);
        v11 = swift_allocObject();
        v0[28] = v11;
        v11[2] = v2;
        v11[3] = v7;
        v11[4] = v6;
        v11[5] = v8;
        v11[6] = v5;

        v12 = swift_task_alloc();
        v0[29] = v12;
        *v12 = v0;
        v12[1] = sub_257FD6CAC;
        v13 = &unk_25804F350;
LABEL_9:

        sub_258048C6C(v9, v10, v13, v11);
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v0[9];
  v0[30] = v14;
  v15 = v14[2];
  v16 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v0[31] = v15;
  v0[32] = v16;
  if (v15)
  {
    v0[33] = 0;
    if (v14[2])
    {
      v17 = v0[3];
      if (v17)
      {
        v19 = v14[4];
        v18 = v14[5];
        v20 = v0[2];

        v0[6] = v19;
        v0[7] = v18;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v20, v17);
        v9 = v0[6];
        v10 = v0[7];
        v0[34] = v10;
        v0[35] = *(v2 + v16);
        v11 = swift_allocObject();
        v0[36] = v11;
        v11[2] = v2;
        v11[3] = v19;
        v11[4] = v18;
        v11[5] = v20;
        v11[6] = v17;

        v21 = swift_task_alloc();
        v0[37] = v21;
        *v21 = v0;
        v21[1] = sub_257FD71A4;
        v13 = &unk_25804F270;
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  sub_257FDAC48(v0[16]);

  v22 = v0[1];

  v22();
}

uint64_t sub_257FD6A6C()
{
  v15 = v0;
  sub_257FDAC48(v0[16]);

  v1 = v0[21];

  v2 = v1;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_258032C5C(v6, v5, &v14);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_257FD4000, v3, v4, "%s - Failed to resolve assets for app record (%s) with error: %@", v7, 0x20u);
    sub_257FDAB84(v8, &qword_27F915248, &qword_25804B388);
    MEMORY[0x259C77210](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_257FD6CAC()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  if (v0)
  {

    v4 = sub_257FDB004;
  }

  else
  {

    v4 = sub_257FD6E58;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_257FD6E58()
{
  v1 = v0[25] + 1;
  if (v1 != v0[23])
  {
    v0[25] = v1;
    v17 = v0[22];
    if (v1 < *(v17 + 16))
    {
      v18 = v0[3];
      if (v18)
      {
        v19 = v0[24];
        v20 = v0[12];
        v21 = v17 + 16 * v1;
        v23 = *(v21 + 32);
        v22 = *(v21 + 40);
        v24 = v0[2];

        v0[4] = v23;
        v0[5] = v22;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v24, v18);
        v25 = v0[4];
        v26 = v0[5];
        v0[26] = v26;
        v0[27] = *(v20 + v19);
        v12 = swift_allocObject();
        v0[28] = v12;
        v12[2] = v20;
        v12[3] = v23;
        v12[4] = v22;
        v12[5] = v24;
        v12[6] = v18;

        v27 = swift_task_alloc();
        v0[29] = v27;
        *v27 = v0;
        v27[1] = sub_257FD6CAC;
        v14 = &unk_25804F350;
        v15 = v25;
        v16 = v26;
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v0[12];
  v3 = v0[9];
  v0[30] = v3;
  v4 = v3[2];
  v5 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_credentialTasks;
  v0[31] = v4;
  v0[32] = v5;
  if (v4)
  {
    v0[33] = 0;
    if (v3[2])
    {
      v6 = v0[3];
      if (v6)
      {
        v8 = v3[4];
        v7 = v3[5];
        v9 = v0[2];

        v0[6] = v8;
        v0[7] = v7;

        MEMORY[0x259C76670](32, 0xE100000000000000);
        MEMORY[0x259C76670](v9, v6);
        v10 = v0[6];
        v11 = v0[7];
        v0[34] = v11;
        v0[35] = *(v2 + v5);
        v12 = swift_allocObject();
        v0[36] = v12;
        v12[2] = v2;
        v12[3] = v8;
        v12[4] = v7;
        v12[5] = v9;
        v12[6] = v6;

        v13 = swift_task_alloc();
        v0[37] = v13;
        *v13 = v0;
        v13[1] = sub_257FD71A4;
        v14 = &unk_25804F270;
        v15 = v10;
        v16 = v11;
LABEL_9:

        sub_258048C6C(v15, v16, v14, v12);
        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  sub_257FDAC48(v0[16]);

  v28 = v0[1];

  v28();
}

uint64_t sub_257FD71A4()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  if (v0)
  {

    v4 = sub_257FDB008;
  }

  else
  {

    v4 = sub_257FD7350;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_257FD7350()
{
  v1 = v0[33] + 1;
  if (v1 == v0[31])
  {
    sub_257FDAC48(v0[16]);

    v2 = v0[1];

    v2();
    return;
  }

  v0[33] = v1;
  v3 = v0[30];
  if (v1 >= *(v3 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v0[3];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v0[32];
  v6 = v0[12];
  v7 = v3 + 16 * v1;
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  v10 = v0[2];

  v0[6] = v9;
  v0[7] = v8;

  MEMORY[0x259C76670](32, 0xE100000000000000);
  MEMORY[0x259C76670](v10, v4);
  v11 = v0[6];
  v12 = v0[7];
  v0[34] = v12;
  v0[35] = *(v6 + v5);
  v13 = swift_allocObject();
  v0[36] = v13;
  v13[2] = v6;
  v13[3] = v9;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = v4;

  v14 = swift_task_alloc();
  v0[37] = v14;
  *v14 = v0;
  v14[1] = sub_257FD71A4;

  sub_258048C6C(v11, v12, &unk_25804F270, v13);
}

uint64_t sub_257FD7570(unint64_t a1, uint64_t *a2, char **a3, char **a4)
{
  v59 = a1;
  swift_getKeyPath();
  sub_257FDAF94(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FDAF94(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  v6 = v60;
  *a2 = v59;
  a2[1] = v6;

  v61 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049EF0();

  sub_257FF9754(a1);
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  sub_257FF976C(a1);
  v59 = a1;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v8 = a1;
  if (a1 >> 62)
  {
    result = sub_25804A480();
    v9 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x259C768B0](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    ++v10;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_258049EF0();

    sub_257FF9754(v11);
    v59 = v11;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    sub_257FF976C(v11);

    v8 = a1;
  }

  while (v9 != v10);
LABEL_10:

  result = v61;
  if (v61 >> 62)
  {
    v55 = sub_25804A480();
    result = v61;
  }

  else
  {
    v55 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = &off_25804B000;
  if (v55)
  {
    if (v55 >= 1)
    {
      v13 = 32;
      v53 = result;
      while (1)
      {
        v15 = *(result + v13);
        v59 = v15;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);

        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAF94(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_257FDAF94(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
        v16 = sub_258049EE0();

        if (!v16)
        {
          if (qword_27F915160 != -1)
          {
            swift_once();
          }

          v25 = sub_258049D30();
          __swift_project_value_buffer(v25, qword_27F919DD0);

          v26 = sub_258049D10();
          v27 = sub_25804A2D0();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v57 = v51;
            *v28 = 136315394;
            *(v28 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v57);
            *(v28 + 12) = 2080;
            v59 = v15;
            swift_getKeyPath();
            v29 = v27;
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v30 = sub_258032C5C(v59, v60, &v57);

            *(v28 + 14) = v30;
            _os_log_impl(&dword_257FD4000, v26, v29, "%s - Missing assets for data record (%s)", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C77210](v51, -1, -1);
            MEMORY[0x259C77210](v28, -1, -1);
          }

          else
          {
          }

          goto LABEL_16;
        }

        v59 = v16;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAB10();
        sub_258049F00();

        if (v60 == 1)
        {
          goto LABEL_21;
        }

        if (v60 != 2)
        {
          break;
        }

LABEL_16:
        v13 += 8;
        v14 = v55-- == 1;
        result = v53;
        if (v14)
        {

          v12 = &off_25804B000;
          goto LABEL_33;
        }
      }

      sub_257FDAB64(v59, v60);
LABEL_21:
      v59 = v16;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      v17 = v59;
      v18 = v60;
      v19 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_25800A2A8(0, *(v19 + 2) + 1, 1, v19);
        *a3 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        *a3 = sub_25800A2A8((v21 > 1), v22 + 1, 1, v19);
      }

      v23 = *a3;
      *(v23 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v17;
      *(v24 + 5) = v18;
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_33:
  result = v58;
  if (!(v58 >> 62))
  {
    v56 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
      goto LABEL_35;
    }
  }

  v47 = v58;
  v56 = sub_25804A480();
  result = v47;
  if (!v56)
  {
  }

LABEL_35:
  if (v56 >= 1)
  {
    v31 = 32;
    v50 = *(v12 + 84);
    v54 = result;
    while (1)
    {
      v34 = *(result + v31);
      v59 = v34;
      swift_getKeyPath();
      sub_257FDAF94(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);

      sub_258049A90();

      swift_getKeyPath();
      sub_257FDAF94(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_257FDAF94(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
      v35 = sub_258049EE0();

      if (v35)
      {
        v59 = v35;
        swift_getKeyPath();
        sub_257FDAF94(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FDAB10();
        sub_258049F00();

        if (v60 != 1)
        {
          if (v60 == 2)
          {

            result = v54;
            goto LABEL_39;
          }

          sub_257FDAB64(v59, v60);
        }

        v59 = v35;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        v39 = v59;
        v40 = v60;
        v41 = *a4;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v41;
        if ((v42 & 1) == 0)
        {
          v41 = sub_25800A2A8(0, *(v41 + 2) + 1, 1, v41);
          *a4 = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          *a4 = sub_25800A2A8((v43 > 1), v44 + 1, 1, v41);
        }

        v45 = *a4;
        *(v45 + 2) = v44 + 1;
        v46 = &v45[16 * v44];
        *(v46 + 4) = v39;
        *(v46 + 5) = v40;
      }

      else
      {
        if (qword_27F915160 != -1)
        {
          swift_once();
        }

        v36 = sub_258049D30();
        __swift_project_value_buffer(v36, qword_27F919DD0);

        v37 = sub_258049D10();
        v38 = sub_25804A2D0();

        if (os_log_type_enabled(v37, v38))
        {
          v32 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v57 = v52;
          *v32 = v50;
          *(v32 + 4) = sub_258032C5C(0xD000000000000029, 0x800000025804FEE0, &v57);
          *(v32 + 12) = 2080;
          v59 = v34;
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v33 = sub_258032C5C(v59, v60, &v57);

          *(v32 + 14) = v33;
          _os_log_impl(&dword_257FD4000, v37, v38, "%s - Missing assets for credential record (%s)", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C77210](v52, -1, -1);
          MEMORY[0x259C77210](v32, -1, -1);
        }

        else
        {
        }
      }

      result = v54;
LABEL_39:
      v31 += 8;
      if (!--v56)
      {
      }
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_257FD84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257FD8590;

  return sub_257FD8684(a2, a3, a4, a5);
}

uint64_t sub_257FD8590()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257FD8684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  v5[10] = swift_task_alloc();
  v6 = sub_2580499C0();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_258049A20();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257FD87E0, v4, 0);
}

uint64_t sub_257FD87E0()
{
  v16 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[17] = __swift_project_value_buffer(v1, qword_27F919DD0);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, &v15);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258032C5C(v7, v6, &v15);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258032C5C(v5, v4, &v15);
    _os_log_impl(&dword_257FD4000, v2, v3, "%s - resolving data asset: %s configurationIdentifier: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  v10 = *__swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_257FD8A44;
  v13 = v0[5];
  v12 = v0[6];

  return sub_257FDCC84(v13, v12, v10);
}

uint64_t sub_257FD8A44(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 72);
    *(v4 + 224) = a1 & 1;

    return MEMORY[0x2822009F8](sub_257FD8BAC, v8, 0);
  }
}

uint64_t sub_257FD8BAC()
{
  v27 = v0;
  if (*(v0 + 224) == 1)
  {
    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v26[0] = 0x5F7465737341;
    v26[1] = 0xE600000000000000;
    MEMORY[0x259C76670](v6, v7);
    *(v0 + 16) = 0x5F7465737341;
    *(v0 + 24) = 0xE600000000000000;
    (*(v2 + 104))(v1, *MEMORY[0x277CC91D8], v4);
    sub_257FDA8B8();
    sub_258049A10();
    (*(v2 + 8))(v1, v4);

    v8 = type metadata accessor for DataPersistenceValue(0);
    *(v0 + 152) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 160) = v10;
    *(v0 + 168) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v3, 1, 1, v8);
    *(v0 + 32) = 0;
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver), *(v5 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver + 24));
    v11 = *(v5 + 152);
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_257FD8F0C;
    v13 = *(v0 + 128);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);

    return sub_258046138(v17, v16, v14, v15, v13, v11);
  }

  else
  {

    v19 = sub_258049D10();
    v20 = sub_25804A2C0();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, v26);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_258032C5C(v22, v21, v26);
      _os_log_impl(&dword_257FD4000, v19, v20, "%s - data asset already resolved: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v24, -1, -1);
      MEMORY[0x259C77210](v23, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_257FD8F0C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_257FD9190;
  }

  else
  {
    v4 = sub_257FD9038;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_257FD9038()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[10];
  sub_257FDAB84(v6, &qword_27F915268, &qword_25804F1E0);
  (*(v4 + 16))(v6, v3, v5);
  swift_storeEnumTagMultiPayload();
  v1(v6, 0, 1, v2);
  v0[24] = v0[23];
  v0[25] = 0;
  v0[26] = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v8 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FD9268, v8, v7);
}

uint64_t sub_257FD9190()
{
  v1 = v0[23];
  v0[4] = v1;
  v0[24] = 0;
  v0[25] = v1;
  v0[26] = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v3 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FD9268, v3, v2);
}

uint64_t sub_257FD9268()
{
  v1 = *(v0 + 192);
  sub_257FDD348(*(v0 + 40), *(v0 + 48), **(v0 + 208), (v0 + 32), *(v0 + 80));
  *(v0 + 216) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_257FD95D4;
  }

  else
  {
    v3 = sub_257FD9304;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_257FD9304()
{
  v21 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = v1;

    v3 = v1;
    v4 = sub_258049D10();
    v5 = sub_25804A2D0();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[5];
      v6 = v0[6];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20[0] = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_258032C5C(0xD000000000000043, 0x800000025804FE90, v20);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_258032C5C(v7, v6, v20);
      *(v8 + 22) = 2112;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v12;
      *v9 = v12;
      _os_log_impl(&dword_257FD4000, v4, v5, "%s - data asset (%s failed to resolve with error: %@", v8, 0x20u);
      sub_257FDAB84(v9, &qword_27F915248, &qword_25804B388);
      MEMORY[0x259C77210](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v10, -1, -1);
      MEMORY[0x259C77210](v8, -1, -1);
    }

    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v16 = v0[10];
    swift_willThrow();
    (*(v14 + 8))(v13, v15);

    sub_257FDAB84(v16, &qword_27F915268, &qword_25804F1E0);

    v17 = v0[1];
  }

  else
  {
    v18 = v0[10];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_257FDAB84(v18, &qword_27F915268, &qword_25804F1E0);

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_257FD95D4()
{
  v1 = v0[25];
  v2 = v0[10];
  (*(v0[15] + 8))(v0[16], v0[14]);

  sub_257FDAB84(v2, &qword_27F915268, &qword_25804F1E0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_257FD9698(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
    sub_257FDAB10();
    sub_258049F00();

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 0;
      }

      sub_257FDAB64(v1, v2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_257FD97CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_257FDAFFC;

  return sub_257FD9890(a2, a3, a4, a5);
}

uint64_t sub_257FD9890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_257FD98B8, v4, 0);
}

uint64_t sub_257FD98B8()
{
  v18 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  v0[10] = __swift_project_value_buffer(v1, qword_27F919DD0);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, &v17);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258032C5C(v7, v6, &v17);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258032C5C(v5, v4, &v17);
    _os_log_impl(&dword_257FD4000, v2, v3, "%s - resolving credential asset: %s configurationIdentifier: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  v10 = *__swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_257FD9B20;
  v12 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];

  return sub_257FDDC54(v15, v14, v12, v13, v10);
}

uint64_t sub_257FD9B20(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 72);
    *(v4 + 160) = a1 & 1;

    return MEMORY[0x2822009F8](sub_257FD9C70, v8, 0);
  }
}

uint64_t sub_257FD9C70()
{
  v17 = v0;
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 72);
    *(v0 + 16) = xmmword_25804B2B0;
    *(v0 + 32) = 0;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver), *(v1 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver + 24));
    v2 = *(v1 + 152);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_257FD9EC8;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    return sub_258046B90(v7, v6, v4, v5, 0xD000000000000016, 0x800000025804FE70, v2);
  }

  else
  {

    v9 = sub_258049D10();
    v10 = sub_25804A2C0();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 40);
      v11 = *(v0 + 48);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, &v16);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_258032C5C(v12, v11, &v16);
      _os_log_impl(&dword_257FD4000, v9, v10, "%s - data asset already resolved: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_257FD9EC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[13] = v2;

  v7 = v6[9];
  if (v2)
  {
    v8 = sub_257FDA0F0;
  }

  else
  {
    v6[14] = a2;
    v6[15] = a1;
    v8 = sub_257FDA008;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_257FDA008()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_257FDAAA0(0, 0xF000000000000000);
  v0[2] = v2;
  v0[3] = v1;
  v0[16] = v0[13];
  v0[17] = 0;
  v0[18] = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v4 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDA1C8, v4, v3);
}

uint64_t sub_257FDA0F0()
{
  v1 = v0[13];
  v0[4] = v1;
  v0[16] = 0;
  v0[17] = v1;
  v0[18] = __swift_project_boxed_opaque_existential_1((v0[9] + 112), *(v0[9] + 136));
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FDAF94(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v3 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDA1C8, v3, v2);
}

uint64_t sub_257FDA1C8()
{
  v1 = *(v0 + 128);
  sub_257FDE32C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), **(v0 + 144), (v0 + 32), (v0 + 16));
  *(v0 + 152) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_257FDA498;
  }

  else
  {
    v3 = sub_257FDA268;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_257FDA268()
{
  v16 = v0;
  v1 = v0[17];
  if (v1)
  {
    v2 = v1;

    v3 = v1;
    v4 = sub_258049D10();
    v5 = sub_25804A2D0();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[5];
      v6 = v0[6];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_258032C5C(0xD000000000000049, 0x800000025804FE20, v15);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_258032C5C(v7, v6, v15);
      *(v8 + 22) = 2112;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v12;
      *v9 = v12;
      _os_log_impl(&dword_257FD4000, v4, v5, "%s - credential asset (%s) failed to resolve with error: %@", v8, 0x20u);
      sub_257FDAB84(v9, &qword_27F915248, &qword_25804B388);
      MEMORY[0x259C77210](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v10, -1, -1);
      MEMORY[0x259C77210](v8, -1, -1);
    }

    swift_willThrow();
    sub_257FDAAA0(v0[2], v0[3]);
    v13 = v0[1];
  }

  else
  {
    sub_257FDAAA0(v0[2], v0[3]);
    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_257FDA498()
{
  sub_257FDAAA0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257FDA504(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FDAF94(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
    sub_257FDAB10();
    sub_258049F00();

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 0;
      }

      sub_257FDAB64(v1, v2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_257FDA638()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetDirectoryURL;
  v2 = sub_258049A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ManagedAppsCore20AppAssetResolverImpl_assetResolver));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AppAssetResolverImpl(uint64_t a1)
{
  result = qword_27F9151B0;
  if (!qword_27F9151B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257FDA73C(uint64_t a1)
{
  result = sub_258049A20();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_257FDA854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_257FDA8B8()
{
  result = qword_27F915228;
  if (!qword_27F915228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915228);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_257FDA958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_257FDA9C0()
{
  result = qword_27F915238;
  if (!qword_27F915238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F915238);
  }

  return result;
}

uint64_t sub_257FDAA0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_257FDAAA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257FDAAB4(a1, a2);
  }

  return a1;
}

uint64_t sub_257FDAAB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_257FDAB10()
{
  result = qword_27F915260;
  if (!qword_27F915260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915260);
  }

  return result;
}

uint64_t sub_257FDAB64(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_257FDAB84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_257FDABE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257FDAC48(uint64_t a1)
{
  v2 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_257FDAD00()
{
  result = qword_27F915298;
  if (!qword_27F915298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152A0, &qword_25804B460);
    sub_257FDAF94(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915298);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_257FDAE04()
{
  result = qword_27F9152B0;
  if (!qword_27F9152B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152B8, &qword_25804B490);
    sub_257FDAF94(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9152B0);
  }

  return result;
}

unint64_t sub_257FDAEC0()
{
  result = qword_27F9152C8;
  if (!qword_27F9152C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9152D0, &qword_25804B4C0);
    sub_257FDAF94(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9152C8);
  }

  return result;
}

uint64_t sub_257FDAF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257FDB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v9 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDB0D0, v9, v8);
}

uint64_t sub_257FDB0D0()
{
  v19 = v0;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919DE8);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_258032C5C(0xD000000000000032, 0x80000002580503E0, v18);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_258032C5C(v5, v4, v18);
    _os_log_impl(&dword_257FD4000, v2, v3, "%s - record: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v8 = v0[9];
  v10 = v0[7];
  v9 = v0[8];
  v12 = v0[5];
  v11 = v0[6];
  sub_257FE700C();

  v13 = sub_25800EF1C(v12, v11, v10, v9, v8);
  v0[2] = v13;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  v14 = sub_257FE2864(v0[2], v0[3]);

  if (v14)
  {
    if (sub_25800C6E4(v14, v13))
    {
      sub_257FFA79C(v0[4]);

      goto LABEL_12;
    }

    v17 = v0[10];
    sub_257FFCAC0(v14);
    if (*(v17 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {

      sub_257FEEB5C(v13, v14);
    }

    sub_257FE68A0(v13, 0);
    sub_257FE6B38(v14, 0);
  }

  else
  {
    sub_257FE68A0(v13, 0);
  }

  sub_257FE6DD0();
  if (*(v0[10] + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
  {

    sub_258043768();
    sub_258043768();
  }

  sub_257FFA79C(v0[4]);
LABEL_12:

  v16 = v0[1];

  return v16();
}

unint64_t sub_257FDB4F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_257FE2864(a1, a2);
  if (!v3 && result)
  {
    v8 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919DE8);

    v10 = sub_258049D10();
    v11 = sub_25804A2C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258032C5C(0xD000000000000026, 0x8000000258050380, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258032C5C(a1, a2, &v14);
      _os_log_impl(&dword_257FD4000, v10, v11, "%s - recordID: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v13, -1, -1);
      MEMORY[0x259C77210](v12, -1, -1);
    }

    sub_257FDBA58(v8, a3);
  }

  return result;
}

unint64_t sub_257FDB6B8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  result = sub_257FE2C98(a1, a2);
  if (!v4 && result)
  {
    v10 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919DE8);

    v12 = sub_258049D10();
    v13 = sub_25804A2C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v16);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_258032C5C(a1, a2, &v16);
      _os_log_impl(&dword_257FD4000, v12, v13, "%s - managementKey: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v15, -1, -1);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    sub_257FDC0E4(v10, a3, a4);
  }

  return result;
}

unint64_t sub_257FDB890(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_257FE2C98(a1, a2);
  if (!v3 && result)
  {
    v8 = result;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v9 = sub_258049D30();
    __swift_project_value_buffer(v9, qword_27F919DE8);

    v10 = sub_258049D10();
    v11 = sub_25804A2C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258032C5C(a1, a2, &v14);
      _os_log_impl(&dword_257FD4000, v10, v11, "%s - managementKey: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v13, -1, -1);
      MEMORY[0x259C77210](v12, -1, -1);
    }

    sub_257FDC6B4(v8, a3);
  }

  return result;
}

uint64_t sub_257FDBA58(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v3 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919DE8);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v18);
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v8 = sub_258032C5C(a1, v17, &v18);

    *(v7 + 14) = v8;
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v14, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  else
  {
  }

  sub_257FE700C();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_258049A80();

  sub_257FE7384();
  if (!v15)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v10 = sub_258049EE0();

    if (v3)
    {
      if (v10)
      {

        v12 = sub_25800B93C(v11, v10);

        if (v12)
        {
LABEL_16:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          if (*(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
          {

            sub_258043768();
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {

      sub_257FEFACC(a1);
    }

    goto LABEL_16;
  }
}

uint64_t sub_257FDC0E4(unint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v18 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919DE8);

  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v8 = 136315394;
    *(v8 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v20);
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    v15 = a2;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v9 = sub_258032C5C(a1, v19, &v20);

    *(v8 + 14) = v9;
    a2 = v15;
    _os_log_impl(&dword_257FD4000, v6, v7, "%s - record: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v14, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  sub_257FE700C();
  sub_25802B180(a1, a3);
  sub_257FE7384();
  if (!v17)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v10 = sub_258049EE0();

    if (v18)
    {
      if (v10)
      {

        v12 = sub_25800B93C(v11, v10);

        if (v12)
        {
LABEL_15:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          if (*(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
          {

            sub_258043768();
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

uint64_t sub_257FDC6B4(unint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v16 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919DE8);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v7 = 136315394;
    *(v7 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v18);
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    v14 = a2;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v8 = sub_258032C5C(a1, v17, &v18);

    *(v7 + 14) = v8;
    a2 = v14;
    _os_log_impl(&dword_257FD4000, v5, v6, "%s - record: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v13, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  sub_257FE700C();
  sub_25802C20C(a1);
  sub_257FE7384();
  if (!v15)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v9 = sub_258049EE0();

    if (v16)
    {
      if (v9)
      {

        v11 = sub_25800B93C(v10, v9);

        if (v11)
        {
LABEL_15:
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          sub_257FE6DD0();
          if (*(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
          {

            sub_258043768();
            sub_258043768();
          }
        }
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

uint64_t sub_257FDCC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v6 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDCDE4, v6, v5);
}

uint64_t sub_257FDCDE4()
{
  v27 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[2] = type metadata accessor for DataAssetRecord(0);
  sub_258049A70();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049E80();
  v7 = sub_25801CA64(v1);
  (*(v0[8] + 8))(v0[9], v0[7]);
  if (v7 >> 62)
  {
    if (sub_25804A480() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v8 = sub_258049D30();
    __swift_project_value_buffer(v8, qword_27F919DE8);

    v9 = sub_258049D10();
    v10 = sub_25804A2D0();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[3];
      v11 = v0[4];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_258032C5C(0xD000000000000021, 0x80000002580501A0, v26);
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_258032C5C(v12, v11, v26);
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - too many asset records found for managementKey %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    v15 = 0;
    goto LABEL_22;
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v16 = sub_258049D30();
  __swift_project_value_buffer(v16, qword_27F919DE8);

  v17 = sub_258049D10();
  v18 = sub_25804A2C0();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[3];
    v19 = v0[4];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_258032C5C(0xD000000000000021, 0x80000002580501A0, v26);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_258032C5C(v20, v19, v26);
    _os_log_impl(&dword_257FD4000, v17, v18, "%s - managementKey: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v22, -1, -1);
    MEMORY[0x259C77210](v21, -1, -1);
  }

  if (v7 >> 62)
  {
    result = sub_25804A480();
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_15:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x259C768B0](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v24 = *(v7 + 32);
      }

      goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_21:
  v15 = sub_257FD9698(v24);

LABEL_22:

  v25 = v0[1];

  return v25(v15 & 1);
}

void sub_257FDD348(uint64_t a1, NSObject *a2, uint64_t a3, void **a4, uint64_t a5)
{
  v63 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v56 - v17;
  v60 = a1;
  v65 = a1;
  v66 = a2;
  v62 = a2;
  v67[2] = type metadata accessor for DataAssetRecord(0);
  sub_258049A70();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049E80();
  v20 = a3;
  v21 = v64;
  v22 = sub_25801CA64(v18);
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    return;
  }

  v23 = v62;
  v64 = v11;
  v56[1] = v20;
  v24 = v22 >> 62;
  if (v22 >> 62)
  {
    v25 = sub_25804A480();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v64;
  if (v25 >= 1)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v27 = sub_258049D30();
    __swift_project_value_buffer(v27, qword_27F919DE8);
    v28 = v23;

    v23 = sub_258049D10();
    v29 = sub_25804A2C0();

    v30 = os_log_type_enabled(v23, v29);
    v61 = v22;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_258032C5C(0xD000000000000025, 0x8000000258050170, v67);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_258032C5C(v60, v28, v67);
      _os_log_impl(&dword_257FD4000, v23, v29, "%s - managementKey: %s", v31, 0x16u);
      swift_arrayDestroy();
      v33 = v32;
      v22 = v61;
      MEMORY[0x259C77210](v33, -1, -1);
      MEMORY[0x259C77210](v31, -1, -1);
    }

    sub_257FE700C();
    if (v24)
    {
      v34 = sub_25804A480();
    }

    else
    {
      v34 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v63;
    if (!v34)
    {
LABEL_26:

      sub_257FE6DD0();
      return;
    }

    if (v34 >= 1)
    {
      v44 = 0;
      v58 = v22 & 0xC000000000000001;
      v57 = xmmword_25804B650;
      v59 = v34;
      v60 = a5;
      while (1)
      {
        if (v58)
        {
          v48 = MEMORY[0x259C768B0](v44, v22);
          v49 = *v43;
          if (*v43)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v48 = *(v22 + 8 * v44 + 32);

          v49 = *v43;
          if (*v43)
          {
LABEL_25:
            v67[0] = v49;
            v50 = v49;
            v51 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
            v52 = sub_25804A120();
            v54 = v53;
            v67[0] = v48;
            KeyPath = swift_getKeyPath();
            v62 = v56;
            MEMORY[0x28223BE20](KeyPath);
            v56[-4] = v48;
            v56[-3] = v52;
            v56[-2] = v54;
            sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
            v26 = v64;
            sub_258049A80();

            goto LABEL_20;
          }
        }

        sub_257FDA958(a5, v26, &qword_27F915268, &qword_25804F1E0);
        v67[0] = v48;
        v45 = swift_getKeyPath();
        MEMORY[0x28223BE20](v45);
        v46 = v64;
        v56[-2] = v48;
        v56[-1] = v46;
        sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
        sub_258049A80();

        v26 = v64;
        sub_257FDAB84(v64, &qword_27F915268, &qword_25804F1E0);
        v67[0] = v48;
        v47 = swift_getKeyPath();
        MEMORY[0x28223BE20](v47);
        v56[-4] = v48;
        *&v56[-3] = v57;
        sub_258049A80();

LABEL_20:
        ++v44;
        a5 = v60;
        v43 = v63;
        v22 = v61;
        if (v59 == v44)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_27F915168 != -1)
  {
LABEL_30:
    swift_once();
  }

  v35 = sub_258049D30();
  __swift_project_value_buffer(v35, qword_27F919DE8);
  v36 = v23;

  v37 = sub_258049D10();
  v38 = sub_25804A2D0();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v60;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67[0] = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_258032C5C(0xD000000000000025, 0x8000000258050170, v67);
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_258032C5C(v40, v36, v67);
    _os_log_impl(&dword_257FD4000, v37, v38, "%{public}s - no asset records found for managementKey %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v42, -1, -1);
    MEMORY[0x259C77210](v41, -1, -1);
  }
}

uint64_t sub_257FDDC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  v5[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v8 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDDDB8, v8, v7);
}

uint64_t sub_257FDDDB8()
{
  v28 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v26 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v5 + 16) = v26;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v0 + 16) = type metadata accessor for CredentialAssetRecord(0);
  sub_258049A70();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049E80();
  v7 = sub_25801CD04(v1);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  if (v7 >> 62)
  {
    if (sub_25804A480() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:

    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v8 = sub_258049D30();
    __swift_project_value_buffer(v8, qword_27F919DE8);

    v9 = sub_258049D10();
    v10 = sub_25804A2D0();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_258032C5C(0xD00000000000003BLL, 0x8000000258050130, v27);
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_258032C5C(v12, v11, v27);
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - too many asset records found for managementKey %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    v15 = 0;
    goto LABEL_22;
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v16 = sub_258049D30();
  __swift_project_value_buffer(v16, qword_27F919DE8);

  v17 = sub_258049D10();
  v18 = sub_25804A2C0();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_258032C5C(0xD00000000000003BLL, 0x8000000258050130, v27);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_258032C5C(v20, v19, v27);
    _os_log_impl(&dword_257FD4000, v17, v18, "%s - managementKey: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v22, -1, -1);
    MEMORY[0x259C77210](v21, -1, -1);
  }

  if (v7 >> 62)
  {
    result = sub_25804A480();
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_15:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x259C768B0](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v24 = *(v7 + 32);
      }

      goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_21:
  v15 = sub_257FDA504(v24);

LABEL_22:

  v25 = *(v0 + 8);

  return v25(v15 & 1);
}

void sub_257FDE32C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t *a7)
{
  v64 = a6;
  v63 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v56 - v17;
  v66 = a3;
  v67 = a4;
  v68 = a1;
  v69 = a2;
  v70[2] = type metadata accessor for CredentialAssetRecord(0);
  sub_258049A70();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049E80();
  v20 = v65;
  v21 = sub_25801CD04(v18);
  (*(v16 + 8))(v18, v15);
  v65 = v20;
  if (v20)
  {
    return;
  }

  v22 = a1;
  v56[1] = a5;
  v23 = v21 >> 62;
  if (v21 >> 62)
  {
    v24 = sub_25804A480();
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = a2;
  if (v24 >= 1)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v26 = sub_258049D30();
    __swift_project_value_buffer(v26, qword_27F919DE8);

    v27 = sub_258049D10();
    v28 = sub_25804A2C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v21;
      v31 = swift_slowAlloc();
      v70[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x80000002580500F0, v70);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_258032C5C(v22, v25, v70);
      _os_log_impl(&dword_257FD4000, v27, v28, "%s - managementKey: %s", v29, 0x16u);
      swift_arrayDestroy();
      v32 = v31;
      v21 = v30;
      MEMORY[0x259C77210](v32, -1, -1);
      MEMORY[0x259C77210](v29, -1, -1);
    }

    sub_257FE700C();
    if (v23)
    {
      v33 = sub_25804A480();
      v34 = v64;
      if (!v33)
      {
LABEL_26:

        v55 = v65;
        sub_257FE6DD0();
        v65 = v55;
        return;
      }
    }

    else
    {
      v33 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v64;
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    if (v33 >= 1)
    {
      v40 = 0;
      v60 = v21 & 0xC000000000000001;
      v57 = xmmword_25804B650;
      v61 = v33;
      v62 = v21;
      do
      {
        if (v60)
        {
          v46 = MEMORY[0x259C768B0](v40, v21);
        }

        else
        {
          v46 = *(v21 + 8 * v40 + 32);
        }

        v47 = *v34;
        if (*v34)
        {
          v70[0] = *v34;
          v48 = v47;
          v49 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
          v50 = sub_25804A120();
          v52 = v51;
          v70[0] = v46;
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          v56[-4] = v46;
          v56[-3] = v50;
          v56[-2] = v52;
          sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
          v54 = v65;
          sub_258049A80();
          v65 = v54;
        }

        else
        {
          v42 = *v63;
          v41 = v63[1];
          v58 = OBJC_IVAR____TtC15ManagedAppsCore21CredentialAssetRecord___observationRegistrar;
          v70[0] = v46;
          v43 = swift_getKeyPath();
          v59 = v56;
          MEMORY[0x28223BE20](v43);
          v56[-4] = v46;
          v56[-3] = v42;
          v56[-2] = v41;
          sub_257FECD68(v42, v41);
          sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
          v44 = v65;
          sub_258049A80();
          sub_257FDAAA0(v42, v41);

          v70[0] = v46;
          v45 = swift_getKeyPath();
          MEMORY[0x28223BE20](v45);
          v56[-4] = v46;
          *&v56[-3] = v57;
          sub_258049A80();
          v65 = v44;
        }

        ++v40;
        v21 = v62;
        v34 = v64;
      }

      while (v61 != v40);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_27F915168 != -1)
  {
LABEL_30:
    swift_once();
  }

  v35 = sub_258049D30();
  __swift_project_value_buffer(v35, qword_27F919DE8);

  v36 = sub_258049D10();
  v37 = sub_25804A2D0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v70[0] = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x80000002580500F0, v70);
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_258032C5C(v22, v25, v70);
    _os_log_impl(&dword_257FD4000, v36, v37, "%{public}s - no asset records found for managementKey %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v39, -1, -1);
    MEMORY[0x259C77210](v38, -1, -1);
  }
}

uint64_t sub_257FDEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_258049FB0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v8 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDECE8, v8, v7);
}

uint64_t sub_257FDECE8()
{
  v37 = v0;
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  v1 = sub_258049DF0();

  if (object_getClass(v1) != _TtC15ManagedAppsCore9AppRecord || v1 == 0)
  {
    swift_unknownObjectRelease();
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 16);
    v7 = sub_258049D30();
    __swift_project_value_buffer(v7, qword_27F919DE8);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_258049D10();
    v10 = sub_25804A2D0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    if (v11)
    {
      v13 = *(v0 + 64);
      v14 = *(v0 + 72);
      v15 = *(v0 + 56);
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v16 = 136446466;
      *(v16 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v36);
      *(v16 + 12) = 2082;
      v8(v14, v12, v15);
      v17 = sub_25804A120();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_258032C5C(v17, v19, v36);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - no app record found for persistent id %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v35, -1, -1);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    else
    {
      v31 = *(v0 + 56);
      v32 = *(v0 + 64);

      (*(v32 + 8))(v12, v31);
    }
  }

  else
  {
    v21 = qword_27F915168;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_258049D30();
    __swift_project_value_buffer(v22, qword_27F919DE8);
    swift_unknownObjectRetain();
    v23 = sub_258049D10();
    v24 = sub_25804A2C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v36);
      *(v25 + 12) = 2080;
      swift_unknownObjectRetain();
      v27 = sub_2580177CC();
      v29 = v28;
      swift_unknownObjectRelease();
      v30 = sub_258032C5C(v27, v29, v36);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v23, v24, "%s - appRecord: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v26, -1, -1);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    sub_257FD7570(v1, *(v0 + 32), *(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease_n();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_257FDF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_258049FB0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v6 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDF2C8, v6, v5);
}

uint64_t sub_257FDF2C8()
{
  v37 = v0;
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  v1 = sub_258049DF0();

  if (object_getClass(v1) != _TtC15ManagedAppsCore9AppRecord || v1 == 0)
  {
    swift_unknownObjectRelease();
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    v7 = sub_258049D30();
    __swift_project_value_buffer(v7, qword_27F919DE8);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_258049D10();
    v10 = sub_25804A2D0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = *(v0 + 48);
      v14 = *(v0 + 56);
      v15 = *(v0 + 40);
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v16 = 136446466;
      *(v16 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v36);
      *(v16 + 12) = 2082;
      v8(v14, v12, v15);
      v17 = sub_25804A120();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_258032C5C(v17, v19, v36);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - no app record found for persistent id %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v35, -1, -1);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    else
    {
      v31 = *(v0 + 40);
      v32 = *(v0 + 48);

      (*(v32 + 8))(v12, v31);
    }
  }

  else
  {
    v21 = qword_27F915168;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_258049D30();
    __swift_project_value_buffer(v22, qword_27F919DE8);
    swift_unknownObjectRetain();
    v23 = sub_258049D10();
    v24 = sub_25804A2C0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_258032C5C(0xD000000000000035, 0x80000002580501D0, v36);
      *(v25 + 12) = 2080;
      swift_unknownObjectRetain();
      v27 = sub_2580177CC();
      v29 = v28;
      swift_unknownObjectRelease();
      v30 = sub_258032C5C(v27, v29, v36);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v23, v24, "%s - appRecord: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v26, -1, -1);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    sub_25802E0C8(v1, *(v0 + 32));
    swift_unknownObjectRelease_n();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_257FDF778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  type metadata accessor for ExtensionRecordLookalike(0);
  v4[23] = swift_task_alloc();
  type metadata accessor for AppRecordLookalike(0);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for LookalikeType(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v5 = sub_258049FB0();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v7 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FDF934, v7, v6);
}

uint64_t sub_257FDF934()
{
  v47 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 152);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  sub_257FECC14(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = 184;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v7 = 192;
    v8 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v9 = type metadata accessor for AppRecordLookalike;
  }

  v10 = *(v0 + v7);
  sub_257FECC78(*(v0 + 224), v10, v8);
  (*(v1 + 16))(v5, v10, v6);
  sub_257FECCE0(v10, v9);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = sub_258049DF0();
  v16 = v15;

  (*(v12 + 8))(v11, v13);
  *(v0 + 136) = v14;
  *(v0 + 144) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155A8, &qword_25804BC38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (*(v0 + 120))
  {
    v17 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    v20 = sub_258049D30();
    __swift_project_value_buffer(v20, qword_27F919DE8);
    sub_257FECC14(v19, v18);
    v21 = sub_258049D10();
    v22 = sub_25804A2C0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 216);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_258032C5C(0xD00000000000002DLL, 0x80000002580500C0, v46);
      *(v25 + 12) = 2080;
      v27 = sub_257FF8B88();
      v29 = v28;
      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
      v30 = sub_258032C5C(v27, v29, v46);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v21, v22, "%s - containerRecord: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v26, -1, -1);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    else
    {

      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
    }

    (*(v0 + 160))(v17);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155B0, &unk_25804BC40);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v33 = sub_258049D30();
    __swift_project_value_buffer(v33, qword_27F919DE8);
    sub_257FECC14(v32, v31);
    v34 = sub_258049D10();
    v35 = sub_25804A2D0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 208);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_258032C5C(0xD00000000000002DLL, 0x80000002580500C0, v46);
      *(v38 + 12) = 2082;
      v40 = sub_257FF8B88();
      v42 = v41;
      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
      v43 = sub_258032C5C(v40, v42, v46);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_257FD4000, v34, v35, "%{public}s - no container record found for %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v39, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
    }
  }

  sub_257FDAB84(v0 + 16, &qword_27F9155B0, &unk_25804BC40);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_257FDFFF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 256) = a4;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  type metadata accessor for ExtensionRecordLookalike(0);
  *(v4 + 176) = swift_task_alloc();
  type metadata accessor for AppRecordLookalike(0);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = type metadata accessor for LookalikeType(0);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v5 = sub_258049FB0();
  *(v4 + 224) = v5;
  *(v4 + 232) = *(v5 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v7 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE01B8, v7, v6);
}

uint64_t sub_257FE01B8()
{
  v47 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  sub_257FECC14(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = 176;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v7 = 184;
    v8 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v9 = type metadata accessor for AppRecordLookalike;
  }

  v10 = *(v0 + v7);
  sub_257FECC78(*(v0 + 216), v10, v8);
  (*(v1 + 16))(v5, v10, v6);
  sub_257FECCE0(v10, v9);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 224);
  v14 = sub_258049DF0();
  v16 = v15;

  (*(v12 + 8))(v11, v13);
  *(v0 + 136) = v14;
  *(v0 + 144) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915598, &qword_25804BC28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155A0, &qword_25804BC30);
  if (*(v0 + 120))
  {
    v17 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 208);
    v19 = *(v0 + 152);
    v20 = sub_258049D30();
    __swift_project_value_buffer(v20, qword_27F919DE8);
    sub_257FECC14(v19, v18);
    v21 = sub_258049D10();
    v22 = sub_25804A2C0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 208);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v46);
      *(v25 + 12) = 2080;
      v27 = sub_257FF8B88();
      v29 = v28;
      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
      v30 = sub_258032C5C(v27, v29, v46);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v21, v22, "%s - containerRecord: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v26, -1, -1);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    else
    {

      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
    }

    sub_258026E18(v17, *(v0 + 168), *(v0 + 256));
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155A0, &qword_25804BC30);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 200);
    v32 = *(v0 + 152);
    v33 = sub_258049D30();
    __swift_project_value_buffer(v33, qword_27F919DE8);
    sub_257FECC14(v32, v31);
    v34 = sub_258049D10();
    v35 = sub_25804A2D0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v46);
      *(v38 + 12) = 2082;
      v40 = sub_257FF8B88();
      v42 = v41;
      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
      v43 = sub_258032C5C(v40, v42, v46);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_257FD4000, v34, v35, "%{public}s - no container record found for %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v39, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
    }
  }

  sub_257FDAB84(v0 + 16, &qword_27F9155A0, &qword_25804BC30);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_257FE0874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  type metadata accessor for ExtensionRecordLookalike(0);
  v4[23] = swift_task_alloc();
  type metadata accessor for AppRecordLookalike(0);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for LookalikeType(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v5 = sub_258049FB0();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v7 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE0A30, v7, v6);
}

uint64_t sub_257FE0A30()
{
  v47 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 152);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  sub_257FECC14(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = 184;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v7 = 192;
    v8 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v9 = type metadata accessor for AppRecordLookalike;
  }

  v10 = *(v0 + v7);
  sub_257FECC78(*(v0 + 224), v10, v8);
  (*(v1 + 16))(v5, v10, v6);
  sub_257FECCE0(v10, v9);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = sub_258049DF0();
  v16 = v15;

  (*(v12 + 8))(v11, v13);
  *(v0 + 136) = v14;
  *(v0 + 144) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915598, &qword_25804BC28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155A0, &qword_25804BC30);
  if (*(v0 + 120))
  {
    v17 = (v0 + 56);
    sub_257FDAA0C((v0 + 96), v0 + 56);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    v20 = sub_258049D30();
    __swift_project_value_buffer(v20, qword_27F919DE8);
    sub_257FECC14(v19, v18);
    v21 = sub_258049D10();
    v22 = sub_25804A2C0();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 216);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v46);
      *(v25 + 12) = 2080;
      v27 = sub_257FF8B88();
      v29 = v28;
      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
      v30 = sub_258032C5C(v27, v29, v46);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v21, v22, "%s - containerRecord: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v26, -1, -1);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    else
    {

      sub_257FECCE0(v24, type metadata accessor for LookalikeType);
    }

    (*(v0 + 160))(v17);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_257FDAB84(v0 + 96, &qword_27F9155A0, &qword_25804BC30);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v33 = sub_258049D30();
    __swift_project_value_buffer(v33, qword_27F919DE8);
    sub_257FECC14(v32, v31);
    v34 = sub_258049D10();
    v35 = sub_25804A2D0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 208);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_258032C5C(0xD000000000000034, 0x8000000258050080, v46);
      *(v38 + 12) = 2082;
      v40 = sub_257FF8B88();
      v42 = v41;
      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
      v43 = sub_258032C5C(v40, v42, v46);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_257FD4000, v34, v35, "%{public}s - no container record found for %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v39, -1, -1);
      MEMORY[0x259C77210](v38, -1, -1);
    }

    else
    {

      sub_257FECCE0(v37, type metadata accessor for LookalikeType);
    }
  }

  sub_257FDAB84(v0 + 16, &qword_27F9155A0, &qword_25804BC30);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_257FE10F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v32 = a1;
  v33 = a2;
  v34[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v14 = sub_25801CA08(v12);
  if (v3)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v30 = v9;
  v16 = v31;
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    if (qword_27F915168 == -1)
    {
LABEL_11:
      v21 = sub_258049D30();
      __swift_project_value_buffer(v21, qword_27F919DE8);

      v22 = sub_258049D10();
      v23 = sub_25804A2C0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v29 = a2;
        v25 = v24;
        v26 = swift_slowAlloc();
        v34[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_258032C5C(0xD000000000000022, 0x80000002580503B0, v34);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_258032C5C(a1, v29, v34);
        _os_log_impl(&dword_257FD4000, v22, v23, "%s - no result found for recordID %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v26, -1, -1);
        MEMORY[0x259C77210](v25, -1, -1);
      }

      (*(v10 + 8))(v12, v30);
      v18 = 1;
      v17 = v16;
      goto LABEL_14;
    }

LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v19 = v14;
  v20 = sub_25804A480();
  v14 = v19;
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0);
    a2 = v30;
    goto LABEL_8;
  }

  a2 = v30;
  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_8:

  v17 = v16;
  sub_257FFA79C(v16);

  (*(v10 + 8))(v12, a2);
  v18 = 0;
LABEL_14:
  v27 = type metadata accessor for AppRecordLookalike(0);
  return (*(*(v27 - 8) + 56))(v17, v18, 1, v27);
}

uint64_t sub_257FE1590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v7 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE16EC, v7, v6);
}

uint64_t sub_257FE16EC()
{
  v31 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v0[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v7 = sub_25801CA08(v1);
  if (v7 >> 62)
  {
    v13 = v7;
    v14 = sub_25804A480();
    v7 = v13;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](0);
      goto LABEL_6;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_6:
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[8];
      v11 = v0[3];

      sub_257FFA79C(v11);

      (*(v9 + 8))(v8, v10);
      v12 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v15 = sub_258049D30();
  __swift_project_value_buffer(v15, qword_27F919DE8);

  v16 = sub_258049D10();
  v17 = sub_25804A2C0();

  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];
  if (v18)
  {
    v22 = v0[4];
    v29 = v0[5];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_258032C5C(0xD000000000000027, 0x8000000258050350, v30);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_258032C5C(v22, v29, v30);
    _os_log_impl(&dword_257FD4000, v16, v17, "%s - no result found for managementKey %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v24, -1, -1);
    MEMORY[0x259C77210](v23, -1, -1);
  }

  (*(v20 + 8))(v19, v21);
  v12 = 1;
LABEL_12:
  v25 = v0[3];
  v26 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v26 - 8) + 56))(v25, v12, 1, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_257FE1B48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v6 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE1CA4, v6, v5);
}

uint64_t sub_257FE1CA4()
{
  v37 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  sub_258044130(*(v0 + 24));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v4 = sub_25801CA08(v1);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    if (qword_27F915168 == -1)
    {
LABEL_9:
      v12 = *(v0 + 24);
      v13 = sub_258049D30();
      __swift_project_value_buffer(v13, qword_27F919DE8);
      v14 = v12;
      v15 = sub_258049D10();
      v16 = sub_25804A2C0();

      v17 = os_log_type_enabled(v15, v16);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 48);
      if (v17)
      {
        v35 = *(v0 + 64);
        v21 = *(v0 + 24);
        v34 = *(v0 + 48);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36[0] = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_258032C5C(0xD000000000000026, 0x8000000258050050, v36);
        *(v22 + 12) = 2082;
        v24 = v21;
        v25 = [v24 description];
        v26 = sub_25804A110();
        v28 = v27;

        v29 = sub_258032C5C(v26, v28, v36);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_257FD4000, v15, v16, "%s - no result found for app: %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v23, -1, -1);
        MEMORY[0x259C77210](v22, -1, -1);

        (*(v19 + 8))(v35, v34);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
      }

      v9 = 1;
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v10 = v4;
  v11 = sub_25804A480();
  v4 = v10;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0);
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  sub_257FFA79C(v8);

  (*(v6 + 8))(v5, v7);
  v9 = 0;
LABEL_13:
  v30 = *(v0 + 16);
  v31 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v31 - 8) + 56))(v30, v9, 1, v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_257FE210C()
{
  v1[3] = v0;
  v1[4] = *(type metadata accessor for AppRecordLookalike(0) - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v1[7] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v4 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE22C8, v4, v3);
}

void *sub_257FE22C8()
{
  v1 = v0[10];
  v2 = v0[7];
  v0[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v4 = MEMORY[0x277D84F90];
  sub_258049E80();
  v5 = sub_25801CA08(v1);
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_25804A480();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];

    (*(v22 + 8))(v21, v23);
    v9 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  result = sub_258033224(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v0[4];
  if ((v6 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = v0[6];
      MEMORY[0x259C768B0](i, v6);
      sub_257FFA79C(v12);
      swift_unknownObjectRelease();
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_258033224((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[6];
      *(v9 + 16) = v14 + 1;
      sub_257FECC78(v15, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, type metadata accessor for AppRecordLookalike);
    }
  }

  else
  {
    v16 = 32;
    do
    {
      v17 = v0[5];

      sub_257FFA79C(v17);

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_258033224((v18 > 1), v19 + 1, 1);
      }

      v20 = v0[5];
      *(v4 + 16) = v19 + 1;
      sub_257FECC78(v20, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, type metadata accessor for AppRecordLookalike);
      v16 += 8;
      --v7;
    }

    while (v7);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_17:

  v24 = v0[1];

  return v24(v9);
}

uint64_t sub_257FE26E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915588, &qword_25804BC20);
  a2[4] = sub_257FECB64();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_258049930();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257FE2864(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v25 = a1;
  v26 = a2;
  v27[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v14 = sub_25801CA08(v12);
  if (v3)
  {
    (*(v10 + 8))(v12, v9);
    return v2;
  }

  if (v14 >> 62)
  {
    v15 = v14;
    v16 = sub_25804A480();
    v14 = v15;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x259C768B0](0);
      goto LABEL_8;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v14 + 32);

LABEL_8:

      (*(v10 + 8))(v12, v9);
      return v2;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v17 = sub_258049D30();
  __swift_project_value_buffer(v17, qword_27F919DE8);

  v18 = sub_258049D10();
  v19 = sub_25804A2C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v20 = 136315394;
    *(v20 + 4) = sub_258032C5C(0xD000000000000019, 0x8000000258050030, v27);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_258032C5C(a1, a2, v27);
    _os_log_impl(&dword_257FD4000, v18, v19, "%s - no result found for recordID %s", v20, 0x16u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x259C77210](v21, -1, -1);
    MEMORY[0x259C77210](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return 0;
}

uint64_t sub_257FE2C98(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v25 = a1;
  v26 = a2;
  v27[2] = type metadata accessor for AppRecord(0);
  sub_258049A70();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v14 = sub_25801CA08(v12);
  if (v3)
  {
    (*(v10 + 8))(v12, v9);
    return v2;
  }

  if (v14 >> 62)
  {
    v15 = v14;
    v16 = sub_25804A480();
    v14 = v15;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x259C768B0](0);
      goto LABEL_8;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v14 + 32);

LABEL_8:

      (*(v10 + 8))(v12, v9);
      return v2;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_27F915168 != -1)
  {
LABEL_17:
    swift_once();
  }

  v17 = sub_258049D30();
  __swift_project_value_buffer(v17, qword_27F919DE8);

  v18 = sub_258049D10();
  v19 = sub_25804A2C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v20 = 136315394;
    *(v20 + 4) = sub_258032C5C(0xD00000000000001ELL, 0x8000000258050010, v27);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_258032C5C(a1, a2, v27);
    _os_log_impl(&dword_257FD4000, v18, v19, "%s - no result found for managementKey %s", v20, 0x16u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x259C77210](v21, -1, -1);
    MEMORY[0x259C77210](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return 0;
}

uint64_t sub_257FE30CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915550, &qword_25804BBC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v10 + 8))(v12, v9);
  v27 = v22;
  v28 = v23;
  sub_258049980();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915560, &qword_25804BBC8);
  v18 = v24;
  *(v24 + 24) = v17;
  v18[4] = sub_257FEC644(&qword_27F915568, &qword_27F915560, &qword_25804BBC8, sub_257FECA5C);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_257FECB0C(&qword_27F915580, &qword_27F915550, &qword_25804BBC0, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890, MEMORY[0x277CC9080]);
  v19 = v25;
  sub_258049920();
  (*(v26 + 8))(v8, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_257FE3464(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v6 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE35C0, v6, v5);
}

uint64_t sub_257FE35C0()
{
  v83 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  sub_258044D78(*(v0 + 96));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  v4 = MEMORY[0x277D84F90];
  sub_258049E80();
  v5 = sub_25801CDBC(v1);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_35:

LABEL_36:
    if (qword_27F915168 == -1)
    {
LABEL_37:
      v32 = *(v0 + 96);
      v33 = sub_258049D30();
      __swift_project_value_buffer(v33, qword_27F919DE8);
      v34 = v32;
      v35 = sub_258049D10();
      v36 = sub_25804A2C0();

      v37 = os_log_type_enabled(v35, v36);
      v39 = *(v0 + 128);
      v38 = *(v0 + 136);
      v40 = *(v0 + 120);
      if (!v37)
      {

        (*(v39 + 8))(v38, v40);
        goto LABEL_42;
      }

      v81 = *(v0 + 136);
      v41 = *(v0 + 96);
      v79 = *(v0 + 120);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_258032C5C(0xD00000000000002CLL, 0x800000025804FFE0, v82);
      *(v42 + 12) = 2082;
      v44 = v41;
      v45 = [v44 description];
      v46 = sub_25804A110();
      v48 = v47;

      v49 = sub_258032C5C(v46, v48, v82);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_257FD4000, v35, v36, "%s - no result found for extension code identity: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v43, -1, -1);
      MEMORY[0x259C77210](v42, -1, -1);

      goto LABEL_39;
    }

LABEL_45:
    swift_once();
    goto LABEL_37;
  }

LABEL_34:
  v30 = v5;
  v31 = sub_25804A480();
  v5 = v30;
  if (!v31)
  {
    goto LABEL_35;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C768B0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_45;
    }

    v6 = *(v5 + 32);
  }

  *(v0 + 48) = v6;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v7 = sub_258049EE0();

  if (!v7)
  {

    goto LABEL_36;
  }

  *(v0 + 56) = v7;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049EF0();

  v8 = *(v0 + 64);
  v82[0] = v4;
  if (v8 >> 62)
  {
    v5 = sub_25804A480();
    v9 = v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_9:
      v10 = 0;
      v77 = v8 & 0xFFFFFFFFFFFFFF8;
      v78 = v8 & 0xC000000000000001;
      v75 = v8;
      v76 = v9;
      while (1)
      {
        if (v78)
        {
          v13 = MEMORY[0x259C768B0](v10, v8);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v29 = v82[0];
            goto LABEL_48;
          }
        }

        else
        {
          if (v10 >= *(v77 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v13 = *(v8 + 8 * v10 + 32);

          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_30;
          }
        }

        v80 = v14;
        v15 = *(v0 + 96);
        *(v0 + 72) = v13;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
        sub_258049A90();

        swift_getKeyPath();
        v4 = sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
        sub_258049F00();

        v17 = *(v0 + 16);
        v16 = *(v0 + 24);
        v18 = [v15 codeSigningID];
        v19 = sub_25804A110();
        v21 = v20;

        if (v17 == v19 && v16 == v21)
        {
        }

        else
        {
          v22 = sub_25804A560();

          if ((v22 & 1) == 0)
          {

            goto LABEL_11;
          }
        }

        v23 = *(v0 + 96);
        *(v0 + 80) = v13;
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
        sub_258049F00();

        v4 = *(v0 + 32);
        v24 = *(v0 + 40);
        v25 = [v23 teamID];
        v26 = sub_25804A110();
        v28 = v27;

        if (!v24)
        {

LABEL_11:
          v8 = v75;
          v11 = v76;
          v12 = v80;
          goto LABEL_12;
        }

        v11 = v76;
        v12 = v80;
        if (v4 == v26 && v24 == v28)
        {
        }

        else
        {
          v4 = sub_25804A560();

          if ((v4 & 1) == 0)
          {

            v8 = v75;
            goto LABEL_12;
          }
        }

        sub_25804A410();
        v4 = *(v82[0] + 16);
        sub_25804A440();
        sub_25804A450();
        v5 = sub_25804A420();
        v8 = v75;
LABEL_12:
        ++v10;
        if (v12 == v11)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_48:

  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    if (*(v29 + 16))
    {
      goto LABEL_51;
    }

LABEL_59:

    if (qword_27F915168 == -1)
    {
LABEL_60:
      v58 = *(v0 + 96);
      v59 = sub_258049D30();
      __swift_project_value_buffer(v59, qword_27F919DE8);
      v60 = v58;
      v61 = sub_258049D10();
      v62 = sub_25804A2E0();

      v63 = os_log_type_enabled(v61, v62);
      v39 = *(v0 + 128);
      v64 = *(v0 + 136);
      v65 = *(v0 + 120);
      if (!v63)
      {

        (*(v39 + 8))(v64, v65);
        goto LABEL_42;
      }

      v81 = *(v0 + 136);
      v66 = *(v0 + 96);
      v79 = *(v0 + 120);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v82[0] = v68;
      *v67 = 136446210;
      v69 = v66;
      v70 = [v69 description];
      v71 = sub_25804A110();
      v73 = v72;

      v74 = sub_258032C5C(v71, v73, v82);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_257FD4000, v61, v62, "Extension record for code identity %{public}s not found", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x259C77210](v68, -1, -1);
      MEMORY[0x259C77210](v67, -1, -1);

LABEL_39:
      (*(v39 + 8))(v81, v79);
LABEL_42:
      v50 = 1;
      goto LABEL_55;
    }

LABEL_65:
    swift_once();
    goto LABEL_60;
  }

  if (!sub_25804A480())
  {
    goto LABEL_59;
  }

LABEL_51:
  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C768B0](0, v29);
    goto LABEL_54;
  }

  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_65;
  }

LABEL_54:

  v52 = *(v0 + 128);
  v51 = *(v0 + 136);
  v53 = *(v0 + 120);
  sub_257FFB7F4(*(v0 + 88));

  (*(v52 + 8))(v51, v53);
  v50 = 0;
LABEL_55:
  v54 = *(v0 + 88);
  v55 = type metadata accessor for ExtensionRecordLookalike(0);
  (*(*(v55 - 8) + 56))(v54, v50, 1, v55);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_257FE4184@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D8, &qword_25804BA38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153E0, &qword_25804BA40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  sub_257FECB0C(&qword_27F9153E8, &qword_27F9153D8, &qword_25804BA38, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_258049980();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153F0, &qword_25804BA70);
  a4[4] = sub_257FEC644(&qword_27F9153F8, &qword_27F9153F0, &qword_25804BA70, sub_257FEC6C8);
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_257FECB0C(&qword_27F915410, &qword_27F9153E0, &qword_25804BA40, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890, MEMORY[0x277CC9080]);
  v17 = v21;
  sub_258049920();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_257FE451C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915348, &qword_25804B898);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915350, &qword_25804B8A0);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915358, &qword_25804B8A8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v37 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v35 = *a1;
  v36 = v33 - v20;
  sub_257FECB0C(&qword_27F915360, &qword_27F915348, &qword_25804B898, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_258049980();
  v39 = sub_257FECB0C(&qword_27F915368, &qword_27F915350, &qword_25804B8A0, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890, MEMORY[0x277CC9080]);
  v22 = v45;
  sub_258049920();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_258049980();
  v25 = v37;
  v26 = v45;
  sub_258049920();
  v23(v8, v26);
  v24(v15, v13);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915378, &qword_25804B900);
  v28 = v44;
  *(v44 + 24) = v27;
  v28[4] = sub_257FEB248();
  __swift_allocate_boxed_opaque_existential_1(v28);
  sub_257FECB0C(&qword_27F9153A8, &qword_27F915358, &qword_25804B8A8, MEMORY[0x277CC9070]);
  v29 = v36;
  v30 = v40;
  sub_258049970();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

void sub_257FE4AB4(uint64_t a1, unint64_t a2)
{
  v6 = sub_257FE2864(a1, a2);
  if (!v3)
  {
    v7 = v6;
    if (v6)
    {
      v13 = v6;
      swift_getKeyPath();
      sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
      sub_258049F00();

      if (v13 == 1 && *(v2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
      {

        sub_257FEFACC(v7);
      }

      sub_257FE700C();
      sub_257FE6B38(v7, 0);
      sub_257FE6DD0();
      if (*(v2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
      {

        sub_258043768();
        sub_258043768();
      }
    }

    else
    {
      if (qword_27F915168 != -1)
      {
        swift_once();
      }

      v8 = sub_258049D30();
      __swift_project_value_buffer(v8, qword_27F919DE8);

      v9 = sub_258049D10();
      v10 = sub_25804A2D0();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136446466;
        *(v11 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x80000002580502D0, &v13);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_258032C5C(a1, a2, &v13);
        _os_log_impl(&dword_257FD4000, v9, v10, "%{public}s - no app record for %s!", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C77210](v12, -1, -1);
        MEMORY[0x259C77210](v11, -1, -1);
      }
    }
  }
}

uint64_t sub_257FE4DCC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155B8, &qword_25804BCE0);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155C0, &qword_25804BCE8);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155C8, &qword_25804BCF0);
  v1[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155D0, &qword_25804BCF8);
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78);
  v1[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v1[20] = v6;
  v1[21] = *(v6 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154A8, &qword_25804BAE0);
  v1[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B0, &qword_25804BAE8);
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155D8, &qword_25804BD00);
  v1[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155E0, &qword_25804BD08);
  v1[28] = v8;
  v1[29] = *(v8 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915530, &unk_25804BBA0);
  v1[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915538, &unk_25804ED90);
  v1[32] = v9;
  v1[33] = *(v9 - 8);
  v1[34] = swift_task_alloc();
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v11 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FE5384, v11, v10);
}

void *sub_257FE5384()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = MEMORY[0x277D84F90];
  v6 = sub_258036A84(MEMORY[0x277D84F90]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E80();
  v8 = sub_25801CA08(v1);
  (*(v2 + 8))(v1, v4);
  if (v8 >> 62)
  {
    v9 = sub_25804A480();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  sub_258033244(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    v21 = sub_25804A480();
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](i, v8);
    }

    else
    {
    }

    v11 = sub_258014598();

    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_258033244((v12 > 1), v13 + 1, 1);
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
  }

LABEL_13:

  v14 = v122[29];
  v15 = v122[30];
  v16 = v122[27];
  v17 = v122[28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, 0x6F63655220707041, 0xEA00000000006472, isUniquelyReferenced_nonNull_native);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155E8, &qword_25804BD10);
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  type metadata accessor for ExtensionRecord(0);
  sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CED0(v15);
  v20 = *(v14 + 8);
  v0 = (v14 + 8);
  v20(v15, v17);
  if (v8 >> 62)
  {
    goto LABEL_25;
  }

  v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_15:
  sub_258033244(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
LABEL_41:
    v32 = sub_25804A480();
    if (!v32)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

  for (j = 0; j != v21; ++j)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C768B0](j, v8);
    }

    else
    {
    }

    v23 = sub_2580151A0();

    v25 = *(v5 + 16);
    v24 = *(v5 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_258033244((v24 > 1), v25 + 1, 1);
    }

    *(v5 + 16) = v25 + 1;
    *(v5 + 8 * v25 + 32) = v23;
  }

LABEL_26:

  v0 = 0xD000000000000011;
  v27 = v122[25];
  v26 = v122[26];
  v28 = v122[23];
  v29 = v122[24];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, 0xD000000000000010, 0x8000000258050210, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B8, &qword_25804BAF0);
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  type metadata accessor for AppCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CD60(v26);
  (*(v27 + 8))(v26, v29);
  if (v8 >> 62)
  {
    goto LABEL_41;
  }

  v32 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_42;
  }

LABEL_28:
  sub_258033244(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    __break(1u);
LABEL_57:
    v47 = sub_25804A480();
    if (!v47)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (k = 0; k != v32; ++k)
    {
      MEMORY[0x259C768B0](k, v8);
      v34 = sub_25801593C();
      swift_unknownObjectRelease();
      v36 = *(v5 + 16);
      v35 = *(v5 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_258033244((v35 > 1), v36 + 1, 1);
      }

      *(v5 + 16) = v36 + 1;
      *(v5 + 8 * v36 + 32) = v34;
    }
  }

  else
  {
    v37 = 32;
    do
    {

      v38 = sub_25801593C();

      v40 = *(v5 + 16);
      v39 = *(v5 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_258033244((v39 > 1), v40 + 1, 1);
      }

      *(v5 + 16) = v40 + 1;
      *(v5 + 8 * v40 + 32) = v38;
      v37 += 8;
      --v32;
    }

    while (v32);
  }

LABEL_42:

  v42 = v122[21];
  v41 = v122[22];
  v43 = v122[19];
  v44 = v122[20];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, v0 + 7, 0x8000000258050230, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CDBC(v41);
  (*(v42 + 8))(v41, v44);
  if (v8 >> 62)
  {
    goto LABEL_57;
  }

  v47 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_58;
  }

LABEL_44:
  sub_258033244(0, v47 & ~(v47 >> 63), 0);
  if (v47 < 0)
  {
    __break(1u);
LABEL_73:
    v62 = sub_25804A480();
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (m = 0; m != v47; ++m)
    {
      MEMORY[0x259C768B0](m, v8);
      v49 = sub_258015D8C();
      swift_unknownObjectRelease();
      v51 = *(v5 + 16);
      v50 = *(v5 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_258033244((v50 > 1), v51 + 1, 1);
      }

      *(v5 + 16) = v51 + 1;
      *(v5 + 8 * v51 + 32) = v49;
    }
  }

  else
  {
    v52 = 32;
    do
    {

      v53 = sub_258015D8C();

      v55 = *(v5 + 16);
      v54 = *(v5 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_258033244((v54 > 1), v55 + 1, 1);
      }

      *(v5 + 16) = v55 + 1;
      *(v5 + 8 * v55 + 32) = v53;
      v52 += 8;
      --v47;
    }

    while (v47);
  }

LABEL_58:

  v57 = v122[17];
  v56 = v122[18];
  v58 = v122[15];
  v59 = v122[16];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, v0 + 13, 0x8000000258050250, v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155F0, &qword_25804BD18);
  (*(*(v61 - 8) + 56))(v58, 1, 1, v61);
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CE74(v56);
  (*(v57 + 8))(v56, v59);
  if (v8 >> 62)
  {
    goto LABEL_73;
  }

  v62 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v62)
  {
    goto LABEL_74;
  }

LABEL_60:
  sub_258033244(0, v62 & ~(v62 >> 63), 0);
  if (v62 < 0)
  {
    __break(1u);
LABEL_89:
    v77 = sub_25804A480();
    if (!v77)
    {
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (n = 0; n != v62; ++n)
    {
      MEMORY[0x259C768B0](n, v8);
      v64 = sub_2580161DC();
      swift_unknownObjectRelease();
      v66 = *(v5 + 16);
      v65 = *(v5 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_258033244((v65 > 1), v66 + 1, 1);
      }

      *(v5 + 16) = v66 + 1;
      *(v5 + 8 * v66 + 32) = v64;
    }
  }

  else
  {
    v67 = 32;
    do
    {

      v68 = sub_2580161DC();

      v70 = *(v5 + 16);
      v69 = *(v5 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_258033244((v69 > 1), v70 + 1, 1);
      }

      *(v5 + 16) = v70 + 1;
      *(v5 + 8 * v70 + 32) = v68;
      v67 += 8;
      --v62;
    }

    while (v62);
  }

LABEL_74:

  v72 = v122[13];
  v71 = v122[14];
  v73 = v122[11];
  v74 = v122[12];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, 0x6365522061746144, 0xEB0000000064726FLL, v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
  (*(*(v76 - 8) + 56))(v73, 1, 1, v76);
  type metadata accessor for DataAssetRecord(0);
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CA64(v71);
  (*(v72 + 8))(v71, v74);
  if (v8 >> 62)
  {
    goto LABEL_89;
  }

  v77 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v77)
  {
    goto LABEL_90;
  }

LABEL_76:
  sub_258033244(0, v77 & ~(v77 >> 63), 0);
  if (v77 < 0)
  {
    __break(1u);
LABEL_105:
    v92 = sub_25804A480();
    if (!v92)
    {
      goto LABEL_106;
    }

    goto LABEL_92;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (ii = 0; ii != v77; ++ii)
    {
      MEMORY[0x259C768B0](ii, v8);
      v79 = sub_25801672C();
      swift_unknownObjectRelease();
      v81 = *(v5 + 16);
      v80 = *(v5 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_258033244((v80 > 1), v81 + 1, 1);
      }

      *(v5 + 16) = v81 + 1;
      *(v5 + 8 * v81 + 32) = v79;
    }
  }

  else
  {
    v82 = 32;
    do
    {

      v83 = sub_25801672C();

      v85 = *(v5 + 16);
      v84 = *(v5 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_258033244((v84 > 1), v85 + 1, 1);
      }

      *(v5 + 16) = v85 + 1;
      *(v5 + 8 * v85 + 32) = v83;
      v82 += 8;
      --v77;
    }

    while (v77);
  }

LABEL_90:

  v87 = v122[9];
  v86 = v122[10];
  v88 = v122[7];
  v89 = v122[8];
  v90 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, 0xD000000000000011, 0x8000000258050270, v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155F8, &qword_25804BD20);
  (*(*(v91 - 8) + 56))(v88, 1, 1, v91);
  type metadata accessor for CredentialRecord(0);
  sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  v5 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CE18(v86);
  (*(v87 + 8))(v86, v89);
  if (v8 >> 62)
  {
    goto LABEL_105;
  }

  v92 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v92)
  {
    goto LABEL_106;
  }

LABEL_92:
  sub_258033244(0, v92 & ~(v92 >> 63), 0);
  if (v92 < 0)
  {
    __break(1u);
LABEL_121:
    v108 = sub_25804A480();
    if (v108)
    {
      goto LABEL_108;
    }

LABEL_122:

    v110 = MEMORY[0x277D84F90];
    goto LABEL_123;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (jj = 0; jj != v92; ++jj)
    {
      MEMORY[0x259C768B0](jj, v8);
      v94 = sub_258016CCC();
      swift_unknownObjectRelease();
      v96 = *(v5 + 16);
      v95 = *(v5 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_258033244((v95 > 1), v96 + 1, 1);
      }

      *(v5 + 16) = v96 + 1;
      *(v5 + 8 * v96 + 32) = v94;
    }
  }

  else
  {
    v97 = 32;
    do
    {

      v98 = sub_258016CCC();

      v100 = *(v5 + 16);
      v99 = *(v5 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_258033244((v99 > 1), v100 + 1, 1);
      }

      *(v5 + 16) = v100 + 1;
      *(v5 + 8 * v100 + 32) = v98;
      v97 += 8;
      --v92;
    }

    while (v92);
  }

LABEL_106:

  v102 = v122[5];
  v101 = v122[6];
  v103 = v122[3];
  v104 = v122[4];
  v105 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v5, 0xD000000000000011, 0x8000000258050290, v105);
  v106 = v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
  (*(*(v107 - 8) + 56))(v103, 1, 1, v107);
  type metadata accessor for CredentialAssetRecord(0);
  sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v6 = MEMORY[0x277D84F90];
  sub_258049E80();
  v8 = sub_25801CD04(v101);
  (*(v102 + 8))(v101, v104);
  v121 = v106;
  if (v8 >> 62)
  {
    goto LABEL_121;
  }

  v108 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v108)
  {
    goto LABEL_122;
  }

LABEL_108:
  result = sub_258033244(0, v108 & ~(v108 >> 63), 0);
  if (v108 < 0)
  {
    __break(1u);
    return result;
  }

  v110 = v6;
  if ((v8 & 0xC000000000000001) != 0)
  {
    for (kk = 0; kk != v108; ++kk)
    {
      MEMORY[0x259C768B0](kk, v8);
      v112 = sub_2580171AC();
      swift_unknownObjectRelease();
      v114 = *(v110 + 16);
      v113 = *(v110 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_258033244((v113 > 1), v114 + 1, 1);
      }

      *(v110 + 16) = v114 + 1;
      *(v110 + 8 * v114 + 32) = v112;
    }
  }

  else
  {
    v115 = 32;
    do
    {

      v116 = sub_2580171AC();

      v118 = *(v110 + 16);
      v117 = *(v110 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_258033244((v117 > 1), v118 + 1, 1);
      }

      *(v110 + 16) = v118 + 1;
      *(v110 + 8 * v118 + 32) = v116;
      v115 += 8;
      --v108;
    }

    while (v108);
  }

LABEL_123:
  v119 = swift_isUniquelyReferenced_nonNull_native();
  sub_258035068(v110, v0 + 6, 0x80000002580502B0, v119);

  v120 = v122[1];

  return v120(v121);
}

uint64_t sub_257FE68A0(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919DE8);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_258032C5C(0xD00000000000001BLL, 0x800000025804FFC0, &v17);
    *(v10 + 12) = 2080;
    v12 = sub_2580177CC();
    v14 = sub_258032C5C(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v7, v8, "%s - record: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    v15 = v10;
    a2 = v9;
    v3 = v2;
    MEMORY[0x259C77210](v15, -1, -1);
  }

  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E10();

  result = sub_257FE8154(a1);
  if (!v3)
  {
    result = sub_257FE9848(a1);
    if (a2)
    {
      return sub_257FE6DD0();
    }
  }

  return result;
}

uint64_t sub_257FE6B38(unint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919DE8);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_258032C5C(0xD00000000000001BLL, 0x800000025804FFA0, &v17);
    *(v10 + 12) = 2080;
    v12 = sub_2580177CC();
    v14 = sub_258032C5C(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_257FD4000, v7, v8, "%s - record: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v11, -1, -1);
    v15 = v10;
    a2 = v9;
    v3 = v2;
    MEMORY[0x259C77210](v15, -1, -1);
  }

  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  type metadata accessor for AppRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E00();

  result = sub_257FE8C78(a1);
  if (!v3)
  {
    result = sub_257FEA3C4(a1);
    if (a2)
    {
      return sub_257FE6DD0();
    }
  }

  return result;
}

uint64_t sub_257FE6DD0()
{
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  sub_258049DD0();
  if (!v0)
  {
  }

  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919DE8);
  v2 = v0;
  v3 = sub_258049D10();
  v4 = sub_25804A2D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v5 = 136446210;
    v6 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v7 = sub_25804A120();
    v9 = sub_258032C5C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_257FD4000, v3, v4, "AppConfigDatabase - save failed with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x259C77210](v11, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  sub_258049D70();
  sub_258049E20();

  return swift_willThrow();
}

uint64_t sub_257FE700C()
{
  type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  v0 = sub_258049D90();

  if (v0)
  {
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v2 = sub_258049D30();
    __swift_project_value_buffer(v2, qword_27F919DE8);

    v3 = sub_258049D10();
    v4 = sub_25804A2D0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v5 = 136446978;
      *(v5 + 4) = sub_258032C5C(0xD00000000000001ALL, 0x800000025804FF80, &v23);
      *(v5 + 12) = 2082;
      sub_258049D70();
      v6 = sub_258049DC0();

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
      v8 = MEMORY[0x259C766F0](v6, v7);
      v10 = v9;

      v11 = sub_258032C5C(v8, v10, &v23);

      *(v5 + 14) = v11;
      *(v5 + 22) = 2082;
      sub_258049D70();
      v12 = sub_258049DA0();

      v13 = MEMORY[0x259C766F0](v12, v7);
      v15 = v14;

      v16 = sub_258032C5C(v13, v15, &v23);

      *(v5 + 24) = v16;
      *(v5 + 32) = 2082;
      sub_258049D70();
      v17 = sub_258049DB0();

      v18 = MEMORY[0x259C766F0](v17, v7);
      v20 = v19;

      v21 = sub_258032C5C(v18, v20, &v23);

      *(v5 + 34) = v21;
      _os_log_impl(&dword_257FD4000, v3, v4, "%{public}s - Model context has unexpected modification: (inserted models: %{public}s, changed models: %{public}s, deleted models: %{public}s", v5, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v22, -1, -1);
      MEMORY[0x259C77210](v5, -1, -1);
    }

    sub_258049D70();
    sub_258049E20();
  }

  return result;
}

uint64_t sub_257FE7384()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154A8, &qword_25804BAE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B0, &qword_25804BAE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for AppCodeIdentityRecord(0);
  v23 = v9;
  sub_258049A70();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154B8, &qword_25804BAF0);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049E80();
  v11 = sub_25801CD60(v8);
  if (v1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = v11;
  v21 = v9;
  v22 = v0;
  v18 = v8;
  v19 = v6;
  v20 = v5;
  v17 = 0;
  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
LABEL_5:
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v15, v13);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = sub_25804A480();
          if (!v14)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      type metadata accessor for AppConfigDatabaseImpl(0);
      sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
      sub_258049D70();
      sub_258049E00();

      ++v15;
    }

    while (v16 != v14);
  }

  return (*(v19 + 8))(v18, v20);
}

uint64_t sub_257FE76E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915438, &qword_25804BA90);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154C8, &qword_25804BAF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154D0, &qword_25804BB00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  sub_257FECB0C(&qword_27F9154D8, &qword_27F9154C8, &qword_25804BAF8, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for AppRecord(0);
  sub_258049960();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154E0, &qword_25804BB30);
  a2[4] = sub_257FEC780(&qword_27F9154E8, &qword_27F9154E0, &qword_25804BB30, sub_257FEC99C);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_257FECB0C(&qword_27F915500, &qword_27F9154D0, &qword_25804BB00, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915488, &qword_27F915438, &qword_25804BA90, MEMORY[0x277CC8EC0]);
  sub_257FEC8E0();
  v15 = v17;
  sub_258049920();
  (*(v18 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_257FE7A6C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915418, &qword_25804BA78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915420, &qword_25804BA80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  v23 = v9;
  sub_258049A70();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  sub_257FEE724(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049E80();
  v11 = sub_25801CDBC(v8);
  if (v1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = v11;
  v21 = v9;
  v22 = v0;
  v18 = v8;
  v19 = v6;
  v20 = v5;
  v17 = 0;
  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
LABEL_5:
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v15, v13);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = sub_25804A480();
          if (!v14)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      type metadata accessor for AppConfigDatabaseImpl(0);
      sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
      sub_258049D70();
      sub_258049E00();

      ++v15;
    }

    while (v16 != v14);
  }

  return (*(v19 + 8))(v18, v20);
}

uint64_t sub_257FE7DC8@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915438, &qword_25804BA90);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915448, &qword_25804BAA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for AppRecord(0);
  sub_258049960();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915458, &qword_25804BAD0);
  a2[4] = sub_257FEC780(&qword_27F915460, &qword_27F915458, &qword_25804BAD0, sub_257FEC830);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_257FECB0C(&qword_27F915480, &qword_27F915448, &qword_25804BAA0, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915488, &qword_27F915438, &qword_25804BA90, MEMORY[0x277CC8EC0]);
  sub_257FEC8E0();
  v15 = v17;
  sub_258049920();
  (*(v18 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_257FE8154(unint64_t a1)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAD00();
  sub_258049EF0();

  sub_257FE84E8(a1);

  if (!v8)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v3 = a1;
    if (a1 >> 62)
    {
      goto LABEL_14;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
          }

LABEL_8:
          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
          sub_258049EF0();

          sub_257FE84E8(v6);

          ++v5;
          if (v7 == v4)
          {
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_14:
        v4 = sub_25804A480();
        if (!v4)
        {
        }
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257FE84E8(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C0, &qword_25804B9F8);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v34 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153C8, &qword_25804BA00);
  v6 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - v8;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    do
    {
      v10 = 0;
      v44 = a1;
      v45 = a1 & 0xC000000000000001;
      v37 = (v6 + 8);
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = v9;
      while (v45)
      {
        v11 = MEMORY[0x259C768B0](v10, a1);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

LABEL_12:
        v47 = v10;
        v48 = v12;
        v13 = v9;
        v14 = OBJC_IVAR____TtC15ManagedAppsCore10DataRecord___observationRegistrar;
        v49 = v11;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
        v6 = sub_258049EE0();

        if (!v6)
        {
          v49 = v11;
          swift_getKeyPath();
          v43 = v14;
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v16 = v50;
          MEMORY[0x28223BE20](v15);
          *(&v34 - 2) = v17;
          *(&v34 - 1) = v16;
          v51 = type metadata accessor for DataAssetRecord(0);
          v18 = v41;
          sub_258049A70();

          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9153D0, &qword_25804BA30);
          (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
          a1 = v39;
          sub_258049E80();
          v20 = v46;
          v21 = sub_25801CA64(a1);
          v46 = v20;
          if (v20)
          {

            return (*v37)(a1, v40);
          }

          v6 = v21;
          v42 = &v34;
          (*v37)(a1, v40);
          if (v6 >> 62)
          {
            v26 = sub_25804A480();
            v9 = v36;
            v22 = v43;
            if (!v26)
            {
              goto LABEL_21;
            }

LABEL_16:
            if ((v6 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x259C768B0](0, v6);
            }

            else
            {
              if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v23 = *(v6 + 32);
            }

            v49 = v11;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v34 - 2) = v11;
            *(&v34 - 1) = v23;
            v6 = v11 + v22;
            v25 = v46;
            sub_258049A80();
            v46 = v25;
          }

          else
          {
            v9 = v36;
            v22 = v43;
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

LABEL_21:

            v49 = v11;
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v27 = v49;
            v28 = v50;
            v29 = type metadata accessor for DataPersistenceValue(0);
            v30 = v35;
            (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
            swift_allocObject();
            v31 = sub_258006980(v27, v28, v30);
            v49 = v11;
            v32 = swift_getKeyPath();
            MEMORY[0x28223BE20](v32);
            *(&v34 - 2) = v11;
            *(&v34 - 1) = v31;
            v6 = v11 + v22;
            v33 = v46;
            sub_258049A80();
            v46 = v33;
          }

          a1 = v44;
          goto LABEL_5;
        }

        a1 = v44;
        v9 = v13;
LABEL_5:
        v10 = v47 + 1;
        if (v48 == v9)
        {
          return result;
        }
      }

      if (v10 >= *(v38 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(a1 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_25804A480();
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FE8C78(unint64_t a1)
{
  v2 = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_257FDAD00();
  sub_258049EF0();

  sub_257FE9408(a1);

  if (!v1)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v18 = v2;
      v19 = v2 & 0xC000000000000001;
      v15 = v2 + 32;
      v16 = v2 & 0xFFFFFFFFFFFFFF8;
      v17 = v5;
      v21 = v3;
      while (1)
      {
        if (v19)
        {
          v7 = v6;
          v20 = MEMORY[0x259C768B0](v6++, v2);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v6 >= *(v16 + 16))
          {
            goto LABEL_35;
          }

          v20 = *(v15 + 8 * v6);

          if (__OFADD__(v6++, 1))
          {
            goto LABEL_34;
          }
        }

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
        sub_258049EF0();

        v9 = v20;
        if (v20 >> 62)
        {
          break;
        }

        v10 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_14;
        }

LABEL_5:

        v2 = v18;
        if (v6 == v17)
        {
        }
      }

      v10 = sub_25804A480();
      if (!v10)
      {
        goto LABEL_5;
      }

LABEL_14:
      v2 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C768B0](v2, v9);
          v11 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v11 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v5 = sub_25804A480();
            if (!v5)
            {
            }

            goto LABEL_4;
          }
        }

        v22 = v11;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
        v12 = sub_258049EE0();

        if (v12)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_258049A80();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
          sub_258049A90();

          swift_getKeyPath();
          v3 = v21;
          sub_258049EF0();

          if (v12 >> 62)
          {
            v14 = sub_25804A480();
          }

          else
          {
            v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v14)
          {
            type metadata accessor for AppConfigDatabaseImpl(0);
            sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
            sub_258049D70();
            type metadata accessor for DataAssetRecord(0);
            sub_258049E00();

            sub_257FEC164(v12);
          }

          v9 = v20;
        }

        else
        {
          v3 = v21;
          v9 = v20;
        }

        ++v2;
        if (v22 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

unint64_t sub_257FE9408(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_23;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      v11 = v1;
      v12 = v1 & 0xC000000000000001;
      v9 = v1 & 0xFFFFFFFFFFFFFF8;
      v10 = v2;
      while (v12)
      {
        MEMORY[0x259C768B0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_21;
        }

LABEL_12:
        v14 = v5;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
        sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
        v6 = sub_258049EE0();

        if (v6)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_258049A80();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
          sub_258049A90();

          swift_getKeyPath();
          type metadata accessor for DataRecord(0);
          sub_257FDAD00();
          sub_258049EF0();

          if (v6 >> 62)
          {
            v8 = sub_25804A480();
          }

          else
          {
            v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v1 = v11;
          if (!v8)
          {
            type metadata accessor for AppConfigDatabaseImpl(0);
            sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
            sub_258049D70();
            type metadata accessor for DataAssetRecord(0);
            sub_258049E00();

            sub_257FEC164(v6);
            if (v13)
            {
            }
          }

          v4 = v10;
        }

        else
        {
          v4 = v10;
          v1 = v11;
        }

        ++v3;
        if (v14 == v4)
        {
          return result;
        }
      }

      if (v3 >= *(v9 + 16))
      {
        goto LABEL_22;
      }

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_25804A480();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FE9848(unint64_t a1)
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049EF0();

  sub_257FE9D00(a1, v14, a1);

  if (!v15)
  {
    v3 = 0;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v4 = a1;
    if (a1 >> 62)
    {
      goto LABEL_16;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = 0;
    if (v5)
    {
      while (1)
      {
        v7 = 0;
        v10 = v4 & 0xFFFFFFFFFFFFFF8;
        v11 = v4 & 0xC000000000000001;
        v9 = v4;
        while (v11)
        {
          v3 = MEMORY[0x259C768B0](v7, v4);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
          }

LABEL_8:
          v12 = v8;
          swift_getKeyPath();
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
          sub_258049EF0();

          sub_257FE9D00(a1, v14, v3);

          if (!v6)
          {
            ++v7;
            v4 = v9;
            if (v12 != v5)
            {
              continue;
            }
          }
        }

        if (v7 < *(v10 + 16))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v5 = sub_25804A480();
        v6 = v3;
        if (!v5)
        {
        }
      }

      v3 = *(v4 + 8 * v7 + 32);

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257FE9D00(uint64_t (**a1)(uint64_t, uint64_t), uint64_t (**a2)(uint64_t, uint64_t), unint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915328, &qword_25804B850);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v31 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915330, &qword_25804B858);
  v6 = *(v34 - 8);
  result = MEMORY[0x28223BE20](v34);
  v33 = &v31 - v8;
  if (a3 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    do
    {
      v10 = 0;
      v41 = a3;
      v42 = a3 & 0xC000000000000001;
      v31 = (v6 + 8);
      v32 = a3 & 0xFFFFFFFFFFFFFF8;
      v40 = v9;
      while (v42)
      {
        v11 = MEMORY[0x259C768B0](v10, a3);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

LABEL_12:
        v44 = v10;
        v45 = v12;
        v13 = OBJC_IVAR____TtC15ManagedAppsCore16CredentialRecord___observationRegistrar;
        v46 = v11;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
        sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
        v6 = sub_258049EE0();

        if (!v6)
        {
          v46 = v11;
          swift_getKeyPath();
          v38 = v13;
          sub_258049A90();

          swift_getKeyPath();
          sub_258049F00();

          v39 = &v31;
          v15 = v47;
          MEMORY[0x28223BE20](v14);
          v16 = v37;
          *(&v31 - 4) = v36;
          *(&v31 - 3) = v16;
          *(&v31 - 2) = v17;
          *(&v31 - 1) = v15;
          v48 = type metadata accessor for CredentialAssetRecord(0);
          v18 = v35;
          sub_258049A70();

          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915338, &qword_25804B888);
          (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
          a3 = v33;
          sub_258049E80();
          v20 = v43;
          v21 = sub_25801CD04(a3);
          v43 = v20;
          if (v20)
          {

            return (*v31)(a3, v34);
          }

          v6 = v21;
          (*v31)(a3, v34);
          if (v6 >> 62)
          {
            if (!sub_25804A480())
            {
              goto LABEL_21;
            }

LABEL_16:
            if ((v6 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x259C768B0](0, v6);
              v22 = v38;
            }

            else
            {
              v22 = v38;
              if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v23 = *(v6 + 32);
            }

            v46 = v11;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v31 - 2) = v11;
            *(&v31 - 1) = v23;
          }

          else
          {
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

LABEL_21:

            v46 = v11;
            swift_getKeyPath();
            v25 = v37;

            v22 = v38;
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v26 = v46;
            v27 = v47;
            swift_allocObject();
            v28 = sub_258007B54(v36, v25, v26, v27, 0, 0xF000000000000000);
            v46 = v11;
            v29 = swift_getKeyPath();
            MEMORY[0x28223BE20](v29);
            *(&v31 - 2) = v11;
            *(&v31 - 1) = v28;
          }

          v6 = v11 + v22;
          v30 = v43;
          sub_258049A80();
          v43 = v30;

          goto LABEL_5;
        }

LABEL_5:
        a3 = v41;
        v10 = v44 + 1;
        if (v45 == v40)
        {
          return result;
        }
      }

      if (v10 >= *(v32 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(a3 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_25804A480();
      v9 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_257FEA3C4(unint64_t a1)
{
  KeyPath = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_257FDAE04();
  sub_258049EF0();

  sub_257FEAADC(a1);

  if (!v1)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    if (KeyPath >> 62)
    {
      goto LABEL_33;
    }

    v5 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = KeyPath; v5; i = KeyPath)
    {
      v16 = v5;
      v17 = KeyPath & 0xC000000000000001;
      v13 = KeyPath + 32;
      v14 = KeyPath & 0xFFFFFFFFFFFFFF8;
      KeyPath = 0;
      v20 = v3;
      while (v17)
      {
        v19 = MEMORY[0x259C768B0](KeyPath, i);
        v6 = __OFADD__(KeyPath++, 1);
        if (v6)
        {
          goto LABEL_30;
        }

LABEL_12:
        v18 = KeyPath;
        swift_getKeyPath();
        sub_257FEE724(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
        sub_258049A90();

        KeyPath = swift_getKeyPath();
        sub_257FEE724(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
        sub_258049EF0();

        v7 = v19;
        if (v19 >> 62)
        {
          v8 = sub_25804A480();
          if (!v8)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v8)
          {
            goto LABEL_5;
          }
        }

        if (v8 < 1)
        {
          goto LABEL_31;
        }

        v9 = 0;
        v21 = v8;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            MEMORY[0x259C768B0](v9, v7);
          }

          else
          {
          }

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
          sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
          v10 = sub_258049EE0();

          if (v10)
          {
            v11 = swift_getKeyPath();
            MEMORY[0x28223BE20](v11);
            sub_258049A80();

            swift_getKeyPath();
            sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
            sub_258049A90();

            swift_getKeyPath();
            v3 = v20;
            sub_258049EF0();

            if (v10 >> 62)
            {
              v12 = sub_25804A480();
            }

            else
            {
              v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v12)
            {
              type metadata accessor for AppConfigDatabaseImpl(0);
              sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
              sub_258049D70();
              type metadata accessor for CredentialAssetRecord(0);
              sub_258049E00();
            }
          }

          else
          {

            v3 = v20;
          }

          v7 = v19;
          ++v9;
        }

        while (v21 != v9);
LABEL_5:

        KeyPath = v18;
        if (v18 == v16)
        {
        }
      }

      if (KeyPath >= *(v14 + 16))
      {
        goto LABEL_32;
      }

      v19 = *(v13 + 8 * KeyPath);

      v6 = __OFADD__(KeyPath++, 1);
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v5 = sub_25804A480();
    }
  }

  return result;
}

uint64_t sub_257FEAADC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    result = sub_25804A480();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v7 = v1 & 0xC000000000000001;
    v8 = result;
    v9 = v1;
    do
    {
      if (v7)
      {
        MEMORY[0x259C768B0](v3, v1);
      }

      else
      {
      }

      swift_getKeyPath();
      sub_257FEE724(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FEE724(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_257FEE724(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
      v4 = sub_258049EE0();

      if (v4)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_258049A80();

        swift_getKeyPath();
        sub_257FEE724(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
        sub_258049A90();

        swift_getKeyPath();
        type metadata accessor for CredentialRecord(0);
        sub_257FDAE04();
        sub_258049EF0();

        if (v4 >> 62)
        {
          v6 = sub_25804A480();
        }

        else
        {
          v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v1 = v9;
        if (!v6)
        {
          type metadata accessor for AppConfigDatabaseImpl(0);
          sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
          sub_258049D70();
          type metadata accessor for CredentialAssetRecord(0);
          sub_258049E00();
        }
      }

      else
      {

        v1 = v9;
      }

      ++v3;
      result = v8;
    }

    while (v8 != v3);
  }

  return result;
}

uint64_t sub_257FEAED0()
{
  sub_257FDAB84(v0 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL, &qword_27F915220, &qword_25804EC90);

  swift_unknownObjectRelease();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppConfigDatabaseImpl(uint64_t a1)
{
  result = qword_27F915308;
  if (!qword_27F915308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257FEAFC8(uint64_t a1)
{
  sub_257FEB088(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257FEB088(uint64_t a1)
{
  if (!qword_27F915318)
  {
    sub_258049A20();
    v1 = sub_25804A340();
    if (!v2)
    {
      atomic_store(v1, &qword_27F915318);
    }
  }
}

uint64_t sub_257FEB128()
{
  v0 = type metadata accessor for AppConfigDatabaseImpl(0);
  v1 = sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);

  return MEMORY[0x28212C8C8](v0, v1);
}

unint64_t sub_257FEB248()
{
  result = qword_27F915380;
  if (!qword_27F915380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915378, &qword_25804B900);
    sub_257FEC644(&qword_27F915388, &qword_27F915358, &qword_25804B8A8, sub_257FEB2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915380);
  }

  return result;
}

unint64_t sub_257FEB2F8()
{
  result = qword_27F915390;
  if (!qword_27F915390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915350, &qword_25804B8A0);
    sub_257FECB0C(&qword_27F915398, &qword_27F915348, &qword_25804B898, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915390);
  }

  return result;
}

unint64_t sub_257FEB3A8()
{
  result = qword_27F9153A0;
  if (!qword_27F9153A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915340, &qword_25804B890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9153A0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_257FEB4C4(uint64_t a1)
{
  v8[3] = &type metadata for NotificationCenterNotifier;
  v8[4] = &off_286938E60;
  v7[3] = &type metadata for DarwinNotifier;
  v7[4] = &off_286938E50;
  sub_257FDA854(v8, v6);
  type metadata accessor for BatchedNotifier();
  v2 = swift_allocObject();
  sub_257FDAA0C(v6, v2 + 16);
  v3 = MEMORY[0x277D84FA0];
  *(v2 + 56) = MEMORY[0x277D84FA0];
  *(a1 + 16) = v2;
  sub_257FDA854(v7, v6);
  v4 = swift_allocObject();
  sub_257FDAA0C(v6, v4 + 16);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v4 + 56) = v3;
  *(a1 + 24) = v4;
  return a1;
}

void *sub_257FEB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  v76 = a1;
  v90[3] = *MEMORY[0x277D85DE8];
  v3 = sub_2580499C0();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258049F70();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258049F50();
  MEMORY[0x28223BE20](v8 - 8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  v9 = MEMORY[0x28223BE20](v75);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  v13 = sub_258049A20();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v85 = &v73 - v19;
  v20 = sub_258049F80();
  v86 = *(v20 - 8);
  v87 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25804A050();
  MEMORY[0x28223BE20](v23 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915610, &qword_25804BDE8);
  v24 = swift_allocObject();
  v83 = xmmword_25804B660;
  *(v24 + 16) = xmmword_25804B660;
  v25 = type metadata accessor for AppRecord(0);
  v26 = sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  sub_25804A060();
  sub_25804A0B0();
  swift_allocObject();
  v27 = v89;
  v28 = sub_25804A0C0();
  sub_257FDA958(v27, v12, &qword_27F915220, &qword_25804EC90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v29 = v14;
    sub_257FDAB84(v12, &qword_27F915220, &qword_25804EC90);

    sub_258049F40();
    sub_258049F40();
    sub_258049F90();
    v30 = v88;
  }

  else
  {
    v73 = v7;
    v82 = v28;
    (*(v14 + 32))(v85, v12, v13);
    v31 = objc_opt_self();
    v32 = [v31 defaultManager];
    sub_258049A00();
    v33 = sub_25804A100();

    v34 = [v32 fileExistsAtPath_];

    if ((v34 & 1) == 0)
    {
      v35 = [v31 defaultManager];
      v36 = v85;
      v37 = sub_2580499E0();
      v90[0] = 0;
      v38 = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v90];

      if (!v38)
      {
        v52 = v90[0];
        sub_2580499B0();

        swift_willThrow();

        sub_257FDAB84(v89, &qword_27F915220, &qword_25804EC90);
        (*(v14 + 8))(v36, v13);
        return v52;
      }

      v39 = v90[0];
    }

    v90[0] = 0xD000000000000012;
    v90[1] = 0x80000002580504B0;
    v41 = v79;
    v40 = v80;
    v42 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277CC91D8], v81);
    sub_257FDA8B8();
    v43 = v78;
    v44 = v85;
    sub_258049A10();
    (*(v40 + 8))(v41, v42);
    (*(v14 + 16))(v77, v43, v13);
    v28 = v82;

    sub_258049F40();
    sub_258049FA0();
    v29 = v14;
    v45 = *(v14 + 8);
    v46 = v43;
    v30 = v88;
    v45(v46, v13);
    v45(v44, v13);
  }

  v47 = v13;
  sub_258049E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915618, &unk_25804BDF0);
  v48 = v86;
  v49 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v83;
  v51 = v50 + v49;
  v52 = v87;
  (*(v48 + 16))(v51, v22, v87);

  v53 = v84;
  v54 = sub_258049E50();
  if (v53)
  {

    sub_257FDAB84(v89, &qword_27F915220, &qword_25804EC90);
    (*(v48 + 8))(v22, v52);
  }

  else
  {
    v55 = v54;
    v84 = 0;
    v85 = v22;
    v82 = v28;
    type metadata accessor for AppConfigDatabaseImpl(0);
    v52 = swift_allocObject();
    v52[2] = 0;
    (*(v29 + 56))(v52 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL, 1, 1, v47);
    *(v52 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier) = 0;
    sub_258049E30();
    swift_allocObject();
    swift_retain_n();
    sub_258049E40();
    sub_258049FD0();
    swift_allocObject();
    v56 = sub_258049FC0();
    v57 = sub_257FEE724(&qword_27F915620, MEMORY[0x277CDD598], MEMORY[0x277CDD590]);
    v58 = (v52 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelExecutor);
    *v58 = v56;
    v58[1] = v57;
    *(v52 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_modelContainer) = v55;
    v52[2] = v76;
    v59 = OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_storageDirectoryURL;
    swift_beginAccess();

    v60 = v89;
    sub_257FEE76C(v89, v52 + v59);
    swift_endAccess();
    v61 = v30;
    if (!v30)
    {
      type metadata accessor for AppConfigNotifier();
      v62 = swift_allocObject();
      v61 = sub_257FEB4C4(v62);
    }

    *(v52 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier) = v61;
    v63 = qword_27F915168;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = sub_258049D30();
    __swift_project_value_buffer(v64, qword_27F919DE8);
    v65 = sub_258049D10();
    v66 = sub_25804A2C0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v90[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_258032C5C(0xD000000000000020, 0x8000000258050480, v90);
      *(v67 + 12) = 2080;
      sub_257FDA958(v52 + v59, v74, &qword_27F915220, &qword_25804EC90);
      v69 = sub_25804A120();
      v71 = sub_258032C5C(v69, v70, v90);

      *(v67 + 14) = v71;
      _os_log_impl(&dword_257FD4000, v65, v66, "%s - storage URL: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v68, -1, -1);
      MEMORY[0x259C77210](v67, -1, -1);
    }

    sub_257FDAB84(v60, &qword_27F915220, &qword_25804EC90);
    (*(v86 + 8))(v85, v87);
  }

  return v52;
}

uint64_t sub_257FEC164(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_258049A20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FEC568();
  sub_258049F00();

  v9 = type metadata accessor for DataPersistenceValue(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    return sub_257FDAB84(v4, &qword_27F915268, &qword_25804F1E0);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_257FECCE0(v4, type metadata accessor for DataPersistenceValue);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_258049A00();
  v13 = sub_25804A100();

  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v15 = [v11 defaultManager];
  v16 = sub_2580499E0();
  v22[0] = 0;
  v17 = [v15 removeItemAtURL:v16 error:v22];

  if (v17)
  {
    v18 = *(v6 + 8);
    v19 = v22[0];
    return v18(v8, v5);
  }

  else
  {
    v20 = v22[0];
    sub_2580499B0();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_257FEC568()
{
  result = qword_27F9153B0;
  if (!qword_27F9153B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915268, &qword_25804F1E0);
    sub_257FEE724(&qword_27F9153B8, type metadata accessor for DataPersistenceValue, &unk_25804C2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9153B0);
  }

  return result;
}

uint64_t sub_257FEC644(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_257FEB3A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257FEC6C8()
{
  result = qword_27F915400;
  if (!qword_27F915400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9153E0, &qword_25804BA40);
    sub_257FECB0C(&qword_27F915408, &qword_27F9153D8, &qword_25804BA38, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915400);
  }

  return result;
}

uint64_t sub_257FEC780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_257FECB0C(&qword_27F915478, &qword_27F915438, &qword_25804BA90, MEMORY[0x277CC8EB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257FEC830()
{
  result = qword_27F915468;
  if (!qword_27F915468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915448, &qword_25804BAA0);
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915468);
  }

  return result;
}

unint64_t sub_257FEC8E0()
{
  result = qword_27F915490;
  if (!qword_27F915490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915498, &qword_25804BAD8);
    sub_257FEE724(&qword_27F9154A0, type metadata accessor for AppRecord, &unk_25804D6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915490);
  }

  return result;
}

unint64_t sub_257FEC99C()
{
  result = qword_27F9154F0;
  if (!qword_27F9154F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9154D0, &qword_25804BB00);
    sub_257FECB0C(&qword_27F9154F8, &qword_27F9154C8, &qword_25804BAF8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9154F0);
  }

  return result;
}

unint64_t sub_257FECA5C()
{
  result = qword_27F915570;
  if (!qword_27F915570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915550, &qword_25804BBC0);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915570);
  }

  return result;
}

uint64_t sub_257FECB0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_257FECB64()
{
  result = qword_27F915590;
  if (!qword_27F915590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915588, &qword_25804BC20);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915590);
  }

  return result;
}

uint64_t sub_257FECC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LookalikeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257FECC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257FECCE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257FECD68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257FECD7C(a1, a2);
  }

  return a1;
}

uint64_t sub_257FECD7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_257FECE3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v11 = sub_257FE2C98(a1, a2);
  if (v5 || !v11)
  {
  }

  v18 = v11;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v13 = sub_258049D30();
  __swift_project_value_buffer(v13, qword_27F919DE8);

  v14 = sub_258049D10();
  v15 = sub_25804A2C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_258032C5C(a1, a2, &v19);
    _os_log_impl(&dword_257FD4000, v14, v15, "%s - managementKey: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v17, -1, -1);
    MEMORY[0x259C77210](v16, -1, -1);
  }

  sub_257FED068(v18, a3, a4, a5, sub_258029E90);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_257FED068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_257FEE724(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FEE724(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FEE724(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v7 = sub_258049EE0();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v8 = a1;
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v9 = sub_258049D30();
  __swift_project_value_buffer(v9, qword_27F919DE8);

  v10 = sub_258049D10();
  v11 = sub_25804A2C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v12 = 136315394;
    *(v12 + 4) = sub_258032C5C(0xD000000000000024, 0x8000000258050320, &v25);
    *(v12 + 12) = 2080;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v13 = sub_258032C5C(a1, v24, &v25);

    *(v12 + 14) = v13;
    _os_log_impl(&dword_257FD4000, v10, v11, "%s - record: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v19, -1, -1);
    v14 = v12;
    v8 = a1;
    MEMORY[0x259C77210](v14, -1, -1);
  }

  sub_257FE700C();
  a5(a1, a3, a4);
  sub_257FE7384();
  if (!v23)
  {
    sub_257FE7A6C();
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v15 = sub_258049EE0();

    if (v7)
    {
      if (v15)
      {

        v17 = sub_25800B93C(v16, v15);

        if (v17)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!v15)
      {
LABEL_15:
        swift_getKeyPath();
        sub_258049A90();

        swift_getKeyPath();
        sub_258049F00();

        if (v8 != a1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
        {

          sub_257FEFACC(a1);
        }

        sub_257FE6DD0();
        if (*(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
        {

          sub_258043768();
          sub_258043768();
        }
      }
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 == 1 && *(a2 + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
    {

      sub_257FEFACC(a1);
    }

    goto LABEL_15;
  }
}

void sub_257FED63C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a4;

  v11 = sub_257FE2C98(a1, a2);
  if (v5 || !v11)
  {
  }

  else
  {
    v18 = v11;
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v12 = sub_258049D30();
    __swift_project_value_buffer(v12, qword_27F919DE8);

    v13 = sub_258049D10();
    v14 = sub_25804A2C0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_258032C5C(0xD00000000000002BLL, 0x80000002580502F0, &v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_258032C5C(a1, a2, &v19);
      _os_log_impl(&dword_257FD4000, v13, v14, "%s - managementKey: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v17, -1, -1);
      MEMORY[0x259C77210](v15, -1, -1);
    }

    v16 = v10;

    sub_257FED068(v18, a3, v16, a5, sub_25802A708);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_257FED888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[47] = a4;
  v5[48] = a5;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  type metadata accessor for ExtensionRecordLookalike(0);
  v5[49] = swift_task_alloc();
  type metadata accessor for AppRecordLookalike(0);
  v5[50] = swift_task_alloc();
  v5[51] = type metadata accessor for LookalikeType(0);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v6 = sub_258049FB0();
  v5[54] = v6;
  v5[55] = *(v6 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = type metadata accessor for AppConfigDatabaseImpl(0);
  sub_257FEE724(&qword_27F915240, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B740);
  v8 = sub_25804A230();

  return MEMORY[0x2822009F8](sub_257FEDA40, v8, v7);
}

uint64_t sub_257FEDA40()
{
  v65 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v3 = *(v0 + 352);
  sub_257FEE724(&qword_27F915320, type metadata accessor for AppConfigDatabaseImpl, &unk_25804B708);
  sub_258049D70();
  sub_257FECC14(v3, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 448);
  v6 = *(v0 + 432);
  v7 = 392;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v7 = 400;
    v8 = type metadata accessor for AppRecordLookalike;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for ExtensionRecordLookalike;
  }

  else
  {
    v9 = type metadata accessor for AppRecordLookalike;
  }

  v10 = *(v0 + v7);
  sub_257FECC78(*(v0 + 424), v10, v8);
  (*(v1 + 16))(v5, v10, v6);
  sub_257FECCE0(v10, v9);
  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  v14 = sub_258049DF0();
  v16 = v15;

  (*(v12 + 8))(v11, v13);
  *(v0 + 240) = v14;
  v17 = (v0 + 16);
  *(v0 + 248) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915508, &qword_25804BB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9155A8, &qword_25804BC38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *v17 = 0u;
    *(v0 + 32) = 0u;
  }

  sub_257FDA958(v0 + 16, v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (*(v0 + 120))
  {
    sub_257FDAA0C((v0 + 96), v0 + 56);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v63 = (v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v18);
    v20 = sub_258019BEC(1, v18, v19);
    if (!v20)
    {
      if (qword_27F915168 != -1)
      {
        swift_once();
      }

      v45 = sub_258049D30();
      __swift_project_value_buffer(v45, qword_27F919DE8);
      sub_257FDA854(v63, v0 + 136);
      v46 = sub_258049D10();
      v47 = sub_25804A2C0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v64 = v49;
        *v48 = 136446210;
        sub_257FDA854(v0 + 136, v0 + 176);
        v50 = sub_25804A120();
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        v53 = sub_258032C5C(v50, v52, &v64);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_257FD4000, v46, v47, "Data record for container %{public}s does not exist", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x259C77210](v49, -1, -1);
        MEMORY[0x259C77210](v48, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      }

      goto LABEL_42;
    }

    v21 = v20;
    *(v0 + 320) = v20;
    swift_getKeyPath();
    sub_257FEE724(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE724(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
    sub_257FEE6B4(&qword_27F915600, &qword_27F915608, &qword_25804BDB0);
    sub_258049F00();

    v61 = *(v0 + 288);
    v62 = *(v0 + 296);
    *(v0 + 328) = v21;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_257FEE6B4(&qword_27F915520, &qword_27F915528, &qword_25804BFA0);
    sub_258049F00();

    v22 = *(v0 + 264);
    v60 = *(v0 + 256);
    if (qword_27F915168 != -1)
    {
      swift_once();
    }

    v23 = sub_258049D30();
    __swift_project_value_buffer(v23, qword_27F919DE8);

    v24 = sub_258049D10();
    v25 = sub_25804A2C0();

    if (os_log_type_enabled(v24, v25))
    {
      v59 = v22;
      v26 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v26 = 136315394;
      *(v26 + 4) = sub_258032C5C(0xD000000000000028, 0x8000000258050420, &v64);
      *(v26 + 12) = 2080;

      v27 = sub_258018424();
      v29 = v28;

      v30 = sub_258032C5C(v27, v29, &v64);
      v17 = (v0 + 16);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_257FD4000, v24, v25, "%s - dataRecord: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C77210](v58, -1, -1);
      v31 = v26;
      v22 = v59;
      MEMORY[0x259C77210](v31, -1, -1);
    }

    sub_257FE700C();
    sub_2580259B0(v21);
    *(v0 + 336) = v21;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (v62)
    {
      if ((*(v0 + 312) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((*(v0 + 312) & 1) != 0 || v61 != *(v0 + 304))
    {
      goto LABEL_36;
    }

    *(v0 + 344) = v21;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v54 = *(v0 + 280);
    if (v22)
    {
      if (v54)
      {
        if (v60 == *(v0 + 272) && v22 == v54)
        {
        }

        else
        {
          v57 = sub_25804A560();

          if ((v57 & 1) == 0)
          {
LABEL_37:
            if (*(*(v0 + 360) + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
            {
              swift_beginAccess();

              sub_257FF2318(&v64, 0xD00000000000002CLL, 0x8000000258050450);
              swift_endAccess();
            }
          }
        }

LABEL_39:
        sub_257FE6DD0();
        if (*(*(v0 + 360) + OBJC_IVAR____TtC15ManagedAppsCore21AppConfigDatabaseImpl_notifier))
        {

          sub_258043768();
          sub_258043768();
        }

LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v63);
        goto LABEL_43;
      }
    }

    else if (!v54)
    {
      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_37;
  }

  sub_257FDAB84(v0 + 96, &qword_27F9155B0, &unk_25804BC40);
  if (qword_27F915168 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 416);
  v33 = *(v0 + 352);
  v34 = sub_258049D30();
  __swift_project_value_buffer(v34, qword_27F919DE8);
  sub_257FECC14(v33, v32);
  v35 = sub_258049D10();
  v36 = sub_25804A2D0();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 416);
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_258032C5C(0xD000000000000028, 0x8000000258050420, &v64);
    *(v39 + 12) = 2082;
    v41 = sub_257FF8B88();
    v43 = v42;
    sub_257FECCE0(v38, type metadata accessor for LookalikeType);
    v44 = sub_258032C5C(v41, v43, &v64);

    *(v39 + 14) = v44;
    _os_log_impl(&dword_257FD4000, v35, v36, "%{public}s - no container record found for %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v40, -1, -1);
    MEMORY[0x259C77210](v39, -1, -1);
  }

  else
  {

    sub_257FECCE0(v38, type metadata accessor for LookalikeType);
  }

LABEL_43:
  sub_257FDAB84(v17, &qword_27F9155B0, &unk_25804BC40);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_257FEE6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_257FEE724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257FEE76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915220, &qword_25804EC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_257FEE84C(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
LABEL_27:
    result = sub_25804A480();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v25 = v3 & 0xFFFFFFFFFFFFFF8;
      v26 = v3 & 0xC000000000000001;
      v23 = v4;
      v24 = v3;
      do
      {
        if (v26)
        {
          v6 = MEMORY[0x259C768B0](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v25 + 16))
          {
            goto LABEL_24;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v29 = v7;
        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
        sub_258049F00();

        v3 = v6;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = *a2;
        v27 = *a2;
        v10 = a2;
        *a2 = 0x8000000000000000;
        v12 = sub_2580337E4(v6, v28);
        v13 = v9[2];
        v14 = (v11 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_25;
        }

        a2 = v11;
        if (v9[3] >= v15)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v18 = v27;
            if (v11)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_2580358E8();
            v18 = v27;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_258033EFC(v15, isUniquelyReferenced_nonNull_native);
          v16 = sub_2580337E4(v6, v28);
          if ((a2 & 1) != (v17 & 1))
          {
            result = sub_25804A580();
            __break(1u);
            return result;
          }

          v12 = v16;
          v18 = v27;
          if (a2)
          {
LABEL_4:
            *(v18[7] + 8 * v12) = v6;

            goto LABEL_5;
          }
        }

        v18[(v12 >> 6) + 8] |= 1 << v12;
        v19 = (v18[6] + 16 * v12);
        *v19 = v6;
        v19[1] = v28;
        *(v18[7] + 8 * v12) = v6;
        v20 = v18[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_26;
        }

        v18[2] = v22;
LABEL_5:
        a2 = v10;
        *v10 = v18;

        ++v5;
        v3 = v24;
      }

      while (v29 != v23);
    }
  }

  return result;
}

void sub_257FEEB5C(unint64_t a1, unint64_t a2)
{
  v84[0] = a1;
  swift_getKeyPath();
  sub_257FF4390(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FF4390(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FF4390(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v4 = sub_258049EE0();

  if (v4)
  {
    v5 = sub_257FF03DC();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    if (a1 != 1)
    {

      return;
    }

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for DataRecord(0);
    sub_257FDAD00();
    sub_258049EF0();

    swift_getKeyPath();
    v81 = v5;
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for CredentialRecord(0);
    sub_257FDAE04();
    sub_258049EF0();

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    sub_257FF0CE0(a2, a1, a2, a1, v5);

    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    v6 = a2;
    v7 = MEMORY[0x277D84F90];
    v84[0] = sub_258036980(MEMORY[0x277D84F90]);
    sub_257FEE84C(v6, v84);

    v8 = v84[0];
    v84[0] = a1;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049EF0();

    v9 = v84[0];
    v84[0] = sub_258036980(v7);
    sub_257FEE84C(v9, v84);

    v10 = v84[0];

    v12 = sub_257FEF9B0(v11);

    v14 = sub_257FEF9B0(v13);
    v82 = v14;
    v80 = v12;
    if (*(v12 + 16) <= *(v14 + 16) >> 3)
    {
      v84[0] = v14;

      sub_257FF2468(v12);
      v16 = v84[0];
    }

    else
    {
      v15 = v14;

      v16 = sub_257FF2594(v12, v15);
    }

    v25 = 1 << *(v16 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v16 + 56);
    v28 = (v25 + 63) >> 6;

    v29 = 0;
    while (v27)
    {
      v30 = v27;
LABEL_21:
      v27 = (v30 - 1) & v30;
      if (*(v10 + 16))
      {
        v32 = (*(v16 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v30)))));
        v33 = *v32;
        v34 = v32[1];

        sub_2580337E4(v33, v34);
        if (v35)
        {

          sub_257FF055C(v36);
        }
      }
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_62;
      }

      if (v31 >= v28)
      {
        break;
      }

      v30 = *(v16 + 56 + 8 * v31);
      ++v29;
      if (v30)
      {
        v29 = v31;
        goto LABEL_21;
      }
    }

    v37 = sub_257FF2D64(v12, v82);
    v38 = v37;
    v39 = v37 + 7;
    v40 = 1 << *(v37 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v37[7];
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    while (v42)
    {
      v45 = v42;
LABEL_35:
      v42 = (v45 - 1) & v45;
      if (*(v8 + 16))
      {
        v47 = (v38[6] + ((v44 << 10) | (16 * __clz(__rbit64(v45)))));
        v48 = *v47;
        v49 = v47[1];

        v50 = sub_2580337E4(v48, v49);
        if ((v51 & 1) != 0 && *(v10 + 16))
        {
          v83 = *(*(v8 + 56) + 8 * v50);

          v52 = sub_2580337E4(v48, v49);
          if (v53)
          {
            v77 = v10;
            v78 = v38;
            v54 = *(*(v10 + 56) + 8 * v52);
            v84[0] = v83;
            swift_getKeyPath();
            sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
            v79 = v54;

            sub_258049A90();

            swift_getKeyPath();
            sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
            sub_257FF42EC();
            sub_258049F00();

            if (v84[1] && (v84[0] = v83, swift_getKeyPath(), sub_258049A90(), , swift_getKeyPath(), sub_258049F00(), , v73 = objc_allocWithZone(MEMORY[0x277D034C8]), v55 = sub_25804A100(), , v56 = sub_25804A100(), , v57 = sub_25804A100(), v58 = [v73 initWithCodeSigningID:v55 teamID:v56 path:v57], v55, v56, v57, v58))
            {
              v84[0] = v83;
              swift_getKeyPath();
              v76 = v58;
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v75 = v84[0];
              v84[0] = v79;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v74 = v84[0];
              v84[0] = v83;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              v59 = v84[0];
              v84[0] = v79;
              swift_getKeyPath();
              sub_258049A90();

              swift_getKeyPath();
              sub_258049EF0();

              sub_257FF0CE0(v75, v74, v59, v84[0], v76);
            }

            else
            {
            }

            v10 = v77;
            v38 = v78;
          }

          else
          {
          }
        }
      }
    }

    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v43)
      {

        if (*(v82 + 16) <= *(v80 + 16) >> 3)
        {
          v84[0] = v80;
          sub_257FF2468(v82);

          v60 = v84[0];
        }

        else
        {
          v60 = sub_257FF2594(v82, v80);
        }

        v61 = 1 << *(v60 + 32);
        v62 = -1;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        v63 = v62 & *(v60 + 56);
        v64 = (v61 + 63) >> 6;

        v65 = 0;
        while (v63)
        {
          v66 = v63;
LABEL_57:
          v63 = (v66 - 1) & v66;
          if (*(v8 + 16))
          {
            v68 = (*(v60 + 48) + ((v65 << 10) | (16 * __clz(__rbit64(v66)))));
            v69 = *v68;
            v70 = v68[1];

            sub_2580337E4(v69, v70);
            if (v71)
            {

              sub_257FF055C(v72);
            }
          }
        }

        while (1)
        {
          v67 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_63;
          }

          if (v67 >= v64)
          {

            return;
          }

          v66 = *(v60 + 56 + 8 * v67);
          ++v65;
          if (v66)
          {
            v65 = v67;
            goto LABEL_57;
          }
        }
      }

      v45 = v39[v46];
      ++v44;
      if (v45)
      {
        v44 = v46;
        goto LABEL_35;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (qword_27F915178 != -1)
  {
LABEL_64:
    swift_once();
  }

  v17 = sub_258049D30();
  __swift_project_value_buffer(v17, qword_27F919E18);

  v18 = sub_258049D10();
  v19 = sub_25804A2D0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v84[0] = v21;
    *v20 = 136315138;
    v22 = sub_2580177CC();
    v24 = sub_258032C5C(v22, v23, v84);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_257FD4000, v18, v19, "Cannot send notification for: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x259C77210](v21, -1, -1);
    MEMORY[0x259C77210](v20, -1, -1);
  }
}

uint64_t sub_257FEF9B0(uint64_t a1)
{
  result = MEMORY[0x259C76790](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_257FF2318(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_257FEFACC(unint64_t a1)
{
  v35[0] = a1;
  swift_getKeyPath();
  sub_257FF4390(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FF4390(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FF4390(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v2 = sub_258049EE0();

  if (v2)
  {
    v34 = sub_257FF03DC();

    v35[0] = a1;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for DataRecord(0);
    sub_257FDAD00();
    v33 = a1;
    sub_258049EF0();

    v3 = a1;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    v4 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x259C768B0](v5, v3);
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_11:
          v35[0] = v9;
          swift_getKeyPath();
          sub_257FF4390(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FF4390(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
          sub_258049F00();

          v11 = sub_25804A4C0();

          if (v11 == 1)
          {
          }

          else
          {
            if (v11 == 2)
            {
              LOBYTE(v11) = 2;
            }

            else
            {
              LOBYTE(v11) = 0;
            }

            v12 = sub_25804A560();

            if ((v12 & 1) == 0)
            {

              goto LABEL_7;
            }
          }

          v6 = sub_258043AC4(v11, v34);
          v8 = v7;
          swift_beginAccess();
          sub_257FF2318(v36, v6, v8);
          swift_endAccess();

LABEL_7:
          ++v5;
          if (v10 == v4)
          {
            goto LABEL_27;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v4 = sub_25804A480();
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      v9 = *(v3 + 8 * v5 + 32);

      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

LABEL_27:

    v35[0] = v33;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for CredentialRecord(0);
    sub_257FDAE04();
    sub_258049EF0();

    if (v33 >> 62)
    {
      goto LABEL_41;
    }

    v21 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_29:
      v22 = 0;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x259C768B0](v22, v33);
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v22 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v23 = *(v33 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v21 = sub_25804A480();
            if (!v21)
            {
              break;
            }

            goto LABEL_29;
          }
        }

        v35[0] = v23;
        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
        sub_258049F00();

        v25 = sub_257FF644C(v23, v35[1]);
        if (v25 == 4)
        {
          v25 = 0;
        }

        v26 = sub_258043C54(v25, v34);
        v28 = v27;
        swift_beginAccess();
        sub_257FF2318(v36, v26, v28);
        swift_endAccess();

        ++v22;
      }

      while (v24 != v21);
    }

    v35[0] = v33;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for ExtensionRecord(0);
    sub_257FDAEC0();
    sub_258049EF0();

    if (v33 >> 62)
    {
      goto LABEL_54;
    }

    v29 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_44:
      v30 = 0;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x259C768B0](v30, v33);
          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v30 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v31 = *(v33 + 8 * v30 + 32);

          v32 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v29 = sub_25804A480();
            if (!v29)
            {
              break;
            }

            goto LABEL_44;
          }
        }

        sub_257FF055C(v31);

        ++v30;
      }

      while (v32 != v29);
    }
  }

  else
  {
LABEL_20:
    if (qword_27F915178 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E18);

    v14 = sub_258049D10();
    v15 = sub_25804A2D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136315138;
      v18 = sub_2580177CC();
      v20 = sub_258032C5C(v18, v19, v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_257FD4000, v14, v15, "Cannot send notification for: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x259C77210](v17, -1, -1);
      MEMORY[0x259C77210](v16, -1, -1);
    }
  }
}