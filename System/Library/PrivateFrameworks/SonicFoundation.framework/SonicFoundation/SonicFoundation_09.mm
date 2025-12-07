uint64_t sub_26B200760()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 72) = sub_26B1FB5E0(sub_26B2080E8);
  *(v0 + 80) = 0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B200824()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B200888(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_26B211EF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *a3;
  v35 = *a2;
  v36 = v12;
  v14 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v15 = sub_26B212A50();

  LODWORD(a3) = [v14 fileExistsAtPath_];

  if (!a3)
  {
    v34 = v9;
    v25 = v13;
    v26 = v10;
LABEL_6:
    v27 = *(v8 + 16);
    v24 = v38;
    v27(v38 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL, a1, v7);
    v28 = v36;
    *(v24 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_contentType) = v35;
    *(v24 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_purgeUrgency) = v28;
    v29 = v37;
    *(v24 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB) = v37;
    v30 = sub_26B213020();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v30);
    v27(v26, a1, v7);
    v31 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v29;
    (*(v8 + 32))(&v32[v31], v26, v7);
    swift_retain_n();
    sub_26B161608();

    (*(v8 + 8))(a1, v7);
    return v24;
  }

  v16 = v41;
  sub_26B15907C();
  if (!v16)
  {
    v34 = v9;
    v25 = v13;
    v26 = v10;
    v41 = 0;
    goto LABEL_6;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_26B2136C0();

  v39 = 0x742064656C696146;
  v40 = 0xEF206B72616D206FLL;
  sub_26B208240(&qword_2803E87D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v17 = v7;
  v18 = sub_26B213B90();
  v19 = a1;
  MEMORY[0x26D670040](v18);

  MEMORY[0x26D670040](0xD000000000000011, 0x800000026B221540);
  v20 = v39;
  v21 = v40;
  sub_26B1FD874(0, qword_2803E6EB0, sub_26B162128, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B2162F0;
  *(v22 + 32) = v16;
  sub_26B1FD8D8(0);
  sub_26B208240(&qword_2803E87F0, sub_26B1FD8D8, &protocol conformance descriptor for SonicError<A>);
  swift_allocError();
  *v23 = 7;
  *(v23 + 8) = v20;
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  swift_willThrow();

  (*(v8 + 8))(v19, v17);
  type metadata accessor for NoPurgeAssertion(0);
  v24 = v38;
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t sub_26B200D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26B178E9C;

  return sub_26B200E18(a5, 0);
}

uint64_t sub_26B200E18(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B200E30()
{
  OUTLINED_FUNCTION_12();
  v0[5] = *(v0[4] + 16);

  v1 = swift_task_alloc();
  v0[6] = v1;
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v2;
  v1[1] = sub_26B200EF0;
  v3 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v3, v4, v5, v6, v7);
}

uint64_t sub_26B200EF0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B201004()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  v2 = sub_26B211E50();
  v4 = v3;
  *(v0 + 72) = v3;
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17(&qword_2803E6AE0);
  }

  v5 = *(v0 + 112);
  *(v0 + 80) = qword_2803F2AA0;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  v11 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_113(v7);
  *v8 = v9;
  v8[1] = sub_26B201138;

  return v11();
}

uint64_t sub_26B201138()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B20125C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B2012DC()
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B211EF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v27 = OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL;
  v11 = *(v5 + 16);
  v25 = &v23 - v9;
  v11(&v23 - v9, v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL, v4);
  v12 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_contentType);
  v23 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_purgeUrgency);
  v24 = v12;
  v26 = OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB;
  v13 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB);

  sub_26B212FE0();
  v14 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v14);
  v11(v8, v10, v4);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = (v15 + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v15 + v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v5 + 32))(v18 + v15, v8, v4);
  v19 = v18 + v16;
  v20 = v23;
  *v19 = v24;
  *(v19 + 4) = v20;
  *(v18 + v17) = v13;

  sub_26B2025F0(0, 0, v3, &unk_26B21E110, v18);

  sub_26B205B20();
  v21 = *(v5 + 8);
  v21(v25, v4);
  v21((v0 + v27), v4);

  return v0;
}

uint64_t sub_26B2015AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  *(v7 + 240) = a6;
  *(v7 + 236) = a5;
  *(v7 + 80) = a4;
  *(v7 + 88) = a7;
  v8 = sub_26B2126A0();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  v9 = sub_26B212AD0();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();
  v10 = MEMORY[0x277D837D0];
  sub_26B207D54(0, &qword_2803E79A0, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  *(v7 + 144) = v11;
  *(v7 + 152) = *(v11 - 8);
  *(v7 + 160) = swift_task_alloc();
  sub_26B207D54(0, &qword_2803E79A8, v10, MEMORY[0x277D857A8]);
  *(v7 + 168) = v12;
  *(v7 + 176) = *(v12 - 8);
  *(v7 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B2017FC, 0, 0);
}

uint64_t sub_26B2017FC()
{
  OUTLINED_FUNCTION_30();
  if (qword_2803E6AD8 != -1)
  {
    v1 = OUTLINED_FUNCTION_55_3(&qword_2803E6AD8);
  }

  OUTLINED_FUNCTION_6_25(v1, &qword_280D2DA88, MEMORY[0x277D837D0]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26B2162F0;

  *(v2 + 32) = sub_26B211EA0();
  *(v2 + 40) = v3;
  sub_26B2024C8(v2);

  sub_26B213090();
  v4 = OUTLINED_FUNCTION_26_0();
  v5(v4);
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_7_21(v6);
  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2822003E8](v7);
}

uint64_t sub_26B201980()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B201A98()
{
  OUTLINED_FUNCTION_62();
  v61 = v0;
  v60[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v1 == sub_26B211EA0() && v2 == v3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v5 = sub_26B213E30();

    if ((v5 & 1) == 0)
    {
      __break(1u);
LABEL_8:
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_22_8();

      __asm { BRAA            X1, X16 }
    }
  }

  v8 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  sub_26B212A50();
  OUTLINED_FUNCTION_107_1();

  v9 = [v8 fileExistsAtPath_];

  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(v0 + 236);
  if (v10 < 0)
  {
    __break(1u);
  }

  *(v0 + 232) = dword_26B21DF00[*(v0 + 240)] | v10;
  *(v0 + 32) = sub_26B211EA0();
  *(v0 + 40) = v11;
  sub_26B212AC0();
  sub_26B14FCC8();
  v12 = sub_26B2134C0();
  v13 = OUTLINED_FUNCTION_16_2();
  v14(v13);

  v15 = v12 ? (v12 + 32) : 0;
  v16 = fsctl(v15, 0xC0084A44uLL, (v0 + 232), 0);

  if (v16 && (v18 = MEMORY[0x26D66FAE0](v17)) != 0)
  {
    v19 = sub_26B1591D8(v18);
    swift_willThrow();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_88_1();
    *(v0 + 48) = v21;
    *(v0 + 56) = v20 | 0xEF206B72616D0000;
    sub_26B211EF0();
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v22, v23, MEMORY[0x277CC9290]);
    v24 = sub_26B213B90();
    MEMORY[0x26D670040](v24);

    MEMORY[0x26D670040](0x6772757020736120, 0xED0000656C626165);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v27, v28, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26B2162F0;
    *(v29 + 32) = v19;
    sub_26B1FD8D8(0);
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v30, v31, &protocol conformance descriptor for SonicError<A>);
    v32 = swift_allocError();
    *v33 = 8;
    *(v33 + 8) = v25;
    *(v33 + 16) = v26;
    OUTLINED_FUNCTION_65_2(v32, v33);
    swift_willThrow();
    OUTLINED_FUNCTION_46_4();
    sub_26B2128F0();
    v34 = v32;
    v35 = sub_26B212680();
    v36 = sub_26B213330();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 208);
    if (v37)
    {
      v39 = *(v0 + 200);
      v57 = *(v0 + 104);
      v58 = *(v0 + 96);
      v59 = *(v0 + 112);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v40 = 136446466;
      v43 = sub_26B206E50(v39, v38, v60);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2114;
      v44 = v32;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v45;
      *v41 = v45;
      _os_log_impl(&dword_26B149000, v35, v36, "Failed to mark %{public}s purgeable: %{public}@", v40, 0x16u);
      OUTLINED_FUNCTION_47_4();
      sub_26B205B20();
      OUTLINED_FUNCTION_94_0();
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_94_0();

      (*(v57 + 8))(v59, v58);
    }

    else
    {
      v52 = *(v0 + 104);
      v51 = *(v0 + 112);
      v53 = *(v0 + 96);

      (*(v52 + 8))(v51, v53);
    }

    v54 = swift_task_alloc();
    *(v0 + 192) = v54;
    *v54 = v0;
    OUTLINED_FUNCTION_7_21(v54);
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_22_8();

    return MEMORY[0x2822003E8](v55);
  }

  else
  {
LABEL_21:
    v46 = swift_task_alloc();
    *(v0 + 216) = v46;
    *v46 = v0;
    v46[1] = sub_26B2020D0;
    OUTLINED_FUNCTION_66_0(*(v0 + 80));
    OUTLINED_FUNCTION_22_8();

    return sub_26B200E18(v47, v48);
  }
}

uint64_t sub_26B2020D0()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v2 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    v9 = swift_task_alloc();
    *(v2 + 192) = v9;
    *v9 = v4;
    OUTLINED_FUNCTION_7_21(v9);
    OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2822003E8](v10);
  }
}

uint64_t sub_26B202274(uint64_t a1)
{
  v24 = v1;
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = v1[28];
  OUTLINED_FUNCTION_46_4();
  sub_26B2128F0();
  v3 = v2;
  v4 = sub_26B212680();
  v5 = sub_26B213330();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[26];
  if (v6)
  {
    v8 = v1[25];
    v9 = v1[13];
    v21 = v1[12];
    v22 = v1[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v10 = 136446466;
    v13 = sub_26B206E50(v8, v7, v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_26B149000, v4, v5, "Failed to mark %{public}s purgeable: %{public}@", v10, 0x16u);
    OUTLINED_FUNCTION_47_4();
    sub_26B205B20();
    OUTLINED_FUNCTION_94_0();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_94_0();

    (*(v9 + 8))(v22, v21);
  }

  else
  {

    v16 = OUTLINED_FUNCTION_16_2();
    v17(v16);
  }

  v18 = swift_task_alloc();
  v1[24] = v18;
  *v18 = v1;
  OUTLINED_FUNCTION_7_21(v18);
  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2822003E8](v19);
}

uint64_t sub_26B2024C8(uint64_t a1)
{
  sub_26B207D54(0, &qword_2803E7998, MEMORY[0x277D837D0], MEMORY[0x277D85780]);
  MEMORY[0x28223BE20](v3);
  v8 = v1;
  v9 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778]);
  return sub_26B2130C0();
}

uint64_t sub_26B2025F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B208108(a3, v11, sub_26B185E18);
  v12 = sub_26B213020();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B205B20();
  }

  else
  {
    sub_26B213010();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26B212F70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26B212B10() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26B202894()
{
  v0 = sub_26B2012DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B2028E8()
{
  v1 = 0;
  type metadata accessor for ActorQueue();
  swift_allocObject();
  result = ActorQueue.init(ordering:)(&v1);
  qword_2803F2AA0 = result;
  return result;
}

uint64_t sub_26B202938()
{
  OUTLINED_FUNCTION_93_1();
  v3 = sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B185E18(0);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_1();
  v12 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
  (*(v5 + 16))(v9, v0, v3);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v13, v9, v3);
  *(v15 + v14) = 1;
  sub_26B161990();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_26_0();
  v19(v18);
  *(v1 + 16) = v17;
  return v1;
}

unint64_t sub_26B202B38()
{
  result = qword_2803E87F8;
  if (!qword_2803E87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87F8);
  }

  return result;
}

unint64_t sub_26B202B8C(uint64_t a1)
{
  result = sub_26B202BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B202BB4()
{
  result = qword_2803E8800;
  if (!qword_2803E8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileCacheError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FileCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B202D94(uint64_t a1)
{
  result = sub_26B211EF0();
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

uint64_t sub_26B202EB8(uint64_t a1)
{
  result = sub_26B211EF0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NoPurgeAssertion(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B202F68(uint64_t a1)
{
  result = sub_26B211EF0();
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

uint64_t sub_26B20301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26B203040, 0, 0);
}

uint64_t sub_26B203040()
{
  OUTLINED_FUNCTION_10_3();
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17(&qword_2803E6AE0);
  }

  v2 = v0[3];
  v1 = v0[4];
  v0[5] = qword_2803F2AA0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = OUTLINED_FUNCTION_75_1(&dword_26B21E218);

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26B20314C;

  return v6(&unk_26B21E210, v3);
}

uint64_t sub_26B20314C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 16);

    *v12 = v3;

    OUTLINED_FUNCTION_20();

    return v13();
  }
}

uint64_t sub_26B203288()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B2032EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for SQLDatabase.Location(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B203384, 0, 0);
}

uint64_t sub_26B203384()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_26B211EF0();
  OUTLINED_FUNCTION_27();
  (*(v3 + 16))(v1, v2);
  swift_storeEnumTagMultiPayload();
  *(v0 + 49) = 16777473;
  *(v0 + 53) = 0;
  *(v0 + 56) = 0;
  *(v0 + 60) = 2;
  type metadata accessor for SQLDatabase(0);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_26B2034AC;
  v5 = OUTLINED_FUNCTION_66_0(*(v0 + 96));

  return SQLDatabase.init(location:options:)(v5, v0 + 49);
}

uint64_t sub_26B2034AC()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v5[14] = v3;
  v5[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B21E248);
    v15 = v12;
    v13 = swift_task_alloc();
    v5[16] = v13;
    *v13 = v7;
    v13[1] = sub_26B203620;

    return v15();
  }
}

uint64_t sub_26B203620()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B203720()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

void sub_26B20377C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 136);
  if (v1 == *(v0 + 80))
  {
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_20();

    v2();
  }

  else if (v1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_77_0();
    *(v0 + 16) = 0xD000000000000129;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = v3;
    *(v0 + 48) = 0;
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_26B203880;

    SQLDatabase.execute(_:)(v0 + 16);
  }
}

uint64_t sub_26B203880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    OUTLINED_FUNCTION_13(&unk_26B21E250);
    v14 = v10;
    v11 = swift_task_alloc();
    *(v3 + 168) = v11;
    *v11 = v5;
    v11[1] = sub_26B203A08;
    v12 = OUTLINED_FUNCTION_66_0(*(v3 + 80));

    return v14(v12);
  }
}

uint64_t sub_26B203A08()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B203B00()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B203B54()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B203BB8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B203C1C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B203C80(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 688) = a6;
  *(v6 + 680) = a1;
  *(v6 + 672) = a5;
  *(v6 + 664) = a4;
  *(v6 + 656) = a3;
  return MEMORY[0x2822009F8](sub_26B203CB0, 0, 0);
}

uint64_t sub_26B203CB0()
{
  OUTLINED_FUNCTION_62();
  sub_26B16AFCC();
  v4 = v3;
  OUTLINED_FUNCTION_82_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v47;
  }

  v6 = *(v1 + 672);
  OUTLINED_FUNCTION_52_3();
  *(v7 + 32) = 0xD000000000000050;
  *(v7 + 40) = 0x800000026B221690;
  *(v7 + 104) = 0;
  v8 = MEMORY[0x277D837D0];
  *(v1 + 440) = MEMORY[0x277D837D0];
  *(v1 + 448) = &protocol witness table for String;
  *(v1 + 416) = v9;
  *(v1 + 424) = v6;
  sub_26B16BCF8(v1 + 416, v1 + 16);
  OUTLINED_FUNCTION_104_1();
  v10 = *(v4 + 24);
  v11 = v2 + 2;
  sub_26B2128F0();
  if (v11 > (v10 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v4 = v48;
  }

  v12 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v12);
  __swift_destroy_boxed_opaque_existential_1((v1 + 416));
  OUTLINED_FUNCTION_34_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v49;
  }

  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_68_1(v4 + v11 * v13, v58, v61, v65, v68);
  v14 = MEMORY[0x277D839F8];
  *(v15 + 104) = 0;
  *(v1 + 480) = v14;
  *(v1 + 488) = &protocol witness table for Double;
  *(v1 + 456) = v16;
  sub_26B16BCF8(v1 + 456, v1 + 96);
  *(v1 + 168) = 1;
  OUTLINED_FUNCTION_83_1();
  if (!(v19 ^ v20 | v18))
  {
    OUTLINED_FUNCTION_18_14(v17);
    sub_26B16AFCC();
    v4 = v50;
  }

  v21 = OUTLINED_FUNCTION_13_21();
  memcpy(v21, (v1 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 456));
  OUTLINED_FUNCTION_34_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v51;
  }

  v22 = *(v1 + 672);
  OUTLINED_FUNCTION_52_3();
  *(v23 + 32) = 0xD000000000000046;
  *(v23 + 40) = 0x800000026B2216F0;
  OUTLINED_FUNCTION_50_5(v59, v62, v66);
  *(v24 + 104) = 0;
  *(v1 + 520) = v8;
  *(v1 + 528) = &protocol witness table for String;
  *(v1 + 496) = v25;
  *(v1 + 504) = v22;
  sub_26B16BCF8(v1 + 496, v1 + 176);
  *(v1 + 248) = 1;
  v26 = *(v4 + 24);
  sub_26B2128F0();
  if (v11 + 2 > (v26 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v4 = v52;
  }

  v27 = OUTLINED_FUNCTION_13_21();
  memcpy(v27, (v1 + 176), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 496));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v53;
  }

  *(v4 + 16) = v0;
  v28 = v4 + 80 * v26;
  *(v28 + 32) = 8236;
  *(v28 + 40) = 0xE200000000000000;
  OUTLINED_FUNCTION_50_5(v59, v62, v66);
  v29 = MEMORY[0x277D84D38];
  *(v30 + 104) = 0;
  *(v1 + 560) = v29;
  *(v1 + 568) = &protocol witness table for UInt64;
  *(v1 + 536) = v31;
  sub_26B16BCF8(v1 + 536, v1 + 256);
  *(v1 + 328) = 1;
  v32 = *(v4 + 24);
  if ((v26 + 2) > (v32 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v32);
    sub_26B16AFCC();
    v4 = v54;
  }

  v33 = OUTLINED_FUNCTION_13_21();
  memcpy(v33, (v1 + 256), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 536));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v55;
  }

  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_68_1(v4 + v26 * v34, v59, v62, v66, v69);
  *(v35 + 104) = 0;
  *(v1 + 600) = MEMORY[0x277D839F8];
  *(v1 + 608) = &protocol witness table for Double;
  *(v1 + 576) = v36;
  sub_26B16BCF8(v1 + 576, v1 + 336);
  *(v1 + 408) = 1;
  v37 = *(v4 + 24);
  if ((v26 + 2) > (v37 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v37);
    sub_26B16AFCC();
    v4 = v56;
  }

  v38 = OUTLINED_FUNCTION_13_21();
  memcpy(v38, (v1 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 576));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v57;
  }

  OUTLINED_FUNCTION_73_2();
  v40 = v4 + v26 * v39;
  *(v40 + 32) = 15145;
  *(v40 + 40) = 0xE200000000000000;
  *(v40 + 96) = v70;
  *(v40 + 64) = v63;
  *(v40 + 80) = v67;
  *(v40 + 48) = v60;
  *(v40 + 104) = 0;
  v64 = MEMORY[0x277D84F90];
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v42 = *(v64 + 16);
  if (v42)
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v1 + 616) = v22;
    *(v1 + 624) = 0;
    *(v1 + 632) = &protocol witness table for Double;
    *(v1 + 640) = 0xD000000000000046;
    *(v1 + 648) = v42;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v1 + 696) = v43;
    *v43 = v44;
    v43[1] = sub_26B2041D4;
    OUTLINED_FUNCTION_22_8();

    return SQLDatabase.execute(_:)(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2041D4()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[88] = v0;

  sub_26B1A85A8(v3[77], v2[78], v2[79], v2[80], *(v3 + 648));
  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_26B204370(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 304) = a4;
  *(v5 + 312) = a5;
  *(v5 + 89) = a3;
  *(v5 + 296) = a2;
  return MEMORY[0x2822009F8](sub_26B204398, 0, 0);
}

uint64_t sub_26B204398()
{
  OUTLINED_FUNCTION_62();
  v3 = MEMORY[0x277D84F90];
  sub_26B16AFCC();
  v5 = v4;
  OUTLINED_FUNCTION_82_1();
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v28;
  }

  OUTLINED_FUNCTION_52_3();
  *(v7 + 32) = 0xD00000000000002FLL;
  *(v7 + 40) = 0x800000026B2213F0;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 104) = 0;
  *(v0 + 200) = v8;
  *(v0 + 208) = &protocol witness table for Bool;
  *(v0 + 176) = v9;
  sub_26B16BCF8(v0 + 176, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_83_1();
  if (!(v12 ^ v13 | v11))
  {
    OUTLINED_FUNCTION_18_14(v10);
    sub_26B16AFCC();
    v5 = v29;
  }

  v14 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  OUTLINED_FUNCTION_34_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v30;
  }

  v15 = *(v0 + 312);
  OUTLINED_FUNCTION_52_3();
  *(v16 + 32) = 0xD000000000000014;
  *(v16 + 40) = 0x800000026B221420;
  OUTLINED_FUNCTION_50_5(v34, v35, v36);
  *(v17 + 104) = 0;
  *(v0 + 240) = MEMORY[0x277D837D0];
  *(v0 + 248) = &protocol witness table for String;
  *(v0 + 216) = v18;
  *(v0 + 224) = v15;
  sub_26B16BCF8(v0 + 216, v0 + 96);
  *(v0 + 168) = 1;
  v19 = *(v5 + 24);
  v20 = v1 + 2;
  sub_26B2128F0();
  if (v20 > (v19 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v5 = v31;
  }

  v21 = OUTLINED_FUNCTION_13_21();
  memcpy(v21, (v0 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_34_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v32;
  }

  OUTLINED_FUNCTION_73_2();
  v23 = v5 + v20 * v22;
  *(v23 + 32) = 59;
  *(v23 + 40) = 0xE100000000000000;
  OUTLINED_FUNCTION_0_34(v23, v33, v34, v35, v36, v37);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v25 = *(v3 + 16);
  if (v25)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v0 + 256) = v15;
    *(v0 + 264) = v19;
    *(v0 + 272) = 0x800000026B221420;
    *(v0 + 280) = v2;
    *(v0 + 288) = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 320) = v26;
    *v26 = v27;
    v26[1] = sub_26B2046AC;

    return SQLDatabase.execute(_:)(v0 + 256);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2046AC()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[41] = v0;

  sub_26B1A85A8(v3[32], v2[33], v2[34], v2[35], *(v3 + 288));
  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v9 = v5[1];

    return v9();
  }
}

uint64_t sub_26B204848(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 192) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  return MEMORY[0x2822009F8](sub_26B20486C, 0, 0);
}

uint64_t sub_26B20486C()
{
  v2 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v4 = v3;
  OUTLINED_FUNCTION_82_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v23;
  }

  OUTLINED_FUNCTION_73_2();
  v7 = v4 + v1 * v6;
  *(v7 + 32) = 0xD00000000000002DLL;
  *(v7 + 40) = 0x800000026B2214A0;
  v8 = MEMORY[0x277D839F8];
  *(v7 + 104) = 0;
  *(v0 + 120) = v8;
  *(v0 + 128) = &protocol witness table for Double;
  *(v0 + 96) = v9;
  sub_26B16BCF8(v0 + 96, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_83_1();
  if (!(v12 ^ v13 | v11))
  {
    OUTLINED_FUNCTION_18_14(v10);
    sub_26B16AFCC();
    v4 = v24;
  }

  v14 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v15 = *(v4 + 16);
  if (v15 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v25;
  }

  OUTLINED_FUNCTION_73_2();
  v17 = v4 + v15 * v16;
  *(v17 + 32) = 0xD000000000000027;
  *(v17 + 40) = 0x800000026B2214D0;
  OUTLINED_FUNCTION_0_34(v17, v26, v28, v29, v30, v31);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v19 = *(v2 + 16);
  *(v0 + 200) = v19;
  if (v19)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    v20 = v15 + 1;
    *(v0 + 224) = v20;
    *(v0 + 232) = v2;
    *(v0 + 208) = v4;
    *(v0 + 216) = v15;
    *(v0 + 136) = v4;
    *(v0 + 144) = v15;
    *(v0 + 152) = v20;
    *(v0 + 160) = v2;
    *(v0 + 168) = v19 != 0;

    OUTLINED_FUNCTION_13(&unk_26B21C060);
    v27 = v21;
    v22 = swift_task_alloc();
    *(v0 + 240) = v22;
    *v22 = v0;
    v22[1] = sub_26B204B00;

    return v27(v0 + 136);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B204B00()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;

  if (v0)
  {
    v11 = OUTLINED_FUNCTION_91_1();
    sub_26B1A85A8(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_10_0();

    return v16();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_91_1();
    *(v7 + 89) = v3;
    *(v7 + 248) = v5;
    sub_26B1A85A8(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_26B204C3C()
{
  v1 = 0.0;
  if ((*(v0 + 89) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  if (v1 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 1.84467441e19)
  {
    **(v0 + 176) = v1;
    OUTLINED_FUNCTION_20();
    return v2();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26B204CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26B204CE4, 0, 0);
}

uint64_t sub_26B204CE4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13(&unk_26B21C058);
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_26B204D98;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, 0x746172656D756E65, 0xE900000000000065, v7, v4, v5);
}

uint64_t sub_26B204D98()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B204E78()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  *(v0 + 696) = v3;
  *(v0 + 688) = v4;
  OUTLINED_FUNCTION_77_0();
  *(v0 + 560) = 0xD000000000000027;
  *(v0 + 568) = v5;
  OUTLINED_FUNCTION_13(&unk_26B21E198);
  v10 = v6;
  *(v0 + 680) = v2;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 704) = v7;
  *v7 = v8;
  v7[1] = sub_26B204F4C;

  return v10(v0 + 472, v0 + 560);
}

uint64_t sub_26B204F4C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 712) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B205044()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  *(v0 + 720) = v1;
  *(v0 + 728) = v2;
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  *(v0 + 736) = v3;
  *(v0 + 744) = v4;
  v5 = *(v0 + 504);
  *(v0 + 752) = v5;
  v6 = *(v0 + 512);
  *(v0 + 89) = v6;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  *(v0 + 144) = sub_26B207C60;
  *(v0 + 152) = 0;

  sub_26B1A8558(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_13(&unk_26B21A188);
  v10 = v7;
  v8 = swift_task_alloc();
  *(v0 + 760) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_20_11(v8);

  return v10();
}

uint64_t sub_26B205140()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 768) = v4;
  *(v2 + 776) = v5;
  *(v2 + 784) = v6;
  *(v2 + 90) = v7;
  *(v2 + 792) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B205250()
{
  OUTLINED_FUNCTION_35_3();
  v3 = *(v0 + 776);
  if (!v3)
  {
    OUTLINED_FUNCTION_45_3();
    v13 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v13;
    v14 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v14;
    OUTLINED_FUNCTION_9_24();
    sub_26B205B20();

    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_20();
LABEL_5:
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 792);
  v5 = (*(v0 + 688))(*(v0 + 768), *(v0 + 776), (*(v0 + 784) == 1.0) & ~*(v0 + 90));
  if (v4)
  {
    v6 = *(v0 + 89);
    v7 = *(v0 + 752);
    v8 = *(v0 + 744);
    v9 = *(v0 + 736);
    v10 = *(v0 + 728);
    v11 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v11;
    v12 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v12;
    OUTLINED_FUNCTION_9_24();
    sub_26B205B20();

    sub_26B1A85A8(v10, v9, v8, v7, v6);

    OUTLINED_FUNCTION_10_0();
    goto LABEL_5;
  }

  if (v5)
  {

    OUTLINED_FUNCTION_13(&unk_26B21A188);
    v17 = swift_task_alloc();
    *(v0 + 760) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_20_11(v17);
    OUTLINED_FUNCTION_78();

    __asm { BR              X0 }
  }

  v20 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v22 = v21;
  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  v25 = v24 + 1;
  if (v24 >= v23 >> 1)
  {
    OUTLINED_FUNCTION_18_14(v23);
    sub_26B16AFCC();
    v22 = v46;
  }

  OUTLINED_FUNCTION_77_0();
  *(v22 + 16) = v25;
  v26 = v22 + 80 * v24;
  *(v26 + 32) = 0xD000000000000023;
  *(v26 + 40) = v27;
  *(v26 + 104) = 0;
  *(v0 + 544) = MEMORY[0x277D837D0];
  *(v0 + 552) = &protocol witness table for String;
  *(v0 + 520) = v28;
  *(v0 + 528) = v3;
  sub_26B16BCF8(v0 + 520, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  v29 = *(v22 + 24);
  v30 = v24 + 2;
  sub_26B2128F0();
  if (v30 > (v29 >> 1))
  {
    sub_26B16AFCC();
    v22 = v47;
  }

  *(v22 + 16) = v30;
  OUTLINED_FUNCTION_123_0((v22 + 80 * v25 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v31 = *(v22 + 16);
  if (v31 >= *(v22 + 24) >> 1)
  {
    sub_26B16AFCC();
    v22 = v48;
  }

  *(v22 + 16) = v31 + 1;
  v32 = v22 + 80 * v31;
  *(v32 + 32) = 59;
  *(v32 + 40) = 0xE100000000000000;
  OUTLINED_FUNCTION_50_5(*(v0 + 416), *(v0 + 432), *(v0 + 448));
  *(v33 + 104) = 0;
  *(v0 + 640) = v22;
  *v34 = 0u;
  *(v0 + 664) = v20;
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v36 = *(*(v0 + 664) + 16);
  if (v36)
  {

    v37 = *(v0 + 640);
    v38 = *(v0 + 648);
    v39 = *(v0 + 656);
    v40 = *(v0 + 664);
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v41 = v37;
    v1 = v39;
    v2 = v40;
  }

  else
  {
    v38 = *(v0 + 656);
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v41 = *(v0 + 648);
    sub_26B2128F0();

    OUTLINED_FUNCTION_71_1();
  }

  *(v0 + 600) = v41;
  *(v0 + 608) = v38;
  *(v0 + 616) = v1;
  *(v0 + 624) = v2;
  *(v0 + 632) = v36 != 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 800) = v42;
  *v42 = v43;
  v42[1] = sub_26B2057CC;
  OUTLINED_FUNCTION_78();

  return SQLDatabase.Transaction.execute(_:)(v44);
}

uint64_t sub_26B2056C0()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 672) = *(v0 + 792);
  sub_26B162128();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B20573C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_120();
  v1 = v0[7];
  v0[10] = v0[6];
  v0[11] = v1;
  v2 = v0[9];
  v0[12] = v0[8];
  v0[13] = v2;
  OUTLINED_FUNCTION_9_24();
  sub_26B205B20();
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B2057CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 808) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_13(&unk_26B21A188);
    v13 = v10;
    v11 = swift_task_alloc();
    *(v3 + 760) = v11;
    *v11 = v5;
    OUTLINED_FUNCTION_20_11(v11);

    return v13();
  }
}

uint64_t sub_26B205928()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45_3();

  OUTLINED_FUNCTION_120();
  v1 = v0[7];
  v0[22] = v0[6];
  v0[23] = v1;
  v2 = v0[9];
  v0[24] = v0[8];
  v0[25] = v2;
  OUTLINED_FUNCTION_9_24();
  sub_26B205B20();
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B2059B8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B2059F0()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v2);
  v5 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v4 + 64);
  v6 = v0 + ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *v6;
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v6 + 4);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_26B1760A8;
  v11 = OUTLINED_FUNCTION_111_1();

  return sub_26B2015AC(v11, v12, v13, v14, v7, v9, v8);
}

uint64_t sub_26B205B20()
{
  v1 = OUTLINED_FUNCTION_93_1();
  v2(v1);
  OUTLINED_FUNCTION_27();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26B205B74()
{
  sub_26B1FD874(0, &qword_2803E8830, sub_26B2078F8, type metadata accessor for ActorBox);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_26B205BF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_26B16E800(a2, a3), (v11 & 1) != 0))
  {
    sub_26B208108(*(v9 + 56) + 8 * v10, &v18, sub_26B166480);
    v12 = 0;
  }

  else
  {
    v18 = 0;
    v12 = 1;
  }

  v19 = v12;
  sub_26B208108(&v18, &v16, sub_26B207850);
  if (v17)
  {
    sub_26B205B20();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_26B205B20();
    if (Strong)
    {
LABEL_14:
      sub_26B205B20();
      return Strong;
    }
  }

  if (a4)
  {

    v14 = a4(v13);
    if (!v5)
    {
      Strong = v14;
      if (v14)
      {
        swift_weakInit();
        v17 = 0;
        sub_26B2128F0();
        sub_26B16EC98(&v16);
        sub_26B193F8C(a4, a5);
        goto LABEL_14;
      }
    }

    sub_26B205B20();
    sub_26B193F8C(a4, a5);
  }

  else
  {
    sub_26B205B20();
    return 0;
  }

  return Strong;
}

uint64_t sub_26B205E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B207D54(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v8 + 32))(&v16[v15], v10, v7);
  sub_26B2128F0();

  sub_26B161608();
}

uint64_t sub_26B205FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_26B206020, 0, 0);
}

uint64_t sub_26B206020()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = *(*(v0 + 40) + 16);

  v1 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v1, v2, 0);
}

uint64_t sub_26B206090()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  sub_26B2061B8((v2 + 112), v3, v1);
  v0[9] = 0;
  swift_endAccess();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B20614C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27_10(v0, &qword_2803E79B0, MEMORY[0x277D837D0]);
  sub_26B213070();
  OUTLINED_FUNCTION_20();

  return v1();
}

uint64_t sub_26B2061B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  sub_26B207D54(0, qword_2803E79B8, MEMORY[0x277D837D0], MEMORY[0x277D85760]);
  v30 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = v25 - v7;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v9 = sub_26B2128F0();
    v8 = sub_26B1F8B00(v9, sub_26B18DD80, sub_26B206A98);
  }

  v10 = *(v8 + 16);
  v28 = (v6 + 8);
  result = sub_26B2128F0();
  v12 = 0;
  for (i = (v8 + 40); ; i += 2)
  {
    if (v10 == v12)
    {
    }

    if (v12 >= *(v8 + 16))
    {
      break;
    }

    v14 = *a1;
    if (*(*a1 + 16))
    {
      v16 = *(i - 1);
      v15 = *i;
      sub_26B2128F0();
      v17 = sub_26B16E800(v16, v15);
      if (v18)
      {
        sub_26B208108(*(v14 + 56) + 8 * v17, &v33, sub_26B166480);
        sub_26B207FF0(&v33, v35, sub_26B166480);
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          v19 = sub_26B16E800(v16, v15);
          if (v20)
          {
            v21 = v19;
            v27 = v20;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = *a1;
            v25[1] = *(v32 + 24);
            sub_26B207884(0, &qword_2803E6E58, sub_26B166480, MEMORY[0x277D843B8]);
            sub_26B2139B0();
            v22 = v32;

            sub_26B207FF0(*(v22 + 56) + 8 * v21, &v33, sub_26B166480);
            sub_26B166480(0);
            v23 = MEMORY[0x277D837D0];
            sub_26B2139C0();
            LOBYTE(v20) = v27;
            *a1 = v22;
          }

          else
          {
            v33 = 0;
            v23 = MEMORY[0x277D837D0];
          }

          LOBYTE(v34) = (v20 & 1) == 0;
          sub_26B205B20();
          v33 = v16;
          v34 = v15;
          sub_26B207D54(0, &qword_2803E79B0, v23, MEMORY[0x277D85788]);
          v24 = v29;
          sub_26B213060();
          (*v28)(v24, v30);
        }

        result = sub_26B205B20();
      }

      else
      {
      }
    }

    ++v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B20656C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = bswap64(a4);
  v8 = sub_26B2072D4(8, 0);
  v8[4] = v7;
  v9 = (v8 + 4);
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v11 = v8[2];
      while (v11 != v10)
      {
        OUTLINED_FUNCTION_90_0(v9);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      a3 = v11;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = v8;
  a1[1] = a3;
  return a3;
}

uint64_t sub_26B206628(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = bswap32(a4);
  v8 = sub_26B2072D4(4, 0);
  *(v8 + 8) = v7;
  v9 = (v8 + 4);
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v11 = v8[2];
      while (v11 != v10)
      {
        OUTLINED_FUNCTION_90_0(v9);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      a3 = v11;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = v8;
  a1[1] = a3;
  return a3;
}

void *sub_26B2066E4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B20683C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  if (!a2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_12:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    result[4] = v6;
    result[5] = v8;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = v5;
    v18 = v4;
    v19 = result;
    v11 = 0;
    v12 = *(v7 + 16);
    v13 = (v7 + 48);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = v12;
LABEL_11:
        v4 = v18;
        result = v19;
        v5 = v17;
        goto LABEL_12;
      }

      if (v11 >= *(v7 + 16))
      {
        break;
      }

      v15 = *(v13 - 2);
      v14 = *(v13 - 1);
      v16 = *v13;
      v13 += 24;
      v21[0] = v15;
      v21[1] = v14;
      v22 = v16;

      v6(&v20, v21);

      *(a2 + 8 * v11++) = v20;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B206940(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B206A98(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_26B2128F0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_26B2128F0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B206BF4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v4[1] = sub_26B206CE0;

  return v7(v1);
}

uint64_t sub_26B206CE0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B206DC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

unint64_t sub_26B206E50(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_26B2128F0();
  v6 = sub_26B206F8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26B15CF98(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B206F48()
{
  result = qword_2803E8820;
  if (!qword_2803E8820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E8820);
  }

  return result;
}

unint64_t sub_26B206F8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B20708C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26B213780();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26B20708C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B2070D8(a1, a2);
  sub_26B2071F0(&unk_287BBB120);
  return v3;
}

uint64_t sub_26B2070D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26B212C40())
  {
    result = sub_26B2072D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26B2136A0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26B213780();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26B2071F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26B207344(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B2072D4(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_6_25(a1, &qword_280D2CCD0, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26B207344(char *result, int64_t a2, char a3, char *a4)
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
    sub_26B207D54(0, &qword_280D2CCD0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_26B207450()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B178E9C;
  v7 = OUTLINED_FUNCTION_22_14();

  return sub_26B204370(v7, v8, v1, v3, v2);
}

uint64_t sub_26B207500()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v1[1] = sub_26B178E9C;
  v3 = OUTLINED_FUNCTION_22_14();

  return sub_26B175FB0(v3, v4);
}

uint64_t sub_26B207594(uint64_t a1, uint64_t a2)
{
  sub_26B212790();
  sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_26B212750();
}

uint64_t sub_26B207668(uint64_t a1, uint64_t a2)
{
  result = sub_26B211D10();
  if (!result || (result = sub_26B211D40(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26B211D30();
      sub_26B212790();
      sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_26B212750();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B207750()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27_10(v2, &qword_2803E79B0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v3);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26B178E9C;
  v7 = OUTLINED_FUNCTION_111_1();

  return sub_26B205FFC(v7, v8, v9, v4, v5, v10);
}

void sub_26B207884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B20792C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v5 = v6;
      goto LABEL_9;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_9:
      sub_26B207668(a1, v5);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_26B207594(a1, v3);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

void *sub_26B2079C8(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_26B2072D4(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B207A44()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v4[1] = sub_26B178E9C;
  v6 = OUTLINED_FUNCTION_22_14();

  return sub_26B204CC0(v6, v7, v1, v2);
}

uint64_t sub_26B207AE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_26B205BF0(a1, *a2, a2[1], a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_26B207B20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B2085FC;

  return sub_26B1FA6A0(a2);
}

uint64_t sub_26B207BC0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B1B3A4C;

  return sub_26B1FA888(a2);
}

void sub_26B207C60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26B1FB5B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void sub_26B207CC8(uint64_t a1)
{
  if (!qword_2803E8848)
  {
    sub_26B207D54(255, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E8848);
    }
  }
}

void sub_26B207D54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26B207DA4()
{
  result = qword_2803E8858;
  if (!qword_2803E8858)
  {
    sub_26B207D54(255, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8858);
  }

  return result;
}

uint64_t sub_26B207E38()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_10(v2);
  *v3 = v4;
  v3[1] = sub_26B178E9C;
  v5 = OUTLINED_FUNCTION_22_14();

  return sub_26B204848(v5, v6, v1);
}

uint64_t sub_26B207ED4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_86();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_37_6(v1);

  return sub_26B1752E8(v3, v4, v5);
}

uint64_t sub_26B207F60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B207FF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_27();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_26B20804C()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_26B200580(v0 + v6, *(v0 + ((v6 + *(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL)), *(v0 + ((v6 + *(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4), *(v0 + ((v6 + *(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26B208108(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_27();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_26B208164()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_93_1();
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_21(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B178E9C;
  v7 = OUTLINED_FUNCTION_22_14();

  return sub_26B200D78(v7, v8, v2, v3, v9);
}

uint64_t sub_26B208240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B208288()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_93_1();
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v1);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B178E9C;
  v9 = OUTLINED_FUNCTION_22_14();

  return sub_26B20301C(v9, v10, v4, v11, v5);
}

uint64_t sub_26B208388()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_10(v1);
  *v2 = v3;
  v2[1] = sub_26B178E9C;
  v4 = OUTLINED_FUNCTION_22_14();

  return sub_26B2032EC(v4, v5, v0);
}

uint64_t sub_26B20841C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_86();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_37_6(v1);

  return sub_26B1752E8(v3, v4, v5);
}

uint64_t sub_26B2084A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B208538()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = *(v0 + 6);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v6[1] = sub_26B178E9C;
  v8 = OUTLINED_FUNCTION_22_14();

  return sub_26B203C80(v3, v8, v9, v1, v2, v4);
}

void OUTLINED_FUNCTION_27_10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85788];

  sub_26B207D54(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_44_5()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return MEMORY[0x282200DE8](0x6C7070612E6D6F63);
}

__n128 OUTLINED_FUNCTION_53_2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v10 + 112) = a1;
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_68_1(uint64_t a1@<X8>, __int128 a2, __int128 a3, __int128 a4, uint64_t a5)
{
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 96) = a5;
  *(a1 + 64) = a3;
  *(a1 + 80) = a4;
  *(a1 + 48) = a2;
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_26B2139E0();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_26B2136C0();
}

void OUTLINED_FUNCTION_72_1()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_78_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  return 0;
}

void OUTLINED_FUNCTION_94_0()
{

  JUMPOUT(0x26D6723F0);
}

void OUTLINED_FUNCTION_96_0()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B2138F0();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 608);
  v4 = *(v0 + 616);
  v5 = *(v0 + 624);
  v6 = *(v0 + 632);

  return sub_26B1A85A8(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_100_1()
{
}

void OUTLINED_FUNCTION_102_1()
{
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
  *(v2 - 104) = 0;
  *(v2 - 96) = 0xE000000000000000;
}

__n128 *OUTLINED_FUNCTION_103_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 104) = a1;
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_26B211EF0();
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  **(v0 + 64) = *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return sub_26B2136C0();
}

void *OUTLINED_FUNCTION_123_0(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

unint64_t OUTLINED_FUNCTION_125_0()
{

  return sub_26B162128();
}

SonicFoundation::MarkdownTable __swiftcall MarkdownTable.init(headers:rows:)(Swift::OpaquePointer headers, Swift::OpaquePointer rows)
{
  *v2 = 0;
  *(v2 + 8) = headers;
  *(v2 + 16) = rows;
  result.headers = rows;
  result._updatingHeaders = headers._rawValue;
  return result;
}

{
  rawValue = rows._rawValue;
  v5 = v2;
  v6 = *(headers._rawValue + 2);
  if (v6)
  {
    v17 = v2;
    v19 = MEMORY[0x277D84F90];
    sub_26B15B518(0, v6, 0);
    v7 = v19;
    v8 = (headers._rawValue + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v19 + 16);
      v12 = *(v19 + 24);
      sub_26B2128F0();
      if (v11 >= v12 >> 1)
      {
        sub_26B15B518(v12 > 1, v11 + 1, 1);
      }

      *(v19 + 16) = v11 + 1;
      v13 = v19 + 24 * v11;
      *(v13 + 32) = 3;
      *(v13 + 40) = v9;
      *(v13 + 48) = v10;
      v8 += 2;
      --v6;
    }

    while (v6);

    v5 = v17;
    rawValue = rows._rawValue;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *v5 = 0;
  *(v5 + 8) = v7;
  *(v5 + 16) = rawValue;
  result.rows._rawValue = v16;
  result.headers._rawValue = v15;
  result._updatingHeaders = v14;
  return result;
}

uint64_t MarkdownTable.Header.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t MarkdownTable.Header.label.getter()
{
  v1 = *(v0 + 8);
  sub_26B2128F0();
  return v1;
}

uint64_t MarkdownTable.Header.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MarkdownTable.Header.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a2;
  if (v4 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v7)
  {
    return 0;
  }

  if (v5 == *(a2 + 1) && v6 == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t MarkdownTable.headers.setter(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  sub_26B208E60(v2);
}

void sub_26B208E60(uint64_t a1)
{
  v2 = v1;
  sub_26B20A5DC(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84480];
  sub_26B20A74C(0, &qword_2803E8880, &type metadata for MarkdownTable.Header, MEMORY[0x277D84480]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v60[0] = *(v2 + 8);
  v60[4] = a1;
  v14 = MEMORY[0x277D83940];
  sub_26B20A74C(0, &qword_2803E8890, &type metadata for MarkdownTable.Header, MEMORY[0x277D83940]);
  sub_26B20A698(&qword_2803E8898, &qword_2803E8890, v14, MEMORY[0x277D83958]);
  sub_26B20A6E8();
  v15 = v7;
  sub_26B2129E0();
  *v2 = 1;
  v49 = v11;
  (*(v11 + 16))(v7, v13, v10);
  v16 = *(v5 + 44);
  v17 = sub_26B20A698(&qword_2803E8888, &qword_2803E8880, v8, MEMORY[0x277D84490]);
  v48 = v13;
  v18 = v16;
  sub_26B213220();
  v19 = &qword_2803E6CD0;
  v50 = v7;
  v51 = v2;
  v53 = v16;
  v54 = v10;
  v52 = v17;
  while (1)
  {
    sub_26B213270();
    if (*(v15 + v18) == v60[0])
    {
      sub_26B20A79C(v15);
      (*(v49 + 8))(v48, v10);
      *v2 = 0;
      return;
    }

    v20 = v19;
    v21 = sub_26B2132E0();
    v23 = *v22;
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = *(v22 + 40);
    v28 = *(v22 + 41);
    v55 = v22[1];
    v56 = v24;
    v57 = v25;
    v58 = v26;
    v59 = v27;
    sub_26B20A73C();
    v21(v60, 0);
    sub_26B213280();
    v29 = *(v2 + 16);
    v30 = *(v29 + 16);
    if (v28)
    {
      break;
    }

    if (v30)
    {
      v60[0] = MEMORY[0x277D84F90];
      sub_26B15B4F8(0, v30, 0);
      if (v23 < 0)
      {
        goto LABEL_31;
      }

      v19 = v20;
      v31 = v60[0];
      v39 = 32;
      v40 = MEMORY[0x277D837D0];
      while (1)
      {
        v41 = *(v29 + v39);
        v42 = *(v41 + 16);
        if (v42 < v23)
        {
          goto LABEL_29;
        }

        sub_26B2128F0();
        if (!swift_isUniquelyReferenced_nonNull_native() || v42 >= *(v41 + 24) >> 1)
        {
          sub_26B16B750();
          v41 = v43;
        }

        v44 = (v41 + 16 * v23);
        sub_26B20A74C(0, v19, v40, MEMORY[0x277D83D88]);
        swift_arrayDestroy();
        memmove(v44 + 6, v44 + 4, 16 * (*(v41 + 16) - v23));
        ++*(v41 + 16);
        v44[4] = 0;
        v44[5] = 0;
        v46 = *(v31 + 16);
        v45 = *(v31 + 24);
        v60[0] = v31;
        if (v46 >= v45 >> 1)
        {
          sub_26B15B4F8(v45 > 1, v46 + 1, 1);
          v31 = v60[0];
        }

        *(v31 + 16) = v46 + 1;
        *(v31 + 8 * v46 + 32) = v41;
        v39 += 8;
        if (!--v30)
        {
LABEL_24:
          sub_26B20A744();

          v15 = v50;
          v2 = v51;
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    sub_26B20A744();

    v31 = MEMORY[0x277D84F90];
    v19 = v20;
LABEL_26:
    *(v2 + 16) = v31;
    v18 = v53;
    v10 = v54;
  }

  if (!v30)
  {
    goto LABEL_25;
  }

  v60[0] = MEMORY[0x277D84F90];
  sub_26B15B4F8(0, v30, 0);
  if (v23 < 0)
  {
    goto LABEL_30;
  }

  v31 = v60[0];
  v32 = 32;
  v19 = v20;
  while (1)
  {
    v33 = *(v29 + v32);
    sub_26B2128F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16BB60();
      v33 = v38;
    }

    v34 = *(v33 + 16);
    if (v23 >= v34)
    {
      break;
    }

    v35 = v34 - 1;
    memmove((v33 + 16 * v23 + 32), (v33 + 16 * v23 + 48), 16 * (v34 - 1 - v23));
    *(v33 + 16) = v35;

    v60[0] = v31;
    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_26B15B4F8(v36 > 1, v37 + 1, 1);
      v31 = v60[0];
    }

    *(v31 + 16) = v37 + 1;
    *(v31 + 8 * v37 + 32) = v33;
    v32 += 8;
    if (!--v30)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t MarkdownTable.rows.setter(uint64_t a1)
{
  sub_26B209558();

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*MarkdownTable.headers.modify(void *a1))()
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  sub_26B2128F0();
  return sub_26B2094B8;
}

uint64_t sub_26B2094B8(void *a1, char a2)
{
  *(a1[1] + 8) = *a1;
  v2 = a1[2];
  if (a2)
  {
    sub_26B2128F0();
    sub_26B208E60(v2);
  }

  else
  {
    sub_26B208E60(a1[2]);
  }
}

void sub_26B209558()
{
  if ((*v0 & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + 16);
    v3 = (v1 + 32);
    while (v2)
    {
      v4 = *v3++;
      --v2;
      if (*(v4 + 16) != *(*(v0 + 8) + 16))
      {
        __break(1u);
        return;
      }
    }
  }
}

uint64_t (*MarkdownTable.rows.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  sub_26B2128F0();
  return sub_26B2095E0;
}

uint64_t sub_26B2095E0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_26B209558();
  if (a2)
  {
    sub_26B2128F0();

    *(v4 + 16) = v3;
  }

  else
  {

    *(v4 + 16) = v3;
  }

  return result;
}

SonicFoundation::MarkdownTable::RenderOptions __swiftcall MarkdownTable.RenderOptions.init(fitColumns:raw:)(Swift::Bool fitColumns, Swift::Bool raw)
{
  *v2 = fitColumns;
  v2[1] = raw;
  result.fitColumns = fitColumns;
  return result;
}

Swift::String __swiftcall MarkdownTable.render(options:)(SonicFoundation::MarkdownTable::RenderOptions options)
{
  v62 = **&options.fitColumns;
  v2 = *(*&options.fitColumns + 1);
  v61 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v67 = 0;
  v68 = 0xE000000000000000;
  v5 = *(v3 + 16);
  v56 = v4;
  v6 = v3;
  if (v5)
  {
    v7 = v3;
    v65 = MEMORY[0x277D84F90];
    sub_26B2128F0();
    sub_26B15B688(0, v5, 0);
    v63 = v65;
    v8 = v7 + 48;
    do
    {
      sub_26B2128F0();
      v9 = sub_26B212BB0();

      if (v9 <= 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = v9;
      }

      v14 = *(v65 + 16);
      v13 = *(v65 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26B15B688(v13 > 1, v14 + 1, 1);
      }

      *(v65 + 16) = v14 + 1;
      *(v65 + 8 * v14 + 32) = v12;
      v8 += 24;
      --v5;
    }

    while (v5);
    v4 = v56;
    v15 = v6;
  }

  else
  {
    v15 = v3;
    v10 = sub_26B2128F0();
    v63 = MEMORY[0x277D84F90];
  }

  v66 = v63;
  v58 = v15;
  if ((v62 & 1) != 0 && (v57 = *(v4 + 16)) != 0)
  {
    v16 = 0;
    v54 = v4 + 32;
    while (2)
    {
      if (v16 >= *(v4 + 16))
      {
        goto LABEL_67;
      }

      v17 = *(v54 + 8 * v16);
      v59 = v16 + 1;
      v18 = *(v17 + 16);
      v10 = sub_26B2128F0();
      v19 = v17 + 40;
      v20 = -v18;
      for (i = 4; v20 + i != 4; ++i)
      {
        v22 = i - 4;
        if ((i - 4) >= *(v17 + 16))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v2)
        {
          sub_26B2128F0();
        }

        else
        {
          OUTLINED_FUNCTION_3_29();
          sub_26B20A2B0();
          sub_26B166938();
          sub_26B2128F0();
          OUTLINED_FUNCTION_1_36();
          sub_26B2132F0();
          OUTLINED_FUNCTION_3_29();
          OUTLINED_FUNCTION_1_36();
          sub_26B2132F0();
        }

        OUTLINED_FUNCTION_4_32();
        if (v22 >= v23)
        {
          goto LABEL_58;
        }

        v24 = *(v63 + 8 * i);
        v25 = sub_26B212BB0();

        if (v25 <= v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B16BB74(v63);
          v63 = v28;
        }

        OUTLINED_FUNCTION_4_32();
        if (v22 >= v27)
        {
          goto LABEL_59;
        }

        *(v63 + 8 * i) = v26;
        v66 = v63;
        v19 += 16;
      }

      v29 = v58;
      v16 = v59;
      v4 = v56;
      if (v59 != v57)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = v6;
  }

  v10 = MEMORY[0x26D670040](124, 0xE100000000000000);
  v30 = 0;
  v31 = v29;
  for (j = (v29 + 48); ; j += 3)
  {
    v33 = *(v31 + 16);
    if (v30 == v33)
    {
      break;
    }

    if (v30 >= v33)
    {
      goto LABEL_64;
    }

    v34 = *(j - 16);
    v35 = *(j - 1);
    v36 = *j;
    swift_bridgeObjectRetain_n();
    v37 = sub_26B20A070(v35, v36, v30, v62, v61, v58, v56, &v66);
    v39 = v38;

    MEMORY[0x26D670040](v37, v39);

    sub_26B2128F0();
    MEMORY[0x26D670040](31776, 0xE200000000000000);

    MEMORY[0x26D670040](32, 0xE100000000000000);

    v64 = *&asc_26B21E408[8 * v34];
    OUTLINED_FUNCTION_4_32();
    if (v30 >= v40)
    {
      goto LABEL_65;
    }

    sub_26B212CC0();
    sub_26B20A2B0();
    sub_26B166938();
    OUTLINED_FUNCTION_1_36();
    sub_26B2132F0();

    sub_26B2128F0();
    MEMORY[0x26D670040](124, 0xE100000000000000);

    MEMORY[0x26D670040](v64, 0xE500000000000000);

    ++v30;
    v31 = v58;
  }

  MEMORY[0x26D670040](31754, 0xE200000000000000);
  v10 = MEMORY[0x26D670040](0);
  v41 = v56;
  v53 = *(v56 + 16);
  if (!v53)
  {
    goto LABEL_55;
  }

  v42 = 0;
  while (2)
  {
    if (v42 >= *(v41 + 16))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v43 = *(v56 + 32 + 8 * v42);
    v44 = v43 + 40;
    v55 = v42 + 1;
    sub_26B2128F0();
    v10 = MEMORY[0x26D670040](31754, 0xE200000000000000);
    v45 = 0;
    v60 = *(v43 + 16);
    v46 = v58 + 48;
    while (v60 != v45)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v62)
      {
        if (v45 >= *(v58 + 16))
        {
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_4_32();
        if (v45 >= v47)
        {
          goto LABEL_61;
        }

        v48 = *(v63 + 8 * v45 + 32);
        switch(*(v46 - 16))
        {
          case 1:
            sub_26B2128F0();
            sub_26B2128F0();
            OUTLINED_FUNCTION_41();
            v10 = sub_26B212BB0();
            if (__OFSUB__(v48, v10))
            {
              goto LABEL_62;
            }

            sub_26B212CC0();
            sub_26B2128F0();
            v49 = OUTLINED_FUNCTION_41();
            MEMORY[0x26D670040](v49);

            sub_26B14FCC8();
            OUTLINED_FUNCTION_5_25();
            sub_26B2134D0();

            break;
          case 2:
            sub_26B2128F0();
            sub_26B2128F0();
            OUTLINED_FUNCTION_41();
            v10 = sub_26B212BB0();
            if (__OFSUB__(v48, v10))
            {
              goto LABEL_63;
            }

            sub_26B212CC0();
            sub_26B2128F0();
            v51 = OUTLINED_FUNCTION_41();
            MEMORY[0x26D670040](v51);

            break;
          default:
            sub_26B14FCC8();
            sub_26B2128F0();
            OUTLINED_FUNCTION_5_25();
            sub_26B2134D0();

            break;
        }
      }

      else
      {
        sub_26B2128F0();
      }

      v50 = OUTLINED_FUNCTION_41();
      MEMORY[0x26D670040](v50);

      sub_26B2128F0();
      MEMORY[0x26D670040](31776, 0xE200000000000000);

      MEMORY[0x26D670040](32, 0xE100000000000000);

      v44 += 16;
      v46 += 24;
      ++v45;
    }

    v42 = v55;
    v41 = v56;
    if (v55 != v53)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v10 = v67;
  v11 = v68;
LABEL_68:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_26B20A070(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if ((a4 & 1) == 0)
  {
    sub_26B2128F0();
    return v9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(a6 + 16) <= a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(a6 + 24 * a3 + 32);
  result = swift_beginAccess();
  if (*(*a8 + 16) > a3)
  {
    v13 = *(*a8 + 8 * a3 + 32);
    switch(v12)
    {
      case 1:
        sub_26B2128F0();
        result = sub_26B212BB0();
        if (__OFSUB__(v13, result))
        {
          goto LABEL_16;
        }

        sub_26B212CC0();
        sub_26B2128F0();
        MEMORY[0x26D670040](v9, a2);

        sub_26B14FCC8();
        v9 = sub_26B2134D0();

        break;
      case 2:
        sub_26B2128F0();
        result = sub_26B212BB0();
        if (__OFSUB__(v13, result))
        {
          goto LABEL_17;
        }

        v14 = sub_26B212CC0();
        sub_26B2128F0();
        MEMORY[0x26D670040](v9, a2);

        v9 = v14;
        break;
      default:
        sub_26B14FCC8();
        return sub_26B2134D0();
    }

    return v9;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_26B20A2B0()
{
  result = qword_2803E8868;
  if (!qword_2803E8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8868);
  }

  return result;
}

unint64_t sub_26B20A308()
{
  result = qword_2803E8870;
  if (!qword_2803E8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8870);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MarkdownTable.Header.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarkdownTable.RenderOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MarkdownTable.RenderOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_26B20A5DC(uint64_t a1)
{
  if (!qword_2803E8878)
  {
    v1 = MEMORY[0x277D84480];
    sub_26B20A74C(255, &qword_2803E8880, &type metadata for MarkdownTable.Header, MEMORY[0x277D84480]);
    sub_26B20A698(&qword_2803E8888, &qword_2803E8880, v1, MEMORY[0x277D84490]);
    v2 = sub_26B213910();
    if (!v3)
    {
      atomic_store(v2, &qword_2803E8878);
    }
  }
}

uint64_t sub_26B20A698(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_26B20A74C(255, a2, &type metadata for MarkdownTable.Header, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B20A6E8()
{
  result = qword_2803E88A0;
  if (!qword_2803E88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88A0);
  }

  return result;
}

void sub_26B20A74C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B20A79C(uint64_t a1)
{
  sub_26B20A5DC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Mergeable.merge(other:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a4 - 8) + 16);
  v8(a1, v4, a4);
  v8(a2, a3, a4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a4);
}

uint64_t Array<A>.merged()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2133E0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v10 - v7;
  v11[0] = a1;
  OUTLINED_FUNCTION_24();
  sub_26B212F50();
  swift_getWitnessTable();
  if (sub_26B2132C0())
  {
    OUTLINED_FUNCTION_24();
    return sub_26B212EC0();
  }

  else
  {
    v11[0] = a1;
    sub_26B2128F0();
    v13 = sub_26B212340();
    OUTLINED_FUNCTION_24();
    v12 = sub_26B212EC0();
    sub_26B212EF0();
    sub_26B212E90();
    OUTLINED_FUNCTION_3_30(&v13, v11);
    OUTLINED_FUNCTION_24();
    sub_26B212330();
    while (1)
    {
      v10[0] = v13;
      swift_getWitnessTable();
      if (sub_26B2132C0())
      {

        OUTLINED_FUNCTION_3_30(&v12, v10);
        return v12;
      }

      swift_beginAccess();
      sub_26B212320();
      swift_endAccess();
      result = __swift_getEnumTagSinglePayload(v8, 1, a2);
      if (result == 1)
      {
        break;
      }

      sub_26B20AACC(v8, &v13, &v12, a2, a3);
      (*(*(a2 - 8) + 8))(v8, a2);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B20AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = a3;
  v57 = a2;
  v7 = sub_26B2133E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = v43 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = *(a4 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v46 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v45 = v43 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v58 = v43 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v43 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = *(v16 + 16);
  v16 += 16;
  v26 = v27;
  v56 = v43 - v28;
  v27();
  v61 = sub_26B212EC0();
  v48 = a5 + 8;
  v49 = (v16 + 16);
  v55 = v16;
  v59 = (v16 - 8);
  v47 = (v8 + 16);
  v53 = a5;
  v54 = (v8 + 8);
  v50 = v15;
  v44 = v25;
  while (1)
  {
    swift_beginAccess();
    sub_26B212330();
    sub_26B212320();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
    {
      break;
    }

    v29 = v7;
    v30 = *v49;
    (*v49)(v25, v15, a4);
    v31 = v58;
    v32 = v51;
    v33 = v56;
    (*(v53 + 8))(v58, v51, v25, a4);
    v34 = *v59;
    (*v59)(v33, a4);
    (v26)(v33, v31, a4);
    v35 = v52;
    (*v47)(v52, v32, v29);
    if (__swift_getEnumTagSinglePayload(v35, 1, a4) == 1)
    {
      v36 = v35;
      v37 = *v54;
      (*v54)(v32, v29);
      v34(v58, a4);
      v34(v25, a4);
      v37(v36, v29);
    }

    else
    {
      v38 = v45;
      v30(v45, v35, a4);
      (v26)(v46, v38, a4);
      sub_26B212F50();
      sub_26B212F00();
      v39 = v38;
      v40 = v58;
      v25 = v44;
      v34(v39, a4);
      (*v54)(v32, v29);
      v34(v40, a4);
      v34(v25, a4);
    }

    v7 = v29;
    v15 = v50;
  }

  (*v54)(v15, v7);
  v41 = v56;
  (v26)(v46, v56, a4);
  swift_beginAccess();
  sub_26B212F50();
  sub_26B212F00();
  swift_endAccess();
  v60 = v61;
  swift_beginAccess();
  swift_getWitnessTable();
  sub_26B212300();
  swift_endAccess();

  return (*v59)(v41, a4);
}

uint64_t Array<A>.merging(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = sub_26B212EB0();

  v7 = Array<A>.merged()(v6, v5, a3);

  *v3 = v7;
  return result;
}

uint64_t Array<A>.merge()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.merged()(*v2, *(a1 + 16), a2);

  *v2 = v3;
  return result;
}

uint64_t Array<A>.merged()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    OUTLINED_FUNCTION_0_44();
    sub_26B20C24C(0, v3, v4, MEMORY[0x277CFB8D8]);
    v5 = swift_allocObject();
    v6 = sub_26B20BCC8();
    v7 = OUTLINED_FUNCTION_1_37(v6);
    sub_26B20C19C(v7, v8, v2, a1);
  }

  else
  {
    sub_26B2128F0();
    v5 = *sub_26B2122F0();
  }

  v25 = v5;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    swift_beginAccess();
    if (v25[3] < 1)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    v9 = v25;
    result = sub_26B150514(&v9[5 * v9[4] + 5], &v18);
    v11 = v9[4];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v14 = v9[3];
    if (v13 >= v9[2])
    {
      v13 = 0;
    }

    v9[4] = v13;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_18;
    }

    v9[3] = v14 - 1;
LABEL_14:
    swift_endAccess();
    if (!*(&v19 + 1))
    {

      sub_26B20BB04(&v18);
      OUTLINED_FUNCTION_3_30(&v24, v21);
      return v24;
    }

    sub_26B150514(&v18, v21);
    v15 = v22;
    v16 = v23;
    v17 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_26B20B300(v17, &v25, &v24, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B20B300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B20BAA4(a4, a4);
  v9 = *(a4 - 8);
  swift_allocObject();
  sub_26B212E70();
  (*(v9 + 16))(v10, a1, a4);
  sub_26B212F50();
  swift_beginAccess();
  *&v36[0] = *a2;
  sub_26B20C24C(0, &qword_2803E88B8, sub_26B20BB90, MEMORY[0x277CFB920]);
  sub_26B20C2B0();

  v11 = 0;
  sub_26B212D30();

  v12 = sub_26B212EB0();

  swift_beginAccess();
  v13 = 0;
  v14 = *a2;
  v15 = *a2 + 40;
  while (1)
  {
    v16 = v14[3];
    if (v13 == v16)
    {
      break;
    }

    if (v13 >= v16)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v17 = v14[4];
    if (v13 + v17 >= v14[2])
    {
      v18 = v14[2];
    }

    else
    {
      v18 = 0;
    }

    sub_26B16BCF8(v15 + 40 * (v13 + v17 - v18), v36);
    v19 = sub_26B20B7BC(v36, a4);
    __swift_destroy_boxed_opaque_existential_1(v36);
    if (v19)
    {
      v35 = v12;
      v20 = v13;
      while (1)
      {
        v21 = v14[3];
        if (v20 + 1 == v21)
        {
          break;
        }

        if ((v20 + 1) >= v21)
        {
          goto LABEL_34;
        }

        v22 = v14[4];
        if ((v20 + v22 + 1) >= v14[2])
        {
          v23 = v14[2];
        }

        else
        {
          v23 = 0;
        }

        sub_26B16BCF8(&v14[5 * v20 + 10 + 5 * (v22 - v23)], v36);
        v24 = sub_26B20B7BC(v36, a4);
        __swift_destroy_boxed_opaque_existential_1(v36);
        ++v20;
        if ((v24 & 1) == 0)
        {
          v25 = v14[3];
          if (v13 >= v25)
          {
            goto LABEL_36;
          }

          if (v20 >= v25)
          {
            goto LABEL_37;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B20C0D4();
          }

          v14 = *a2;
          v26 = *(*a2 + 32);
          v27 = *(*a2 + 16);
          if (v26 + v13 >= v27)
          {
            v28 = *(*a2 + 16);
          }

          else
          {
            v28 = 0;
          }

          if ((v26 + v20) < v27)
          {
            v27 = 0;
          }

          if (v28 - v27 + v20 != v13)
          {
            v29 = &v14[5 * (v26 + v13 - v28) + 5];
            v30 = &v14[5 * (v26 - v27) + 5 + 5 * v20];
            sub_26B150514(v29, v36);
            v31 = *(v30 + 32);
            v32 = *(v30 + 16);
            *v29 = *v30;
            *(v29 + 16) = v32;
            *(v29 + 32) = v31;
            sub_26B150514(v36, v30);
          }

          ++v13;
        }
      }

      v12 = v35;
      break;
    }

    ++v13;
  }

  v11 = *(*a2 + 24);
  if (v11 >= v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    sub_26B20C3B4(v13, v11, (*a2 + 16), (*a2 + 40));
    swift_endAccess();
    Array<A>.merged()(v12, a4, a5);

    sub_26B20BB90();
    v33 = sub_26B2138E0();

    swift_beginAccess();
    sub_26B168E08(v33);
    return swift_endAccess();
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_26B20B744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26B16BCF8(a1, v7);
  sub_26B20BB90();
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_26B20B7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_26B16BCF8(v4, v10);
  sub_26B20BB90();
  v7 = swift_dynamicCast();
  if (v7)
  {
    (*(v3 + 8))(v6, a2);
  }

  return v7;
}

uint64_t Array<A>.merging(contentsOf:)()
{
  v1 = v0;
  v22[0] = *v0;
  v2 = sub_26B2128F0();
  sub_26B168E08(v2);
  v3 = *(v22[0] + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_0_44();
    sub_26B20C24C(0, v4, v5, MEMORY[0x277CFB8D8]);
    v6 = swift_allocObject();
    v7 = sub_26B20BCC8();
    v8 = OUTLINED_FUNCTION_1_37(v7);
    sub_26B20C19C(v8, v9, v3, v22[0]);
  }

  else
  {
    sub_26B2128F0();
    v6 = *sub_26B2122F0();
  }

  v26 = v6;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    swift_beginAccess();
    if (v26[3] < 1)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    v10 = v26;
    result = sub_26B150514(&v10[5 * v10[4] + 5], &v19);
    v12 = v10[4];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v15 = v10[3];
    if (v14 >= v10[2])
    {
      v14 = 0;
    }

    v10[4] = v14;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_18;
    }

    v10[3] = v15 - 1;
LABEL_14:
    swift_endAccess();
    if (!*(&v20 + 1))
    {

      sub_26B20BB04(&v19);
      result = OUTLINED_FUNCTION_3_30(&v25, v22);
      *v1 = v25;
      return result;
    }

    sub_26B150514(&v19, v22);
    v16 = v23;
    v17 = v24;
    v18 = __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_26B20B300(v18, &v26, &v25, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_26B20BAA4(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    sub_26B20CA1C();
  }

  else
  {

    sub_26B213BA0();
  }
}

uint64_t sub_26B20BB04(uint64_t a1)
{
  sub_26B20C24C(0, &qword_2803E88A8, sub_26B20BB90, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B20BB90()
{
  result = qword_2803E6FE0;
  if (!qword_2803E6FE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E6FE0);
  }

  return result;
}

uint64_t sub_26B20BBEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_7:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result, *a3);
    result += *a3;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result, *a3);
  if (result >= *a3)
  {
    result -= *a3;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_26B20BC2C()
{
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B20BCF0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for ActorQueue.TaskState(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_26B20BDB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for ActorQueue.TaskState(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_26B20BEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_26B20BB90();
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      sub_26B20BB90();
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26B20BFB8()
{
  v1 = *v0;
  v2 = type metadata accessor for ActorQueue.TaskState(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_26B20C24C(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_26B20BDB0(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_26B20C0D4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_26B20C24C(0, &qword_2803E88B0, sub_26B20BB90, MEMORY[0x277CFB8D8]);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_26B20BEC0(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_26B20C19C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      sub_26B20BB90();
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_26B20C24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26B20C2B0()
{
  result = qword_2803E88C0;
  if (!qword_2803E88C0)
  {
    sub_26B20C24C(255, &qword_2803E88B8, sub_26B20BB90, MEMORY[0x277CFB920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88C0);
  }

  return result;
}

uint64_t sub_26B20C338@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 40 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B20C3B4(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_26B20C338(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    sub_26B20BB90();
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    sub_26B20BB90();
    swift_arrayDestroy();
  }

  return sub_26B20C498(a1, a2, a3, a4);
}

uint64_t sub_26B20C498(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = result;
  v8 = a3[1];
  v7 = a3[2];
  v9 = *a3;
  if (v7 + result >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  if (v7 + a2 >= v9)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_84;
  }

  v14 = v7 + result - v10;
  v15 = v7 + a2 - v11;
  result = a3[2];
  if (v12 > v6)
  {
    result = sub_26B20BBEC(result, v4, a3);
    v12 = result;
    if (!v6)
    {
      goto LABEL_68;
    }

    if (v15 <= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = v14;
    }

    if (v7 >= v17)
    {
      if (v16 >= result)
      {
        if (__OFSUB__(0, v14))
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (v14 > 0)
        {
          v15 -= v14;
          sub_26B173F18(a4, v14, &a4[40 * v15]);
          sub_26B20BBEC(0, v14, a3);
          result = sub_26B20BBEC(v15, v14, a3);
        }

        v18 = __OFSUB__(v6, v14);
        v6 -= v14;
        if (v18)
        {
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (v14 > 0)
      {
        sub_26B173F18(a4, v14, &a4[40 * v4]);
        sub_26B20BBEC(0, v14, a3);
        sub_26B20BBEC(v4, v14, a3);
      }

      v14 = *a3 - v4;
      sub_26B173F18(&a4[40 * v14], v4, a4);
      sub_26B20BBEC(v14, v4, a3);
      result = sub_26B20BBEC(0, v4, a3);
      v18 = __OFSUB__(v6, v15);
      v6 -= v15;
      if (!v18)
      {
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= result)
    {
      if (v6 > 0)
      {
        sub_26B173F18(&a4[40 * v7], v6, &a4[40 * result]);
        v30 = v7;
LABEL_67:
        sub_26B20BBEC(v30, v6, a3);
        result = sub_26B20BBEC(v12, v6, a3);
      }

LABEL_68:
      a3[2] = v12;
      v31 = a3[1];
      v18 = __OFSUB__(v31, v4);
      v32 = v31 - v4;
      if (!v18)
      {
        goto LABEL_81;
      }

      __break(1u);
      goto LABEL_71;
    }

    if (v15 > 0)
    {
      v14 = v9 - v4;
      sub_26B173F18(&a4[40 * (v9 - v4)], v15, a4);
      sub_26B20BBEC(v9 - v4, v15, a3);
      result = sub_26B20BBEC(0, v15, a3);
    }

    v18 = __OFSUB__(v6, v15);
    v6 -= v15;
    if (!v18)
    {
LABEL_65:
      if (v6 >= 1)
      {
        v14 = a3[2];
        sub_26B173F18(&a4[40 * v14], v6, &a4[40 * v12]);
        v30 = v14;
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    __break(1u);
  }

  result = sub_26B20BBEC(result, v8, a3);
  v19 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v8 = v4;
  v20 = v19 + v7;
  if (v20 >= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (!v12)
  {
    goto LABEL_80;
  }

  v6 = result;
  v4 = v20 - v21;
  if (v20 - v21 <= 0)
  {
    v22 = v9;
  }

  else
  {
    v22 = v20 - v21;
  }

  if (result <= 0)
  {
    v23 = v9;
  }

  else
  {
    v23 = result;
  }

  if (v15 < v23)
  {
    if (v22 >= v14)
    {
LABEL_71:
      if (v12 <= 0)
      {
        goto LABEL_80;
      }

      sub_26B173F18(&a4[40 * v15], v12, &a4[40 * v14]);
      sub_26B20BBEC(v15, v12, a3);
      v25 = v14;
      v29 = v12;
      goto LABEL_79;
    }

    v24 = v9 - v14;
    if (__OFSUB__(v9, v14))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v24 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v14, &a4[40 * v14]);
      v15 = sub_26B20BBEC(v15, v9 - v14, a3);
      result = sub_26B20BBEC(v14, v9 - v14, a3);
    }

    v18 = __OFSUB__(v12, v24);
    v6 = v12 - v24;
    if (v18)
    {
      goto LABEL_92;
    }

    if (v6 >= 1)
    {
      sub_26B173F18(&a4[40 * v15], v6, a4);
      sub_26B20BBEC(v15, v6, a3);
      v25 = 0;
LABEL_78:
      v29 = v6;
      goto LABEL_79;
    }

    goto LABEL_80;
  }

LABEL_50:
  v26 = v9 - v15;
  v27 = __OFSUB__(v9, v15);
  if (v22 >= v14)
  {
    if (v27)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    if (v26 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v15, &a4[40 * v14]);
      sub_26B20BBEC(v15, v9 - v15, a3);
      result = sub_26B20BBEC(v14, v9 - v15, a3);
      v14 = result;
    }

    if (v6 >= 1)
    {
      sub_26B173F18(a4, v6, &a4[40 * v14]);
      sub_26B20BBEC(0, v6, a3);
      v25 = v14;
      goto LABEL_78;
    }
  }

  else
  {
    if (v27)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v26 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v15, &a4[40 * v14]);
      sub_26B20BBEC(v15, v9 - v15, a3);
      v14 = sub_26B20BBEC(v14, v9 - v15, a3);
    }

    sub_26B173F18(a4, v8, &a4[40 * v14]);
    v28 = sub_26B20BBEC(0, v8, a3);
    result = sub_26B20BBEC(v14, v8, a3);
    if (v4 >= 1)
    {
      sub_26B173F18(&a4[40 * v28], v4, a4);
      sub_26B20BBEC(v28, v4, a3);
      v25 = 0;
      v29 = v4;
LABEL_79:
      result = sub_26B20BBEC(v25, v29, a3);
    }
  }

LABEL_80:
  v33 = a3[1];
  v18 = __OFSUB__(v33, v8);
  v32 = v33 - v8;
  if (v18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_81:
  a3[1] = v32;
  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26B20CA1C()
{
  if (!qword_2803E7678)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7678);
    }
  }
}

void static PerformanceTime.now()(uint64_t a1@<X8>)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  sub_26B212060();
  v5 = v4;
  if (qword_2803E6AD0 != -1)
  {
    swift_once();
  }

  v6 = sub_26B1F7ACC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t PerformanceTime.init(machAbsoluteTime:machMonotonicTime:wallClockTime:bootTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_26B20CBD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000026B221740 == a2;
  if (v3 || (sub_26B213E30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000026B221760 == a2;
    if (v6 || (sub_26B213E30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636F6C436C6C6177 && a2 == 0xED0000656D69546BLL;
      if (v7 || (sub_26B213E30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D6954746F6F62 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26B213E30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_26B20CD3C(char a1)
{
  result = 0x636F6C436C6C6177;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656D6954746F6F62;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_26B20CDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B20CBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B20CE08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B18D83C();
  *a1 = result;
  return result;
}

uint64_t sub_26B20CE30(uint64_t a1)
{
  v2 = sub_26B20D068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B20CE6C(uint64_t a1)
{
  v2 = sub_26B20D068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformanceTime.encode(to:)(void *a1)
{
  sub_26B20D29C(0, &qword_2803E88C8, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  v12[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B20D068();
  sub_26B214120();
  v16 = 0;
  OUTLINED_FUNCTION_1_38();
  sub_26B213B60();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B60();
    v14 = 2;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B30();
    v13 = 3;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B30();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_26B20D068()
{
  result = qword_2803E88D0;
  if (!qword_2803E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88D0);
  }

  return result;
}

uint64_t PerformanceTime.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B20D29C(0, &qword_2803E88D8, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B20D068();
  sub_26B2140F0();
  if (!v2)
  {
    v23 = 0;
    OUTLINED_FUNCTION_0_45();
    v12 = sub_26B213B00();
    v22 = 1;
    OUTLINED_FUNCTION_0_45();
    v13 = sub_26B213B00();
    v21 = 2;
    OUTLINED_FUNCTION_0_45();
    sub_26B213AD0();
    v15 = v14;
    v20 = 3;
    OUTLINED_FUNCTION_0_45();
    sub_26B213AD0();
    v18 = v17;
    (*(v8 + 8))(v11, v6);
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26B20D29C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B20D068();
    v7 = a3(a1, &type metadata for PerformanceTime.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PerformanceTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B20D420()
{
  result = qword_2803E88E0;
  if (!qword_2803E88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88E0);
  }

  return result;
}

unint64_t sub_26B20D478()
{
  result = qword_2803E88E8;
  if (!qword_2803E88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88E8);
  }

  return result;
}

unint64_t sub_26B20D4D0()
{
  result = qword_2803E88F0;
  if (!qword_2803E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88F0);
  }

  return result;
}

double Arc4Random.init()@<D0>(uint64_t a1@<X8>)
{
  sub_26B211D50();
  swift_allocObject();
  v7 = 0x1000000000;
  v8 = sub_26B211D20() | 0x4000000000000000;
  sub_26B20E67C(&v7);
  v2 = v7;
  v3 = v8;
  sub_26B14F044(v7, v8);
  Arc4Random.init(seed:)(v2, v3, &v5);
  sub_26B14FF4C(v2, v3);
  *a1 = v5;
  result = v6[0];
  *(a1 + 8) = *v6;
  return result;
}

uint64_t Arc4Random.init(seed:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v125 = *MEMORY[0x277D85DE8];
  v122 = 0;
  v115 = sub_26B211D50();
  swift_allocObject();
  v5 = 0;
  v6 = sub_26B211D20() | 0x4000000000000000;
  v7 = 0x10000000000;
LABEL_2:
  v8 = (v7 >> 32) - v7;
  for (i = v5; i != 256; ++i)
  {
    if (i > 0xFF)
    {
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
      goto LABEL_125;
    }

    if (v6 >> 62 != 1)
    {
      if (v6 >> 62 != 2)
      {
        goto LABEL_148;
      }

      if (i >= *(v7 + 16))
      {
        if (i < *(v7 + 24))
        {
          v23 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_27;
          }

          v8 = *(v7 + 16);
          v24 = *(v7 + 24);
          v25 = sub_26B211D10();
          if (v25)
          {
            v25 = OUTLINED_FUNCTION_7_22();
            if (!__OFSUB__(v8, v25))
            {
              v33 = v8 - v25 + v3;
              goto LABEL_25;
            }

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
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
          }

          v33 = 0;
LABEL_25:
          v3 = v24 - v8;
          if (!__OFSUB__(v24, v8))
          {
            OUTLINED_FUNCTION_2_38(v25, v26, v27, v28, v29, v30, v31, v32, v107, v108, v110, v111, v112, v113, v114, v115);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            v23 = v33;
LABEL_27:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = *(v7 + 16);
              v35 = *(v7 + 24);
              sub_26B211F60();
              v36 = swift_allocObject();
              *(v36 + 16) = v34;
              *(v36 + 24) = v35;

              v7 = v36;
            }

            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_160;
            }

            v37 = OUTLINED_FUNCTION_8_28();
            if (!__OFSUB__(i, v37))
            {
              v5 = i + 1;
              *(v8 + i - v37) = i;
              v6 = v23 | 0x8000000000000000;
              goto LABEL_2;
            }

LABEL_145:
            __break(1u);
          }

          __break(1u);
          goto LABEL_147;
        }

LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (i >= v7 >> 32 || v5 < v7)
    {
      goto LABEL_112;
    }

    v3 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      v11 = sub_26B211D10();
      if (v11)
      {
        v11 = sub_26B211D40();
        if (__OFSUB__(v7, v11))
        {
          goto LABEL_136;
        }
      }

      OUTLINED_FUNCTION_2_38(v11, v12, v13, v14, v15, v16, v17, v18, v107, v108, v110, v111, v112, v113, v114, v115);
      v19 = sub_26B211CF0();

      v3 = v19;
    }

    sub_26B211CE0();
    v20 = sub_26B211D10();
    if (!v20)
    {
      goto LABEL_149;
    }

    v21 = v20;
    v22 = sub_26B211D40();
    if (__OFSUB__(i, v22))
    {
      goto LABEL_113;
    }

    *(v21 + i - v22) = i;
    v6 = v3 | 0x4000000000000000;
  }

  v109 = a3;
  v123 = v7;
  v124 = v6;
  Arc4Random.addRandomness(using:)(v110, v111);
  v38 = HIBYTE(v122);
  v39 = 3072;
  v40 = v124;
  v41 = &v118;
  HIDWORD(v107) = v122;
  v42 = v122;
  while (2)
  {
    v43 = v42 + 1;
    v44 = v43;
    v117 = v43;
    switch(v40 >> 62)
    {
      case 1uLL:
        v8 = v7;
        if (v7 >> 32 <= v43 || v7 > v43)
        {
          goto LABEL_116;
        }

        v62 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        if (!sub_26B211D10())
        {
          goto LABEL_151;
        }

        v63 = OUTLINED_FUNCTION_7_22();
        if (__OFSUB__(v43, v63))
        {
          goto LABEL_119;
        }

        v38 += *(v39 + v43 - v63);
        v45 = v38;
        if (v7 > v38 || v7 >> 32 <= v38)
        {
          goto LABEL_121;
        }

        v116 = *(v39 + v44 - v63);
        if (!sub_26B211D10())
        {
          goto LABEL_153;
        }

        v65 = OUTLINED_FUNCTION_7_22();
        if (__OFSUB__(v38, v65))
        {
          goto LABEL_123;
        }

        HIDWORD(v113) = *(v39 + v38 - v65);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_71;
        }

        v66 = sub_26B211D10();
        if (v66)
        {
          v66 = OUTLINED_FUNCTION_7_22();
          if (__OFSUB__(v7, v66))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          v74 = v7 - v66 + v39;
        }

        else
        {
          v74 = 0;
        }

        OUTLINED_FUNCTION_2_38(v66, v67, v68, v69, v70, v71, v72, v73, v107, v109, v110, v111, v112, v113, v114, v115);
        OUTLINED_FUNCTION_0_46();
        OUTLINED_FUNCTION_6_26();

        v62 = v74;
LABEL_71:
        OUTLINED_FUNCTION_3_31();
        if (!sub_26B211D10())
        {
          goto LABEL_154;
        }

        v75 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v44, v75))
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        *(v7 + v44 - v75) = BYTE4(v113);
        v48 = v62 | 0x4000000000000000;
        v41 = &v118;
LABEL_81:
        switch(v48 >> 62)
        {
          case 1uLL:
            v90 = v7 >> 32;
            if (v45 < v7 || v45 >= v90)
            {
              goto LABEL_129;
            }

            v92 = v48 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_99;
            }

            v41 = v39;
            v8 = v7;

            v93 = sub_26B211D10();
            if (v93)
            {
              v93 = OUTLINED_FUNCTION_7_22();
              if (__OFSUB__(v7, v93))
              {
                goto LABEL_140;
              }
            }

            v39 = v90 - v7;
            OUTLINED_FUNCTION_2_38(v93, v94, v95, v96, v97, v98, v99, v100, v107, v109, v110, v111, v112, v113, v114, v115);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            OUTLINED_FUNCTION_5_26();
LABEL_99:
            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_157;
            }

            v101 = OUTLINED_FUNCTION_8_28();
            if (__OFSUB__(v45, v101))
            {
              goto LABEL_133;
            }

            *(v8 + v45 - v101) = v116;
            v40 = v92 | 0x4000000000000000;
            goto LABEL_109;
          case 2uLL:
            if (v45 < *(v7 + 16))
            {
              goto LABEL_128;
            }

            if (v45 >= *(v7 + 24))
            {
              goto LABEL_131;
            }

            v80 = v48 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_104;
            }

            v41 = v39;
            v8 = *(v7 + 16);
            v81 = *(v7 + 24);
            v82 = sub_26B211D10();
            if (v82)
            {
              v82 = OUTLINED_FUNCTION_7_22();
              if (__OFSUB__(v8, v82))
              {
                goto LABEL_141;
              }
            }

            v39 = v81 - v8;
            if (__OFSUB__(v81, v8))
            {
              goto LABEL_137;
            }

            OUTLINED_FUNCTION_2_38(v82, v83, v84, v85, v86, v87, v88, v89, v107, v109, v110, v111, v112, v113, v114, v115);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            OUTLINED_FUNCTION_5_26();
LABEL_104:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v102 = *(v7 + 16);
              v103 = *(v7 + 24);
              sub_26B211F60();
              v104 = swift_allocObject();
              *(v104 + 16) = v102;
              *(v104 + 24) = v103;

              v7 = v104;
            }

            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_158;
            }

            v105 = OUTLINED_FUNCTION_8_28();
            if (__OFSUB__(v45, v105))
            {
              goto LABEL_134;
            }

            *(v8 + v45 - v105) = v116;
            v40 = v80 | 0x8000000000000000;
LABEL_109:
            --v39;
            v42 = v117;
            if (v39)
            {
              continue;
            }

            result = sub_26B14FF4C(v110, v111);
            *v109 = BYTE4(v107);
            *(v109 + 1) = v38;
            *(v109 + 8) = v7;
            *(v109 + 16) = v40;
            return result;
          case 3uLL:
            goto LABEL_155;
          default:
            v118 = v7;
            LOWORD(v119) = v48;
            BYTE2(v119) = BYTE2(v48);
            HIBYTE(v119) = BYTE3(v48);
            LOBYTE(v120) = BYTE4(v48);
            HIBYTE(v120) = BYTE5(v48);
            v121 = BYTE6(v48);
            if (v45 >= BYTE6(v48))
            {
              goto LABEL_127;
            }

            *(v41 + v45) = v116;
            OUTLINED_FUNCTION_4_33();
            v40 = v112 & 0xF00000000000000 | v79;
            v112 = v40;
            goto LABEL_109;
        }

      case 2uLL:
        if (*(v7 + 16) > v43)
        {
          goto LABEL_115;
        }

        if (*(v7 + 24) <= v43)
        {
          goto LABEL_118;
        }

        v49 = v40 & 0x3FFFFFFFFFFFFFFFLL;
        if (!sub_26B211D10())
        {
          goto LABEL_152;
        }

        v50 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v43, v50))
        {
          goto LABEL_120;
        }

        v38 += *(v8 + v43 - v50);
        if (*(v7 + 16) > v38)
        {
          goto LABEL_122;
        }

        v45 = v38;
        if (*(v7 + 24) <= v38)
        {
          goto LABEL_124;
        }

        v116 = *(v8 + v44 - v50);
        if (!sub_26B211D10())
        {
          goto LABEL_156;
        }

        v51 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v38, v51))
        {
          goto LABEL_126;
        }

        if (*(v7 + 16) > v44)
        {
          goto LABEL_130;
        }

        if (*(v7 + 24) <= v44)
        {
          goto LABEL_132;
        }

        HIDWORD(v113) = *(v8 + v38 - v51);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_76;
        }

        v41 = v39;
        v8 = *(v7 + 16);
        v52 = *(v7 + 24);
        v53 = sub_26B211D10();
        if (v53)
        {
          v53 = OUTLINED_FUNCTION_7_22();
          if (__OFSUB__(v8, v53))
          {
            goto LABEL_142;
          }
        }

        v39 = v52 - v8;
        if (__OFSUB__(v52, v8))
        {
          goto LABEL_138;
        }

        OUTLINED_FUNCTION_2_38(v53, v54, v55, v56, v57, v58, v59, v60, v107, v109, v110, v111, v112, v113, v114, v115);
        OUTLINED_FUNCTION_0_46();
        OUTLINED_FUNCTION_6_26();

        OUTLINED_FUNCTION_5_26();
LABEL_76:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = *(v7 + 16);
          v8 = *(v7 + 24);
          sub_26B211F60();
          v77 = swift_allocObject();
          *(v77 + 16) = v76;
          *(v77 + 24) = v8;

          v7 = v77;
        }

        OUTLINED_FUNCTION_3_31();
        if (!sub_26B211D10())
        {
          goto LABEL_159;
        }

        v78 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v44, v78))
        {
          goto LABEL_135;
        }

        *(v8 + v44 - v78) = BYTE4(v113);
        v48 = v49 | 0x8000000000000000;
        goto LABEL_81;
      case 3uLL:
        goto LABEL_150;
      default:
        if (BYTE6(v40) <= v43)
        {
          goto LABEL_114;
        }

        v118 = v7;
        LOWORD(v119) = v40;
        BYTE2(v119) = BYTE2(v40);
        HIBYTE(v119) = BYTE3(v40);
        LOBYTE(v120) = BYTE4(v40);
        HIBYTE(v120) = BYTE5(v40);
        v38 += *(v41 + v43);
        if (BYTE6(v40) <= v38)
        {
          goto LABEL_117;
        }

        v116 = *(v41 + v43);
        v45 = v38;
        v118 = v7;
        v119 = v40;
        v120 = WORD2(v40);
        v46 = *(v41 + v38);
        v118 = v7;
        v121 = BYTE6(v40);
        v120 = WORD2(v40);
        v119 = v40;
        *(v41 + v44) = v46;
        OUTLINED_FUNCTION_4_33();
        v48 = v114 & 0xF00000000000000 | v47;
        v114 = v48;
        goto LABEL_81;
    }
  }
}

unint64_t Arc4Random.addRandomness(using:)(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  v28 = HIDWORD(result);
  v36 = BYTE6(a2);
  v37 = a2 >> 62;
  v32 = HIDWORD(result) - result;
  v6 = *v2 - 1;
  v7 = __OFSUB__(HIDWORD(result), result);
  v31 = v7;
  v29 = result >> 32;
  v30 = result;
  v35 = v5;
  v33 = result;
  while (v4 != 256)
  {
    ++v6;
    v8 = *(v2 + 8);
    v9 = *(v2 + 16);
    switch(v9 >> 62)
    {
      case 1uLL:
        if (v6 >= v8 >> 32 || v8 > v6)
        {
          goto LABEL_52;
        }

        v15 = sub_26B211D10();
        if (!v15)
        {
          goto LABEL_66;
        }

        v12 = v15;
        result = sub_26B211D40();
        v13 = v6 - result;
        if (!__OFSUB__(v6, result))
        {
          goto LABEL_22;
        }

        goto LABEL_54;
      case 2uLL:
        if (*(v8 + 16) > v6)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
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
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        if (*(v8 + 24) <= v6)
        {
          goto LABEL_53;
        }

        v11 = sub_26B211D10();
        if (!v11)
        {
          goto LABEL_67;
        }

        v12 = v11;
        result = sub_26B211D40();
        v13 = v6 - result;
        if (__OFSUB__(v6, result))
        {
          goto LABEL_55;
        }

LABEL_22:
        v10 = *(v12 + v13);
        LODWORD(v5) = v37;
        break;
      case 3uLL:
        goto LABEL_65;
      default:
        if (v6 >= BYTE6(v9))
        {
          goto LABEL_51;
        }

        v38 = *(v2 + 8);
        v39 = BYTE2(v8);
        v40 = BYTE3(v8);
        v41 = BYTE4(v8);
        v42 = BYTE5(v8);
        v43 = BYTE6(v8);
        v44 = HIBYTE(v8);
        LOWORD(v45) = v9;
        BYTE2(v45) = BYTE2(v9);
        HIBYTE(v45) = BYTE3(v9);
        LOBYTE(v46) = BYTE4(v9);
        HIBYTE(v46) = BYTE5(v9);
        v10 = *(&v38 + v6);
        break;
    }

    v16 = *(v2 + 1);
    v17 = v36;
    switch(v35)
    {
      case 1:
        v17 = v32;
        if (v31)
        {
          goto LABEL_56;
        }

        goto LABEL_27;
      case 2:
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        v20 = __OFSUB__(v18, v19);
        v17 = v18 - v19;
        if (!v20)
        {
          goto LABEL_27;
        }

        goto LABEL_57;
      case 3:
        goto LABEL_64;
      default:
LABEL_27:
        if (!v17)
        {
          goto LABEL_64;
        }

        v21 = v4 % v17;
        if (v5 == 2)
        {
          if (v21 < *(v3 + 16))
          {
            goto LABEL_59;
          }

          if (v21 >= *(v3 + 24))
          {
            goto LABEL_61;
          }

          v26 = sub_26B211D10();
          if (!v26)
          {
            goto LABEL_69;
          }

          v24 = v26;
          result = sub_26B211D40();
          v25 = v21 - result;
          if (__OFSUB__(v21, result))
          {
            goto LABEL_63;
          }

          goto LABEL_43;
        }

        if (v5 == 1)
        {
          if (v21 < v30 || v21 >= v29)
          {
            goto LABEL_60;
          }

          v23 = sub_26B211D10();
          if (!v23)
          {
            goto LABEL_68;
          }

          v24 = v23;
          result = sub_26B211D40();
          v25 = v21 - result;
          if (__OFSUB__(v21, result))
          {
            goto LABEL_62;
          }

LABEL_43:
          v27 = *(v24 + v25);
          v3 = v33;
          LODWORD(v5) = v37;
          goto LABEL_46;
        }

        if (v21 >= v36)
        {
          goto LABEL_58;
        }

        v38 = v3;
        v39 = BYTE2(v3);
        v40 = BYTE3(v3);
        v41 = v28;
        v42 = BYTE5(v3);
        v43 = BYTE6(v3);
        v44 = HIBYTE(v3);
        v45 = a2;
        v46 = WORD2(a2);
        v27 = *(&v38 + v21);
LABEL_46:
        *(v2 + 1) = v16 + v10 + v27;
        if (v6 != (v16 + v10 + v27))
        {
          sub_26B211FA0();
          sub_26B211FA0();
          sub_26B211FB0();
          result = sub_26B211FB0();
          LODWORD(v5) = v37;
        }

        ++v4;
        break;
    }
  }

  *v2 = v6;
  *(v2 + 1) = v6;
  return result;
}

Swift::Void __swiftcall Arc4Random.drop(count:)(Swift::Int count)
{
  v24 = *MEMORY[0x277D85DE8];
  if (count < 0)
  {
    goto LABEL_52;
  }

  v2 = count;
  if (!count)
  {
    return;
  }

  v3 = *v1;
  v4 = v1[1];
  while (2)
  {
    ++v3;
    v5 = *(v1 + 1);
    v6 = *(v1 + 2);
    switch(v6 >> 62)
    {
      case 1uLL:
        if (v3 >= v5 >> 32 || v5 > v3)
        {
          goto LABEL_42;
        }

        v13 = sub_26B211D10();
        if (!v13)
        {
          goto LABEL_55;
        }

        v9 = v13;
        v14 = sub_26B211D40();
        v11 = v3 - v14;
        if (!__OFSUB__(v3, v14))
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      case 2uLL:
        if (*(v5 + 16) > v3)
        {
          goto LABEL_41;
        }

        if (*(v5 + 24) <= v3)
        {
          goto LABEL_43;
        }

        v8 = sub_26B211D10();
        if (!v8)
        {
          goto LABEL_56;
        }

        v9 = v8;
        v10 = sub_26B211D40();
        v11 = v3 - v10;
        if (__OFSUB__(v3, v10))
        {
          goto LABEL_47;
        }

LABEL_20:
        v7 = *(v9 + v11);
        goto LABEL_21;
      case 3uLL:
        goto LABEL_53;
      default:
        if (v3 >= BYTE6(v6))
        {
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
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
        }

        OUTLINED_FUNCTION_1_39();
        v19 = v6;
        v20 = BYTE2(v6);
        v21 = BYTE3(v6);
        v22 = BYTE4(v6);
        v23 = BYTE5(v6);
        v7 = v18[v3];
LABEL_21:
        v4 += v7;
        v15 = *(v1 + 1);
        v16 = *(v1 + 2);
        switch(v16 >> 62)
        {
          case 1uLL:
            if (v4 >= v15 >> 32 || v15 > v4)
            {
              goto LABEL_48;
            }

            if (!sub_26B211D10())
            {
              goto LABEL_57;
            }

            if (!__OFSUB__(v4, sub_26B211D40()))
            {
              goto LABEL_37;
            }

            goto LABEL_50;
          case 2uLL:
            if (*(v15 + 16) > v4)
            {
              goto LABEL_45;
            }

            if (*(v15 + 24) <= v4)
            {
              goto LABEL_49;
            }

            if (!sub_26B211D10())
            {
              goto LABEL_58;
            }

            if (__OFSUB__(v4, sub_26B211D40()))
            {
              goto LABEL_51;
            }

LABEL_37:
            sub_26B211FB0();
            sub_26B211FB0();
            if (--v2)
            {
              continue;
            }

            v1[1] = v4;
            *v1 = v3;
            break;
          case 3uLL:
            goto LABEL_54;
          default:
            if (v4 >= BYTE6(v16))
            {
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_1_39();
            v19 = v16;
            v20 = BYTE2(v16);
            v21 = BYTE3(v16);
            v22 = BYTE4(v16);
            v23 = BYTE5(v16);
            goto LABEL_37;
        }

        return;
    }
  }
}

Swift::UInt64 __swiftcall Arc4Random.next()()
{
  v1 = 0;
  v5 = 0;
  v2 = *v0;
  v3 = v0[1];
  do
  {
    ++v2;
    v3 += sub_26B211FA0();
    sub_26B211FA0();
    sub_26B211FB0();
    sub_26B211FB0();
    sub_26B211FA0();
    sub_26B211FA0();
    *(&v5 + v1++) = sub_26B211FA0();
  }

  while (v1 != 8);
  v0[1] = v3;
  *v0 = v2;
  return v5;
}

uint64_t sub_26B20E67C(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = a1[1];
  switch(v1 >> 62)
  {
    case 1uLL:
      v7 = v1 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26B14FF4C(v2, v1);
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      v8 = v2 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v8 < v2)
      {
        goto LABEL_15;
      }

      if (sub_26B211D10() && __OFSUB__(v2, sub_26B211D40()))
      {
        goto LABEL_16;
      }

      sub_26B211D50();
      swift_allocObject();
      v9 = sub_26B211CF0();

      v7 = v9;
LABEL_10:
      if (v8 < v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_26B20E9A0(v2);

      v6 = v7 | 0x4000000000000000;
LABEL_12:
      *a1 = v2;
      a1[1] = v6;
      return result;
    case 2uLL:

      sub_26B14FF4C(v2, v1);
      *&bytes = v2;
      *(&bytes + 1) = v1 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      sub_26B211F10();
      v2 = bytes;
      result = sub_26B20E9A0(*(bytes + 16));
      v6 = *(&bytes + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &bytes);
    default:
      sub_26B14FF4C(v2, v1);
      *&bytes = v2;
      WORD4(bytes) = v1;
      BYTE10(bytes) = BYTE2(v1);
      BYTE11(bytes) = BYTE3(v1);
      BYTE12(bytes) = BYTE4(v1);
      BYTE13(bytes) = BYTE5(v1);
      BYTE14(bytes) = BYTE6(v1);
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &bytes);
      v5 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v5;
      return result;
  }
}

uint64_t sub_26B20E9A0(uint64_t a1)
{
  result = sub_26B211D10();
  if (result)
  {
    v3 = result;
    result = sub_26B211D40();
    v4 = __OFSUB__(a1, result);
    v5 = a1 - result;
    if (!v4)
    {
      sub_26B211D30();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, (v3 + v5));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B20EA10(uint64_t a1)
{
  result = sub_26B20EA38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B20EA38()
{
  result = qword_2803E88F8;
  if (!qword_2803E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88F8);
  }

  return result;
}

uint64_t sub_26B20EAA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26B20EAEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_26B211D40();
}

uint64_t static Symbols.name(for:)(int a1)
{
  sub_26B20EDFC(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  v6 = sub_26B212830();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = sub_26B212800();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  sub_26B2127F0();
  *(swift_allocObject() + 16) = a1;
  sub_26B2127D0();

  sub_26B212820();
  v20 = sub_26B212810();
  (*(v8 + 8))(v12, v6);
  sub_26B1830F8(v20, v5);

  v21 = sub_26B2127C0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v21) == 1)
  {
    (*(v15 + 8))(v19, v13);
    sub_26B20EF64(v5);
    return 0;
  }

  else
  {
    v22 = sub_26B2127B0();
    (*(v15 + 8))(v19, v13);
    (*(*(v21 - 8) + 8))(v5, v21);
  }

  return v22;
}

void sub_26B20EDFC(uint64_t a1)
{
  if (!qword_2803E8900[0])
  {
    sub_26B2127C0();
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, qword_2803E8900);
    }
  }
}

uint64_t sub_26B20EE54(uint64_t a1, int a2)
{
  v4 = sub_26B212850();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a2;
  (*(v5 + 104))(v7, *MEMORY[0x277D49420], v4);
  LOBYTE(a2) = MEMORY[0x26D66FC70](a1, v7);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

uint64_t sub_26B20EF64(uint64_t a1)
{
  sub_26B20EDFC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static Symbols.scalar(for:)(uint64_t a1, uint64_t a2)
{
  sub_26B20EDFC(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  sub_26B212850();
  OUTLINED_FUNCTION_0();
  v32 = v8;
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  v12 = sub_26B212830();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = sub_26B212800();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  sub_26B2127F0();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  sub_26B2128F0();
  sub_26B2127E0();

  sub_26B212820();
  v27 = sub_26B212810();
  (*(v14 + 8))(v18, v12);
  sub_26B1830F8(v27, v6);

  v28 = sub_26B2127C0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v28) == 1)
  {
    (*(v21 + 8))(v25, v19);
    sub_26B20EF64(v6);
LABEL_6:
    v30 = 0;
    v29 = 1;
    return v30 | (v29 << 32);
  }

  sub_26B2127A0();
  (*(v21 + 8))(v25, v19);
  (*(*(v28 - 8) + 8))(v6, v28);
  if ((*(v32 + 88))(v11, v33) != *MEMORY[0x277D49420])
  {
    (*(v32 + 8))(v11, v33);
    goto LABEL_6;
  }

  (*(v32 + 96))(v11, v33);
  v29 = 0;
  v30 = *v11;
  return v30 | (v29 << 32);
}

uint64_t sub_26B20F32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_26B2127B0() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26B213E30();
  }

  return v6 & 1;
}

_BYTE *storeEnumTagSinglePayload for Symbols(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_26B20F450(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  v4 = v3;
  if (Strong)
  {
    if (v3)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }

    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_26B20F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_26B2129A0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26B20F534(uint64_t a1, uint64_t a2)
{
  sub_26B214030();
  sub_26B20F4C8(v5, a1, a2);
  return sub_26B214070();
}

uint64_t sub_26B20F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  sub_26B20F4C8(v6, a2, v4);
  return sub_26B214070();
}

uint64_t WeakObject.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _WeakValue(0, *(a1 + 16), a3, a4);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  (*(v8 + 16))(v11, v4, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v7 + 8))(v11, v5);
  return Strong;
}

uint64_t sub_26B20F6B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for WeakObject(0, *(a1 + a2 - 8), a2, a4);
  v8 = WeakObject.wrappedValue.read(v12, v5, v6, v7);
  v10 = v9;
  swift_unknownObjectRetain();
  result = (v8)(v12, 0);
  *a3 = v10;
  return result;
}

uint64_t (*WeakObject.wrappedValue.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v6 = type metadata accessor for _WeakValue(0, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  (*(v9 + 16))(a1, v4, v6);
  *(a1 + 8) = swift_unknownObjectWeakLoadStrong();
  (*(v8 + 8))(a1, v6);
  return sub_26B20F804;
}

uint64_t sub_26B20F80C(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  v2 = WeakObject.wrappedValue.modify(v5);
  *v3 = v1;
  swift_unknownObjectRelease();
  return v2(v5, 0);
}

uint64_t WeakObject.wrappedValue.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_8_29();
}

uint64_t sub_26B20F8C0(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakObject.wrappedValue.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakKeys.init(wrappedValue:)()
{
  v1 = OUTLINED_FUNCTION_4_34();
  type metadata accessor for _WeakValue(v1, v2, v3, v4);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_32();
  v5 = Dictionary.mapKeys<A>(_:)();

  *v0 = v5;
  return result;
}

uint64_t WeakKeys.wrappedValue.getter()
{
  v1 = OUTLINED_FUNCTION_9_25();
  type metadata accessor for _WeakValue(v1, v0, v2, v3);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B20FADC);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_32();
  v4 = Dictionary.compactMapKeys<A>(_:)();

  return v4;
}

uint64_t sub_26B20FB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for _WeakValue(0, *(a2 + a3 - 24), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t WeakKeys.wrappedValue.setter()
{
  v2 = OUTLINED_FUNCTION_5_27();
  type metadata accessor for _WeakValue(v2, v1, v3, v4);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_7_23();
  v5 = Dictionary.mapKeys<A>(_:)();

  *v0 = v5;
  return result;
}

uint64_t WeakKeys.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakKeys.wrappedValue.getter();
  return OUTLINED_FUNCTION_8_29();
}

uint64_t WeakValues.init(wrappedValue:)()
{
  v1 = OUTLINED_FUNCTION_4_34();
  type metadata accessor for _WeakValue(v1, v2, v2, v3);
  OUTLINED_FUNCTION_3_32();
  v4 = sub_26B212930();

  *v0 = v4;
  return result;
}

uint64_t WeakValues.wrappedValue.getter()
{
  v1 = OUTLINED_FUNCTION_9_25();
  type metadata accessor for _WeakValue(v1, v0, v2, v3);
  sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B20FE78);
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_32();
  v4 = sub_26B2128B0();

  return v4;
}

BOOL sub_26B20FE34(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_26B20FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for _WeakValue(0, *(a2 + a3 - 16), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t WeakValues.wrappedValue.setter()
{
  v2 = OUTLINED_FUNCTION_5_27();
  type metadata accessor for _WeakValue(v2, v1, v3, v4);
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_7_23();
  v5 = sub_26B212930();

  *v0 = v5;
  return result;
}

uint64_t WeakValues.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakValues.wrappedValue.getter();
  return OUTLINED_FUNCTION_8_29();
}

uint64_t WeakDictionary.init(wrappedValue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for _WeakValue(0, a1, a2, a3);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  Dictionary.mapKeys<A>(_:)();

  type metadata accessor for _WeakValue(0, a2, v6, v7);
  OUTLINED_FUNCTION_3_32();
  v8 = sub_26B212930();

  *a4 = v8;
  return result;
}

uint64_t WeakDictionary.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  type metadata accessor for _WeakValue(255, *(a1 + 16), a3, a4);
  type metadata accessor for _WeakValue(255, v4, v5, v6);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B2102B0);
  return Dictionary.compactMapKeyValues<A, B>(_:)();
}

uint64_t sub_26B210260(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_26B2102D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = swift_unknownObjectWeakLoadStrong();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t WeakDictionary.wrappedValue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  type metadata accessor for _WeakValue(0, *(a2 + 16), a3, a4);
  type metadata accessor for _WeakValue(0, v5, v6, v7);
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_23();
  v8 = Dictionary.mapKeyValues<A, B>(_:)();

  *v4 = v8;
  return result;
}

uint64_t sub_26B210414(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_unknownObjectRetain();
  _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
  swift_unknownObjectRetain();
  return _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
}

uint64_t WeakDictionary.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakDictionary.wrappedValue.getter(v3, v4, v5, v6);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t sub_26B2104FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B210674@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v4 = sub_26B213050();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t WeakCache.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakCache.init()();
  return v0;
}

uint64_t WeakCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x2822009F8](sub_26B210770, 0, 0);
}

uint64_t sub_26B210770()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  v3 = *(*(v0 + 48) + 16);
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1[10];
  v5 = v1[11];
  *(v0 + 80) = v5;
  *(v4 + 24) = v5;
  *(v4 + 32) = v1[12];
  *(v4 + 40) = v7;
  *(v4 + 56) = v2;

  return MEMORY[0x2822009F8](sub_26B210830, v3, 0);
}

uint64_t sub_26B210830()
{
  sub_26B2133E0();
  ActorBox.withValue<A>(_:)(sub_26B210E3C);
  *(v0 + 88) = 0;

  return MEMORY[0x2822009F8](sub_26B17F9EC, 0, 0);
}

uint64_t sub_26B2108F8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t WeakCache.clean(keys:)(uint64_t a1)
{
  v3 = sub_26B213050();
  MEMORY[0x28223BE20](v3 - 8);
  v7 = v1;
  v8 = a1;
  sub_26B210674(&v6[-v4]);
  return sub_26B2130C0();
}

uint64_t *WeakCache.init()()
{
  type metadata accessor for WeakCache.WeakRef(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v1 = sub_26B212940();
  type metadata accessor for ActorBox(0, v1, v2, v3);
  v5 = sub_26B212860();
  v0[2] = ActorBox.__allocating_init(value:)(&v5);
  return v0;
}

uint64_t sub_26B210B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v29 = a4;
  v30 = a7;
  v25 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v27 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  v15 = type metadata accessor for WeakCache.WeakRef(0, v13, v12, v14);
  v26 = a2;
  sub_26B212950();
  v16 = sub_26B2133E0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v31, v33, v16);
  if (v32 == 1)
  {
    (*(v17 + 8))(v31, v16);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(*(v15 - 8) + 8))(v31, v15);
    if (Strong)
    {
      result = (*(v17 + 8))(v33, v16);
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v24[1] = a1;
    v20 = v29;

    v22 = v34;
    v23 = a3(v21);
    if (v22)
    {
      (*(v17 + 8))(v33, v16);
      return sub_26B193F8C(a3, v20);
    }

    Strong = v23;
    v34 = a3;
    if (v23)
    {
      (*(v25 + 16))(v27, v26, a5);
      swift_unknownObjectRetain_n();
      _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
      v32 = 0;
      sub_26B212940();
      sub_26B212960();
      swift_unknownObjectRelease();
      sub_26B193F8C(v34, v29);
      result = (*(v17 + 8))(v33, v16);
    }

    else
    {
      (*(v17 + 8))(v33, v16);
      result = sub_26B193F8C(v34, v29);
    }
  }

  else
  {
    result = (*(v17 + 8))(v33, v16);
    Strong = 0;
  }

LABEL_9:
  *v30 = Strong;
  return result;
}

uint64_t sub_26B210E60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = sub_26B213080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v6;
  *(v16 + 5) = *(v5 + 88);
  *(v16 + 6) = *(v5 + 96);
  *(v16 + 7) = a2;
  *(v16 + 8) = v19;
  (*(v8 + 32))(&v16[v15], v10, v7);
  sub_26B2128F0();

  sub_26B161608();
}

uint64_t sub_26B2110A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  return MEMORY[0x2822009F8](sub_26B2110EC, 0, 0);
}

uint64_t sub_26B2110EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 16);
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = v1[10];
  v0[8] = v6;
  v5[2] = v6;
  v5[3] = v1[11];
  v5[4] = v1[12];
  v5[5] = v3;
  v5[6] = v2;

  return MEMORY[0x2822009F8](sub_26B21119C, v4, 0);
}

uint64_t sub_26B21119C()
{
  ActorBox.withValue<A>(_:)(sub_26B211B1C);
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_26B211258, 0, 0);
}

uint64_t sub_26B211258()
{
  OUTLINED_FUNCTION_25();
  sub_26B213080();
  sub_26B213070();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B2112C0()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B211324(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v40 = sub_26B213030();
  v36 = *(v40 - 8);
  v11 = MEMORY[0x28223BE20](v40);
  v39 = &v35 - v12;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v35 = v19;
  MEMORY[0x28223BE20](v16);
  v46 = &v35 - v20;
  v48 = a1;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    type metadata accessor for WeakCache.WeakRef(0, a4, a5, a6);
    v49 = sub_26B2128F0();
    sub_26B2128E0();
    swift_getWitnessTable();
    v21 = sub_26B212F60();
  }

  v22 = a5;
  sub_26B2128F0();
  sub_26B2128F0();
  v23 = sub_26B212E50();

  v52 = v23;
  if (v23 == sub_26B212EF0())
  {
  }

  v47 = (v13 + 16);
  v44 = (v13 + 8);
  v45 = (v13 + 32);
  ++v36;
  v37 = v13;
  v42 = v18;
  v43 = a5;
  while (1)
  {
    v25 = sub_26B212EE0();
    sub_26B212E80();
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(v13 + 16);
    v27 = v46;
    v26(v46, (v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23), a4);
LABEL_9:
    sub_26B212F30();
    (*v45)(v18, v27, a4);
    v28 = type metadata accessor for WeakCache.WeakRef(0, a4, v22, a6);
    sub_26B212950();
    if (v50)
    {
      (*v44)(v18, a4);
      v29 = sub_26B2133E0();
      (*(*(v29 - 8) + 8))(&v49, v29);
    }

    else
    {
      v30 = a6;
      v31 = *(v28 - 8);
      (*(v31 + 32))(v51, &v49, v28);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        (*(v31 + 8))(v51, v28);
        (*v44)(v18, a4);
        a6 = v30;
      }

      else
      {
        v32 = v38;
        v26(v38, v18, a4);
        v49 = 0;
        v50 = 1;
        sub_26B212940();
        sub_26B212960();
        v26(v32, v42, a4);
        v18 = v42;
        sub_26B213080();
        v33 = v39;
        v13 = v37;
        sub_26B213060();
        (*v36)(v33, v40);
        (*(v31 + 8))(v51, v28);
        a6 = v30;
        (*v44)(v18, a4);
      }

      v22 = v43;
    }

    v34 = sub_26B212EF0();
    v23 = v52;
    if (v52 == v34)
    {
    }
  }

  result = sub_26B213730();
  if (v35 == 8)
  {
    v49 = result;
    v27 = v46;
    v26 = *v47;
    (*v47)(v46, &v49, a4);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t WeakCache.__deallocating_deinit()
{
  WeakCache.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B2119D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B211A14(uint64_t a1)
{
  v4 = *(sub_26B213080() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26B199E64;

  return sub_26B2110A0(a1, v6, v7, v8, v9, v1 + v5);
}