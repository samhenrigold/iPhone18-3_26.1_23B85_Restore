uint64_t sub_22987B3C0()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22987B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987B54C, 0, 0);
}

uint64_t sub_22987B54C()
{
  v24 = v0;
  v1 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  if (v5)
  {
    v9 = v0[2];
    v22 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_22A4DD5EC();
    v21 = v6;
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%s Did not find a current accessory for Apple Media Accessory", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    v18 = *(v7 + 8);
    v18(v21, v22);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[8] = v18;
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_22987B794;

  return sub_22987BB90(0);
}

uint64_t sub_22987B794()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22987B8D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22987B8D8()
{
  v30 = v0;
  v1 = v0[10];
  v2 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[6];
  v11 = v0[4];
  if (v7)
  {
    v28 = v0[8];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v15 = v12;
    v26 = v10;
    v16 = [v15 description];
    v25 = v11;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2112;
    v21 = v8;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v22;
    *v14 = v22;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to create demo current accessory with error: %@", v13, 0x16u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v28(v26, v25);
  }

  else
  {

    v9(v10, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_22987BB90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987BC5C, 0, 0);
}

id sub_22987BC5C()
{
  v2 = *(v0[3] + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource);
  if ([v2 isDemoModeV2EnabledAndActive])
  {
    if ([v2 isAppleMediaAccessory])
    {
      v3 = *(v0[3] + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
      v0[8] = v3;
      v4 = [v3 _accessoryOfCurrentDevice];
      if (!v4 || (v5 = v4, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), v5, !v6))
      {
        result = [v3 homes];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v8 = result;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v9 = sub_22A4DD83C();

        if (v9 >> 62)
        {
          if (sub_22A4DE0EC())
          {
LABEL_8:
            if ((v9 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x22AAD13F0](0, v9);
            }

            else
            {
              if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_25;
              }

              v10 = *(v9 + 32);
            }

            v1 = v10;
            v0[9] = v10;

            if (qword_27D87F8F8)
            {
              v11 = qword_27D87F8F8;
LABEL_15:
              swift_unknownObjectRetain();
              v12 = [v11 productInfo];
              v0[10] = v12;
              swift_unknownObjectRelease();
              v13 = swift_task_alloc();
              v0[11] = v13;
              *v13 = v0;
              v13[1] = sub_22987BF10;
              v14 = v0[2];

              return sub_2295A9FF8(v1, v14, v12);
            }

            if (qword_281402220 == -1)
            {
LABEL_14:
              v11 = qword_281402230;
              swift_unknownObjectRetain();
              goto LABEL_15;
            }

LABEL_25:
            swift_once();
            goto LABEL_14;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_8;
        }
      }
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22987BF10()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22987C318;
  }

  else
  {

    v3 = sub_22987C02C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22987C02C()
{
  v33 = v0;
  v1 = *(v0 + 24);
  sub_229541CB0(*(v0 + 32), &off_283CE8678);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (!os_log_type_enabled(v3, v4))
  {
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = *(v0 + 40);

    (*(v22 + 8))(v21, v23);
    goto LABEL_9;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v32[0] = v31;
  *v7 = 136315394;
  v32[1] = 91;
  v32[2] = 0xE100000000000000;
  v8 = v6;
  v9 = [v8 description];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  MEMORY[0x22AAD08C0](v10, v12);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v13 = sub_2295A3E30(91, 0xE100000000000000, v32);

  *(v7 + 4) = v13;
  *(v7 + 12) = 2080;
  v14 = [v5 _accessoryOfCurrentDevice];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    v14 = 0;
LABEL_7:
    v20 = 0xE000000000000000;
    goto LABEL_8;
  }

  v17 = [v16 shortDescription];

  v18 = sub_22A4DD5EC();
  v20 = v19;

  v14 = v18;
LABEL_8:
  v24 = *(v0 + 72);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);
  v28 = sub_2295A3E30(v14, v20, v32);

  *(v7 + 14) = v28;
  _os_log_impl(&dword_229538000, v3, v4, "%s Did create a new current demo accessory: %s", v7, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v31, -1, -1);
  MEMORY[0x22AAD4E50](v7, -1, -1);

  (*(v26 + 8))(v25, v27);
LABEL_9:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22987C318()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22987C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987C4DC, 0, 0);
}

uint64_t sub_22987C4DC()
{
  v131 = v0;
  type metadata accessor for DemoAccessoryServer(0);

  v2 = sub_22960BC94(v1, 0);
  *(v0 + 248) = v2;
  v3 = v2;
  v4 = [*(v0 + 144) accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v5 = sub_22A4DD83C();

  v117 = v0;
  if (v5 >> 62)
  {
LABEL_32:
    v120 = v5 & 0xFFFFFFFFFFFFFF8;
    log = sub_22A4DE0EC();
  }

  else
  {
    v120 = v5 & 0xFFFFFFFFFFFFFF8;
    log = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v126 = v3;
  while (1)
  {
    if (log == v6)
    {
      v18 = *(v0 + 240);
      v19 = v3;
      v20 = *(v0 + 208);
      v21 = *(v0 + 216);

      v22 = OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_uuid;
      swift_beginAccess();
      v23 = *(v21 + 16);
      v23(v18, &v19[v22], v20);
      sub_22960FCE0();
      if (qword_27D87B8A0 != -1)
      {
        swift_once();
      }

      v72 = *(v0 + 232);
      v71 = *(v0 + 240);
      v73 = *(v0 + 208);
      v74 = *(v0 + 168);
      v75 = *(v0 + 160);
      sub_22956E358(v126);
      sub_229541CB0(v74, &off_283CE8678);
      v23(v72, v71, v73);
      v76 = v75;
      v77 = v126;
      v78 = v0;
      v79 = sub_22A4DD05C();
      v80 = sub_22A4DDCCC();

      v81 = os_log_type_enabled(v79, v80);
      v82 = v117[29];
      v84 = v117[26];
      v83 = v117[27];
      v85 = v117[25];
      v87 = v117[22];
      v86 = v117[23];
      if (v81)
      {
        logb = v79;
        v88 = v117[20];
        v127 = v117[22];
        v89 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v89 = 136315650;
        v128 = v122;
        v129 = 91;
        v130 = 0xE100000000000000;
        v90 = v88;
        v91 = [v90 description];
        v116 = v80;
        v92 = v77;
        v93 = sub_22A4DD5EC();
        v119 = v85;
        v95 = v94;

        v96 = v93;
        v77 = v92;
        MEMORY[0x22AAD08C0](v96, v95);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v97 = sub_2295A3E30(91, 0xE100000000000000, &v128);

        *(v89 + 4) = v97;
        *(v89 + 12) = 2080;
        sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v98 = sub_22A4DE5CC();
        v100 = v99;
        v101 = *(v83 + 8);
        v101(v82, v84);
        v102 = sub_2295A3E30(v98, v100, &v128);

        *(v89 + 14) = v102;
        *(v89 + 22) = 2080;
        v103 = [v77 shortDescription];
        v104 = sub_22A4DD5EC();
        v106 = v105;

        v107 = sub_2295A3E30(v104, v106, &v128);
        v78 = v117;

        *(v89 + 24) = v107;
        _os_log_impl(&dword_229538000, logb, v116, "%s Processing newly paired demo accessory server: %s - %s", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v122, -1, -1);
        MEMORY[0x22AAD4E50](v89, -1, -1);

        (*(v86 + 8))(v119, v127);
      }

      else
      {

        v101 = *(v83 + 8);
        v101(v82, v84);
        (*(v86 + 8))(v85, v87);
      }

      v78[32] = v101;
      v108 = v78[30];
      v110 = v78[20];
      v109 = v78[21];
      v111 = v78;
      v114 = v78 + 18;
      v113 = v78[18];
      v112 = v114[1];
      v115 = swift_task_alloc();
      v111[33] = v115;
      v115[2] = v113;
      v115[3] = v77;
      v115[4] = v108;
      v115[5] = v110;
      v115[6] = v112;
      v115[7] = v109;
      v45 = swift_task_alloc();
      v111[34] = v45;
      *v45 = v111;
      v45[1] = sub_22987D03C;
      v50 = sub_22988FF8C;
      v48 = 0xD000000000000027;
      v49 = 0x800000022A59A610;
      v52 = MEMORY[0x277D84F78] + 8;
      v46 = 0;
      v47 = 0;
      v51 = v115;

      return MEMORY[0x2822008A0](v45, v46, v47, v48, v49, v50, v51, v52);
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAD13F0](v6, v5);
    }

    else
    {
      if (v6 >= *(v120 + 16))
      {
        goto LABEL_31;
      }

      v8 = *(v5 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = [v8 identifier];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    v14 = [v3 identifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
      break;
    }

    v7 = sub_22A4DE60C();

    v6 = (v6 + 1);
    v3 = v126;
    if (v7)
    {
      goto LABEL_15;
    }
  }

  v3 = v126;
LABEL_15:
  v25 = *(v0 + 160);
  v24 = v117[21];
  v26 = v117[18];

  sub_229541CB0(v24, &off_283CE8678);
  v27 = v25;
  v28 = v26;
  v29 = sub_22A4DD05C();
  v30 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v29, v30))
  {
    v65 = v117[23];
    v64 = v117[24];
    v66 = v117[22];

    (*(v65 + 8))(v64, v66);
    v63 = v117;
    goto LABEL_19;
  }

  loga = v30;
  v31 = v117[20];
  v32 = v117[18];
  v33 = swift_slowAlloc();
  v121 = swift_slowAlloc();
  *v33 = 136315650;
  v128 = v121;
  v129 = 91;
  v130 = 0xE100000000000000;
  v34 = v31;
  v35 = [v34 description];
  v36 = sub_22A4DD5EC();
  v38 = v37;

  MEMORY[0x22AAD08C0](v36, v38);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v39 = sub_2295A3E30(91, 0xE100000000000000, &v128);

  *(v33 + 4) = v39;
  *(v33 + 12) = 2080;
  v40 = [v32 shortDescription];
  v41 = sub_22A4DD5EC();
  v43 = v42;

  v44 = sub_2295A3E30(v41, v43, &v128);

  *(v33 + 14) = v44;
  *(v33 + 22) = 2080;
  v45 = [*&v34[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] uuid];
  if (!v45)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v45, v46, v47, v48, v49, v50, v51, v52);
  }

  v53 = v45;
  v55 = v117[27];
  v54 = v117[28];
  v56 = v117[26];
  v57 = v117[23];
  v118 = v117[24];
  v58 = v117[22];
  sub_22A4DB79C();

  sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v59 = sub_22A4DE5CC();
  v61 = v60;
  (*(v55 + 8))(v54, v56);
  v62 = sub_2295A3E30(v59, v61, &v128);

  *(v33 + 24) = v62;
  _os_log_impl(&dword_229538000, v29, loga, "%s home: %s already has an accessory with identifier: %s", v33, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v121, -1, -1);
  MEMORY[0x22AAD4E50](v33, -1, -1);

  (*(v57 + 8))(v118, v58);
  v63 = v117;
  v3 = v126;
LABEL_19:
  type metadata accessor for HMError(0);
  v63[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v68;
  *(inited + 48) = 0xD000000000000020;
  *(inited + 56) = 0x800000022A59A5E0;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v69 = v63[1];

  return v69();
}

uint64_t sub_22987D03C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_22987D224;
  }

  else
  {

    v2 = sub_22987D158;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22987D158()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22987D224()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22987D2F0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a5;
  v38 = a3;
  v35 = a4;
  v36 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v34 = &v31 - v12;
  v32 = sub_22A4DB7DC();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a4);
  v31 = v10;
  (*(v10 + 16))(v13, a1, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 8) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 16) = v36;
  (*(v14 + 32))(v22 + v17, v16, v32);
  v24 = v37;
  *(v22 + v18) = v37;
  (*(v31 + 32))(v22 + v19, v34, v33);
  v26 = v38;
  v25 = v39;
  *(v22 + v20) = v39;
  *(v22 + v21) = v26;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v27 = v25;
  v28 = v26;
  v23;
  v29 = v24;
  sub_229812E5C(v28, v35, sub_22988FF9C, v22);
}

uint64_t sub_22987D594(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v46 = a7;
  v47 = a8;
  v44 = a4;
  v45 = a6;
  v43 = a5;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v39 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v40 = &v36 - v12;
  v14 = sub_22A4DB7DC();
  v37 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  v42 = &v36 - v18;
  v20 = sub_22A4DD9DC();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v15 + 16))(&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14);
  (*(v10 + 16))(v13, v43, v9);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v10 + 80) + v22 + 8) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v41;
  *(v26 + 4) = v41;
  (*(v15 + 32))(&v26[v21], v38, v37);
  v28 = v44;
  *&v26[v22] = v44;
  (*(v10 + 32))(&v26[v23], v40, v39);
  v29 = v45;
  v30 = v46;
  *&v26[v24] = v45;
  *&v26[v25] = v30;
  *&v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v47;
  v31 = v29;
  v32 = v30;
  v33 = v27;
  v34 = v28;
  sub_22957F3C0(0, 0, v42, &unk_22A5868B8, v26);
}

uint64_t sub_22987D8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v13;
  v8[12] = v14;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_22A4DD07C();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v10 = sub_22A4DB7DC();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987DA04, 0, 0);
}

uint64_t sub_22987DA04(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 48);
  v3 = sub_22A4DB77C();
  v4 = [v2 accessoryWithUUID_];
  *(v1 + 168) = v4;

  if (!v4)
  {
LABEL_8:
    v12 = *(v1 + 144);
    v11 = *(v1 + 152);
    v13 = *(v1 + 136);
    v14 = *(v1 + 56);
    v15 = *(v1 + 64);
    sub_229541CB0(*(v1 + 96), &off_283CE8678);
    (*(v12 + 16))(v11, v14, v13);
    v16 = v15;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v1 + 144);
    v20 = *(v1 + 152);
    v22 = *(v1 + 128);
    v23 = *(v1 + 136);
    v24 = *(v1 + 104);
    v25 = *(v1 + 112);
    if (v19)
    {
      v44 = *(v1 + 128);
      v26 = *(v1 + 64);
      v41 = *(v1 + 152);
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v27 = 136315394;
      v45[0] = v43;
      v45[1] = 91;
      v45[2] = 0xE100000000000000;
      v28 = v26;
      v42 = v24;
      v29 = [v28 description];
      v40 = v18;
      v30 = sub_22A4DD5EC();
      v32 = v31;

      MEMORY[0x22AAD08C0](v30, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(91, 0xE100000000000000, v45);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_22A4DE5CC();
      v36 = v35;
      (*(v21 + 8))(v41, v23);
      v37 = sub_2295A3E30(v34, v36, v45);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_229538000, v17, v40, "%s Failed to find accessory with: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v25 + 8))(v44, v42);
    }

    else
    {

      (*(v21 + 8))(v20, v23);
      (*(v25 + 8))(v22, v24);
    }

    type metadata accessor for HMError(0);
    *(v1 + 24) = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    *(v1 + 32) = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
    goto LABEL_12;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  *(v1 + 176) = v5;
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = *(v1 + 80);
  if (v6)
  {
    v7 = [v6 uuid];
    sub_22A4DB79C();

    v8 = swift_task_alloc();
    *(v1 + 184) = v8;
    *v8 = v1;
    v8[1] = sub_22987DF44;
    v9 = *(v1 + 160);

    return sub_2295A7128(v9);
  }

  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v39 = *(v1 + 168);
  sub_22956DFF4(*(v1 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8FC();

LABEL_12:

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_22987DF44()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_22987E1AC;
  }

  else
  {
    v5 = sub_22987E0B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22987E0B4()
{
  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  sub_22956DFF4(*(v0 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8FC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22987E1AC()
{
  v45 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[10];
  v4 = v0[8];
  sub_229541CB0(v0[12], &off_283CE8678);
  v5 = v3;
  v6 = v4;
  v7 = v2;
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v38 = v0[22];
    v39 = v0[24];
    v41 = v0[14];
    v42 = v0[13];
    v43 = v0[15];
    v11 = v0[10];
    v12 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136315906;
    v44[0] = v40;
    v44[1] = 91;
    v44[2] = 0xE100000000000000;
    v15 = v12;
    v16 = [v15 description];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v44);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = [v38 shortDescription];
    v22 = sub_22A4DD5EC();
    v24 = v23;

    v25 = sub_2295A3E30(v22, v24, v44);

    *(v13 + 14) = v25;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v11;
    *v14 = v11;
    *(v13 + 32) = 2112;
    v26 = v11;
    v27 = v39;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v28;
    v14[1] = v28;
    _os_log_impl(&dword_229538000, v9, v10, "%s Failed to move accessory: %s to room: %@ with error: %@", v13, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v30 = v0[14];
    v29 = v0[15];
    v31 = v0[13];

    (*(v30 + 8))(v29, v31);
  }

  v32 = v0[24];
  v33 = v0[21];
  v34 = v0[10];
  v0[5] = v32;
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8EC();

  v36 = v0[1];

  return v36();
}

void sub_22987E564(void *a1, void *a2, void *a3, void *a4)
{
  v88 = a4;
  v89 = a3;
  v86 = a2;
  v6 = sub_22A4DD07C();
  v85 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v79 - v9;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [a1 uuid];
  sub_22A4DB79C();

  v16 = sub_22A4DB77C();
  v19 = *(v11 + 8);
  v18 = (v11 + 8);
  v17 = v19;
  (v19)(v13, v10);
  v20 = [v14 findHomeWithModelID_];

  v92 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v21 = v90;
    v22 = [v86 uuid];
    sub_22A4DB79C();

    v23 = sub_22A4DB77C();
    (v17)(v13, v10);
    v82 = v21;
    v24 = [v21 findAccessoriesRelationOfTypeHAPAccessoryWithModelID_];

    v87 = v6;
    if (v24)
    {
      v25 = v24;
      v26 = [v86 services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v27 = sub_22A4DD83C();

      if (v27 >> 62)
      {
        goto LABEL_19;
      }

      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v24; v28; i = v25)
      {
        v30 = 0;
        v25 = v27 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x22AAD13F0](v30, v27);
          }

          else
          {
            if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v31 = *(v27 + 8 * v30 + 32);
          }

          v32 = v31;
          v6 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v90 = v31;
          sub_22987EF6C(&v90, i, v89, v88);

          ++v30;
          v33 = v6 == v28;
          v6 = v87;
          if (v33)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v28 = sub_22A4DE0EC();
      }

LABEL_20:

      v59 = v84;
      sub_229541CB0(v88, &off_283CE8678);
      v60 = v89;
      v61 = v86;
      v62 = sub_22A4DD05C();
      v63 = sub_22A4DDCDC();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v89 = i;
        v65 = v64;
        v66 = swift_slowAlloc();
        v92 = v66;
        *v65 = 136315394;
        v90 = 91;
        v91 = 0xE100000000000000;
        v67 = v60;
        LODWORD(v88) = v63;
        v68 = v67;
        v69 = [v67 description];
        v70 = sub_22A4DD5EC();
        v72 = v71;

        MEMORY[0x22AAD08C0](v70, v72);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v73 = sub_2295A3E30(v90, v91, &v92);

        *(v65 + 4) = v73;
        *(v65 + 12) = 2080;
        v74 = [v61 shortDescription];
        v75 = sub_22A4DD5EC();
        v77 = v76;

        v78 = sub_2295A3E30(v75, v77, &v92);

        *(v65 + 14) = v78;
        _os_log_impl(&dword_229538000, v62, v88, "%s Did load accessory: %s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v66, -1, -1);
        MEMORY[0x22AAD4E50](v65, -1, -1);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v85 + 8))(v84, v87);
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v85 + 8))(v59, v6);
      }
    }

    else
    {
      v80 = v10;
      v81 = v13;
      v84 = v17;
      v34 = v83;
      sub_229541CB0(v88, &off_283CE8678);
      v35 = v89;
      v36 = v86;
      v37 = sub_22A4DD05C();
      v38 = sub_22A4DDCEC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v92 = v88;
        *v39 = 136315394;
        v90 = 91;
        v91 = 0xE100000000000000;
        v40 = v35;
        v41 = [v40 description];
        v42 = sub_22A4DD5EC();
        v89 = v18;
        v43 = v38;
        v44 = v42;
        v46 = v45;

        MEMORY[0x22AAD08C0](v44, v46);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v47 = sub_2295A3E30(v90, v91, &v92);

        *(v39 + 4) = v47;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v36;
        v48 = v86;
        *v86 = v36;
        v49 = v36;
        _os_log_impl(&dword_229538000, v37, v43, "%s Did not find accessory: %@", v39, 0x16u);
        sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v48, -1, -1);
        v50 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x22AAD4E50](v50, -1, -1);
        MEMORY[0x22AAD4E50](v39, -1, -1);
      }

      (*(v85 + 8))(v34, v87);
      type metadata accessor for HMError(0);
      v92 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v52;
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_22A4DE1FC();

      v90 = 0xD000000000000017;
      v91 = 0x800000022A59A320;
      v53 = [v36 uuid];
      v54 = v81;
      sub_22A4DB79C();

      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = v80;
      v56 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v56);

      (v84)(v54, v55);
      v57 = v90;
      v58 = v91;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v57;
      *(inited + 56) = v58;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_22987EF6C(id *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = [*a1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v17 = v10;
      sub_22987F0C0(&v17, a2, v5, a3, a4);

      if (!v4)
      {
        ++v9;
        if (v12 != i)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_22987F0C0(void **a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v115 = sub_22A4DD07C();
  v114 = *(v115 - 8);
  v10 = MEMORY[0x28223BE20](v115);
  v112 = (&v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v105 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v105 - v15);
  v17 = *a1;
  v18 = [a3 instanceID];
  v19 = [a2 findServicesRelationWithInstanceID_];

  if (v19)
  {
    v20 = v19;
    v21 = [v17 instanceID];
    v22 = [v20 findCharacteristicsRelationOfTypeCharacteristicWithInstanceID_];

    if (v22)
    {
      v23 = [v22 authorizationData];
      if (!v23)
      {
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v24 = v23;
      v25 = sub_22A4DB62C();
      v27 = v26;

      v28 = v113;
      sub_22970F850(v25, v27);
      if (v28)
      {
        v113 = v28;
        v29 = v112;
        sub_229541CB0(a5, &off_283CE8678);
        v30 = a4;
        v31 = v29;
        v32 = v17;
        sub_22956C148(v25, v27);
        v33 = sub_22A4DD05C();
        v34 = sub_22A4DDCEC();

        sub_2295798D4(v25, v27);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v108 = v27;
          v36 = v35;
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v118 = v110;
          *v36 = 136315650;
          v116 = 91;
          v117 = 0xE100000000000000;
          v37 = v30;
          v38 = [v37 description];
          v107 = v34;
          v39 = v38;
          v40 = sub_22A4DD5EC();
          v111 = v20;
          v41 = v40;
          v106 = v33;
          v43 = v42;

          MEMORY[0x22AAD08C0](v41, v43);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v44 = sub_2295A3E30(v116, v117, &v118);

          *(v36 + 4) = v44;
          *(v36 + 12) = 2080;
          v45 = v108;
          sub_22956C148(v25, v108);
          v46 = sub_22A4DB5AC();
          v48 = v47;
          sub_2295798D4(v25, v45);
          v49 = sub_2295A3E30(v46, v48, &v118);

          *(v36 + 14) = v49;
          *(v36 + 22) = 2112;
          *(v36 + 24) = v32;
          v50 = v109;
          *v109 = v32;
          v51 = v32;
          v52 = v106;
          _os_log_impl(&dword_229538000, v106, v107, "%s Failed to deserialize: %s for %@", v36, 0x20u);
          sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v50, -1, -1);
          v53 = v110;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v53, -1, -1);
          MEMORY[0x22AAD4E50](v36, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_2295798D4(v25, v45);
          return (*(v114 + 8))(v112, v115);
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_2295798D4(v25, v27);

          return (*(v114 + 8))(v31, v115);
        }
      }

      sub_2295798D4(v25, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      v111 = v20;
      sub_229541CB0(a5, &off_283CE8678);
      v78 = a4;
      v79 = v17;
      v80 = a3;
      v81 = sub_22A4DD05C();
      v82 = sub_22A4DDCEC();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        LODWORD(v110) = v82;
        v84 = v83;
        v85 = swift_slowAlloc();
        v113 = v16;
        v86 = v85;
        v112 = swift_slowAlloc();
        v118 = v112;
        *v84 = 136315650;
        v116 = 91;
        v117 = 0xE100000000000000;
        v87 = v78;
        v88 = [v87 description];
        v89 = sub_22A4DD5EC();
        v91 = v90;

        MEMORY[0x22AAD08C0](v89, v91);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v92 = sub_2295A3E30(v116, v117, &v118);

        *(v84 + 4) = v92;
        *(v84 + 12) = 2112;
        v93 = [v79 instanceID];
        *(v84 + 14) = v93;
        *(v84 + 22) = 2112;
        *(v84 + 24) = v80;
        *v86 = v93;
        v86[1] = v80;
        v94 = v80;
        _os_log_impl(&dword_229538000, v81, v110, "%s Did not find characteristic for %@ in %@", v84, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v86, -1, -1);
        v95 = v112;
        __swift_destroy_boxed_opaque_existential_0(v112);
        MEMORY[0x22AAD4E50](v95, -1, -1);
        MEMORY[0x22AAD4E50](v84, -1, -1);

        (*(v114 + 8))(v113, v115);
      }

      else
      {

        (*(v114 + 8))(v16, v115);
      }

      type metadata accessor for HMError(0);
      v118 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v97;
      v116 = 0;
      v117 = 0xE000000000000000;
      sub_22A4DE1FC();

      v116 = 0xD00000000000001CLL;
      v117 = 0x800000022A59A360;
      v98 = [v79 instanceID];
      v99 = [v98 description];
      v100 = sub_22A4DD5EC();
      v102 = v101;

      MEMORY[0x22AAD08C0](v100, v102);

      v103 = v116;
      v104 = v117;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v103;
      *(inited + 56) = v104;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  sub_229541CB0(a5, &off_283CE8678);
  v55 = a4;
  v56 = a3;
  v57 = sub_22A4DD05C();
  v58 = sub_22A4DDCEC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v118 = v113;
    *v59 = 136315394;
    v116 = 91;
    v117 = 0xE100000000000000;
    v60 = v55;
    v61 = [v60 description];
    v62 = sub_22A4DD5EC();
    v64 = v63;

    MEMORY[0x22AAD08C0](v62, v64);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v65 = sub_2295A3E30(v116, v117, &v118);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v56;
    v66 = v112;
    *v112 = v56;
    v67 = v56;
    _os_log_impl(&dword_229538000, v57, v58, "%s Did not find service for %@", v59, 0x16u);
    sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v66, -1, -1);
    v68 = v113;
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x22AAD4E50](v68, -1, -1);
    MEMORY[0x22AAD4E50](v59, -1, -1);
  }

  (*(v114 + 8))(v14, v115);
  type metadata accessor for HMError(0);
  v118 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_22A576180;
  *(v69 + 32) = sub_22A4DD5EC();
  *(v69 + 40) = v70;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_22A4DE1FC();

  v116 = 0xD000000000000015;
  v117 = 0x800000022A59A340;
  v71 = [v56 instanceID];
  v72 = [v71 description];
  v73 = sub_22A4DD5EC();
  v75 = v74;

  MEMORY[0x22AAD08C0](v73, v75);

  v76 = v116;
  v77 = v117;
  *(v69 + 72) = MEMORY[0x277D837D0];
  *(v69 + 48) = v76;
  *(v69 + 56) = v77;
  sub_22956AD8C(v69);
  swift_setDeallocating();
  sub_22953EAE4(v69 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  return swift_willThrow();
}

void sub_22987FD90(void *a1, void *a2, char *a3, void *a4, void *a5)
{
  v68 = a5;
  v69 = a3;
  v70 = a4;
  v66 = a2;
  v7 = sub_22A4DD07C();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [a1 uuid];
  sub_22A4DB79C();

  v16 = sub_22A4DB77C();
  v19 = *(v11 + 8);
  v17 = (v11 + 8);
  v18 = v19;
  v19(v13, v10);
  v20 = [v14 findHomeWithModelID_];

  v73 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v5)
  {
    v21 = v71;
    v22 = [v66 uuid];
    sub_22A4DB79C();

    v23 = sub_22A4DB77C();
    v18(v13, v10);
    v24 = [v21 findAccessoriesRelationOfTypeHAPAccessoryWithModelID_];

    v67 = v24;
    if (v24)
    {
      v25 = v66;
      v26 = [v66 services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v27 = sub_22A4DD83C();

      if (v27 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
      {
        v29 = v70;
        v63 = v21;
        if (!i)
        {
          break;
        }

        v30 = 0;
        v21 = (v27 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x22AAD13F0](v30, v27);
          }

          else
          {
            if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v31 = *(v27 + 8 * v30 + 32);
          }

          v32 = v31;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v71 = v31;
          sub_22988059C(&v71, v67, v69, v25, v68);

          ++v30;
          v29 = v70;
          if (v33 == i)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_14:

      [v29 save];
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v21;
      v67 = v18;
      v70 = v10;
      v35 = v9;
      sub_229541CB0(v68, &off_283CE8678);
      v36 = v69;
      v37 = v66;
      v38 = sub_22A4DD05C();
      v39 = sub_22A4DDCEC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v63 = v34;
        v69 = v13;
        v41 = v40;
        v62 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v41 = 136315394;
        v71 = 91;
        v72 = 0xE100000000000000;
        v42 = v36;
        v43 = [v42 description];
        v68 = v17;
        v44 = v39;
        v45 = v43;
        v46 = sub_22A4DD5EC();
        v47 = v37;
        v49 = v48;

        MEMORY[0x22AAD08C0](v46, v49);
        v37 = v47;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v50 = sub_2295A3E30(v71, v72, &v73);

        *(v41 + 4) = v50;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v47;
        v51 = v62;
        *v62 = v47;
        v52 = v47;
        _os_log_impl(&dword_229538000, v38, v44, "%s Did not find accessory: %@", v41, 0x16u);
        sub_22953EAE4(v51, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v51, -1, -1);
        v53 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x22AAD4E50](v53, -1, -1);
        v54 = v41;
        v13 = v69;
        MEMORY[0x22AAD4E50](v54, -1, -1);

        (*(v64 + 8))(v35, v65);
      }

      else
      {

        (*(v64 + 8))(v9, v65);
      }

      type metadata accessor for HMError(0);
      v73 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v56;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_22A4DE1FC();

      v71 = 0xD000000000000018;
      v72 = 0x800000022A59A3D0;
      v57 = [v37 uuid];
      sub_22A4DB79C();

      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v58 = v70;
      v59 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v59);

      v67(v13, v58);
      v60 = v71;
      v61 = v72;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v60;
      *(inited + 56) = v61;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22988059C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = *a1;
  v7 = [*a1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v19 = v11;
      sub_2298806F4(&v19, a2, v6, a3, a4, a5);

      if (!v5)
      {
        ++v10;
        if (v13 != i)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2298806F4(void **a1, void *a2, void *a3, void *a4, void *a5, id a6)
{
  v145 = a5;
  v147 = sub_22A4DD07C();
  v146 = *(v147 - 8);
  v11 = MEMORY[0x28223BE20](v147);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v141 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v140 = &v133 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v133 - v18;
  v20 = *a1;
  v21 = [a3 instanceID];
  v22 = [a2 findServicesRelationWithInstanceID_];

  if (v22)
  {
    v143 = a6;
    v23 = [v20 instanceID];
    v142 = v22;
    v24 = [v22 findCharacteristicsRelationOfTypeCharacteristicWithInstanceID_];

    v25 = v20;
    if (v24)
    {
      v141 = v24;
      sub_229541CB0(v143, &off_283CE8678);
      v26 = a4;
      v27 = v20;
      v28 = sub_22A4DD05C();
      v29 = sub_22A4DDCDC();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v147;
      v139 = v26;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v150 = v138;
        *v32 = 136315394;
        v148 = 91;
        v149 = 0xE100000000000000;
        v33 = v26;
        v34 = v27;
        v35 = [v33 description];
        v36 = sub_22A4DD5EC();
        v38 = v37;

        v27 = v34;
        MEMORY[0x22AAD08C0](v36, v38);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v39 = sub_2295A3E30(v148, v149, &v150);

        *(v32 + 4) = v39;
        *(v32 + 12) = 2112;
        *(v32 + 14) = v34;
        v40 = v137;
        *v137 = v34;
        v41 = v34;
        _os_log_impl(&dword_229538000, v28, v29, "%s Did serialize %@", v32, 0x16u);
        sub_22953EAE4(v40, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v40, -1, -1);
        v42 = v138;
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v32, -1, -1);

        v43 = *(v146 + 8);
        v43(v19, v147);
      }

      else
      {

        v43 = *(v146 + 8);
        v43(v19, v31);
      }

      if (qword_27D87B8A0 != -1)
      {
        swift_once();
      }

      v92 = qword_27D8AB630;
      v93 = [v145 identifier];
      v94 = sub_22A4DD5EC();
      v96 = v95;

      v97 = [v92 workQueue];
      if (v97)
      {
        v98 = v97;
        MEMORY[0x28223BE20](v97);
        *(&v133 - 4) = v92;
        *(&v133 - 3) = v94;
        *(&v133 - 2) = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
        sub_22A4DDD9C();

        v99 = v148;
        if (v148)
        {
          v144 = v27;
          v100 = [v145 uniqueIdentifier];
          if (!v100)
          {
            sub_22A4DD5EC();
            v100 = sub_22A4DD5AC();
          }

          v101 = HAPInstanceIDFromUniqueIdentifier();

          if (v101)
          {
            v102 = sub_2296136D4(v101);
            if (v102)
            {
              v103 = v102;
              v104 = [v144 instanceID];
              v105 = [v103 characteristicWithInstanceID_];

              if (v105)
              {
                v106 = sub_229614EA0();
                if ((v107 & 1) == 0)
                {
                  v145 = v105;
                  v138 = v106;
                  sub_229541CB0(v143, &off_283CE8678);
                  v108 = v139;
                  v109 = v144;
                  v110 = sub_22A4DD05C();
                  v111 = sub_22A4DDCCC();
                  v143 = v109;

                  LODWORD(v139) = v111;
                  if (os_log_type_enabled(v110, v111))
                  {
                    v112 = swift_slowAlloc();
                    v137 = v103;
                    v113 = v112;
                    v135 = swift_slowAlloc();
                    v136 = swift_slowAlloc();
                    v150 = v136;
                    *v113 = 136315650;
                    v148 = 91;
                    v149 = 0xE100000000000000;
                    v114 = v108;
                    v134 = v110;
                    v115 = v114;
                    v116 = [v114 description];
                    v117 = sub_22A4DD5EC();
                    v119 = v118;

                    MEMORY[0x22AAD08C0](v117, v119);

                    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                    v120 = sub_2295A3E30(v148, v149, &v150);

                    *(v113 + 4) = v120;
                    *(v113 + 12) = 2112;
                    v121 = v143;
                    *(v113 + 14) = v143;
                    v122 = v135;
                    *v135 = v121;
                    *(v113 + 22) = 2048;
                    *(v113 + 24) = v138;
                    v123 = v121;
                    v124 = v134;
                    _os_log_impl(&dword_229538000, v134, v139, "%s Did update characteristic: %@ to update delay: %fs", v113, 0x20u);
                    sub_22953EAE4(v122, &qword_27D87D7D0, &unk_22A578D90);
                    MEMORY[0x22AAD4E50](v122, -1, -1);
                    v125 = v136;
                    __swift_destroy_boxed_opaque_existential_0(v136);
                    MEMORY[0x22AAD4E50](v125, -1, -1);
                    v126 = v113;
                    v103 = v137;
                    MEMORY[0x22AAD4E50](v126, -1, -1);

                    v43(v140, v147);
                    v127 = v121;
                  }

                  else
                  {

                    v43(v140, v147);
                    v127 = v143;
                  }

                  v128 = sub_22A4DDB3C();
                  swift_beginAccess();
                  objc_setAssociatedObject(v127, &unk_27D8800E0, v128, 1);
                  swift_endAccess();

                  v99 = v101;
                  v101 = v103;
                  v103 = v145;
                  v105 = v128;
                }

                v99 = v101;
                v101 = v103;
              }

              else
              {
                v105 = v103;
              }

              v99 = v101;
              v101 = v105;
            }
          }

          else
          {
            v101 = v99;
          }
        }

        v129 = sub_22970F1B4();
        v131 = v130;
        v132 = sub_22A4DB61C();
        sub_2295798D4(v129, v131);
        [v141 setAuthorizationData_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v67 = v141;
      sub_229541CB0(v143, &off_283CE8678);
      v68 = a4;
      v69 = a3;
      v70 = sub_22A4DD05C();
      v71 = sub_22A4DDCEC();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v150 = v145;
        *v72 = 136315394;
        v148 = 91;
        v149 = 0xE100000000000000;
        v73 = v68;
        LODWORD(v143) = v71;
        v74 = v73;
        v75 = [v73 description];
        v76 = sub_22A4DD5EC();
        v78 = v77;

        MEMORY[0x22AAD08C0](v76, v78);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v79 = sub_2295A3E30(v148, v149, &v150);

        *(v72 + 4) = v79;
        *(v72 + 12) = 2112;
        *(v72 + 14) = v69;
        v80 = v144;
        *v144 = v69;
        v81 = v69;
        _os_log_impl(&dword_229538000, v70, v143, "%s Did not find characteristic for %@", v72, 0x16u);
        sub_22953EAE4(v80, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v80, -1, -1);
        v82 = v145;
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x22AAD4E50](v82, -1, -1);
        MEMORY[0x22AAD4E50](v72, -1, -1);
      }

      (*(v146 + 8))(v67, v147);
      type metadata accessor for HMError(0);
      v150 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v84;
      v148 = 0;
      v149 = 0xE000000000000000;
      sub_22A4DE1FC();

      v148 = 0xD00000000000001DLL;
      v149 = 0x800000022A59A410;
      v85 = [v25 instanceID];
      v86 = [v85 description];
      v87 = sub_22A4DD5EC();
      v89 = v88;

      MEMORY[0x22AAD08C0](v87, v89);

      v90 = v148;
      v91 = v149;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v90;
      *(inited + 56) = v91;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_229541CB0(a6, &off_283CE8678);
    v44 = a4;
    v45 = a3;
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v150 = v145;
      *v48 = 136315394;
      v148 = 91;
      v149 = 0xE100000000000000;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v148, v149, &v150);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v45;
      v55 = v144;
      *v144 = v45;
      v56 = v45;
      _os_log_impl(&dword_229538000, v46, v47, "%s Did not find service for %@", v48, 0x16u);
      sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      v57 = v145;
      __swift_destroy_boxed_opaque_existential_0(v145);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    (*(v146 + 8))(v13, v147);
    type metadata accessor for HMError(0);
    v150 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_22A576180;
    *(v58 + 32) = sub_22A4DD5EC();
    *(v58 + 40) = v59;
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_22A4DE1FC();

    v148 = 0xD000000000000016;
    v149 = 0x800000022A59A3F0;
    v60 = [v45 instanceID];
    v61 = [v60 description];
    v62 = sub_22A4DD5EC();
    v64 = v63;

    MEMORY[0x22AAD08C0](v62, v64);

    v65 = v148;
    v66 = v149;
    *(v58 + 72) = MEMORY[0x277D837D0];
    *(v58 + 48) = v65;
    *(v58 + 56) = v66;
    sub_22956AD8C(v58);
    swift_setDeallocating();
    sub_22953EAE4(v58 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

id sub_229881854(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DB57C();
  v55 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = sub_22A4DD07C();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*&v4[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
  if (result)
  {
    sub_229881D2C(result, a1, a2, 0, 1, MEMORY[0x277D84F90]);
    result = swift_unknownObjectRelease();
    if (!v3)
    {
      v51 = 0;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v17 = v55;
      v18 = *(v55 + 16);
      v50 = v12;
      v18(v12, a1, v8);
      v19 = v54;
      v18(v54, a2, v8);
      v20 = v15;
      v21 = v4;
      v22 = sub_22A4DD05C();
      v23 = sub_22A4DDCCC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58 = v49;
        *v24 = 136315650;
        v56 = 91;
        v57 = 0xE100000000000000;
        v25 = v21;
        v26 = [v25 description];
        v47 = v23;
        v27 = v26;
        v28 = sub_22A4DD5EC();
        v46 = v22;
        v29 = v28;
        v48 = v20;
        v31 = v30;

        MEMORY[0x22AAD08C0](v29, v31);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v32 = sub_2295A3E30(v56, v57, &v58);

        *(v24 + 4) = v32;
        *(v24 + 12) = 2080;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v33 = v50;
        v34 = sub_22A4DE5CC();
        v36 = v35;
        v37 = *(v17 + 8);
        v37(v33, v8);
        v38 = sub_2295A3E30(v34, v36, &v58);

        *(v24 + 14) = v38;
        *(v24 + 22) = 2080;
        v39 = sub_22A4DE5CC();
        v41 = v40;
        v37(v19, v8);
        v42 = sub_2295A3E30(v39, v41, &v58);

        *(v24 + 24) = v42;
        v43 = v46;
        _os_log_impl(&dword_229538000, v46, v47, "%s Copied contents for at %s to %s", v24, 0x20u);
        v44 = v49;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v44, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);

        return (*(v52 + 8))(v48, v53);
      }

      else
      {

        v45 = *(v17 + 8);
        v45(v19, v8);
        v45(v50, v8);
        return (*(v52 + 8))(v20, v53);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229881D2C(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  v130 = a6;
  v116 = a5;
  v114 = a4;
  v122 = a3;
  v136[2] = *MEMORY[0x277D85DE8];
  v117 = sub_22A4DD07C();
  v115 = *(v117 - 8);
  v12 = MEMORY[0x28223BE20](v117);
  v133 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v110 - v15;
  MEMORY[0x28223BE20](v14);
  v113 = &v110 - v16;
  v17 = sub_22A4DB57C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v111 = &v110 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = &v110 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v112 = &v110 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v128 = &v110 - v29;
  MEMORY[0x28223BE20](v28);
  v118 = &v110 - v30;
  v135 = 0;
  sub_22A4DB52C();
  v31 = sub_22A4DD5AC();

  v123 = a1;
  v32 = [a1 fileExistsAtPath:v31 isDirectory:&v135];

  if (!v32)
  {
    sub_229541CB0(v9, &off_283CE8678);
    v39 = sub_22A4DDD0C();
    (*(v18 + 16))(v21, a2, v17);
    v40 = sub_22A4DD05C();
    if (os_log_type_enabled(v40, v39))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v136[0] = v42;
      *v41 = 136315138;
      v43 = sub_22A4DB52C();
      v44 = v17;
      v46 = v45;
      (*(v18 + 8))(v21, v44);
      v47 = sub_2295A3E30(v43, v46, v136);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_229538000, v40, v39, "No source found at: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v21, v17);
    }

    return (*(v115 + 8))(v133, v117);
  }

  v127 = v9;
  v129 = v18;
  if (v135 == 1)
  {
    v33 = sub_22A4DB4EC();
    v136[0] = 0;
    v34 = [v123 contentsOfDirectoryAtURL:v33 includingPropertiesForKeys:0 options:0 error:v136];

    v35 = v136[0];
    v36 = v129;
    v37 = v117;
    if (!v34)
    {
      v80 = v136[0];
      sub_22A4DB3EC();

      return swift_willThrow();
    }

    v133 = sub_22A4DD83C();
    v38 = v35;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
    v36 = v129;
    v48 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22A576180;
    v50 = *(v36 + 16);
    v133 = v49;
    v50(v49 + v48, a2, v17);
    v37 = v117;
  }

  v51 = v131;
  v52 = v116;
  v53 = v127;
  v54 = v118;
  if (*(v130 + 16))
  {
    v55 = v133;
    v126 = *(v133 + 2);
    if (v126)
    {
      v56 = 0;
      v119 = (v36 + 8);
      v124 = (v36 + 32);
      v125 = v36 + 16;
      v57 = MEMORY[0x277D84F90];
      v120 = v17;
      do
      {
        if (v56 >= *(v55 + 2))
        {
          __break(1u);
LABEL_49:
          __break(1u);
        }

        v132 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v58 = *(v36 + 72);
        (*(v36 + 16))(v54, &v55[v132 + v58 * v56], v17);
        v136[0] = sub_22A4DB4AC();
        v136[1] = v59;
        MEMORY[0x28223BE20](v136[0]);
        *(&v110 - 2) = v136;
        v60 = sub_22986A5E0(sub_22988F704, (&v110 - 4), v130);

        if (v60)
        {
          v121 = v8;
          v61 = *v124;
          (*v124)(v128, v54, v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_229583B44(0, *(v57 + 2) + 1, 1);
            v54 = v118;
            v57 = v134;
          }

          v64 = *(v57 + 2);
          v63 = *(v57 + 3);
          if (v64 >= v63 >> 1)
          {
            sub_229583B44((v63 > 1), v64 + 1, 1);
            v54 = v118;
            v57 = v134;
          }

          *(v57 + 2) = v64 + 1;
          v17 = v120;
          v61(&v57[v132 + v64 * v58], v128, v120);
          v8 = v121;
        }

        else
        {
          (*v119)(v54, v17);
        }

        ++v56;
        v53 = v127;
        v36 = v129;
        v51 = v131;
        v55 = v133;
      }

      while (v126 != v56);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    v133 = v57;
    v37 = v117;
    v52 = v116;
  }

  if (v114)
  {
    v66 = sub_22A4DB4EC();
    v67 = [v123 fileExistsAtURL_];

    if (v67)
    {
      sub_229541CB0(v53, &off_283CE8678);
      v68 = sub_22A4DDD0C();
      (*(v36 + 16))(v112, v122, v17);
      v69 = sub_22A4DD05C();
      LODWORD(v132) = v68;
      if (os_log_type_enabled(v69, v68))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v136[0] = v71;
        *v70 = 136315138;
        v72 = v112;
        v73 = sub_22A4DB52C();
        v74 = v17;
        v76 = v75;
        (*(v129 + 8))(v72, v74);
        v77 = sub_2295A3E30(v73, v76, v136);
        v17 = v74;
        v53 = v127;

        *(v70 + 4) = v77;
        _os_log_impl(&dword_229538000, v69, v132, "Removing existing file at: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v78 = v71;
        v36 = v129;
        MEMORY[0x22AAD4E50](v78, -1, -1);
        v79 = v70;
        v52 = v116;
        MEMORY[0x22AAD4E50](v79, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v112, v17);
      }

      v37 = v117;
      (*(v115 + 8))(v113, v117);
      v81 = sub_22A4DB4EC();
      v136[0] = 0;
      v82 = [v123 removeItemAtURL:v81 error:v136];

      v83 = v136[0];
      if (!v82)
      {
LABEL_46:
        v109 = v83;

        sub_22A4DB3EC();

        return swift_willThrow();
      }

      v84 = v136[0];
    }
  }

  sub_22A4DB52C();
  v85 = sub_22A4DD5AC();

  v86 = [v123 fileExistsAtPath:v85 isDirectory:&v135];

  if ((v86 & 1) == 0 && v135 == 1)
  {
    sub_229541CB0(v53, &off_283CE8678);
    v87 = sub_22A4DDD0C();
    v88 = v110;
    (*(v36 + 16))(v110, v122, v17);
    v89 = sub_22A4DD05C();
    LODWORD(v132) = v87;
    if (os_log_type_enabled(v89, v87))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v136[0] = v91;
      *v90 = 136315138;
      v92 = v89;
      v93 = sub_22A4DB52C();
      v94 = v88;
      v95 = v17;
      v97 = v96;
      (*(v129 + 8))(v94, v95);
      v98 = sub_2295A3E30(v93, v97, v136);
      v17 = v95;

      *(v90 + 4) = v98;
      _os_log_impl(&dword_229538000, v92, v132, "Creating new file at: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      v99 = v91;
      v36 = v129;
      MEMORY[0x22AAD4E50](v99, -1, -1);
      v100 = v90;
      v52 = v116;
      MEMORY[0x22AAD4E50](v100, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v88, v17);
    }

    (*(v115 + 8))(v51, v37);
    v101 = sub_22A4DB4EC();
    v136[0] = 0;
    v102 = [v123 createDirectoryAtURL:v101 withIntermediateDirectories:1 attributes:0 error:v136];

    v83 = v136[0];
    if (v102)
    {
      v103 = v136[0];
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_39:
  v104 = v133;
  v105 = *(v133 + 2);
  if (!v105)
  {
  }

  v106 = 0;
  v107 = (v36 + 8);
  v108 = v111;
  while (1)
  {
    if (v106 >= *(v104 + 2))
    {
      goto LABEL_49;
    }

    (*(v36 + 16))(v108, &v104[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v106], v17);
    sub_22988D35C(v108, v122, v52 & 1, v123);
    if (v8)
    {
      break;
    }

    ++v106;
    (*v107)(v108, v17);
    v104 = v133;
    if (v105 == v106)
    {
    }
  }

  (*v107)(v108, v17);
}

id sub_229882A04(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB57C();
  v44 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v46 = 0;
  v13 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v14 = [v13 fileManager];
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  sub_22A4DB52C();
  v16 = sub_22A4DD5AC();

  v17 = [v15 fileExistsAtPath:v16 isDirectory:&v46];

  swift_unknownObjectRelease();
  if (v17 && v46 == 1)
  {
    result = [v13 fileManager];
    if (result)
    {
      v19 = result;
      v20 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      sub_22A4DB4FC();
      v21 = v44;
      v22 = *(v44 + 8);
      v22(v10, v5);
      v23 = v43;
      sub_229881D2C(v19, a1, v12, 1, 0, MEMORY[0x277D84F90]);
      if (v23)
      {
        v22(v12, v5);
        return swift_unknownObjectRelease();
      }

      else
      {
        v22(v12, v5);
        swift_unknownObjectRelease();
        sub_22A4DD5EC();
        v26 = v41;
        sub_22A4DD06C();
        v27 = sub_22A4DDCCC();
        v28 = v38;
        (*(v21 + 16))(v38, a1, v5);
        v29 = sub_22A4DD05C();
        if (os_log_type_enabled(v29, v27))
        {
          v30 = swift_slowAlloc();
          LODWORD(v44) = v27;
          v31 = v30;
          v32 = swift_slowAlloc();
          v47[0] = v32;
          *v31 = 136315138;
          sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v33 = sub_22A4DE5CC();
          v34 = v28;
          v36 = v35;
          v22(v34, v5);
          v37 = sub_2295A3E30(v33, v36, v47);

          *(v31 + 4) = v37;
          _os_log_impl(&dword_229538000, v29, v44, "Imported demo mode from %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x22AAD4E50](v32, -1, -1);
          MEMORY[0x22AAD4E50](v31, -1, -1);

          return (*(v39 + 8))(v41, v40);
        }

        else
        {

          v22(v28, v5);
          return (*(v39 + 8))(v26, v40);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    v45 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v25 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A59A6D0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v25, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

void *sub_2298832E8()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v52 - v3;
  v55 = sub_22A4DD07C();
  v5 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v8 = v0;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  v11 = os_log_type_enabled(v9, v10);
  v56 = v4;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136315138;
    v57 = 91;
    v58 = 0xE100000000000000;
    v59 = v13;
    v14 = v8;
    LODWORD(v53) = v10;
    v15 = v14;
    v16 = [v14 description];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v57, v58, &v59);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_229538000, v9, v53, "%s Configuring demo mode manager", v12, 0xCu);
    v21 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v22 = v12;
    v4 = v56;
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v55);
  if (isInternalBuild() && [*&v8[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeV2Enabled])
  {
    v23 = [objc_opt_self() policyWithEntitlements_];
    v24 = *&v8[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22A576190;
    *(v25 + 32) = v23;
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v26 = v23;
    v27 = sub_22A4DD81C();

    [v24 registerForMessage:@"HomeUtilConfigureDemoMode" receiver:v8 policies:v27 selector:sel_handleRequestMessage_];
  }

  sub_229873E90();
  v28 = sub_22A4DD9DC();
  v29 = *(v28 - 1);
  v30 = *(v29 + 56);
  v31 = v29 + 56;
  v30(v4, 1, 1, v28);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_22957F6B0(0, 0, v4, &unk_22A5867E8, v32);

  v55 = *&v8[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  result = [v55 homes];
  if (result)
  {
    v34 = result;
    v52[1] = v31;
    v53 = v30;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v35 = sub_22A4DD83C();

    v54 = v28;
    if (v35 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v37 = 0;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x22AAD13F0](v37, v35);
        }

        else
        {
          if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v38 = *(v35 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v57 = v38;
        sub_229883A74(&v57, v8, ObjectType);

        ++v37;
        if (v40 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    v41 = [v55 hasDemoAccessories];
    v42 = v56;
    v44 = v53;
    v43 = v54;
    if (v41)
    {
      v53(v56, 1, 1, v54);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v8;
      v45[5] = ObjectType;
      v46 = v8;
      sub_22957F3C0(0, 0, v42, &unk_22A586808, v45);
    }

    result = sub_229591558();
    if (v47)
    {
      v48 = result;
      v49 = v47;
      v44(v42, 1, 1, v43);
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = v8;
      v50[5] = v48;
      v50[6] = v49;
      v50[7] = ObjectType;
      v51 = v8;
      sub_22957F3C0(0, 0, v42, &unk_22A5867F8, v50);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229883948()
{
  if (qword_2814028E0 != -1)
  {
    swift_once();
  }

  v1 = qword_281405070;
  *(v0 + 24) = qword_281405070;

  return MEMORY[0x2822009F8](sub_2298839E0, v1, 0);
}

uint64_t sub_2298839E0()
{
  sub_22979704C();
  *(v0 + 32) = 0;

  return MEMORY[0x2822009F8](sub_2296D55C0, 0, 0);
}

void sub_229883A74(void **a1, void *a2, uint64_t a3)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_229878350(*a1);
  if (v3)
  {
    v40 = 0;
    sub_229541CB0(a3, &off_283CE8678);
    v12 = a2;
    v13 = v11;
    v14 = v3;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v17 = 136315650;
      v41 = 91;
      v42 = 0xE100000000000000;
      v18 = v12;
      HIDWORD(v35) = v16;
      v19 = v18;
      v20 = [v18 description];
      v21 = sub_22A4DD5EC();
      v37 = v8;
      v38 = v7;
      v22 = v21;
      v24 = v23;

      MEMORY[0x22AAD08C0](v22, v24);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(v41, v42, &v43);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      v26 = [v13 shortDescription];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      v30 = sub_2295A3E30(v27, v29, &v43);

      *(v17 + 14) = v30;
      *(v17 + 22) = 2112;
      v31 = v3;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v32;
      v33 = v36;
      *v36 = v32;
      _os_log_impl(&dword_229538000, v15, BYTE4(v35), "%s Failed to load demo accessories for home: %s error: %@", v17, 0x20u);
      sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v34 = v39;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);

      (*(v37 + 8))(v10, v38);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_229883DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_229883EDC;

  return sub_2298842B4();
}

uint64_t sub_229883EDC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229884018, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229884018()
{
  v29 = v0;
  v1 = v0[8];
  v2 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v7)
  {
    v27 = v0[6];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 136315394;
    v28[0] = v26;
    v28[1] = 91;
    v28[2] = 0xE100000000000000;
    v14 = v12;
    v25 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v28);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to fixup non demo accessories with error: %@", v13, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v27, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2298842B4()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298843A4, 0, 0);
}

void sub_2298843A4()
{
  v147 = v0;
  if (![*&v0[2][OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeMadeForDemoBundle])
  {
LABEL_85:

    v112 = v0[1];

    v112();
    return;
  }

  v1 = *&v0[2][OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  v0[10] = v1;
  v2 = [v1 homes];
  if (!v2)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    return;
  }

  v3 = v2;
  v0[11] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v4 = sub_22A4DD83C();

  v5 = sub_22986A994(v4);

  v145 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    v0 = &selRef_installedProfileDataWithIdentifier_;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAD13F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isDemoAccessory])
      {
      }

      else
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v7;
      if (v10 == v6)
      {
        v11 = v145;
        v0 = i;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_22A4DE0EC();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_20:
  v0[12] = v11;
  v13 = v0[2];
  v12 = v0[3];

  sub_229541CB0(v12, &off_283CE8678);
  swift_retain_n();
  v14 = v13;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[2];
    v18 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *v18 = 136315394;
    v144 = v137;
    v145 = 91;
    v146 = 0xE100000000000000;
    v19 = v17;
    v20 = [v19 description];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(91, 0xE100000000000000, &v144);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    v25 = v11 & 0x4000000000000000;
    if (v11 < 0 || v25)
    {
      v26 = sub_22A4DE0EC();
    }

    else
    {
      v26 = *(v11 + 16);
    }

    v0 = i;
    v27 = i[9];
    v29 = i[4];
    v28 = i[5];

    *(v18 + 14) = v26;

    _os_log_impl(&dword_229538000, v15, v16, "%s Fixing up %ld non-demo accessories", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v137);
    MEMORY[0x22AAD4E50](v137, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);

    v30 = *(v28 + 1);
    (v30)(v27, v29);
  }

  else
  {
    v31 = v0[9];
    v32 = v0[4];
    v33 = v0[5];

    v30 = *(v33 + 1);
    (v30)(v31, v32);
    v25 = v11 & 0x4000000000000000;
  }

  v0[13] = v11;
  v0[14] = v30;
  if (v11 < 0 || v25)
  {
    goto LABEL_68;
  }

  v34 = *(v11 + 16);
  v0[15] = v34;
  if (v34)
  {
    goto LABEL_29;
  }

  while (1)
  {
LABEL_37:
    v40 = [v0[10] _accessoryOfCurrentDevice];
    if (v40)
    {
      v41 = v40;
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v140 = v42;
        v44 = v0[2];
        v43 = v0[3];

        sub_229541CB0(v43, &off_283CE8678);
        v45 = v44;
        v46 = v41;
        v47 = sub_22A4DD05C();
        v48 = sub_22A4DDCCC();

        v49 = os_log_type_enabled(v47, v48);
        v50 = v0[14];
        v51 = v0[8];
        v52 = v0[4];
        if (v49)
        {
          v138 = v0[14];
          v53 = v0[2];
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 136315394;
          v144 = v55;
          v145 = 91;
          v146 = 0xE100000000000000;
          v56 = v53;
          v57 = [v56 description];
          v131 = v52;
          v133 = v51;
          v58 = sub_22A4DD5EC();
          v60 = v59;

          MEMORY[0x22AAD08C0](v58, v60);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v61 = sub_2295A3E30(v145, v146, &v144);

          *(v54 + 4) = v61;
          *(v54 + 12) = 2080;
          v62 = [v140 shortDescription];
          v63 = sub_22A4DD5EC();
          v65 = v64;

          v66 = sub_2295A3E30(v63, v65, &v144);

          *(v54 + 14) = v66;
          _os_log_impl(&dword_229538000, v47, v48, "%s No fixed up needed for current accessory: %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v55, -1, -1);
          v0 = i;
          MEMORY[0x22AAD4E50](v54, -1, -1);

          (v138)(v133, v131);
        }

        else
        {

          (v50)(v51, v52);
        }

        goto LABEL_85;
      }
    }

    v68 = [v0[10] homes];
    if (!v68)
    {
      goto LABEL_98;
    }

    v69 = v68;
    v70 = sub_22A4DD83C();

    v71 = sub_22986A994(v70);

    if (v71 >> 62)
    {
      break;
    }

    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v72)
    {
      goto LABEL_72;
    }

LABEL_48:
    v73 = 0;
    while (1)
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x22AAD13F0](v73, v71);
      }

      else
      {
        if (v73 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v74 = *(v71 + 8 * v73 + 32);
      }

      v75 = v74;
      v0 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if ([v74 isCurrentDemoAccessory])
      {

        objc_opt_self();
        v76 = swift_dynamicCastObjCClass();
        v0 = i;
        if (!v76)
        {

          goto LABEL_73;
        }

LABEL_59:
        v0[21] = v76;
        v78 = v0[2];
        v77 = v0[3];
        v79 = v76;

        v80 = v75;
        sub_229541CB0(v77, &off_283CE8678);
        v81 = v78;
        v82 = v79;
        v83 = sub_22A4DD05C();
        v84 = sub_22A4DDCCC();

        v85 = os_log_type_enabled(v83, v84);
        v86 = v0[14];
        v87 = v0[7];
        v88 = v0[4];
        if (v85)
        {
          v141 = v0[14];
          v89 = v0[2];
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          *v90 = 136315394;
          v144 = v135;
          v145 = 91;
          v146 = 0xE100000000000000;
          v92 = v89;
          v134 = v87;
          v93 = [v92 description];
          v132 = v88;
          v94 = sub_22A4DD5EC();
          v96 = v95;

          MEMORY[0x22AAD08C0](v94, v96);
          v0 = i;

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v97 = sub_2295A3E30(v145, v146, &v144);

          *(v90 + 4) = v97;
          *(v90 + 12) = 2112;
          *(v90 + 14) = v82;
          *v91 = v82;
          v98 = v82;
          _os_log_impl(&dword_229538000, v83, v84, "%s Fixing up current accessory: %@", v90, 0x16u);
          sub_22953EAE4(v91, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v91, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v135);
          MEMORY[0x22AAD4E50](v135, -1, -1);
          MEMORY[0x22AAD4E50](v90, -1, -1);

          (v141)(v134, v132);
        }

        else
        {

          (v86)(v87, v88);
        }

        v99 = v82;
        v100 = swift_task_alloc();
        v0[22] = v100;
        *v100 = v0;
        *(v100 + 1) = sub_229885E50;
        v101 = v82;
        goto LABEL_92;
      }

      ++v73;
      if (v0 == v72)
      {
        goto LABEL_72;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v102 = sub_22A4DE0EC();
    v0[15] = v102;
    if (v102)
    {
LABEL_29:
      v35 = 0;
      while (1)
      {
        v36 = v0[12];
        if ((v0[13] & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x22AAD13F0](v35, v36);
        }

        else
        {
          if (v35 >= *(v36 + 2))
          {
            goto LABEL_67;
          }

          v37 = *&v36[8 * v35 + 32];
        }

        v38 = v37;
        v0[16] = v37;
        v0[17] = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        v39 = [v37 home];
        v0[18] = v39;
        if (v39)
        {
          break;
        }

        v35 = v0[17];
        if (v35 == v0[15])
        {
          goto LABEL_37;
        }
      }

      v67 = swift_task_alloc();
      v0[19] = v67;
      *v67 = v0;
      *(v67 + 1) = sub_22988524C;

      sub_229813B9C(v38);
      return;
    }
  }

  v72 = sub_22A4DE0EC();
  if (v72)
  {
    goto LABEL_48;
  }

LABEL_72:

  v0 = i;
LABEL_73:
  v103 = v0[12];
  if (v0[15])
  {
    v104 = 0;
    v105 = v0[13] & 0xC000000000000001;
    while (1)
    {
      if (v105)
      {
        v0 = i;
        v106 = MEMORY[0x22AAD13F0](v104, i[12]);
      }

      else
      {
        v0 = i;
        if (v104 >= *(v103 + 2))
        {
          goto LABEL_96;
        }

        v106 = *&v103[8 * v104 + 32];
      }

      v75 = v106;
      v107 = (v104 + 1);
      if (__OFADD__(v104, 1))
      {
        break;
      }

      objc_opt_self();
      v76 = swift_dynamicCastObjCClass();
      if (v76)
      {
        goto LABEL_59;
      }

      v108 = v0[15];

      ++v104;
      if (v107 == v108)
      {
        v0 = i;
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_83:

  v0[24] = 0;
  v109 = [v0[10] _accessoryOfCurrentDevice];
  if (v109)
  {
    v110 = v109;
    objc_opt_self();
    v111 = swift_dynamicCastObjCClass();

    if (v111)
    {
      goto LABEL_85;
    }
  }

  v113 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v114 = v113;
  v115 = sub_22A4DD05C();
  v116 = sub_22A4DDCCC();

  v117 = os_log_type_enabled(v115, v116);
  v118 = v0[14];
  v119 = v0[6];
  v120 = v0[4];
  if (v117)
  {
    v142 = v0[14];
    v121 = v0[2];
    v139 = v0[4];
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v122 = 136315138;
    v144 = v123;
    v145 = 91;
    v146 = 0xE100000000000000;
    v124 = v121;
    v125 = [v124 description];
    v126 = sub_22A4DD5EC();
    v136 = v119;
    v128 = v127;

    v0 = i;
    MEMORY[0x22AAD08C0](v126, v128);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v129 = sub_2295A3E30(v145, v146, &v144);

    *(v122 + 4) = v129;
    _os_log_impl(&dword_229538000, v115, v116, "%s Missing current accessory", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v123);
    MEMORY[0x22AAD4E50](v123, -1, -1);
    MEMORY[0x22AAD4E50](v122, -1, -1);

    (v142)(v136, v139);
  }

  else
  {

    (v118)(v119, v120);
  }

  v130 = swift_task_alloc();
  v0[25] = v130;
  *v130 = v0;
  *(v130 + 1) = sub_229886298;
  v101 = 0;
LABEL_92:

  sub_22987BB90(v101);
}

uint64_t sub_22988524C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {

    v4 = sub_22988643C;
  }

  else
  {

    v4 = sub_22988538C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22988538C()
{
  v111 = v0;

  v2 = *(v0 + 136);
  if (v2 == *(v0 + 120))
  {
LABEL_9:
    v1 = &selRef_auditDuplicatePreviouslyAddedAccessory_;
    v7 = [*(v0 + 80) _accessoryOfCurrentDevice];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v105 = v9;
        v11 = *(v0 + 16);
        v10 = *(v0 + 24);

        sub_229541CB0(v10, &off_283CE8678);
        v12 = v11;
        v13 = v8;
        v14 = sub_22A4DD05C();
        v15 = sub_22A4DDCCC();

        v16 = os_log_type_enabled(v14, v15);
        v17 = *(v0 + 112);
        v18 = *(v0 + 64);
        v19 = *(v0 + 32);
        if (v16)
        {
          v103 = *(v0 + 112);
          v20 = *(v0 + 16);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 136315394;
          v108 = v22;
          v109 = 91;
          v110 = 0xE100000000000000;
          v23 = v20;
          v24 = [v23 description];
          v97 = v19;
          v99 = v18;
          v25 = sub_22A4DD5EC();
          v27 = v26;

          MEMORY[0x22AAD08C0](v25, v27);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v28 = sub_2295A3E30(91, 0xE100000000000000, &v108);

          *(v21 + 4) = v28;
          *(v21 + 12) = 2080;
          v29 = [v105 shortDescription];
          v30 = sub_22A4DD5EC();
          v32 = v31;

          v33 = sub_2295A3E30(v30, v32, &v108);

          *(v21 + 14) = v33;
          _os_log_impl(&dword_229538000, v14, v15, "%s No fixed up needed for current accessory: %s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v22, -1, -1);
          MEMORY[0x22AAD4E50](v21, -1, -1);

          v103(v99, v97);
        }

        else
        {

          v17(v18, v19);
        }

        goto LABEL_54;
      }
    }

    v35 = [*(v0 + 80) homes];
    if (v35)
    {
      v36 = v35;
      v37 = sub_22A4DD83C();

      v2 = sub_22986A994(v37);

      if (v2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v39 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x22AAD13F0](v39, v2);
          }

          else
          {
            if (v39 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v40 = *(v2 + 8 * v39 + 32);
          }

          v41 = v40;
          v42 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if ([v40 isCurrentDemoAccessory])
          {

            objc_opt_self();
            v43 = swift_dynamicCastObjCClass();
            if (!v43)
            {

              goto LABEL_42;
            }

LABEL_31:
            *(v0 + 168) = v43;
            v45 = *(v0 + 16);
            v44 = *(v0 + 24);
            v46 = v43;

            v47 = v41;
            sub_229541CB0(v44, &off_283CE8678);
            v48 = v45;
            v49 = v46;
            v50 = sub_22A4DD05C();
            v51 = sub_22A4DDCCC();

            v52 = os_log_type_enabled(v50, v51);
            v53 = *(v0 + 112);
            v54 = *(v0 + 56);
            v55 = *(v0 + 32);
            if (v52)
            {
              v106 = *(v0 + 112);
              v56 = *(v0 + 16);
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *v57 = 136315394;
              v108 = v101;
              v109 = 91;
              v110 = 0xE100000000000000;
              v59 = v56;
              v100 = v54;
              v60 = [v59 description];
              v98 = v55;
              v61 = sub_22A4DD5EC();
              v63 = v62;

              MEMORY[0x22AAD08C0](v61, v63);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v64 = sub_2295A3E30(91, 0xE100000000000000, &v108);

              *(v57 + 4) = v64;
              *(v57 + 12) = 2112;
              *(v57 + 14) = v49;
              *v58 = v49;
              v65 = v49;
              _os_log_impl(&dword_229538000, v50, v51, "%s Fixing up current accessory: %@", v57, 0x16u);
              sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v58, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v101);
              MEMORY[0x22AAD4E50](v101, -1, -1);
              MEMORY[0x22AAD4E50](v57, -1, -1);

              v106(v100, v98);
            }

            else
            {

              v53(v54, v55);
            }

            v66 = v49;
            v67 = swift_task_alloc();
            *(v0 + 176) = v67;
            *v67 = v0;
            v67[1] = sub_229885E50;
            v68 = v49;
            goto LABEL_61;
          }

          ++v39;
          if (v42 == i)
          {
            goto LABEL_41;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_41:

LABEL_42:
      v69 = *(v0 + 96);
      if (!*(v0 + 120))
      {
LABEL_52:

        *(v0 + 192) = 0;
        v75 = [*(v0 + 80) v1[330]];
        if (!v75 || (v76 = v75, objc_opt_self(), v77 = swift_dynamicCastObjCClass(), v76, !v77))
        {
          v79 = *(v0 + 16);
          sub_229541CB0(*(v0 + 24), &off_283CE8678);
          v80 = v79;
          v81 = sub_22A4DD05C();
          v82 = sub_22A4DDCCC();

          v83 = os_log_type_enabled(v81, v82);
          v84 = *(v0 + 112);
          v85 = *(v0 + 48);
          v86 = *(v0 + 32);
          if (v83)
          {
            v107 = *(v0 + 112);
            v87 = *(v0 + 16);
            v104 = *(v0 + 32);
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *v88 = 136315138;
            v108 = v89;
            v109 = 91;
            v110 = 0xE100000000000000;
            v90 = v87;
            v91 = [v90 description];
            v92 = sub_22A4DD5EC();
            v102 = v85;
            v94 = v93;

            MEMORY[0x22AAD08C0](v92, v94);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v95 = sub_2295A3E30(91, 0xE100000000000000, &v108);

            *(v88 + 4) = v95;
            _os_log_impl(&dword_229538000, v81, v82, "%s Missing current accessory", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x22AAD4E50](v89, -1, -1);
            MEMORY[0x22AAD4E50](v88, -1, -1);

            v107(v102, v104);
          }

          else
          {

            v84(v85, v86);
          }

          v96 = swift_task_alloc();
          *(v0 + 200) = v96;
          *v96 = v0;
          v96[1] = sub_229886298;
          v68 = 0;
LABEL_61:

          sub_22987BB90(v68);
          return;
        }

LABEL_54:

        v78 = *(v0 + 8);

        v78();
        return;
      }

      v70 = 0;
      v71 = *(v0 + 104) & 0xC000000000000001;
      while (1)
      {
        if (v71)
        {
          v72 = MEMORY[0x22AAD13F0](v70, *(v0 + 96));
        }

        else
        {
          if (v70 >= *(v69 + 16))
          {
            goto LABEL_65;
          }

          v72 = *(v69 + 32 + 8 * v70);
        }

        v41 = v72;
        v73 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          goto LABEL_31;
        }

        v74 = *(v0 + 120);

        ++v70;
        if (v73 == v74)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v3 = *(v0 + 96);
    if ((*(v0 + 104) & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAD13F0](v2, v3);
    }

    else
    {
      if (v2 >= *(v3 + 16))
      {
        goto LABEL_39;
      }

      v4 = *(v3 + 8 * v2 + 32);
    }

    v5 = v4;
    *(v0 + 128) = v4;
    *(v0 + 136) = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v6 = [v4 home];
    *(v0 + 144) = v6;
    if (v6)
    {
      break;
    }

    v2 = *(v0 + 136);
    if (v2 == *(v0 + 120))
    {
      goto LABEL_9;
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 152) = v34;
  *v34 = v0;
  v34[1] = sub_22988524C;

  sub_229813B9C(v5);
}

uint64_t sub_229885E50()
{
  v2 = *(*v1 + 168);
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2298864CC;
  }

  else
  {
    v3 = sub_229885F7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229885F7C()
{
  v29 = v0;

  v1 = *(v0 + 168);
  *(v0 + 192) = v1;
  v2 = [*(v0 + 80) _accessoryOfCurrentDevice];
  if (v2 && (v3 = v2, objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, v4))
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 16);
    sub_229541CB0(*(v0 + 24), &off_283CE8678);
    v8 = v7;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCCC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 112);
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    if (v11)
    {
      v27 = *(v0 + 112);
      v15 = *(v0 + 16);
      v26 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315138;
      v28[0] = v17;
      v28[1] = 91;
      v28[2] = 0xE100000000000000;
      v18 = v15;
      v19 = [v18 description];
      v20 = sub_22A4DD5EC();
      v25 = v13;
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(91, 0xE100000000000000, v28);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_229538000, v9, v10, "%s Missing current accessory", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);

      v27(v25, v26);
    }

    else
    {

      v12(v13, v14);
    }

    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_229886298;

    return sub_22987BB90(0);
  }
}

uint64_t sub_229886298()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_229886560;
  }

  else
  {
    v2 = sub_2298863AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2298863AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22988643C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298864CC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229886560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298865F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_22A4DD07C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298866C0, 0, 0);
}

uint64_t sub_2298866C0()
{
  v28 = v0;
  v1 = v0[2];
  sub_229541CB0(v0[5], &off_283CE8678);
  v2 = v1;

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  if (v5)
  {
    v24 = v0[3];
    v25 = v0[4];
    v9 = v0[2];
    v26 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v27[0] = v11;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_22A4DD5EC();
    v23 = v6;
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v27);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(v24, v25, v27);
    _os_log_impl(&dword_229538000, v3, v4, "%s Updating demo mode with demo configuration for locale: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    v18 = *(v7 + 8);
    v18(v23, v26);
  }

  else
  {

    v18 = *(v7 + 8);
    v18(v6, v8);
  }

  v0[10] = v18;
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_229886960;
  v21 = v0[3];
  v20 = v0[4];

  return sub_22959A2A4(v21, v20);
}

uint64_t sub_229886960()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229886AA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229886AA4()
{
  v32 = v0;
  v1 = v0[12];
  v2 = v0[2];
  sub_229541CB0(v0[5], &off_283CE8678);
  v3 = v2;

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];
  if (v7)
  {
    v25 = v0[3];
    v26 = v0[4];
    v30 = v0[10];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315650;
    v31[0] = v29;
    v31[1] = 91;
    v31[2] = 0xE100000000000000;
    v15 = v12;
    v28 = v10;
    v16 = [v15 description];
    v27 = v11;
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v31);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(v25, v26, v31);
    *(v13 + 22) = 2112;
    v21 = v8;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v22;
    *v14 = v22;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to update non demo mode configuration for %s with error: %@", v13, 0x20u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v30(v28, v27);
  }

  else
  {

    v9(v10, v11);
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_229886DE8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v92 = &v88[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v88[-v14];
  v93 = ObjectType;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v16 = v4;

  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();

  v19 = os_log_type_enabled(v17, v18);
  v96 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v95 = v7;
    v21 = v20;
    v91 = swift_slowAlloc();
    v99 = v91;
    *v21 = 136315394;
    v97 = 91;
    v98 = 0xE100000000000000;
    v22 = v16;
    v90 = v17;
    v23 = v22;
    v24 = [v22 description];
    v25 = sub_22A4DD5EC();
    v89 = v18;
    v26 = v25;
    v94 = v8;
    v28 = v27;

    v3 = v2;
    MEMORY[0x22AAD08C0](v26, v28);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(v97, v98, &v99);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v30 = sub_22A4DD4AC();
    v32 = sub_2295A3E30(v30, v31, &v99);

    *(v21 + 14) = v32;
    v8 = v94;
    v17 = v90;
    _os_log_impl(&dword_229538000, v90, v89, "%s Received demo mode test request message payload: %s", v21, 0x16u);
    v33 = v91;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    v34 = v21;
    v7 = v95;
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  v35 = *(v8 + 8);
  v35(v15, v7);
  v36 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v38 = sub_229543DBC(v36, v37);
    v40 = v39;

    if (v40)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v38, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        if (v99)
        {
          v91 = v35;
          v41 = v92;
          sub_229541CB0(v93, &off_283CE8678);
          v42 = v96;
          v43 = sub_22A4DD05C();
          v44 = sub_22A4DDCCC();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v95 = v7;
            v46 = v45;
            v47 = swift_slowAlloc();
            v94 = v8;
            v48 = v47;
            v99 = v47;
            *v46 = 136315138;
            v97 = 91;
            v98 = 0xE100000000000000;
            v49 = v42;
            v50 = [v49 description];
            v51 = sub_22A4DD5EC();
            v53 = v52;

            MEMORY[0x22AAD08C0](v51, v53);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v54 = sub_2295A3E30(v97, v98, &v99);

            *(v46 + 4) = v54;
            _os_log_impl(&dword_229538000, v43, v44, "%s Resetting demo mode accessories", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v48);
            MEMORY[0x22AAD4E50](v48, -1, -1);
            MEMORY[0x22AAD4E50](v46, -1, -1);

            v55 = v95;
            v56 = v92;
          }

          else
          {

            v56 = v41;
            v55 = v7;
          }

          v91(v56, v55);
          if (qword_27D87B8A0 != -1)
          {
            swift_once();
          }

          sub_22956F9DC();
          return sub_22956AC5C(MEMORY[0x277D84F90]);
        }
      }
    }
  }

  else
  {
  }

  v57 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v59 = sub_229543DBC(v57, v58);
    v61 = v60;

    if (v61)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v59, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        inited = v99;
        v63 = sub_22986A4B0(v99);

        sub_2298877C0(v63);

        if (!v3)
        {
          return sub_22956AC5C(MEMORY[0x277D84F90]);
        }

        return inited;
      }
    }
  }

  else
  {
  }

  v64 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v66 = sub_229543DBC(v64, v65);
    v68 = v67;

    if (v68)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v66, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        inited = sub_229887D54(v99);

        return inited;
      }
    }
  }

  else
  {
  }

  v69 = v35;
  sub_229541CB0(v93, &off_283CE8678);
  v70 = v96;
  v71 = sub_22A4DD05C();
  v72 = sub_22A4DDCEC();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v95 = v7;
    v74 = v73;
    v75 = swift_slowAlloc();
    v94 = v8;
    v76 = v75;
    v99 = v75;
    *v74 = 136315138;
    v97 = 91;
    v98 = 0xE100000000000000;
    v77 = v70;
    v78 = [v77 description];
    v79 = sub_22A4DD5EC();
    v96 = v11;
    v80 = v79;
    v82 = v81;

    MEMORY[0x22AAD08C0](v80, v82);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v83 = sub_2295A3E30(v97, v98, &v99);

    *(v74 + 4) = v83;
    _os_log_impl(&dword_229538000, v71, v72, "%s Unhandled test mode request", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AAD4E50](v76, -1, -1);
    MEMORY[0x22AAD4E50](v74, -1, -1);

    v84 = v95;
    v85 = v96;
  }

  else
  {

    v85 = v11;
    v84 = v7;
  }

  v69(v85, v84);
  type metadata accessor for HMError(0);
  v99 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v86;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000022A59A080;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();
  return inited;
}

uint64_t sub_2298877C0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v53 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = a1[2];
  if (v11)
  {
    v52 = a1;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v12 = v2;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v49 = v15;
      v50 = swift_slowAlloc();
      v56 = v50;
      *v15 = 136315138;
      v54 = 91;
      v55 = 0xE100000000000000;
      v16 = v12;
      v48 = v14;
      v17 = v16;
      v18 = [v16 description];
      v51 = v5;
      v19 = v18;
      v20 = sub_22A4DD5EC();
      v47 = v13;
      v22 = v21;

      MEMORY[0x22AAD08C0](v20, v22);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(v54, v55, &v56);

      v24 = v49;
      *(v49 + 1) = v23;
      v25 = v47;
      _os_log_impl(&dword_229538000, v47, v48, "%s Request to add test/demo accessories", v24, 0xCu);
      v26 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      result = (*(v53 + 8))(v10, v51);
    }

    else
    {

      result = (*(v53 + 8))(v10, v5);
    }

    v41 = 0;
    v42 = v52 + 4;
    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v54 = v42[v41];

      sub_22988A318(&v54, v12, ObjectType);

      ++v41;
      if (v43 == v11)
      {
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE8678);
    v28 = v2;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v5;
      v52 = v32;
      v56 = v32;
      *v31 = 136315138;
      v54 = 91;
      v55 = 0xE100000000000000;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_22A4DD5EC();
      v36 = v53;
      v38 = v37;

      MEMORY[0x22AAD08C0](v35, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v54, v55, &v56);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_229538000, v29, v30, "%s Request to add test/demo accessories but none found", v31, 0xCu);
      v40 = v52;
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v36 + 8))(v8, v51);
    }

    else
    {

      (*(v53 + 8))(v8, v5);
    }

    type metadata accessor for HMError(0);
    v56 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v45;
    *(inited + 48) = 0xD00000000000001ELL;
    *(inited + 56) = 0x800000022A59A0A0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

id sub_229887D54(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  if (!*(a1 + 16))
  {
    sub_229541CB0(ObjectType, &off_283CE8678);
    v24 = v1;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64 = v60;
      *v27 = 136315138;
      v62 = 91;
      v63 = 0xE100000000000000;
      v28 = v24;
      v29 = [v28 description];
      v30 = sub_22A4DD5EC();
      v61 = v6;
      v31 = v30;
      v32 = v7;
      v34 = v33;

      MEMORY[0x22AAD08C0](v31, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v62, v63, &v64);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_229538000, v25, v26, "%s Invalid accessory control configuration request", v27, 0xCu);
      v36 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v32 + 8))(v12, v61);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    type metadata accessor for HMError(0);
    v18 = v37;
    v64 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    v40 = inited + 32;
    v41 = 0x800000022A59A0F0;
    *(inited + 72) = MEMORY[0x277D837D0];
    v42 = 0xD00000000000002FLL;
LABEL_18:
    *(inited + 40) = v39;
    *(inited + 48) = v42;
    *(inited + 56) = v41;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v40, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
    return v18;
  }

  v60 = v7;
  v13 = sub_22A4DD5EC();
  v15 = sub_229543DBC(v13, v14);
  v17 = v16;

  if (v17)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v15, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v18 = sub_22988A80C(v64);

      return v18;
    }
  }

  v19 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_15:
    v61 = v6;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v43 = v3;

    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v46 = 136315394;
      v62 = 91;
      v63 = 0xE100000000000000;
      v47 = v43;
      v48 = [v47 description];
      v49 = sub_22A4DD5EC();
      v51 = v50;

      MEMORY[0x22AAD08C0](v49, v51);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v52 = sub_2295A3E30(v62, v63, &v64);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v53 = sub_22A4DD4AC();
      v55 = sub_2295A3E30(v53, v54, &v64);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_229538000, v44, v45, "%s Unhandled accessory control configuration: %s", v46, 0x16u);
      v56 = v59;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v56, -1, -1);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    (v60[1])(v10, v61);
    type metadata accessor for HMError(0);
    v18 = v57;
    v64 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    v40 = inited + 32;
    v41 = 0x800000022A59A0C0;
    *(inited + 72) = MEMORY[0x277D837D0];
    v42 = 0xD000000000000029;
    goto LABEL_18;
  }

  v21 = sub_229543DBC(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v21, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v18 = v3;
  sub_22988C0BC(v64);

  if (!v2)
  {
    return sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  return v18;
}

void *sub_229888624()
{
  v0 = sub_22A4DB57C();
  __swift_allocate_value_buffer(v0, qword_27D8AB9F8);
  __swift_project_value_buffer(v0, qword_27D8AB9F8);
  return sub_229888670();
}

void *sub_229888670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v3 = sub_22A4DB49C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v8 = result;
    sub_22A4DD5EC();

    v9 = *MEMORY[0x277CC91C0];
    v10 = *(v4 + 104);
    v10(v6, v9, v3);
    v11 = sub_22A4DB57C();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_22A4DB55C();
    v12[0] = 0xD000000000000034;
    v12[1] = 0x800000022A59A2E0;
    v10(v6, v9, v3);
    sub_22962F254();
    sub_22A4DB53C();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_229888888(uint64_t a1, void *a2)
{
  v157 = a2;
  v175[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v4 - 8);
  v153 = &v149 - v5;
  v6 = sub_22A4DD07C();
  v164 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v167 = (&v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v155 = &v149 - v10;
  MEMORY[0x28223BE20](v9);
  v166 = &v149 - v11;
  v171 = sub_22A4DB57C();
  v12 = *(v171 - 8);
  v13 = MEMORY[0x28223BE20](v171);
  v15 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v154 = &v149 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v159 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v161 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v168 = (&v149 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v149 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v160 = &v149 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v149 - v28;
  v174[0] = 0;
  v165 = v2;
  v30 = *&v2[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager];
  v31 = [v30 fileManager];
  if (!v31)
  {
LABEL_51:
    __break(1u);
  }

  v32 = v31;
  v169 = a1;
  sub_22A4DB52C();
  v33 = sub_22A4DD5AC();

  v34 = [v32 fileExistsAtPath:v33 isDirectory:v174];

  swift_unknownObjectRelease();
  v162 = v6;
  if (v34 && v174[0] == 1)
  {
    v167 = v30;
    result = [v30 fileManager];
    if (result)
    {
      v36 = result;
      sub_22A4DD5EC();
      sub_22A4DB4FC();

      v37 = sub_22A4DB4EC();
      v158 = v12;
      v38 = v12 + 8;
      v39 = *(v12 + 8);
      v40 = v171;
      v39(v29, v171);
      LODWORD(v150) = [v36 fileExistsAtURL_];
      swift_unknownObjectRelease();

      result = [v167 fileManager];
      if (result)
      {
        v41 = result;
        sub_22A4DD5EC();
        sub_22A4DB4FC();

        v42 = sub_22A4DB4EC();
        v151 = v39;
        v152 = v38;
        v39(v29, v40);
        v43 = [v41 fileExistsAtURL_];
        swift_unknownObjectRelease();

        sub_22A4DD5EC();
        sub_22A4DB4FC();

        v44 = v167;
        result = [v167 fileManager];
        if (result)
        {
          v45 = result;
          sub_22A4DB52C();
          v46 = sub_22A4DD5AC();

          v47 = [v45 fileExistsAtPath:v46 isDirectory:v174];
          swift_unknownObjectRelease();

          if ((v150 | v43))
          {
            v48 = v171;
            v49 = v151;
            v50 = v166;
            if (!v47)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v48 = v171;
            v49 = v151;
            v50 = v166;
            if ((v47 & 1) == 0)
            {
              v96 = v155;
              sub_229541CB0(ObjectType, &off_283CE8678);
              v97 = v154;
              (*(v158 + 16))(v154, v169, v48);
              v98 = v165;
              v99 = sub_22A4DD05C();
              v100 = sub_22A4DDCEC();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v170 = swift_slowAlloc();
                v175[0] = v170;
                *v101 = 136315394;
                v172 = 91;
                v173 = 0xE100000000000000;
                v102 = v98;
                v103 = [v102 description];
                v104 = v97;
                v105 = sub_22A4DD5EC();
                v107 = v106;

                MEMORY[0x22AAD08C0](v105, v107);
                v48 = v171;

                MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                v108 = sub_2295A3E30(v172, v173, v175);

                *(v101 + 4) = v108;
                *(v101 + 12) = 2080;
                sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
                v109 = sub_22A4DE5CC();
                v111 = v110;
                v112 = v151;
                v151(v104, v48);
                v113 = sub_2295A3E30(v109, v111, v175);
                v49 = v112;

                *(v101 + 14) = v113;
                _os_log_impl(&dword_229538000, v99, v100, "%s Content is missing required files at %s", v101, 0x16u);
                v114 = v170;
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v114, -1, -1);
                MEMORY[0x22AAD4E50](v101, -1, -1);

                (*(v164 + 8))(v155, v162);
              }

              else
              {

                v49 = v151;
                v151(v97, v48);
                (*(v164 + 8))(v96, v162);
              }

              type metadata accessor for HMError(0);
              v175[0] = 2;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_22A576180;
              *(inited + 32) = sub_22A4DD5EC();
              v117 = inited + 32;
              v118 = 0x800000022A59A510;
              *(inited + 72) = MEMORY[0x277D837D0];
              v119 = 0xD000000000000021;
              goto LABEL_36;
            }
          }

          if (v174[0] != 1)
          {
LABEL_40:
            v123 = v157;
            v124 = [v157 demoModeCameraPath];
            sub_22A4DD5EC();

            v125 = v159;
            sub_22A4DB4CC();

            v126 = v156;
            sub_229881854(v169, v125);
            if (v126)
            {
              v127 = v125;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
              v128 = swift_initStackObject();
              *(v128 + 16) = xmmword_22A576190;
              *(v128 + 32) = v123;
              v129 = v153;
              (*(v158 + 56))(v153, 1, 1, v48);
              v130 = v123;
              sub_229875850(v128, v129);

              sub_22953EAE4(v129, &qword_27D880180, &unk_22A586590);
              v127 = v159;
            }

            v49(v127, v48);
            goto LABEL_44;
          }

          result = [v44 fileManager];
          if (result)
          {
            v74 = result;
            v75 = v160;
            v76 = sub_22A4DB4EC();
            v172 = 0;
            v77 = [v74 contentsOfDirectoryAtURL:v76 includingPropertiesForKeys:0 options:0 error:&v172];
            swift_unknownObjectRelease();

            v78 = v172;
            if (!v77)
            {
              v120 = v172;
              sub_22A4DB3EC();

              swift_willThrow();
              v121 = v75;
              return (v49)(v121, v48);
            }

            v79 = sub_22A4DD83C();
            v80 = v78;

            v155 = *(v79 + 16);
            if (v155)
            {
              v81 = 0;
              v150 = v158 + 16;
              v149 = @"mov";
              v167 = (v158 + 32);
              v82 = MEMORY[0x277D84F90];
              v154 = v79;
              while (1)
              {
                if (v81 >= *(v79 + 16))
                {
                  __break(1u);
                  goto LABEL_51;
                }

                v84 = (*(v158 + 80) + 32) & ~*(v158 + 80);
                v85 = *(v158 + 72);
                (*(v158 + 16))(v170, v79 + v84 + v85 * v81, v48);
                v86 = sub_22A4DB4AC();
                v88 = v87;
                if (v86 == sub_22A4DD5EC() && v88 == v89)
                {
                  break;
                }

                v90 = sub_22A4DE60C();

                if (v90)
                {
                  goto LABEL_27;
                }

                v151(v170, v48);
LABEL_21:
                v83 = v161;
                ++v81;
                v79 = v154;
                v50 = v166;
                if (v155 == v81)
                {
                  goto LABEL_39;
                }
              }

LABEL_27:
              v91 = *v167;
              (*v167)(v168, v170, v48);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v172 = v82;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_229583B44(0, v82[2] + 1, 1);
                v82 = v172;
              }

              v94 = v82[2];
              v93 = v82[3];
              if (v94 >= v93 >> 1)
              {
                sub_229583B44((v93 > 1), v94 + 1, 1);
                v82 = v172;
              }

              v82[2] = v94 + 1;
              v95 = (v82 + v84 + v94 * v85);
              v48 = v171;
              v91(v95, v168, v171);
              goto LABEL_21;
            }

            v82 = MEMORY[0x277D84F90];
            v83 = v161;
LABEL_39:

            v122 = v82[2];

            v49 = v151;
            if (v122)
            {
              goto LABEL_40;
            }

            sub_229541CB0(ObjectType, &off_283CE8678);
            (*(v158 + 16))(v83, v160, v48);
            v131 = v165;
            v132 = sub_22A4DD05C();
            v133 = sub_22A4DDCEC();

            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v175[0] = v135;
              *v134 = 136315394;
              v172 = 91;
              v173 = 0xE100000000000000;
              v136 = v131;
              v137 = [v136 description];
              v138 = sub_22A4DD5EC();
              v140 = v139;

              MEMORY[0x22AAD08C0](v138, v140);
              v48 = v171;

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v141 = sub_2295A3E30(v172, v173, v175);

              *(v134 + 4) = v141;
              *(v134 + 12) = 2080;
              sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v142 = v161;
              v143 = sub_22A4DE5CC();
              v145 = v144;
              v146 = v142;
              v147 = v151;
              v151(v146, v48);
              v148 = sub_2295A3E30(v143, v145, v175);
              v49 = v147;

              *(v134 + 14) = v148;
              _os_log_impl(&dword_229538000, v132, v133, "%s Camera clips folder is empty: %s", v134, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v135, -1, -1);
              MEMORY[0x22AAD4E50](v134, -1, -1);

              (*(v164 + 8))(v166, v162);
            }

            else
            {

              v49 = v151;
              v151(v83, v48);
              (*(v164 + 8))(v50, v162);
            }

            type metadata accessor for HMError(0);
            v175[0] = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22A576180;
            *(inited + 32) = sub_22A4DD5EC();
            v117 = inited + 32;
            v118 = 0x800000022A59A540;
            *(inited + 72) = MEMORY[0x277D837D0];
            v119 = 0xD00000000000001CLL;
LABEL_36:
            *(inited + 40) = v116;
            *(inited + 48) = v119;
            *(inited + 56) = v118;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(v117, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
            swift_willThrow();
LABEL_44:
            v121 = v160;
            return (v49)(v121, v48);
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

  v51 = v167;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v52 = v171;
  (*(v12 + 16))(v15, v169, v171);
  v53 = v165;
  v54 = sub_22A4DD05C();
  v55 = sub_22A4DDCEC();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    LODWORD(v169) = v55;
    v57 = v56;
    v170 = swift_slowAlloc();
    v175[0] = v170;
    *v57 = 136315394;
    v172 = 91;
    v173 = 0xE100000000000000;
    v58 = v53;
    v168 = v54;
    v59 = v58;
    v60 = [v58 description];
    v61 = sub_22A4DD5EC();
    v62 = v12;
    v64 = v63;

    MEMORY[0x22AAD08C0](v61, v64);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v65 = sub_2295A3E30(v172, v173, v175);

    *(v57 + 4) = v65;
    *(v57 + 12) = 2080;
    sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v66 = sub_22A4DE5CC();
    v68 = v67;
    (*(v62 + 8))(v15, v52);
    v69 = sub_2295A3E30(v66, v68, v175);

    *(v57 + 14) = v69;
    v70 = v168;
    _os_log_impl(&dword_229538000, v168, v169, "%s Unable to find content at: %s", v57, 0x16u);
    v71 = v170;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v71, -1, -1);
    MEMORY[0x22AAD4E50](v57, -1, -1);

    (*(v164 + 8))(v167, v162);
  }

  else
  {

    (*(v12 + 8))(v15, v52);
    (*(v164 + 8))(v51, v162);
  }

  type metadata accessor for HMError(0);
  v175[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_22A576180;
  *(v72 + 32) = sub_22A4DD5EC();
  *(v72 + 72) = MEMORY[0x277D837D0];
  *(v72 + 40) = v73;
  *(v72 + 48) = 0xD000000000000016;
  *(v72 + 56) = 0x800000022A59A4F0;
  sub_22956AD8C(v72);
  swift_setDeallocating();
  sub_22953EAE4(v72 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  return swift_willThrow();
}

id sub_229889C04(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_22A4DB57C();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  result = [*&v1[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
  if (result)
  {
    v17 = result;
    v18 = sub_22A4DB4EC();
    v19 = [v17 fileExistsAtURL_];

    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = demoModeConfigPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      v21 = v52;
      sub_229881854(a1, v15);
      if (v21)
      {
        return (*(v56 + 8))(v15, v57);
      }

      else
      {
        v49 = v56;
        v48 = v57;
        (*(v56 + 16))(v9, v15, v57);
        (*(v49 + 56))(v9, 0, 1, v48);
        sub_229875850(0, v9);
        sub_22953EAE4(v9, &qword_27D880180, &unk_22A586590);
        return (*(v49 + 8))(v15, v48);
      }
    }

    else
    {
      v22 = v55;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v24 = v56;
      v23 = v57;
      v25 = *(v56 + 16);
      v26 = v13;
      v52 = a1;
      v25(v13, a1, v57);
      v27 = v2;
      v28 = sub_22A4DD05C();
      v29 = sub_22A4DDCEC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v26;
        v31 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v60 = v51;
        *v31 = 136315394;
        v58 = 91;
        v59 = 0xE100000000000000;
        v32 = v27;
        v33 = [v32 description];
        v34 = sub_22A4DD5EC();
        v36 = v35;

        MEMORY[0x22AAD08C0](v34, v36);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v37 = sub_2295A3E30(v58, v59, &v60);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v38 = sub_22A4DE5CC();
        v40 = v39;
        (*(v24 + 8))(v30, v57);
        v41 = sub_2295A3E30(v38, v40, &v60);

        *(v31 + 14) = v41;
        _os_log_impl(&dword_229538000, v28, v29, "%s Unable to find: %s", v31, 0x16u);
        v42 = v51;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v42, -1, -1);
        MEMORY[0x22AAD4E50](v31, -1, -1);

        (*(v53 + 8))(v55, v54);
      }

      else
      {

        (*(v24 + 8))(v26, v23);
        (*(v53 + 8))(v22, v54);
      }

      type metadata accessor for HMError(0);
      v60 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v44;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_22A4DE1FC();

      v58 = 0xD000000000000010;
      v59 = 0x800000022A59A560;
      sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v45 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v45);

      v46 = v58;
      v47 = v59;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v46;
      *(inited + 56) = v47;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22988A318(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    result = sub_229543DBC(0x726F737365636361, 0xEB00000000736569);
    if (v6)
    {
      sub_2295404B0(*(v3 + 56) + 32 * result, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED0, &qword_22A57A940);
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(v10 + 16);
        if (v7)
        {
          v8 = 0;
          while (v8 < *(v10 + 16))
          {
            v9 = v8 + 1;
            v11[0] = *(v10 + 32 + 8 * v8);

            sub_22988A448(v11, a2, a3);

            v8 = v9;
            if (v7 == v9)
            {
            }
          }

          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_22988A448(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DemoAccessoryServer(0);

  v11 = sub_22960BC94(v10, 1);
  if (v3)
  {
    sub_229541CB0(a3, &off_283CE8678);

    v12 = a2;
    v13 = v3;
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v16 = 136315650;
      v40 = 91;
      v41 = 0xE100000000000000;
      v17 = v12;
      v35 = v15;
      v18 = v17;
      v19 = [v17 description];
      v20 = sub_22A4DD5EC();
      v37 = v7;
      v38 = v6;
      v21 = v20;
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(v40, v41, &v42);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      v25 = sub_22A4DD4AC();
      v27 = sub_2295A3E30(v25, v26, &v42);

      *(v16 + 14) = v27;
      *(v16 + 22) = 2112;
      v28 = v3;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 24) = v29;
      v30 = v36;
      *v36 = v29;
      _os_log_impl(&dword_229538000, v14, v35, "%s Failed to create a demo accessory server from %s. error: %@", v16, 0x20u);
      sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      v31 = v39;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);

      (*(v37 + 8))(v9, v38);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    if (qword_27D87B8A0 != -1)
    {
      v33 = v11;
      swift_once();
      v11 = v33;
    }

    v32 = v11;
    sub_22956E358(v11);
  }
}

id sub_22988A80C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v222 = v4;
  ObjectType = swift_getObjectType();
  v210 = sub_22A4DD07C();
  v6 = MEMORY[0x28223BE20](v210);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v191 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](&v191 - v11);
  v18 = *(a1 + 16);
  if (!v18)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_62:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x800000022A59A210;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(inited + 48) = v20;
    v24 = sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    return v24;
  }

  v202 = &v191 - v14;
  v203 = v12;
  v196 = v10;
  v198 = v16;
  v200 = v15;
  v19 = (a1 + 32);
  v213 = "y control configuration request";
  v209 = "kServiceInstanceID";
  v205 = "kCharacteristicInstanceID";
  v207 = (v13 + 8);
  v208 = "No characteristic found";
  v212 = "kConfigTestingResponseDelayKey";
  v204 = "kCharacteristicValue";
  v20 = MEMORY[0x277D84F90];
  *&v17 = 136315394;
  v201 = v17;
  *(&v21 + 1) = 3;
  v195 = xmmword_22A576190;
  *&v21 = 136315650;
  v199 = v21;
  while (1)
  {
    v218 = v19;
    v219 = v18;
    v22 = *v19;

    sub_2296F7AE8(v23);
    v24 = v222;
    v26 = sub_22988CE0C(v25);
    if (v3)
    {

      return v24;
    }

    v27 = v26;

    if (!*(v22 + 2))
    {
      break;
    }

    v28 = sub_229543DBC(0xD000000000000012, v213 | 0x8000000000000000);
    if ((v29 & 1) == 0)
    {
      break;
    }

    v221 = v20;
    sub_2295404B0(*(v22 + 7) + 32 * v28, &v228);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v230 = v226;
    if (!*(v22 + 2) || (v31 = sub_229543DBC(0xD000000000000019, v209 | 0x8000000000000000), (v32 & 1) == 0) || (sub_2295404B0(*(v22 + 7) + 32 * v31, &v228), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_67;
    }

    v223 = v226;
    if (*(v22 + 2) && (v33 = sub_229543DBC(0xD000000000000017, v205 | 0x8000000000000000), (v34 & 1) != 0) && (sub_2295404B0(*(v22 + 7) + 32 * v33, &v228), (swift_dynamicCast() & 1) != 0))
    {
      v35 = v226;
      v36 = sub_2296136D4(v226);

      if (!v36)
      {
        goto LABEL_71;
      }

      v37 = v36;
    }

    else
    {
      v38 = [v27 accessories];
      if (!v38)
      {
LABEL_71:
        v206 = v27;
        goto LABEL_75;
      }

      v39 = v38;
      sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
      v40 = sub_22A4DD83C();

      if (v40 >> 62)
      {
        result = sub_22A4DE0EC();
        if (!result)
        {
LABEL_74:
          v206 = v27;

LABEL_75:

          v220 = 0;
LABEL_76:
          v171 = v198;
          sub_229541CB0(ObjectType, &off_283CE8678);

          v172 = v222;
          v173 = sub_22A4DD05C();
          v174 = sub_22A4DDCEC();

          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            *&v226 = v222;
            *v175 = v201;
            *&v228 = 91;
            *(&v228 + 1) = 0xE100000000000000;
            v176 = v172;
            LODWORD(v221) = v174;
            v177 = v176;
            v178 = [v176 description];
            v179 = sub_22A4DD5EC();
            v181 = v180;

            MEMORY[0x22AAD08C0](v179, v181);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v182 = sub_2295A3E30(v228, *(&v228 + 1), &v226);

            *(v175 + 4) = v182;
            *(v175 + 12) = 2080;
            v183 = sub_22A4DD4AC();
            v185 = v184;

            v186 = sub_2295A3E30(v183, v185, &v226);

            *(v175 + 14) = v186;
            _os_log_impl(&dword_229538000, v173, v221, "%s Unable to find characteristic from %s", v175, 0x16u);
            v187 = v222;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v187, -1, -1);
            MEMORY[0x22AAD4E50](v175, -1, -1);

            (*v207)(v198, v210);
          }

          else
          {

            (*v207)(v171, v210);
          }

          type metadata accessor for HMError(0);
          v24 = v188;
          *&v226 = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
          v189 = swift_initStackObject();
          *(v189 + 16) = xmmword_22A576180;
          *(v189 + 32) = sub_22A4DD5EC();
          *(v189 + 72) = MEMORY[0x277D837D0];
          *(v189 + 40) = v190;
          *(v189 + 48) = 0xD000000000000017;
          *(v189 + 56) = 0x800000022A59A180;
          sub_22956AD8C(v189);
          swift_setDeallocating();
          sub_22953EAE4(v189 + 32, &qword_27D87CDA0, &unk_22A57A930);
          sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
          sub_22A4DB3CC();
          swift_willThrow();

          return v24;
        }
      }

      else
      {
        result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_74;
        }
      }

      if ((v40 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x22AAD13F0](0, v40);
      }

      else
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v42 = *(v40 + 32);
      }

      v37 = v42;
    }

    v43 = v37;
    v44 = [v43 serviceWithInstanceID_];
    v220 = v37;
    if (!v44)
    {
      v206 = v27;

      goto LABEL_76;
    }

    v216 = v44;
    v217 = v43;
    v215 = 0;
    v45 = sub_2296161C8(v223);
    if (!v45)
    {
      v206 = v27;

      goto LABEL_76;
    }

    v46 = v45;
    v47 = *(v22 + 2);

    if (v47 && (v48 = sub_229543DBC(0xD00000000000001ELL, v208 | 0x8000000000000000), (v49 & 1) != 0) && (sub_2295404B0(*(v22 + 7) + 32 * v48, &v228), (swift_dynamicCast() & 1) != 0))
    {
      v50 = v226;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v197 = v222;
      v51 = v50;
      v52 = v46;
      v53 = sub_22A4DD05C();
      v54 = sub_22A4DDCCC();
      v206 = v52;

      v214 = v51;
      v55 = v197;

      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v193 = v56;
        v194 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *&v226 = v192;
        *v56 = v199;
        *&v228 = 91;
        *(&v228 + 1) = 0xE100000000000000;
        v57 = v55;
        v197 = v53;
        v58 = v57;
        v59 = [v57 description];
        v60 = v27;
        v61 = sub_22A4DD5EC();
        LODWORD(v191) = v54;
        v63 = v62;

        v64 = v61;
        v27 = v60;
        v65 = v214;
        MEMORY[0x22AAD08C0](v64, v63);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v66 = sub_2295A3E30(v228, *(&v228 + 1), &v226);

        v67 = v193;
        *(v193 + 4) = v66;
        *(v67 + 6) = 2112;
        *(v67 + 14) = v65;
        v194->isa = v65;
        *(v67 + 11) = 2080;
        v68 = v65;
        v69 = [v206 shortDescription];
        v70 = sub_22A4DD5EC();
        v72 = v71;

        v73 = sub_2295A3E30(v70, v72, &v226);

        v74 = v193;
        v193[3] = v73;
        v53 = v197;
        _os_log_impl(&dword_229538000, v197, v191, "%s Setting the response delay: %@ for characteristic  %s", v74, 0x20u);
        v75 = v194;
        sub_22953EAE4(v194, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v75, -1, -1);
        v76 = v192;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v76, -1, -1);
        MEMORY[0x22AAD4E50](v74, -1, -1);
      }

      (*v207)(v202, v210);
      v77 = v214;
      [(objc_class *)v214 doubleValue];
      v78 = sub_22A4DDB3C();
      swift_beginAccess();
      objc_setAssociatedObject(v206, &unk_27D87DEA8, v78, 1);
      swift_endAccess();

      v79 = v22;
      v37 = v220;
    }

    else
    {
      v80 = COERCE_DOUBLE(sub_229614EA0());
      v79 = v22;
      if ((v81 & 1) == 0)
      {
        v229 = MEMORY[0x277D839F8];
        *&v228 = v80 * 1000.0;
        sub_229543C5C(&v228, &v226);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v224 = v22;
        v83 = __swift_mutable_project_boxed_opaque_existential_0(&v226, *(&v227 + 1));
        sub_2297FF248(0xD00000000000001ELL, v208 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v224, *v83);
        __swift_destroy_boxed_opaque_existential_0(&v226);
        v79 = v224;
      }
    }

    if (!*(v22 + 2) || (v84 = sub_229543DBC(0xD000000000000014, v212 | 0x8000000000000000), (v85 & 1) == 0))
    {
      if ([v46 value])
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        v110 = v229;
        v111 = __swift_project_boxed_opaque_existential_0(&v228, v229);
        v225 = v110;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v224);
        (*(*(v110 - 8) + 16))(boxed_opaque_existential_1, v111, v110);
        sub_229543C5C(&v224, &v226);
        __swift_destroy_boxed_opaque_existential_0(&v228);
        if (*(&v227 + 1))
        {
          sub_229543C5C(&v226, &v228);
          goto LABEL_42;
        }
      }

      else
      {
        v226 = 0u;
        v227 = 0u;
      }

      v113 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v229 = sub_229562F68(0, &qword_27D880120, 0x277CBEB68);
      *&v228 = v113;
      if (*(&v227 + 1))
      {
        sub_22953EAE4(&v226, &unk_27D87FC20, &unk_22A578810);
      }

LABEL_42:
      sub_229543C5C(&v228, &v226);
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *&v224 = v79;
      v115 = *(&v227 + 1);
      v116 = __swift_mutable_project_boxed_opaque_existential_0(&v226, *(&v227 + 1));
      MEMORY[0x28223BE20](v116);
      v118 = &v191 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v119 + 16))(v118);
      sub_2297FF768(v118, 0xD000000000000014, v212 | 0x8000000000000000, v114, &v224, v115);
      __swift_destroy_boxed_opaque_existential_0(&v226);
      v214 = v224;
      v37 = v220;
      v20 = v221;
      if (!*(v22 + 2))
      {
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v197 = v30;
    v214 = v79;
    v206 = v27;
    sub_2295404B0(*(v22 + 7) + 32 * v84, &v226);
    sub_229543C5C(&v226, &v228);
    __swift_project_boxed_opaque_existential_0(&v228, v229);
    [v46 setValue_];
    swift_unknownObjectRelease();
    v86 = v203;
    sub_229541CB0(ObjectType, &off_283CE8678);

    v87 = v222;
    v88 = v46;
    v89 = sub_22A4DD05C();
    v90 = sub_22A4DDCCC();
    v193 = v88;

    LODWORD(v194) = v90;
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v224 = v192;
      *v91 = v199;
      *&v226 = 91;
      *(&v226 + 1) = 0xE100000000000000;
      v92 = v87;
      v191 = v89;
      v93 = v92;
      v94 = [v92 description];
      v95 = sub_22A4DD5EC();
      v97 = v96;

      MEMORY[0x22AAD08C0](v95, v97);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v98 = sub_2295A3E30(v226, *(&v226 + 1), &v224);

      *(v91 + 4) = v98;
      *(v91 + 12) = 2080;
      v99 = sub_22A4DD4AC();
      v101 = sub_2295A3E30(v99, v100, &v224);

      *(v91 + 14) = v101;
      *(v91 + 22) = 2080;
      v102 = [v193 shortDescription];
      v103 = sub_22A4DD5EC();
      v105 = v104;

      v106 = v103;
      v37 = v220;
      v107 = sub_2295A3E30(v106, v105, &v224);

      *(v91 + 24) = v107;
      v108 = v191;
      _os_log_impl(&dword_229538000, v191, v194, "%s Setting the value from %s for characteristic %s", v91, 0x20u);
      v109 = v192;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v109, -1, -1);
      MEMORY[0x22AAD4E50](v91, -1, -1);

      (*v207)(v203, v210);
    }

    else
    {

      (*v207)(v86, v210);
    }

    v27 = v206;
    v20 = v221;
    __swift_destroy_boxed_opaque_existential_0(&v228);
    if (!*(v22 + 2))
    {
      goto LABEL_51;
    }

LABEL_46:
    v120 = sub_229543DBC(0xD00000000000002BLL, v204 | 0x8000000000000000);
    if (v121)
    {
      sub_2295404B0(*(v22 + 7) + 32 * v120, &v228);

      if (swift_dynamicCast())
      {
        v206 = v27;
        v122 = v196;
        sub_229541CB0(ObjectType, &off_283CE8678);
        v123 = v222;
        v124 = v46;
        v125 = sub_22A4DD05C();
        v126 = sub_22A4DDCCC();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          *&v226 = v197;
          *v127 = v201;
          *&v228 = 91;
          *(&v228 + 1) = 0xE100000000000000;
          v128 = v123;
          v194 = v125;
          v129 = v128;
          v130 = [v128 description];
          LODWORD(v193) = v126;
          v131 = v130;
          v132 = sub_22A4DD5EC();
          v134 = v133;

          MEMORY[0x22AAD08C0](v132, v134);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v135 = sub_2295A3E30(v228, *(&v228 + 1), &v226);

          *(v127 + 4) = v135;
          *(v127 + 12) = 2080;
          v136 = [v124 shortDescription];
          v137 = sub_22A4DD5EC();
          v139 = v138;

          v140 = sub_2295A3E30(v137, v139, &v226);
          v20 = v221;

          *(v127 + 14) = v140;
          v125 = v194;
          _os_log_impl(&dword_229538000, v194, v193, "%s Triggering update notification for characteristic %s", v127, 0x16u);
          v141 = v197;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v141, -1, -1);
          MEMORY[0x22AAD4E50](v127, -1, -1);
        }

        (*v207)(v122, v210);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v142 = swift_allocObject();
        *(v142 + 16) = v195;
        *(v142 + 32) = v124;
        v143 = v124;
        v27 = v206;
        sub_229613164(v142, 0);

        v37 = v220;
      }

      goto LABEL_52;
    }

LABEL_51:

LABEL_52:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22958A770(0, v20[2] + 1, 1, v20);
    }

    v145 = v20[2];
    v144 = v20[3];
    if (v145 >= v144 >> 1)
    {
      v20 = sub_22958A770((v144 > 1), v145 + 1, 1, v20);
    }

    v20[2] = v145 + 1;
    v3 = v215;
    v20[v145 + 4] = v214;
    v19 = v218 + 1;
    v18 = v219 - 1;
    if (v219 == 1)
    {
      goto LABEL_62;
    }
  }

LABEL_67:
  v147 = v200;
  sub_229541CB0(ObjectType, &off_283CE8678);

  v148 = v222;
  v149 = sub_22A4DD05C();
  v150 = sub_22A4DDCEC();

  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    *&v226 = v230;
    *v151 = v201;
    *&v228 = 91;
    *(&v228 + 1) = 0xE100000000000000;
    v152 = v148;
    v223 = v149;
    v153 = v152;
    v154 = [v152 description];
    v155 = sub_22A4DD5EC();
    LODWORD(v222) = v150;
    v156 = v27;
    v157 = v155;
    v159 = v158;

    v160 = v157;
    v27 = v156;
    MEMORY[0x22AAD08C0](v160, v159);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v161 = sub_2295A3E30(v228, *(&v228 + 1), &v226);

    *(v151 + 4) = v161;
    *(v151 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v162 = sub_22A4DD4AC();
    v164 = v163;

    v165 = sub_2295A3E30(v162, v164, &v226);

    *(v151 + 14) = v165;
    v166 = v223;
    _os_log_impl(&dword_229538000, v223, v222, "%s Ignoring invalid request: %s", v151, 0x16u);
    v167 = v230;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v167, -1, -1);
    MEMORY[0x22AAD4E50](v151, -1, -1);
  }

  else
  {
  }

  (*v207)(v147, v210);
  type metadata accessor for HMError(0);
  v24 = v168;
  *&v226 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v169 = swift_initStackObject();
  *(v169 + 16) = xmmword_22A576180;
  *(v169 + 32) = sub_22A4DD5EC();
  *(v169 + 72) = MEMORY[0x277D837D0];
  *(v169 + 40) = v170;
  *(v169 + 48) = 0x2064696C61766E49;
  *(v169 + 56) = 0xEF74736575716572;
  sub_22956AD8C(v169);
  swift_setDeallocating();
  sub_22953EAE4(v169 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  return v24;
}

void sub_22988C0BC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v14 = &v99 - v10;
  v15 = *(a1 + 16);
  if (v15)
  {
    v101 = v12;
    v100 = v11;
    v16 = (a1 + 32);
    v105 = "kCharacteristicInstanceID";
    v109 = "CharacteristicConfiguration";
    v110 = (v9 + 8);
    *&v13 = 136315650;
    v103 = v13;
    v104 = v6;
    v108 = v1;
    v102 = &v99 - v10;
    while (1)
    {
      v114 = v16;
      v18 = *v16;

      sub_2296F7AE8(v19);
      v21 = sub_22988CE0C(v20);
      if (v3)
      {

        return;
      }

      v22 = v21;

      v23 = *(v18 + 16);
      v113 = v15;
      if (v23 && (v24 = sub_229543DBC(0xD000000000000017, v105 | 0x8000000000000000), (v25 & 1) != 0) && (sub_2295404B0(*(v18 + 56) + 32 * v24, &v115), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
      {
        v26 = v117;
        v27 = sub_2296136D4(v117);

        if (!v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v28 = [v22 accessories];
        if (!v28)
        {
          goto LABEL_32;
        }

        v29 = v28;
        sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
        v30 = sub_22A4DD83C();

        if (v30 >> 62)
        {
          if (!sub_22A4DE0EC())
          {
LABEL_31:

LABEL_32:
            v78 = v100;
            sub_229541CB0(ObjectType, &off_283CE8678);

            v79 = v4;
            v80 = sub_22A4DD05C();
            v81 = sub_22A4DDCEC();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              v107 = v22;
              v84 = v83;
              v117 = v83;
              *v82 = 136315394;
              v115 = 91;
              v116 = 0xE100000000000000;
              v85 = v79;
              v86 = [v85 description];
              LODWORD(v114) = v81;
              v87 = v86;
              v88 = sub_22A4DD5EC();
              v90 = v89;

              MEMORY[0x22AAD08C0](v88, v90);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v91 = sub_2295A3E30(v115, v116, &v117);

              *(v82 + 4) = v91;
              *(v82 + 12) = 2080;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
              v92 = sub_22A4DD4AC();
              v94 = v93;

              v95 = sub_2295A3E30(v92, v94, &v117);

              *(v82 + 14) = v95;
              _os_log_impl(&dword_229538000, v80, v114, "%s Ignoring invalid request: %s", v82, 0x16u);
              swift_arrayDestroy();
              v96 = v84;
              v22 = v107;
              MEMORY[0x22AAD4E50](v96, -1, -1);
              MEMORY[0x22AAD4E50](v82, -1, -1);

              (*v110)(v78, v104);
            }

            else
            {

              (*v110)(v78, v6);
            }

            type metadata accessor for HMError(0);
            v117 = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22A576180;
            *(inited + 32) = sub_22A4DD5EC();
            *(inited + 72) = MEMORY[0x277D837D0];
            *(inited + 40) = v98;
            *(inited + 48) = 0x2064696C61766E49;
            *(inited + 56) = 0xEF74736575716572;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
            swift_willThrow();

            return;
          }
        }

        else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x22AAD13F0](0, v30);
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v31 = *(v30 + 32);
        }

        v27 = v31;
      }

      v32 = v27;
      if (!*(v18 + 16))
      {
        break;
      }

      v33 = sub_229543DBC(0xD000000000000018, v109 | 0x8000000000000000);
      if ((v34 & 1) == 0)
      {
        break;
      }

      sub_2295404B0(*(v18 + 56) + 32 * v33, &v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v112 = 0;

      v35 = v117;
      sub_229541CB0(ObjectType, &off_283CE8678);
      v36 = v4;
      v37 = v32;
      v38 = sub_22A4DD05C();
      v39 = v14;
      v40 = sub_22A4DDCEC();

      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v117 = v106;
        *v41 = v103;
        v115 = 91;
        v116 = 0xE100000000000000;
        v42 = v36;
        v43 = [v42 description];
        v44 = v35;
        v45 = sub_22A4DD5EC();
        v107 = v22;
        v47 = v46;

        v48 = v45;
        v35 = v44;
        MEMORY[0x22AAD08C0](v48, v47);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v49 = sub_2295A3E30(v115, v116, &v117);

        *(v41 + 4) = v49;
        *(v41 + 12) = 2080;
        v50 = [v37 shortDescription];
        v51 = sub_22A4DD5EC();
        v53 = v52;

        v54 = sub_2295A3E30(v51, v53, &v117);
        v22 = v107;

        *(v41 + 14) = v54;
        *(v41 + 22) = 1024;
        *(v41 + 24) = v44;
        _os_log_impl(&dword_229538000, v38, v40, "%s Setting the reachability of accessory %s to %{BOOL}d", v41, 0x1Cu);
        v55 = v106;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v55, -1, -1);
        v56 = v41;
        v6 = v104;
        MEMORY[0x22AAD4E50](v56, -1, -1);

        v14 = v102;
        (*v110)(v102, v6);
        v3 = v112;
      }

      else
      {

        (*v110)(v39, v6);
        v3 = v112;
        v14 = v39;
      }

      v17 = v114;
      [v37 setReachable_];

      v16 = (v17 + 8);
      v15 = v113 - 1;
      v4 = v108;
      if (v113 == 1)
      {
        return;
      }
    }

    v57 = v101;
    sub_229541CB0(ObjectType, &off_283CE8678);

    v58 = v4;
    v59 = sub_22A4DD05C();
    v60 = sub_22A4DDCEC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v107 = v22;
      v62 = v61;
      v114 = swift_slowAlloc();
      v117 = v114;
      *v62 = 136315394;
      v115 = 91;
      v116 = 0xE100000000000000;
      v63 = v58;
      v64 = [v63 description];
      LODWORD(v113) = v60;
      v65 = v64;
      v66 = sub_22A4DD5EC();
      v68 = v67;

      MEMORY[0x22AAD08C0](v66, v68);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v69 = sub_2295A3E30(v115, v116, &v117);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v70 = sub_22A4DD4AC();
      v72 = v71;

      v73 = sub_2295A3E30(v70, v72, &v117);

      *(v62 + 14) = v73;
      _os_log_impl(&dword_229538000, v59, v113, "%s No reachability setting in request: %s", v62, 0x16u);
      v74 = v114;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v74, -1, -1);
      v75 = v62;
      v22 = v107;
      MEMORY[0x22AAD4E50](v75, -1, -1);

      (*v110)(v57, v104);
    }

    else
    {

      (*v110)(v57, v6);
    }

    type metadata accessor for HMError(0);
    v117 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_22A576180;
    *(v76 + 32) = sub_22A4DD5EC();
    *(v76 + 72) = MEMORY[0x277D837D0];
    *(v76 + 40) = v77;
    *(v76 + 48) = 0xD00000000000001CLL;
    *(v76 + 56) = 0x800000022A59A250;
    sub_22956AD8C(v76);
    swift_setDeallocating();
    sub_22953EAE4(v76 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }
}

id sub_22988CE0C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_229543DBC(0x6F7373656363416BLL, 0xEE00656D614E7972);
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v9, &v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = v8;
  v11 = v40[1];
  v37 = v40[0];
  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v38 = v6;
  v43 = v5;
  v12 = qword_27D8AB630;
  result = [qword_27D8AB630 workQueue];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  MEMORY[0x28223BE20](result);
  v15 = v37;
  *(&v36 - 4) = v12;
  *(&v36 - 3) = v15;
  *(&v36 - 2) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
  sub_22A4DDD9C();

  result = v41;
  v5 = v43;
  v6 = v38;
  v8 = v39;
  if (!v41)
  {
LABEL_8:
    v16 = MEMORY[0x277D837D0];
    sub_229541CB0(ObjectType, &off_283CE8678);
    v17 = v2;

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v20 = 136315394;
      v41 = 91;
      v42 = 0xE100000000000000;
      v21 = v17;
      v22 = [v21 description];
      v23 = sub_22A4DD5EC();
      v43 = v5;
      v24 = v23;
      v39 = v8;
      v25 = v6;
      v27 = v26;

      MEMORY[0x22AAD08C0](v24, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(v41, v42, v40);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2080;
      v29 = sub_22A4DD4AC();
      v31 = sub_2295A3E30(v29, v30, v40);

      *(v20 + 14) = v31;
      _os_log_impl(&dword_229538000, v18, v19, "%s Ignoring invalid request: %s", v20, 0x16u);
      v32 = v38;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      v33 = v20;
      v16 = MEMORY[0x277D837D0];
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v25 + 8))(v39, v43);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    type metadata accessor for HMError(0);
    v40[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = v16;
    *(inited + 40) = v35;
    *(inited + 48) = 0x2064696C61766E49;
    *(inited + 56) = 0xEF74736575716572;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22988D35C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DB57C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB4DC();
  sub_22A4DB4FC();

  if (a3)
  {
    v10 = sub_22A4DB4EC();
    v11 = [a4 fileExistsAtURL_];

    if (v11)
    {
      v12 = sub_22A4DB4EC();
      v24[0] = 0;
      v13 = [a4 removeItemAtURL:v12 error:v24];

      v14 = v24[0];
      if (!v13)
      {
        goto LABEL_7;
      }

      v15 = v24[0];
    }
  }

  v16 = sub_22A4DB4EC();
  v17 = sub_22A4DB4EC();
  v24[0] = 0;
  v18 = [a4 copyItemAtURL:v16 toURL:v17 error:v24];

  v14 = v24[0];
  if (v18)
  {
    v19 = *(v7 + 8);
    v20 = v24[0];
    return v19(v9, v6);
  }

LABEL_7:
  v22 = v14;
  sub_22A4DB3EC();

  swift_willThrow();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22988D590(void *a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v89[2] = *MEMORY[0x277D85DE8];
  v6 = sub_22A4DD07C();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB57C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v71 = &v71 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v76 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v73 = &v71 - v20;
  v88 = 0;
  sub_22A4DB52C();
  v21 = sub_22A4DD5AC();

  v84 = a1;
  v22 = [a1 fileExistsAtPath:v21 isDirectory:&v88];

  v72 = v3;
  if (v22)
  {
    v82 = a2;
    if (v88 == 1)
    {
      v23 = sub_22A4DB4EC();
      v89[0] = 0;
      v24 = [v84 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v89];

      v25 = v89[0];
      v26 = v71;
      v27 = v76;
      if (!v24)
      {
        v68 = v89[0];
        sub_22A4DB3EC();

        return swift_willThrow();
      }

      v28 = sub_22A4DD83C();
      v29 = v25;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
      v39 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22A576180;
      (*(v10 + 16))(v28 + v39, v82, v9);
      v26 = v71;
      v27 = v76;
    }

    v40 = *(v83 + 16);
    v86 = v10;
    v41 = v73;
    if (v40)
    {
      v80 = *(v28 + 16);
      if (v80)
      {
        v42 = 0;
        v74 = (v10 + 8);
        v77 = (v10 + 32);
        v78 = v10 + 16;
        v43 = MEMORY[0x277D84F90];
        v44 = v72;
        v75 = v9;
        v79 = v28;
        while (v42 < *(v28 + 16))
        {
          v85 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v45 = *(v10 + 72);
          (*(v10 + 16))(v41, v28 + v85 + v45 * v42, v9);
          v46 = v9;
          v89[0] = sub_22A4DB4AC();
          v89[1] = v47;
          MEMORY[0x28223BE20](v89[0]);
          *(&v71 - 2) = v89;
          v48 = sub_22986A5E0(sub_229890700, (&v71 - 4), v83);

          if (v48)
          {
            v49 = *v77;
            (*v77)(v81, v41, v46);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v43;
            v51 = v44;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_229583B44(0, *(v43 + 16) + 1, 1);
              v41 = v73;
              v43 = v87;
            }

            v52 = v85;
            v54 = *(v43 + 16);
            v53 = *(v43 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_229583B44((v53 > 1), v54 + 1, 1);
              v41 = v73;
              v43 = v87;
            }

            *(v43 + 16) = v54 + 1;
            v55 = v43 + v52 + v54 * v45;
            v56 = v75;
            v49(v55, v81, v75);
            v9 = v56;
            v44 = v51;
          }

          else
          {
            (*v74)(v41, v9);
          }

          ++v42;
          v28 = v79;
          v10 = v86;
          if (v80 == v42)
          {
            goto LABEL_23;
          }
        }

LABEL_36:
        __break(1u);
      }

      v43 = MEMORY[0x277D84F90];
      v44 = v72;
LABEL_23:
      v72 = v44;

      v28 = v43;
      v26 = v71;
      v27 = v76;
    }

    v85 = *(v28 + 16);
    if (!v85)
    {
    }

    v58 = v10;
    v59 = 0;
    v83 = v28 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v81 = (v58 + 16);
    v60 = (v58 + 8);
    while (v59 < *(v28 + 16))
    {
      (*(v86 + 16))(v27, v83 + *(v86 + 72) * v59, v9);
      sub_22A4DB4DC();
      sub_22A4DB4FC();

      v62 = sub_22A4DB4EC();
      v63 = v84;
      v64 = [v84 fileExistsAtURL_];

      if (v64)
      {
        v65 = sub_22A4DB4EC();
        v89[0] = 0;
        v66 = [v63 removeItemAtURL:v65 error:v89];

        if ((v66 & 1) == 0)
        {
          v69 = v89[0];

          sub_22A4DB3EC();

          swift_willThrow();
          v70 = *v60;
          (*v60)(v26, v9);
          return (v70)(v76, v9);
        }

        v61 = *v60;
        v67 = v89[0];
        v61(v26, v9);
        v27 = v76;
      }

      else
      {
        v61 = *v60;
        (*v60)(v26, v9);
      }

      v61(v27, v9);
      if (v85 == ++v59)
      {
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  sub_229541CB0(v82, &off_283CE8678);
  v30 = sub_22A4DDD0C();
  (*(v10 + 16))(v13, a2, v9);
  v31 = sub_22A4DD05C();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v89[0] = v33;
    *v32 = 136315138;
    v34 = sub_22A4DB52C();
    v35 = v10;
    v37 = v36;
    (*(v35 + 8))(v13, v9);
    v38 = sub_2295A3E30(v34, v37, v89);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_229538000, v31, v30, "No source found at: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v32, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return (*(v85 + 8))(v8, v86);
}

void sub_22988DE3C(void *a1)
{
  v80 = a1;
  v77 = sub_22A4DB57C();
  v2 = *(v77 - 8);
  v3 = MEMORY[0x28223BE20](v77);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v71 = &v66 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v66 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v75 = &v66 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v74 = &v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v79 = sub_22A4DD07C();
  v18 = *(v79 - 8);
  v19 = MEMORY[0x28223BE20](v79);
  v72 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  v78 = v1;
  sub_229541CB0(v1, &off_283CE8678);
  v26 = sub_22A4DDD0C();
  v27 = sub_22A4DD05C();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = v15;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_229538000, v27, v26, "Resetting demo mode configuration", v29, 2u);
    v30 = v29;
    v15 = v28;
    MEMORY[0x22AAD4E50](v30, -1, -1);
  }

  v31 = *(v18 + 8);
  v31(v25, v79);
  v32 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  v33 = v78;
  v34 = v76;
  sub_22988D590(v80, v17, &unk_283CDA3D8);
  if (v34)
  {
    (*(v2 + 8))(v17, v77);
  }

  else
  {
    v76 = 0;
    v67 = v15;
    v68 = v31;
    v35 = v17;
    v36 = v77;
    v69 = *(v2 + 8);
    v69(v35, v77);
    sub_229541CB0(v33, &off_283CE8678);
    v37 = sub_22A4DDD0C();
    v38 = sub_22A4DD05C();
    if (os_log_type_enabled(v38, v37))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_229538000, v38, v37, "Loading demo mode configuration from backup", v39, 2u);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    v68(v23, v79);
    v40 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    v41 = v75;
    sub_22A4DB4CC();

    v42 = v74;
    sub_22A4DB4FC();
    v43 = v36;
    v44 = v36;
    v45 = v69;
    v69(v41, v43);
    v46 = v67;
    sub_22A4DB4FC();
    v45(v42, v44);
    v47 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    v48 = v73;
    sub_22A4DB4CC();

    v49 = v78;
    v50 = v76;
    sub_229881D2C(v80, v46, v48, 0, 1, &unk_283CDA398);
    v76 = v50;
    if (v50)
    {
      v45(v48, v44);
      v45(v46, v44);
    }

    else
    {
      v45(v48, v44);
      v45(v46, v44);
      sub_229541CB0(v49, &off_283CE8678);
      v51 = sub_22A4DDD0C();
      v52 = sub_22A4DD05C();
      if (os_log_type_enabled(v52, v51))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_229538000, v52, v51, "Loading demo mode contents from from backup", v53, 2u);
        MEMORY[0x22AAD4E50](v53, -1, -1);
      }

      v68(v72, v79);
      v54 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      v55 = v75;
      sub_22A4DB4CC();

      sub_22A4DB4FC();
      v56 = v55;
      v57 = v77;
      v58 = v69;
      v69(v56, v77);
      v59 = v71;
      sub_22A4DB4FC();
      v60 = v58;
      v58(v42, v57);
      v61 = demoModeConfigPath();
      sub_22A4DD5EC();

      v62 = v70;
      sub_22A4DB4CC();

      v63 = v76;
      sub_229881D2C(v80, v59, v62, 1, 0, MEMORY[0x277D84F90]);
      v60(v62, v57);
      v60(v59, v57);
      if (!v63)
      {
        v64 = @"loadDemoModeV2Backup";
        v65 = sub_22A4DD5AC();
        CFPreferencesSetValue(v64, 0, v65, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
      }
    }
  }
}

uint64_t sub_22988E688(void *a1)
{
  v50 = a1;
  v1 = sub_22A4DB57C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v46 = &v43 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v43 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v43 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  v25 = getStoreDirectoryPath();
  sub_22A4DD5EC();

  v26 = v1;
  sub_22A4DB4CC();

  sub_22A4DB4FC();
  v27 = *(v2 + 8);
  v27(v15, v1);
  sub_22A4DB4FC();
  v27(v18, v1);
  v28 = v48;
  sub_229881D2C(v50, v23, v21, 1, 0, &unk_283CDA398);
  if (!v28)
  {
    v27(v21, v1);
    v27(v23, v1);
    v29 = demoModeConfigPath();
    v48 = 0;
    v30 = v29;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    v31 = getStoreDirectoryPath();
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_22A4DB4FC();
    v27(v15, v1);
    v32 = v47;
    sub_22A4DB4FC();
    v27(v18, v1);
    v33 = v48;
    sub_229881D2C(v50, v49, v32, 1, 0, MEMORY[0x277D84F90]);
    if (v33)
    {
      v21 = v32;
      v23 = v49;
    }

    else
    {
      v48 = 0;
      v27(v32, v1);
      v27(v49, v1);
      v34 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      v35 = v45;
      sub_22A4DB4FC();
      v27(v18, v1);
      v36 = NSTemporaryDirectory();
      if (!v36)
      {
        sub_22A4DD5EC();
        v36 = sub_22A4DD5AC();
      }

      v37 = [objc_opt_self() fileURLWithPath:v36 isDirectory:1];

      v38 = v44;
      sub_22A4DB51C();

      v21 = v46;
      sub_22A4DB4FC();
      v27(v38, v1);
      v39 = v48;
      sub_229881D2C(v50, v35, v21, 1, 0, MEMORY[0x277D84F90]);
      if (!v39)
      {
        v27(v21, v1);
        v40 = v35;
        v41 = v1;
        return (v27)(v40, v41);
      }

      v23 = v35;
      v26 = v1;
    }
  }

  v27(v21, v26);
  v40 = v23;
  v41 = v26;
  return (v27)(v40, v41);
}

HMDDemoModeManagerFactory __swiftcall HMDDemoModeManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22988EE0C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22A4DE60C() & 1;
  }
}

id sub_22988EE64(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v35 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v34 = a1;
    v13 = v12;
    v36 = v12;
    *v11 = 136315138;
    v14 = demoModeV2Status();
    v15 = sub_22A4DD5EC();
    v17 = v16;

    v18 = sub_2295A3E30(v15, v17, &v36);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_229538000, v8, v9, "Demo mode V2 status: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v19 = v13;
    a1 = v34;
    MEMORY[0x22AAD4E50](v19, -1, -1);
    v20 = v11;
    a2 = v35;
    MEMORY[0x22AAD4E50](v20, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v21 = objc_opt_self();
  v22 = a1;
  v23 = a2;
  v24 = [v21 defaultCenter];
  v25 = type metadata accessor for DemoModeManager();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_notificationCenter] = v24;
  *&v26[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] = v22;
  *&v26[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_messageDispatcher] = v23;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = [v27 demoModeDataSource];
  *&v26[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] = v30;
  v37.receiver = v26;
  v37.super_class = v25;
  v31 = objc_msgSendSuper2(&v37, sel_init);

  return v31;
}

uint64_t sub_22988F720(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22A4DE60C() & 1;
  }
}

uint64_t sub_22988F778(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_229883928(a1);
}

uint64_t sub_22988F824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2298865F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22988F8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229883DEC(a1, v4, v5, v7, v6);
}

unint64_t sub_22988F9B8()
{
  result = qword_27D881EC0;
  if (!qword_27D881EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D548, &unk_22A578880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881EC0);
  }

  return result;
}

uint64_t sub_22988FA1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22988FA64(uint64_t a1)
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

  return sub_229879398(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22988FB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2298744B0(a1, v4, v5, v7, v6);
}

uint64_t sub_22988FC5C(uint64_t a1)
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

  return sub_2298769DC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22988FD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22987B480(a1, v4, v5, v7, v6);
}

uint64_t sub_22988FE48(uint64_t a1)
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

  return sub_22986CD2C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_22988FF24()
{
  result = qword_27D881EF0;
  if (!qword_27D881EF0)
  {
    sub_229562F68(255, &qword_27D87D938, off_278666080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881EF0);
  }

  return result;
}

uint64_t sub_22988FF9C(uint64_t a1)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + v5);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22987D594(a1, v10, v1 + v4, v11, v1 + v7, v12, v13, v14);
}

uint64_t sub_2298900D4(uint64_t a1)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v1[3];
  v14 = v1[2];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_229586D38;

  return sub_22987D8BC(a1, v14, v8, v9, v1 + v4, v10, v1 + v7, v11);
}

uint64_t objectdestroy_39Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2298905CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_229890634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_229890738(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2 >> 60 == 15)
  {
    if (a6 >> 60 == 15)
    {
      sub_2295AEF1C(a1, a2);
      sub_2295AEF1C(a5, a6);
      sub_229590D18(a1, a2);
      goto LABEL_7;
    }

LABEL_5:
    sub_2295AEF1C(a1, a2);
    sub_2295AEF1C(a5, a6);
    sub_229590D18(a1, a2);
    v18 = a5;
    v19 = a6;
LABEL_12:
    sub_229590D18(v18, v19);
    return 0;
  }

  if (a6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_2295AEF1C(a1, a2);
  sub_2295AEF1C(a5, a6);
  v22 = sub_2297B7550(a1, a2, a5, a6);
  sub_229590D18(a5, a6);
  sub_229590D18(a1, a2);
  if (!v22)
  {
    return 0;
  }

LABEL_7:
  if (a4 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      sub_2295AEF1C(a3, a4);
      sub_2295AEF1C(a7, a8);
      sub_229590D18(a3, a4);
      return 1;
    }

    goto LABEL_11;
  }

  if (a8 >> 60 == 15)
  {
LABEL_11:
    sub_2295AEF1C(a3, a4);
    sub_2295AEF1C(a7, a8);
    sub_229590D18(a3, a4);
    v18 = a7;
    v19 = a8;
    goto LABEL_12;
  }

  sub_2295AEF1C(a3, a4);
  sub_2295AEF1C(a7, a8);
  v24 = sub_2297B7550(a3, a4, a7, a8);
  sub_229590D18(a7, a8);
  sub_229590D18(a3, a4);
  return v24;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_229890954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2298909B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_229890A10()
{
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DB7DC();
  __swift_project_value_buffer(v1, qword_27D8AB968);
  v16 = sub_22970DA38();
  v17 = v2;
  v18 = 0;
  v19 = 0xE000000000000000;
  v20 = 1;
  v21 = MEMORY[0x277D84F98];
  v14 = _s21EventMetadataInternalVMa(0);
  v15 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  sub_22989B24C(v0, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, &v13);
  sub_22953EAE4(&v13, &qword_27D882000, &qword_22A578390);
  v4 = *(v0 + *(_s17HomeActivityStateO5EventVMa(0) + 20));
  v14 = MEMORY[0x277D84CC0];
  v15 = &off_283CDFC58;
  LODWORD(v13) = v4;
  sub_229557188(&v13, v12);
  v5 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v5;
  v7 = __swift_mutable_project_boxed_opaque_existential_0(v12, v12[3]);
  sub_22989AA58(*v7, 0xD000000000000011, 0x800000022A589C40, isUniquelyReferenced_nonNull_native, &v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882008, &qword_22A586BE8);
  v8 = sub_22A4DD47C();
  v12[0] = v8;
  sub_22A4DE31C();

  v9 = v13;
  sub_2295798D4(v16, v17);

  return v9;
}

uint64_t sub_229890C80(void (*a1)(uint64_t *))
{
  if (qword_27D87BA50 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DB7DC();
  __swift_project_value_buffer(v2, qword_27D8AB968);
  v6 = sub_22970DA38();
  v7 = v3;
  v8 = 0;
  v9 = 0xE000000000000000;
  v10 = 1;
  v11 = MEMORY[0x277D84F98];
  a1(&v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882008, &qword_22A586BE8);
  v5 = sub_22A4DD47C();
  sub_22A4DE31C();

  sub_2295798D4(v6, v7);

  return 0;
}

uint64_t sub_229890DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_229557188(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v15, v16);
    MEMORY[0x28223BE20](v9);
    v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_22989AC04(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v15);

    *v3 = v14;
  }

  else
  {
    sub_22953EAE4(a1, &qword_27D882018, &unk_22A586BF8);
    sub_2297FCF28(a2, a3, v15);

    return sub_22953EAE4(v15, &qword_27D882018, &unk_22A586BF8);
  }

  return result;
}

uint64_t sub_229890F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2295AAFCC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_229543DBC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_229898ADC(&unk_27D87CE60, &qword_22A577CD8);
        v14 = v16;
      }

      result = sub_2297FDBE4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_229891054(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = _s13PresenceStateOMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D87EBB0, &qword_22A57C720);
    sub_2297FD0E8(a2, v7);
    v12 = sub_22A4DB7DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22953EAE4(v7, &qword_27D87EBB0, &qword_22A57C720);
  }

  else
  {
    sub_22989B1E4(a1, v10, _s13PresenceStateOMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2295AB144(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_22A4DB7DC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_229891274(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D87EA30, &unk_22A57CD80);
    sub_2297FD12C(a2, v7);
    v12 = sub_22A4DB7DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22953EAE4(v7, &qword_27D87EA30, &unk_22A57CD80);
  }

  else
  {
    sub_22989B1E4(a1, v10, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2295AB340(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_22A4DB7DC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_229891494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_22A4DBB4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22953EAE4(a1, &qword_27D882100, &unk_22A580DB0);
    sub_2297FD330(a2, a3, v9);

    return sub_22953EAE4(v9, &qword_27D882100, &unk_22A580DB0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2295AB53C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_22989166C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2295ABEC8(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_2296DC034(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_229899924();
        v10 = v13;
      }

      sub_2297FE434(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_229891770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B40, &qword_22A585CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HomePassData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22953EAE4(a1, &qword_27D881B40, &qword_22A585CD8);
    sub_2297FD6F8(a2, a3, v9);

    return sub_22953EAE4(v9, &qword_27D881B40, &qword_22A585CD8);
  }

  else
  {
    sub_22989B1E4(a1, v12, type metadata accessor for HomePassData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2295AC4C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

id sub_229891944()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882040, &unk_22A586C40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882028, &qword_22A586C28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882030, &qword_22A586C30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v16 = v11;
  sub_2298920D8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_22A4DDA6C();
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_events, v8, v5);
  sub_229564F88(v11, v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_continuation, &qword_27D882030, &qword_22A586C30);
  sub_22953EAE4(v11, &qword_27D882030, &qword_22A586C30);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_229891C00(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D882030, &qword_22A586C30);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F80, &qword_22A586A80);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_229891FB4(uint64_t a1)
{
  sub_229892080(319);
  if (v1 <= 0x3F)
  {
    sub_229892124(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_229892080(uint64_t a1)
{
  if (!qword_27D881F68)
  {
    sub_2298920D8();
    v1 = sub_22A4DDA5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D881F68);
    }
  }
}

unint64_t sub_2298920D8()
{
  result = qword_27D881F70;
  if (!qword_27D881F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881F70);
  }

  return result;
}

void sub_229892124(uint64_t a1)
{
  if (!qword_27D881F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D881F80, &qword_22A586A80);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D881F78);
    }
  }
}

uint64_t sub_229892188()
{
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask))
  {

    sub_22A4DDA7C();
  }

  sub_22989B17C(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_home);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22989229C(uint64_t a1)
{
  result = _s20ControlBlockInternalVMa(319);
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

uint64_t sub_22989236C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v6, &unk_27D881FF0, &qword_22A57A380);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_2295F5AFC(v6, v13 + v12);
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_observationTask) = sub_22957F3C0(0, 0, v9, &unk_22A586C18, v13);
}

uint64_t sub_229892570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882020, &qword_22A586C20);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882028, &qword_22A586C28);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298926B0, 0, 0);
}

uint64_t sub_2298926B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[14];
    v5 = v0[15];
    v6 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_homeActivityStateAdapter);

    (*(v5 + 16))(v2, v6 + OBJC_IVAR____TtC13HomeKitDaemonP33_748D0C001171CDD48878909A76481E9024HomeActivityStateAdapter_events, v4);

    (*(v5 + 32))(v3, v2, v4);
    sub_22A4DDA3C();
    swift_beginAccess();
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_229892884;
    v8 = v0[11];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_229892884()
{

  return MEMORY[0x2822009F8](sub_229892980, 0, 0);
}

uint64_t sub_229892980()
{
  v1 = v0[8];
  v0[19] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_229892A94, Strong, 0);
    }
  }

  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_229892A94()
{
  sub_229892BB4(*(v0 + 80), *(v0 + 152));

  return MEMORY[0x2822009F8](sub_229892B00, 0, 0);
}

uint64_t sub_229892B00()
{
  v1 = v0[19];

  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_229892884;
  v3 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v3);
}

void sub_229892BB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v42 = a1;
  v38 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881FE0, &unk_22A586BD8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = _s17HomeActivityStateO5EventVMa(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = v8;
    v22 = Strong;
    sub_2295639D8(v22, a2, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_22953EAE4(v13, &qword_27D881FE0, &unk_22A586BD8);
    }

    else
    {
      v36 = v22;
      sub_22989B1E4(v13, v20, _s17HomeActivityStateO5EventVMa);
      v23 = v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock;
      swift_beginAccess();
      if (v23[*(_s20ControlBlockInternalVMa(0) + 20)] == 1)
      {
        sub_229541CB0(v38, &off_283CE8B48);
        sub_22989B24C(v20, v18, _s17HomeActivityStateO5EventVMa);

        v24 = sub_22A4DD05C();
        v25 = sub_22A4DDCDC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v44[0] = v38;
          *v26 = 136315394;
          *(v26 + 4) = sub_2295A3E30(*(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description), *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description + 8), v44);
          *(v26 + 12) = 2080;
          v27 = sub_229890A10();
          v29 = v28;
          sub_22989B17C(v18, _s17HomeActivityStateO5EventVMa);
          v30 = sub_2295A3E30(v27, v29, v44);

          *(v26 + 14) = v30;
          _os_log_impl(&dword_229538000, v24, v25, "%s received event %s", v26, 0x16u);
          v31 = v38;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v31, -1, -1);
          MEMORY[0x22AAD4E50](v26, -1, -1);
        }

        else
        {

          sub_22989B17C(v18, _s17HomeActivityStateO5EventVMa);
        }

        (*(v37 + 8))(v10, v7);
        v32 = v36;
        v44[3] = v14;
        v44[4] = sub_229893410(&qword_27D881FE8, _s17HomeActivityStateO5EventVMa, &unk_22A57791C);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
        sub_22989B24C(v20, boxed_opaque_existential_1, _s17HomeActivityStateO5EventVMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
        sub_22957F1C4(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v34 = v39;
        sub_22A4DDA0C();

        (*(v40 + 8))(v34, v41);
        sub_22989B17C(v20, _s17HomeActivityStateO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        sub_22989B17C(v20, _s17HomeActivityStateO5EventVMa);
      }
    }
  }
}

uint64_t sub_2298931B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_controlBlock;
  swift_beginAccess();
  return sub_22989B24C(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

void sub_229893298(uint64_t a1, uint64_t a2, const char **a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v6 = [Strong homeActivityStateManager];
    if (v6)
    {
      v7 = *a3;
      v8 = v6;
      [v6 v7];
    }
  }
}

uint64_t sub_229893330()
{
  v1 = *(*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger17HomeActivityState8Observer_description);

  return v1;
}

uint64_t sub_22989338C(uint64_t a1)
{
  *(a1 + 16) = sub_229893410(&qword_27D881FB8, _s8ObserverCMa_2, &unk_22A586B28);
  result = sub_229893410(&qword_27D881FC0, _s8ObserverCMa_2, &unk_22A586BA4);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229893410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229893458(uint64_t a1)
{
  result = sub_229893410(&qword_27D881FC0, _s8ObserverCMa_2, &unk_22A586BA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2298934B0(uint64_t a1)
{
  *(a1 + 8) = sub_229893410(&qword_27D881FC8, _s8ObserverCMa_2, &unk_22A586B50);
  result = sub_229893410(&unk_27D881FD0, _s8ObserverCMa_2, &unk_22A586B6C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_229893584(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_22A4DE3EC();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_2295404B0(v27, v38);
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_229893870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s13PresenceStateOMa(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882080, &unk_22A586C78);
  v43 = v4;
  result = sub_22A4DE3EC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22989B1E4(v27 + v28 * v24, v47, _s13PresenceStateOMa);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22989B24C(v29 + v28 * v24, v47, _s13PresenceStateOMa);
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22989B1E4(v47, *(v12 + 56) + v28 * v20, _s13PresenceStateOMa);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_229893D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882088, &qword_22A586C88);
  v43 = v4;
  result = sub_22A4DE3EC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22989B1E4(v27 + v28 * v24, v47, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_22989B24C(v29 + v28 * v24, v47, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_22989B1E4(v47, *(v12 + 56) + v28 * v20, _s28DefaultRoomPresencePublisherC8ObserverVMa);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2298941B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  v43 = v4;
  result = sub_22A4DE3EC();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v6 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v48 = *v27;
        v45 = *(v27 + 16);
      }

      else
      {
        (*v40)(v47, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v48 = *v28;
        v45 = *(v28 + 16);
        v29 = v45;
      }

      sub_229893410(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22A4DD4EC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v46 * v19, v47, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v48;
      *(v20 + 16) = v45;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2298945D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22A4DBB4C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882108, &unk_22A586D00);
  v42 = v4;
  result = sub_22A4DE3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_229894978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_22A4DE3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}