uint64_t sub_252A5045C()
{
  *(*v1 + 2576) = v0;

  if (v0)
  {

    v2 = sub_252A5129C;
  }

  else
  {
    v2 = sub_252A50578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A50578()
{
  v49 = v0;
  swift_setDeallocating();

  v1 = swift_deallocClassInstance();
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v1);
  sub_252929E74((v2 + 288), v0 + 2064);

  v3 = *(v0 + 2088);
  v4 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v3);
  v5 = (*(v4 + 160))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if ((v5 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_252E35F84();
  if (!sub_252E35F54())
  {
    *(v0 + 2296) = 0;
    *(v0 + 2264) = 0u;
    *(v0 + 2280) = 0u;
    goto LABEL_17;
  }

  sub_252E35F14();

  sub_252E335F4();

  if (!*(v0 + 2288))
  {
LABEL_17:
    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v21 = sub_252E36AC4();
    v22 = sub_252E374D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_252917000, v21, v22, "Failed to register correction client", v23, 2u);
      MEMORY[0x2530AED00](v23, -1, -1);
    }

    goto LABEL_35;
  }

  v6 = sub_252927BEC((v0 + 2264), v0 + 2224);
  v7 = sub_252B680FC(v6);
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {

LABEL_25:
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v24 = sub_252E36AC4();
    v25 = sub_252E374D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_252917000, v24, v25, "Failed to get warmupResponses, won't register corrections client", v26, 2u);
      MEMORY[0x2530AED00](v26, -1, -1);
    }

    goto LABEL_34;
  }

  memcpy((v0 + 16), (v8 + 504 * v9 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  v11 = *(sub_252B680FC(v10) + 152);

  if (v11 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    sub_252935408(v0 + 16);
    goto LABEL_25;
  }

  v13 = sub_252CC6468(MEMORY[0x277D84F90]);
  v47 = v13;
  v14 = *(sub_252B680FC(v13) + 152);

  if (v14 >> 62)
  {
    result = sub_252E378C4();
    v16 = result;
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_10:
      if (v16 < 1)
      {
        __break(1u);
        return result;
      }

      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2530ADF00](v17, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        sub_25297D6E8();
        sub_252A4D4F0(v20, &v47);
      }

      while (v16 != v17);

      v13 = v47;
      goto LABEL_33;
    }
  }

LABEL_33:
  __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v27 = type metadata accessor for ControlHomeCorrectionFlow(0);
  swift_allocObject();
  sub_2529353AC(v0 + 16, v0 + 1024);

  v28 = sub_252BDEA88(__dst, v13);
  *(v0 + 2328) = v27;
  *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow, protocol conformance descriptor for ControlHomeCorrectionFlow);
  *(v0 + 2304) = v28;
  sub_252E335E4();
  sub_252935408(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
LABEL_35:
  v29 = *(v0 + 2480);
  v30 = *(v0 + 2472);
  v31 = *(v0 + 2464);
  v32 = v29;
  sub_252A51F98(v30, v29, v31, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v33 = sub_252E36F94();
  v35 = v34;
  *(v0 + 2584) = v33;
  *(v0 + 2592) = v34;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v33, v35);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v37 = [v36 description];
  v38 = sub_252E36F34();
  v40 = v39;

  MEMORY[0x2530AD570](v38, v40);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v41 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v42 = v41;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v43 = *(v0 + 2128);
  v44 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v43);
  v45 = swift_task_alloc();
  *(v0 + 2608) = v45;
  *v45 = v0;
  v45[1] = sub_252A50D40;
  v46 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v46, v29, v43, v44);
}

uint64_t sub_252A50D40()
{
  v2 = *v1;
  *(v2 + 2616) = v0;

  if (v0)
  {

    v3 = sub_252A51344;
  }

  else
  {
    v3 = sub_252A50E84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252A50E84()
{
  v49 = v0;
  v1 = *(v0 + 2600);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 2584);
  v4 = *(v0 + 2456);
  v5 = *(v0 + 2432);
  v6 = *(v5 + 520);
  v7 = *(v5 + 528);
  LOBYTE(v34) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v37) = 1;
  *(v0 + 1696) = 0;
  *(v0 + 1704) = 1;
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0;
  *(v0 + 1768) = v3;
  *(v0 + 1776) = v2;
  *(v0 + 1784) = 0;
  *(v0 + 1792) = 1;
  *(v0 + 1800) = v6;
  *(v0 + 1808) = v7;
  *(v0 + 1816) = 0;
  *(v0 + 1824) = 513;
  *(v0 + 1848) = 0;
  *(v0 + 1832) = 0u;
  *(v0 + 1856) = 1;
  GEOLocationCoordinate2DMake();
  v8 = *(v0 + 1808);
  v9 = *(v0 + 1840);
  v46 = *(v0 + 1824);
  v47 = v9;
  v48 = *(v0 + 1856);
  v10 = *(v0 + 1744);
  v11 = *(v0 + 1776);
  v42 = *(v0 + 1760);
  v43 = v11;
  v44 = *(v0 + 1792);
  v45 = v8;
  v12 = *(v0 + 1712);
  v38 = *(v0 + 1696);
  v39 = v12;
  v40 = *(v0 + 1728);
  v41 = v10;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v1, v4, "HandleSuccessDialog", 19, 2, &v38);
  v13 = v47;
  *(v0 + 1656) = v46;
  *(v0 + 1672) = v13;
  *(v0 + 1688) = v48;
  v14 = v43;
  *(v0 + 1592) = v42;
  *(v0 + 1608) = v14;
  v15 = v45;
  *(v0 + 1624) = v44;
  *(v0 + 1640) = v15;
  v16 = v39;
  *(v0 + 1528) = v38;
  *(v0 + 1544) = v16;
  v17 = v41;
  *(v0 + 1560) = v40;
  *(v0 + 1576) = v17;
  sub_25293847C(v0 + 1528, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v18 = sub_252E36804();
  v20 = v19;

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    *(v21 + 32) = 25705;
    v22 = v21 + 32;
    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 40) = 0xE200000000000000;
    *(v21 + 48) = v18;
    *(v21 + 56) = v20;
    sub_252CC630C(v21);
    swift_setDeallocating();
    sub_25293847C(v22, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v23 = [objc_opt_self() sharedAnalytics];
  v24 = *(v0 + 2480);
  if (v23)
  {
    v25 = v23;

    sub_252CC1408(v26);

    v27 = sub_252E36E24();

    [v25 logEventWithType:6504 context:v27];
  }

  v28 = *(v0 + 2456);
  v29 = *(v0 + 2448);
  v30 = *(v0 + 2440);
  v31 = *(v0 + 2416);

  (*(v29 + 8))(v28, v30);
  sub_252927BEC((v0 + 2184), v31);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2104));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_252A511F4()
{
  v1 = *(v0 + 2472);

  swift_setDeallocating();

  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252A5129C()
{
  v1 = *(v0 + 2472);

  swift_setDeallocating();

  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252A51344()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2440);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2104));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252A513EC(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v4 = sub_252E36AB4();
  v3[62] = v4;
  v3[63] = *(v4 - 8);
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A514B0, 0, 0);
}

uint64_t sub_252A514B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v1 = sub_252E33F24();
  v0[65] = v1;
  v2 = sub_252E33F04();
  v0[66] = v2;
  if (qword_27F53F2D0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F575798;
  v4 = v2;
  sub_252A51F98(v1, v2, v3, v0 + 44);
  sub_252929E74((v0 + 44), (v0 + 49));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v5 = sub_252E36F94();
  v7 = v6;
  v0[67] = v5;
  v0[68] = v6;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);
  sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v9 = qword_27F544F70;
  v0[69] = qword_27F544F70;
  v10 = v9;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v11 = v0[47];
  v12 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v11);
  v13 = swift_task_alloc();
  v0[70] = v13;
  *v13 = v0;
  v13[1] = sub_252A51780;

  return sub_252BA1314((v0 + 54), v1, v2, v11, v12);
}

uint64_t sub_252A51780()
{
  v2 = *v1;
  *(v2 + 568) = v0;

  if (v0)
  {

    v3 = sub_252A51C20;
  }

  else
  {
    v3 = sub_252A518C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252A518C4()
{
  v49 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v5 + 520);
  v7 = *(v5 + 528);
  *(v0 + 184) = 0;
  LOBYTE(v34) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v37) = 1;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 256) = v3;
  *(v0 + 264) = v2;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = v6;
  *(v0 + 296) = v7;
  *(v0 + 304) = 0;
  *(v0 + 312) = 513;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = 1;
  GEOLocationCoordinate2DMake();
  v8 = *(v0 + 328);
  v46 = *(v0 + 312);
  v47 = v8;
  v48 = *(v0 + 344);
  v9 = *(v0 + 264);
  v42 = *(v0 + 248);
  v43 = v9;
  v10 = *(v0 + 296);
  v44 = *(v0 + 280);
  v45 = v10;
  v11 = *(v0 + 200);
  v38 = *(v0 + 184);
  v39 = v11;
  v12 = *(v0 + 232);
  v40 = *(v0 + 216);
  v41 = v12;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v1, v4, "HandleFailureDialog", 19, 2, &v38);
  v13 = v44;
  *(v0 + 128) = v45;
  v14 = v47;
  *(v0 + 144) = v46;
  *(v0 + 160) = v14;
  v15 = v40;
  *(v0 + 64) = v41;
  v16 = v43;
  *(v0 + 80) = v42;
  *(v0 + 96) = v16;
  *(v0 + 112) = v13;
  v17 = v39;
  *(v0 + 16) = v38;
  *(v0 + 32) = v17;
  *(v0 + 176) = v48;
  *(v0 + 48) = v15;
  sub_25293847C(v0 + 16, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v18 = sub_252E36804();
  v20 = v19;

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    *(v21 + 32) = 25705;
    v22 = v21 + 32;
    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 40) = 0xE200000000000000;
    *(v21 + 48) = v18;
    *(v21 + 56) = v20;
    sub_252CC630C(v21);
    swift_setDeallocating();
    sub_25293847C(v22, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v23 = [objc_opt_self() sharedAnalytics];
  v24 = *(v0 + 520);
  if (v23)
  {
    v25 = v23;

    sub_252CC1408(v26);

    v27 = sub_252E36E24();

    [v25 logEventWithType:6504 context:v27];
  }

  v29 = *(v0 + 504);
  v28 = *(v0 + 512);
  v30 = *(v0 + 496);
  v31 = *(v0 + 472);

  (*(v29 + 8))(v28, v30);
  sub_252927BEC((v0 + 432), v31);
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_252A51C20()
{
  v1 = *(v0 + 528);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252A51CC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_252A51CE4, 0, 0);
}

uint64_t sub_252A51CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v1 = sub_252E33F24();
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v1);
  sub_252929E74((v2 + 16), (v0 + 2));

  v4 = *(sub_252B680FC(v3) + 72);

  if (v4 != 1 || (*(sub_252B680FC(v5) + 72) = 0, v6 = , v7 = sub_252B680FC(v6), *(v7 + 104) = 0, *(v7 + 112) = 1, v8 = , *(sub_252B680FC(v8) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0, , , __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E338C4() & 1) != 0) || (__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E338D4() & 1) != 0) || (__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E338E4() & 1) != 0) || (__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_252E33884() & 1) != 0))
  {
    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D18);
    sub_252CC3D90(0xD000000000000041, 0x8000000252E73E30, 0xD000000000000091, 0x8000000252E73D10);
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
    sub_252929E74((v13 + 136), (v0 + 7));

    v14 = v0[10];
    v15 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
    (*(v15 + 88))(v14, v15);

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[1];

  return v9();
}

void *sub_252A51F98@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = (a3 + 32);
  while (v7)
  {
    v9 = *v8++;
    v10 = *(&v9 + 1);
    v34 = v9;
    v11 = v9;
    v12 = (*(*(&v9 + 1) + 16))(a1, a2, v9, *(&v9 + 1));
    --v7;
    if (v12)
    {
      v13 = sub_252B680FC(v12);
      swift_beginAccess();
      v14 = *(v13 + 16);
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 504 * v15 - 472);
        memcpy(__dst, v16, sizeof(__dst));
        memmove(__src, v16, 0x1F8uLL);
        GEOLocationCoordinate2DMake();
        sub_2529353AC(__dst, v37);

        memcpy(v37, __src, sizeof(v37));
      }

      else
      {

        sub_25293DEE0(v37);
      }

      memcpy(__src, v37, sizeof(__src));
      v26 = *(v10 + 8);
      v27 = *(v26 + 24);
      *(a4 + 3) = v34;
      __swift_allocate_boxed_opaque_existential_0(a4);
      v27(__src, v11, v26);
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544D18);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();
      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      DynamicType = swift_getDynamicType();
      v30 = a4[4];
      __src[0] = DynamicType;
      __src[1] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E10, &qword_252E42840);
      v31 = sub_252E36F94();
      v33 = v32;

      __src[0] = v31;
      __src[1] = v33;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
      sub_252CC3D90(__src[0], __src[1], 0xD000000000000091, 0x8000000252E73D10);
    }
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544D18);
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E73DD0);
  v18 = [a1 description];
  v19 = sub_252E36F34();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  MEMORY[0x2530AD570](0x73657220646E610ALL, 0xEE002065736E6F70);
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E18, &qword_252E42848);
  v23 = sub_252E36F94();
  MEMORY[0x2530AD570](v23);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E73E00);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000091, 0x8000000252E73D10);

  sub_25293DEE0(v37);
  v24 = type metadata accessor for GenericFallbackResponseHandler();
  swift_allocObject();
  memcpy(__src, v37, sizeof(__src));
  result = sub_252BE97AC(__src);
  a4[3] = v24;
  a4[4] = &off_2864BB830;
  *a4 = result;
  return result;
}

uint64_t sub_252A523FC()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_252A52480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_252A52544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_252A52608(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252A51CC4(a1, a2);
}

uint64_t sub_252A526A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252A4DBD8(a1, a2);
}

uint64_t sub_252A52754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_252A52818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_252A528DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252A513EC(a1, a2);
}

uint64_t sub_252A52988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252A52A84(a1, a2);
}

uint64_t sub_252A52A84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A52B44, 0, 0);
}

uint64_t sub_252A52B44()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E73CE0, 0xD000000000000091, 0x8000000252E73D10);
  v6 = objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler());

  [v6 init];
  type metadata accessor for ControlHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_252A52CD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

id HomeUserTask.__allocating_init(taskType:attribute:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  return v10;
}

void *HomeUserTask.Builder.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 4;
  return result;
}

void *HomeUserTask.Builder.init()()
{
  result = v0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 4;
  return result;
}

uint64_t sub_252A52E38(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    *(v1 + 32) = a1;
    v3 = a1;
  }
}

id sub_252A52E7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = v3;
  v6 = sub_252E36F04();
  v7 = [v4 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];

  return v8;
}

void *sub_252A52F44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for HomeUserTask.Builder();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = v3;
  return v4;
}

uint64_t HomeUserTask.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StateSemantic.rawValue.getter()
{
  result = 28271;
  switch(*v0)
  {
    case 1:
      return 6710895;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0x646574756DLL;
    case 4:
      return 0x646574756D6E75;
    case 5:
      return 0x64656B636F6CLL;
    case 6:
      return 0x64656B636F6C6E75;
    case 7:
      v3 = 1801678700;
      return v3 | 0x676E6900000000;
    case 8:
      return 0x6E696B636F6C6E75;
    case 9:
      return 1852141679;
    case 0xA:
      return 0x6465736F6C63;
    case 0xB:
      v3 = 1852141679;
      return v3 | 0x676E6900000000;
    case 0xC:
      v3 = 1936682083;
      return v3 | 0x676E6900000000;
    case 0xD:
      return 28789;
    case 0xE:
      return 1853321060;
    case 0xF:
      return 7827308;
    case 0x10:
      return 0x6D756964656DLL;
    case 0x11:
      return 1751607656;
    case 0x12:
      return 0x796177666C6168;
    case 0x13:
      return 0x7369776B636F6C63;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x65737265766572;
    case 0x16:
      return 0x65645F656B6F6D73;
    case 0x17:
    case 0x2A:
      return 0xD000000000000012;
    case 0x18:
      return 0xD000000000000018;
    case 0x19:
      return 0xD00000000000001CLL;
    case 0x1A:
      return 0xD000000000000010;
    case 0x1B:
      return 0xD000000000000014;
    case 0x1C:
      return 0x6E656C6C65637865;
    case 0x1D:
      return 1685024615;
    case 0x1E:
      return 1919508838;
    case 0x1F:
      return 0x726F697265666E69;
    case 0x20:
      return 1919905648;
    case 0x21:
      v3 = 1952540008;
      return v3 | 0x676E6900000000;
    case 0x22:
      v3 = 1819242339;
      return v3 | 0x676E6900000000;
    case 0x23:
      return 0x65646F4D6F747561;
    case 0x24:
      return 0x6C61756E616DLL;
    case 0x25:
      return 0x6576654C6B616570;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 0x6C6576656CLL;
    case 0x28:
      return 0x656772616863;
    case 0x29:
      return 0x745F726F736E6573;
    case 0x2B:
      return 0x6F6D5F676E697773;
    case 0x2C:
      return 0x6573755F6E69;
    case 0x2D:
      return 0x755F6E695F746F6ELL;
    case 0x2E:
      return 0x64656D7261;
    case 0x2F:
      return 0x696E5F64656D7261;
    case 0x30:
      return 0x74735F64656D7261;
    case 0x31:
      return 0x77615F64656D7261;
    case 0x32:
      return 0x64656D7261736964;
    case 0x33:
      return 0x72745F6D72616C61;
    case 0x34:
      return 1701602409;
    case 0x35:
      return 0x6465786966;
    case 0x36:
      return 0x676E69676E697773;
    case 0x37:
      return 0x64656D6D616ALL;
    case 0x38:
      return 0x6E61656C63;
    case 0x39:
      return 0x6D7575636176;
    case 0x3A:
      return 7368557;
    case 0x3B:
      return 0x6E416D7575636176;
    case 0x3C:
      return 0x61656C4370656564;
    case 0x3D:
      return 0x6B63697571;
    case 0x3E:
      return 0x7465697571;
    case 0x3F:
      v2 = 1299145573;
      goto LABEL_81;
    case 0x40:
      return 0x6573696F4E776F6CLL;
    case 0x41:
      return 0x6E6F697461636176;
    case 0x42:
      v2 = 1299081581;
      goto LABEL_81;
    case 0x43:
      v2 = 1299734893;
      goto LABEL_81;
    case 0x44:
      v2 = 1299800420;
LABEL_81:
      result = v2 | 0x65646F00000000;
      break;
    case 0x45:
      result = 0x646F4D746867696ELL;
      break;
    case 0x46:
      result = 0x6573756170;
      break;
    case 0x47:
      result = 0x656D75736572;
      break;
    case 0x48:
      result = 0x64656B636F64;
      break;
    case 0x49:
      result = 0x6B63757473;
      break;
    case 0x4A:
      result = 0x646573756170;
      break;
    case 0x4B:
      result = 0x64656D75736572;
      break;
    case 0x4C:
      result = 0x646570706F7473;
      break;
    default:
      return result;
  }

  return result;
}

HomeAutomationInternal::StateSemantic_optional __swiftcall StateSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 59;
  switch(v3)
  {
    case 0:
      goto LABEL_76;
    case 1:
      v5 = 1;
      goto LABEL_76;
    case 2:
      v5 = 2;
      goto LABEL_76;
    case 3:
      v5 = 3;
      goto LABEL_76;
    case 4:
      v5 = 4;
      goto LABEL_76;
    case 5:
      v5 = 5;
      goto LABEL_76;
    case 6:
      v5 = 6;
      goto LABEL_76;
    case 7:
      v5 = 7;
      goto LABEL_76;
    case 8:
      v5 = 8;
      goto LABEL_76;
    case 9:
      v5 = 9;
      goto LABEL_76;
    case 10:
      v5 = 10;
      goto LABEL_76;
    case 11:
      v5 = 11;
      goto LABEL_76;
    case 12:
      v5 = 12;
      goto LABEL_76;
    case 13:
      v5 = 13;
      goto LABEL_76;
    case 14:
      v5 = 14;
      goto LABEL_76;
    case 15:
      v5 = 15;
      goto LABEL_76;
    case 16:
      v5 = 16;
      goto LABEL_76;
    case 17:
      v5 = 17;
      goto LABEL_76;
    case 18:
      v5 = 18;
      goto LABEL_76;
    case 19:
      v5 = 19;
      goto LABEL_76;
    case 20:
      v5 = 20;
      goto LABEL_76;
    case 21:
      v5 = 21;
      goto LABEL_76;
    case 22:
      v5 = 22;
      goto LABEL_76;
    case 23:
      v5 = 23;
      goto LABEL_76;
    case 24:
      v5 = 24;
      goto LABEL_76;
    case 25:
      v5 = 25;
      goto LABEL_76;
    case 26:
      v5 = 26;
      goto LABEL_76;
    case 27:
      v5 = 27;
      goto LABEL_76;
    case 28:
      v5 = 28;
      goto LABEL_76;
    case 29:
      v5 = 29;
      goto LABEL_76;
    case 30:
      v5 = 30;
      goto LABEL_76;
    case 31:
      v5 = 31;
      goto LABEL_76;
    case 32:
      v5 = 32;
      goto LABEL_76;
    case 33:
      v5 = 33;
      goto LABEL_76;
    case 34:
      v5 = 34;
      goto LABEL_76;
    case 35:
      v5 = 35;
      goto LABEL_76;
    case 36:
      v5 = 36;
      goto LABEL_76;
    case 37:
      v5 = 37;
      goto LABEL_76;
    case 38:
      v5 = 38;
      goto LABEL_76;
    case 39:
      v5 = 39;
      goto LABEL_76;
    case 40:
      v5 = 40;
      goto LABEL_76;
    case 41:
      v5 = 41;
      goto LABEL_76;
    case 42:
      v5 = 42;
      goto LABEL_76;
    case 43:
      v5 = 43;
      goto LABEL_76;
    case 44:
      v5 = 44;
      goto LABEL_76;
    case 45:
      v5 = 45;
      goto LABEL_76;
    case 46:
      v5 = 46;
      goto LABEL_76;
    case 47:
      v5 = 47;
      goto LABEL_76;
    case 48:
      v5 = 48;
      goto LABEL_76;
    case 49:
      v5 = 49;
      goto LABEL_76;
    case 50:
      v5 = 50;
      goto LABEL_76;
    case 51:
      v5 = 51;
      goto LABEL_76;
    case 52:
      v5 = 52;
      goto LABEL_76;
    case 53:
      v5 = 53;
      goto LABEL_76;
    case 54:
      v5 = 54;
      goto LABEL_76;
    case 55:
      v5 = 55;
      goto LABEL_76;
    case 56:
      v5 = 56;
      goto LABEL_76;
    case 57:
      v5 = 57;
      goto LABEL_76;
    case 58:
      v5 = 58;
LABEL_76:
      v6 = v5;
      break;
    case 59:
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    case 64:
      v6 = 64;
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    default:
      v6 = 77;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static StateSemantic.< infix(_:_:)()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A53B64()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A53C00()
{
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A53C68(uint64_t a1)
{
  StateSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252A53CCC(uint64_t a1)
{
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A53D3C@<X0>(uint64_t *a1@<X8>)
{
  result = StateSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252A53D64()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A53E00()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252A53EB0()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252A53F60()
{
  v0 = StateSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == StateSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A540BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A543EC();
  v5 = sub_252A54440();
  v6 = sub_252A54494();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252A54130()
{
  result = qword_27F541E40;
  if (!qword_27F541E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E40);
  }

  return result;
}

unint64_t sub_252A54188()
{
  result = qword_27F541E48;
  if (!qword_27F541E48)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409B0, &unk_252E3DF60);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F541E48);
  }

  return result;
}

unint64_t sub_252A541F0()
{
  result = qword_27F541E50;
  if (!qword_27F541E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E50);
  }

  return result;
}

unint64_t sub_252A54248()
{
  result = qword_27F541E58;
  if (!qword_27F541E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB4)
  {
    goto LABEL_17;
  }

  if (a2 + 76 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 76) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 76;
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

      return (*a1 | (v4 << 8)) - 76;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 76;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v8 = v6 - 77;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB4)
  {
    v4 = 0;
  }

  if (a2 > 0xB3)
  {
    v5 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
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
    *result = a2 + 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A543EC()
{
  result = qword_27F541E60;
  if (!qword_27F541E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E60);
  }

  return result;
}

unint64_t sub_252A54440()
{
  result = qword_27F541E68;
  if (!qword_27F541E68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E68);
  }

  return result;
}

unint64_t sub_252A54494()
{
  result = qword_27F541E70;
  if (!qword_27F541E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F541E70);
  }

  return result;
}

void *sub_252A544EC(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Scene(0);
    sub_252A5B8EC(&qword_27F541EE8, type metadata accessor for Scene, protocol conformance descriptor for Entity);
    result = sub_252E373E4();
    v1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_8:
  v17 = v10;
  v11 = v5;
  v12 = v6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_252E37904() || (type metadata accessor for Scene(0), swift_dynamicCast(), v15 = v18, v5 = v11, v6 = v12, !v18))
      {
LABEL_22:
        sub_25291AE30(v1);
        return v17;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v5 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v6 = (v14 - 1) & v14;
    v15 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [objc_opt_self() executeRequestWithActionSet_];

    v11 = v5;
    v12 = v6;
    if (v16)
    {
      MEMORY[0x2530AD700](result);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v10 = v24;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v5);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_252A54788(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, unsigned int a8)
{
  v109 = a8;
  v108 = a7;
  v111 = a5;
  v112 = a6;
  v105 = a4;
  v106 = a3;
  v102 = sub_252E36C84();
  v101 = *(v102 - 8);
  v10 = MEMORY[0x28223BE20](v102);
  v100 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = (&v93 - v12);
  v13 = sub_252E36D54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v93 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v93 - v22;
  if (qword_2814B0A70 != -1)
  {
LABEL_60:
    swift_once();
  }

  v93 = sub_252E36AD4();
  v24 = __swift_project_value_buffer(v93, qword_2814B0A78);
  v119 = 0;
  v120 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E74420);
  v25 = [a1 description];
  v26 = sub_252E36F34();
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  v107 = v24;
  sub_252CC7784(v119, v120, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  sub_252E36D14();
  sub_252A591B8(a2, a1);
  v30 = v29;
  if ((v29 & 0xC000000000000001) != 0)
  {
    if (sub_252E378C4())
    {
      v94 = v21;
      v103 = v23;
      v110 = v14;
      v97 = v13;
      a1 = sub_252CC6468(MEMORY[0x277D84F90]);
      v96 = v30;

      sub_252E37874();
      type metadata accessor for Service(0);
      sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
      sub_252E373E4();
      v31 = v119;
      v23 = v120;
      v32 = v121;
      v33 = v122;
      v13 = v123;
LABEL_10:
      v95 = v32;
      v21 = ((v32 + 64) >> 6);
      v115 = xmmword_252E3C130;
      v113 = v23;
      for (i = v21; ; v21 = i)
      {
        if (v31 < 0)
        {
          v40 = sub_252E37904();
          if (!v40 || (v116 = v40, type metadata accessor for Service(0), swift_dynamicCast(), v14 = v117, a2 = v33, v39 = v13, !v117))
          {
LABEL_33:
            sub_25291AE30(v31);
            v56 = (MEMORY[0x277D84F90] >> 62);
            if (MEMORY[0x277D84F90] >> 62)
            {
              v92 = sub_252E378C4();
              v58 = v97;
              v59 = v109;
              v60 = v108;
              v61 = v106;
              LOBYTE(v62) = v105;
              if (!v92)
              {
                goto LABEL_64;
              }

              v57 = sub_2529FF6A8(MEMORY[0x277D84F90]);
            }

            else
            {
              v57 = MEMORY[0x277D84FA0];
              v58 = v97;
              v59 = v109;
              v60 = v108;
              v61 = v106;
              LOBYTE(v62) = v105;
            }

            while (1)
            {
              v63 = ((v62 & 1) != 0 ? 2000 : v61);
              v64 = sub_252A565B8(a1, v57, v63, 0, v111, v112, v60, v59);

              if (sub_252C2B888())
              {
                break;
              }

              *&v115 = v56;
              v69 = v94;
              sub_252E36D14();

              v70 = 7000;
              if ((v62 & 1) == 0)
              {
                v70 = v61;
              }

              v71 = v98;
              *v98 = v70;
              v72 = v101;
              v73 = v102;
              (*(v101 + 104))(v71, *MEMORY[0x277D85178], v102);
              v74 = v99;
              MEMORY[0x2530AD270](v69, v71);
              v75 = *(v72 + 8);
              v75(v71, v73);
              v76 = v100;
              sub_252E36D34();
              MEMORY[0x2530AD270](v74, v76);
              v75(v76, v73);
              v56 = v110[1];
              v77 = v74;
              v78 = v58;
              ++v110;
              v56(v77, v58);
              v79 = sub_252CA9EE8(v64);

              v80 = [v64 entityResponses];
              if (v80)
              {
                v81 = v80;
                type metadata accessor for HomeEntityResponse();
                v62 = sub_252E37264();
              }

              else
              {
                if (qword_27F53F4E8 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v93, qword_27F544D60);
                v117 = 0;
                v118 = 0xE000000000000000;
                sub_252E379F4();

                v58 = 0xD00000000000007ALL;
                v117 = 0xD00000000000002FLL;
                v118 = 0x8000000252E69700;
                v82 = v64;
                v83 = [v82 description];
                v84 = sub_252E36F34();
                v86 = v85;

                MEMORY[0x2530AD570](v84, v86);

                sub_252CC3D90(v117, v118, 0xD000000000000098, 0x8000000252E69730);

                v62 = MEMORY[0x277D84F90];
                v59 = v109;
                v60 = v108;
              }

              v61 = sub_252CAA4E0(v79, v62);

              if (v115 && sub_252E378C4())
              {
                a1 = sub_2529FF6A8(MEMORY[0x277D84F90]);
              }

              else
              {
                a1 = MEMORY[0x277D84FA0];
              }

              v87 = v104;
              v88 = sub_252E36D44();
              if ((v88 & 0x8000000000000000) == 0)
              {
                v89 = sub_252A565B8(v61, a1, v88, 0, v111, v112, v60, v59);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_252E3C3D0;
                *(inited + 32) = v64;
                *(inited + 40) = v89;
                v64 = combineIntentResponses(intentResponses:)(inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                v56(v87, v78);
                v56(v94, v78);
                v56(v103, v78);
                return v64;
              }

              __break(1u);
LABEL_64:
              v57 = MEMORY[0x277D84FA0];
            }

            v65 = sub_252E36AC4();
            v66 = sub_252E374D4();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&dword_252917000, v65, v66, "Found error while doing a get request. We will bail out", v67, 2u);
              MEMORY[0x2530AED00](v67, -1, -1);
            }

            (v110[1])(v103, v58);
            return v64;
          }
        }

        else
        {
          v37 = v33;
          v38 = v13;
          a2 = v33;
          if (!v13)
          {
            while (1)
            {
              a2 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                break;
              }

              if (a2 >= v21)
              {
                goto LABEL_33;
              }

              v38 = *&v23[8 * a2];
              ++v37;
              if (v38)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_18:
          v39 = (v38 - 1) & v38;
          v14 = *(*(v31 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v38)))));

          if (!v14)
          {
            goto LABEL_33;
          }
        }

        v21 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v23 = swift_allocObject();
        *(v23 + 1) = v115;
        v41 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v42 = sub_252E36F04();
        v43 = [v41 initWithIdentifier:0 displayString:v42];

        v44 = v43;
        [v44 setTaskType_];
        [v44 setAttribute_];
        [v44 setValue_];

        *(v23 + 4) = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = a1;
        v47 = sub_252A454C0(v14);
        v48 = a1[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_58;
        }

        v13 = v46;
        if (a1[3] >= v50)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v117;
            if (v46)
            {
              goto LABEL_11;
            }
          }

          else
          {
            sub_252E03EC4();
            a1 = v117;
            if (v13)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_252E00638(v50, isUniquelyReferenced_nonNull_native);
          v51 = sub_252A454C0(v14);
          if ((v13 & 1) != (v52 & 1))
          {
            type metadata accessor for Service(0);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v47 = v51;
          a1 = v117;
          if (v13)
          {
LABEL_11:
            *(a1[7] + 8 * v47) = v23;

            goto LABEL_12;
          }
        }

        a1[(v47 >> 6) + 8] |= 1 << v47;
        *(a1[6] + 8 * v47) = v14;
        *(a1[7] + 8 * v47) = v23;
        v53 = a1[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_59;
        }

        a1[2] = v55;
LABEL_12:
        v33 = a2;
        v13 = v39;
        v31 = v21;
        v23 = v113;
      }
    }
  }

  else if (*(v29 + 16))
  {
    v94 = v21;
    v103 = v23;
    v110 = v14;
    v97 = v13;
    a1 = sub_252CC6468(MEMORY[0x277D84F90]);
    v34 = -1 << *(v30 + 32);
    v23 = (v30 + 56);
    v32 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v13 = v36 & *(v30 + 56);

    v33 = 0;
    v96 = v30;
    v31 = v30;
    goto LABEL_10;
  }

  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
  sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
  v64 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v68 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v64[v68] = 102;
  [v64 setUserActivity_];
  (v14[1])(v23, v13);
  return v64;
}

char *sub_252A55500(char *a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7, unsigned int a8)
{
  v130 = a8;
  v125 = a6;
  v126 = a7;
  v124 = a5;
  v127 = a4;
  v128 = a3;
  v10 = sub_252E36C84();
  v120 = *(v10 - 8);
  v121 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v119 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v117 = (&v102 - v13);
  v14 = sub_252E36D54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v118 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v102 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v102 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v102 - v22;
  if (qword_2814B0A70 != -1)
  {
    goto LABEL_62;
  }

LABEL_2:
  v116 = sub_252E36AD4();
  v24 = __swift_project_value_buffer(v116, qword_2814B0A78);
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74460);
  v25 = [a1 description];
  v26 = sub_252E36F34();
  v28 = v27;

  v29 = v26;
  v30 = v24;
  MEMORY[0x2530AD570](v29, v28);

  sub_252CC7784(v131, v132, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  v31 = v23;
  sub_252E36D14();
  sub_252A591B8(a2, a1);
  v33 = v32;
  v34 = a1;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = sub_252E378C4();
  }

  else
  {
    v35 = *(v32 + 16);
  }

  v36 = v130;
  v37 = v14;
  v38 = v31;
  if (!v35)
  {

    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    a1 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v46 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&a1[v46] = 102;
    [a1 setUserActivity_];
LABEL_16:
    (*(v15 + 8))(v38, v37);
    return a1;
  }

  v39 = sub_252CAAD54(v33, a1);
  v115 = MEMORY[0x277D84F90] >> 62;
  v122 = v33;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v97 = sub_252E378C4();
    v41 = v129;
    if (v97)
    {
      v40 = sub_2529FF6A8(MEMORY[0x277D84F90]);
    }

    else
    {
      v40 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v40 = MEMORY[0x277D84FA0];
    v41 = v129;
  }

  if (v127)
  {
    v42 = 2000;
  }

  else
  {
    v42 = v128;
  }

  a1 = sub_252A565B8(v39, v40, v42, 0, v124, v125, v126, v36);

  if (sub_252C2B888())
  {

    v43 = sub_252E36AC4();
    v44 = sub_252E374D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_252917000, v43, v44, "Found error while doing a get request. We will bail out", v45, 2u);
      MEMORY[0x2530AED00](v45, -1, -1);
    }

    goto LABEL_16;
  }

  v47 = [v34 taskType];
  v113 = v37;
  v114 = v38;
  v112 = a1;
  if (v47 != 3)
  {
    goto LABEL_44;
  }

  v48 = [a1 entityResponses];
  if (!v48)
  {
    goto LABEL_44;
  }

  v49 = v48;
  type metadata accessor for HomeEntityResponse();
  v50 = sub_252E37264();

  v107 = v34;
  if (v50 >> 62)
  {
    v51 = sub_252E378C4();
    v52 = v122;
    if (!v51)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v122;
    if (!v51)
    {
      goto LABEL_70;
    }
  }

  v109 = 0;
  a2 = 0;
  v53 = v50 & 0xC000000000000001;
  v54 = v50 & 0xFFFFFFFFFFFFFF8;
  v55 = v50 + 32;
  v106 = v30;
  v111 = v15;
  v108 = v50;
  v105 = v51;
  v104 = v50 & 0xC000000000000001;
  v103 = v50 & 0xFFFFFFFFFFFFFF8;
  v102 = v50 + 32;
  do
  {
    if (v53)
    {
      v56 = v109;
      v57 = MEMORY[0x2530ADF00](v109, v50);
    }

    else
    {
      v56 = v109;
      if (v109 >= *(v54 + 16))
      {
        goto LABEL_67;
      }

      v57 = *(v55 + 8 * v109);
    }

    v110 = v57;
    v58 = __OFADD__(v56, 1);
    v59 = v56 + 1;
    if (v58)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v60 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v61 = sub_252E36F04();
    v62 = [v60 initWithIdentifier:0 displayString:v61];

    v63 = v62;
    [v63 setBoolValue_];
    [v63 setType_];

    v64 = [v110 taskResponses];
    if (!v64)
    {
      goto LABEL_59;
    }

    v65 = v64;
    type metadata accessor for HomeUserTaskResponse();
    v15 = sub_252E37264();

    v109 = v59;
    if (v15 >> 62)
    {
      v23 = sub_252E378C4();
      if (!v23)
      {
LABEL_42:

        v15 = v111;
        while (1)
        {
          v34 = v107;
LABEL_44:
          v69 = v123;
          sub_252E36D14();
          v70 = 7000;
          if ((v127 & 1) == 0)
          {
            v70 = v128;
          }

          v71 = v117;
          *v117 = v70;
          v73 = v120;
          v72 = v121;
          (*(v120 + 104))(v71, *MEMORY[0x277D85178], v121);
          v74 = v34;
          v75 = v118;
          MEMORY[0x2530AD270](v69, v71);
          v76 = *(v73 + 8);
          v76(v71, v72);
          v77 = v119;
          sub_252E36D34();
          MEMORY[0x2530AD270](v75, v77);
          v76(v77, v72);
          v78 = *(v15 + 8);
          v15 += 8;
          v36 = v78;
          v38 = v113;
          v78(v75, v113);
          a1 = v74;
          v79 = v74;
          v80 = v112;
          v52 = sub_252CAC120(v112, v79);

          v81 = [v80 entityResponses];
          if (v81)
          {
            v82 = v81;
            type metadata accessor for HomeEntityResponse();
            v83 = sub_252E37264();
          }

          else
          {
            v41 = v80;
            v111 = v15;
            if (qword_27F53F4E8 != -1)
            {
LABEL_68:
              swift_once();
            }

            __swift_project_value_buffer(v116, qword_27F544D60);
            v131 = 0;
            v132 = 0xE000000000000000;
            sub_252E379F4();

            v131 = 0xD00000000000002FLL;
            v132 = 0x8000000252E69700;
            v84 = v41;
            v85 = [v84 description];
            v86 = sub_252E36F34();
            v88 = v87;

            MEMORY[0x2530AD570](v86, v88);

            sub_252CC3D90(v131, v132, 0xD000000000000098, 0x8000000252E69730);

            v83 = MEMORY[0x277D84F90];
            v15 = v111;
            v80 = v41;
          }

          v89 = v114;
          v90 = sub_252CAC228(v52, v83, a1);

          if (v115)
          {
            v93 = sub_252E378C4();
            v63 = v129;
            if (v93)
            {
              v91 = sub_2529FF6A8(MEMORY[0x277D84F90]);
              v92 = sub_252E36D44();
              if ((v92 & 0x8000000000000000) == 0)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v91 = MEMORY[0x277D84FA0];
              v92 = sub_252E36D44();
              if ((v92 & 0x8000000000000000) == 0)
              {
LABEL_55:
                v94 = sub_252A565B8(v90, v91, v92, 0, v124, v125, v126, v130);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_252E3C3D0;
                *(inited + 32) = v80;
                *(inited + 40) = v94;
                a1 = combineIntentResponses(intentResponses:)(inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                (v36)(v63, v38);
                (v36)(v123, v38);
                (v36)(v89, v38);
                return a1;
              }
            }
          }

          else
          {
            v91 = MEMORY[0x277D84FA0];
            v63 = v129;
            v92 = sub_252E36D44();
            if ((v92 & 0x8000000000000000) == 0)
            {
              goto LABEL_55;
            }
          }

          __break(1u);
LABEL_59:
        }
      }
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_42;
      }
    }

    v36 = 0;
    v14 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v66 = MEMORY[0x2530ADF00](v36, v15);
      }

      else
      {
        if (v36 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v66 = *(v15 + 8 * v36 + 32);
      }

      v67 = v66;
      v68 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_2;
      }

      v131 = v66;
      a1 = sub_252DA5D40(&v131, 0x1B, v63, 0, 1);

      if (a1)
      {
        break;
      }

      ++v36;
      if (v68 == v23)
      {
        goto LABEL_42;
      }
    }

    v37 = v113;
    v15 = v111;
    v38 = v114;
    v41 = v129;
    a1 = v112;
    v52 = v122;
    v50 = v108;
    v53 = v104;
    v54 = v103;
    v55 = v102;
  }

  while (v109 != v105);
LABEL_70:

  v98 = sub_252E36AC4();
  v99 = sub_252E374D4();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_252917000, v98, v99, "All entities are off. Returning power value instead of original", v100, 2u);
    MEMORY[0x2530AED00](v100, -1, -1);
  }

  v101 = sub_252C2BC20(0x1B);
  (*(v15 + 8))(v38, v37);
  return v101;
}

char *sub_252A56278(void *a1, unint64_t a2, void **a3, char a4, uint64_t a5, void *a6, uint64_t a7, unsigned int a8)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E744A0);
  v14 = [a1 description];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  sub_252CC7784(0, 0xE000000000000000, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v18 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ([a1 attribute] == 1)
  {
    v18 = sub_252A5E390(a2);
  }

  else
  {

    sub_252A591B8(a2, a1);
    v19 = sub_252CACCC8(v20, a1);
  }

  if (*(v19 + 16))
  {
    goto LABEL_9;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_15;
    }
  }

  else if (!*(v18 + 16))
  {
LABEL_15:

    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    v21 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v21[v23] = 102;
    [v21 setUserActivity_];
    goto LABEL_10;
  }

LABEL_9:
  v21 = sub_252A565B8(v19, v18, a3, a4 & 1, a5, a6, a7, a8);

LABEL_10:

  return v21;
}

char *sub_252A565B8(uint64_t a1, uint64_t a2, void **a3, int a4, uint64_t a5, void *a6, uint64_t a7, unsigned int a8)
{
  v179 = a8;
  v178 = a7;
  v185 = a6;
  v180 = a5;
  v214 = *MEMORY[0x277D85DE8];
  v12 = sub_252E36C84();
  v173 = *(v12 - 8);
  v174 = v12;
  MEMORY[0x28223BE20](v12);
  v170 = (&v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_252E36D54();
  v171 = *(v14 - 8);
  v172 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v168 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v169 = &v154 - v17;
  v18 = sub_252E36AB4();
  v166 = *(v18 - 8);
  v167 = v18;
  MEMORY[0x28223BE20](v18);
  v181 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E36AD4();
  v183 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v182 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E32E84();
  v164 = *(v22 - 8);
  v165 = v22;
  MEMORY[0x28223BE20](v22);
  v163 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = dispatch_semaphore_create(0);
  v25 = qword_2814B0A70;

  if (v25 != -1)
  {
    swift_once();
  }

  v175 = v20;
  v190 = __swift_project_value_buffer(v20, qword_2814B0A78);
  *&v202 = 0;
  *(&v202 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E74540);
  v186 = a3;
  *&v200[0] = a3;
  BYTE8(v200[0]) = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  MEMORY[0x2530AD570](0x53202020200A736DLL, 0xEE002073656E6563);
  v27 = a2 & 0xC000000000000001;
  v188 = v24;
  LODWORD(v187) = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v28 = sub_252E378C4();
  }

  else
  {
    v28 = *(a2 + 16);
  }

  *&v200[0] = v28;
  v29 = sub_252E37D94();
  MEMORY[0x2530AD570](v29);

  MEMORY[0x2530AD570](0x726553202020200ALL, 0xEE00207365636976);
  *&v200[0] = *(a1 + 16);
  v30 = sub_252E37D94();
  MEMORY[0x2530AD570](v30);

  v189 = "Invalid attribute value ";
  sub_252CC7784(v202, *(&v202 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  v31 = v188;
  if (!*(a1 + 16))
  {
    if (v27)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_17;
      }
    }

    else if (!*(a2 + 16))
    {
LABEL_17:
      sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, v189 | 0x8000000000000000, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
      sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
      v44 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v45 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v44[v45] = 102;
      [v44 setUserActivity_];

      return v44;
    }
  }

  v32 = sub_252DA0B60(a1);
  if (!v32 || (v33 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate), , v34 = [v33 accessory], v33, v35 = objc_msgSend(v34, sel_home), v34, (v184 = v35) == 0))
  {
    v36 = sub_252DA0BC8(a2);
    if (!v36)
    {
      goto LABEL_17;
    }

    v37 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

    v38 = [v37 home];

    v184 = v38;
    if (!v38)
    {
      goto LABEL_17;
    }
  }

  v39 = swift_allocObject();
  *(v39 + 16) = MEMORY[0x277D84F90];
  v161 = v39 + 16;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v162 = (v40 + 16);
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = v31;
  v176 = v41;
  if (v27)
  {

    v42 = v31;
    v43 = sub_252E378C4();
  }

  else
  {
    v43 = *(a2 + 16);

    v46 = v31;
  }

  v177 = v39;
  v47 = v187;
  if (!v43)
  {
    *&v202 = 0;
    *(&v202 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v202 = 0xD000000000000025;
    *(&v202 + 1) = 0x8000000252E745F0;
    type metadata accessor for Service(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    v63 = sub_252E36E54();
    MEMORY[0x2530AD570](v63);

    sub_252CC7784(v202, *(&v202 + 1), 0, 0xD00000000000007ALL, v189 | 0x8000000000000000);

    v64 = v186;
    LOBYTE(v153) = v179;
    v55 = sub_252A59B64(a1, sub_252A5E938, v177, sub_252A5E940, v176, v180, v185, v178, v153, v186, v47 & 1);
    if (v55)
    {
      goto LABEL_46;
    }

    goto LABEL_27;
  }

  v160 = v40;
  *&v202 = 0;
  *(&v202 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v48 = 0xD000000000000022;
  *&v202 = 0xD000000000000022;
  *(&v202 + 1) = 0x8000000252E74570;
  v49 = type metadata accessor for Scene(0);
  v158 = sub_252A5B8EC(&qword_27F541EE8, type metadata accessor for Scene, protocol conformance descriptor for Entity);
  v159 = v49;
  v50 = sub_252E373B4();
  MEMORY[0x2530AD570](v50);

  sub_252CC7784(v202, *(&v202 + 1), 0, 0xD00000000000007ALL, v189 | 0x8000000000000000);

  v51 = sub_252A544EC(a2);
  v52 = v51;
  v157 = 0;
  if (v51 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
    sub_252E37B14();
  }

  else
  {
    v53 = v51 & 0xFFFFFFFFFFFFFF8;

    sub_252E37DD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
    if (swift_dynamicCastMetatype() || (v69 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v70 = a1;
      v71 = v53 + 32;
      do
      {
        v213 = &unk_2864E6530;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v71 += 8;
        --v69;
      }

      while (v69);

      a1 = v70;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EF0, &qword_252E42C20);
  v54 = sub_252E37254();

  v55 = [objc_opt_self() batchRequestWithExecuteRequests_];

  if (v55)
  {
    v56 = v55;
    v57 = v163;
    sub_252E32E74();
    sub_252E32E24();
    (*(v164 + 8))(v57, v165);
    v58 = sub_252E36F04();

    v59 = [objc_opt_self() clientContextWithMetricIdentifier_];

    [v56 setClientContext_];
    v60 = v185;
    v61 = v186;
    v155 = 0xD000000000000022;
    v156 = a1;
    if (v185)
    {
      v62 = v56;
      v60 = sub_252B89AA0(v180, v60, v61, v187 & 1);
    }

    else
    {
      v72 = v56;
    }

    [v56 setReportContext_];

    *&v204 = sub_252A5E938;
    *(&v204 + 1) = v177;
    *&v202 = MEMORY[0x277D85DD0];
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_252A58A5C;
    *(&v203 + 1) = &block_descriptor_12;
    v73 = _Block_copy(&v202);
    v74 = v56;

    [v74 setProgressHandler_];
    _Block_release(v73);

    *&v204 = sub_252A5E940;
    *(&v204 + 1) = v176;
    *&v202 = MEMORY[0x277D85DD0];
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_2529E0210;
    *(&v203 + 1) = &block_descriptor_15;
    v75 = _Block_copy(&v202);
    v76 = v74;

    [v76 setCompletionHandler_];
    _Block_release(v75);

    v48 = v155;
    a1 = v156;
  }

  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v77 = v175;
  v78 = __swift_project_value_buffer(v175, qword_2814B09D8);
  v183[2](v182, v78, v77);
  *&v202 = 0;
  *(&v202 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v200[0] = v202;
  MEMORY[0x2530AD570](v48, 0x8000000252E745A0);
  v40 = v160;
  if (v55)
  {
    sub_252E329C4();
    swift_allocObject();
    v79 = v55;
    sub_252E329B4();
    *&v202 = v79;
    sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
    sub_252A5B884();
    v80 = v157;
    v81 = sub_252E329A4();
    if (v80)
    {
    }

    else
    {
      v144 = v81;
      v145 = v82;

      v146 = objc_opt_self();
      v147 = sub_252E32D14();
      sub_25296464C(v144, v145);
      *&v202 = 0;
      v148 = [v146 JSONObjectWithData:v147 options:0 error:&v202];

      if (v148)
      {
        v149 = v202;
        sub_252E377F4();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
        v150 = swift_dynamicCast();
        v40 = v160;
        if (v150)
        {
          v83 = v198;
        }

        else
        {
          v83 = sub_252CC630C(MEMORY[0x277D84F90]);
        }

        goto LABEL_43;
      }

      v151 = v202;
      v152 = sub_252E32C54();

      swift_willThrow();
      v80 = v152;
      v40 = v160;
    }

    v83 = sub_252CC630C(MEMORY[0x277D84F90]);

LABEL_43:
    goto LABEL_45;
  }

  v83 = 0;
LABEL_45:
  *&v202 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA0, &unk_252E42C00);
  v84 = sub_252E36F94();
  MEMORY[0x2530AD570](v84);

  MEMORY[0x2530AD570](0x73206D6F72660A20, 0xEE002073656E6563);
  v85 = sub_252E373B4();
  MEMORY[0x2530AD570](v85);

  v86 = v182;
  sub_252CC4A5C(*&v200[0], *(&v200[0] + 1), 1, 0xD00000000000007ALL, v189 | 0x8000000000000000);

  (v183[1])(v86, v77);
  v64 = v186;
  if (v55)
  {
LABEL_46:
    v87 = v40;
    v88 = a1;
    v89 = v64;
    v90 = v55;
    v183 = sub_252A580D8(v181, &v202, v90);
    strcpy(v200, "batchRequest ");
    HIWORD(v200[0]) = -4864;
    v91 = [v90 description];
    v92 = sub_252E36F34();
    v94 = v93;

    MEMORY[0x2530AD570](v92, v94);

    v95 = *(&v200[0] + 1);
    sub_252CC3D90(*&v200[0], *(&v200[0] + 1), 0xD00000000000007ALL, v189 | 0x8000000000000000);

    v186 = v90;
    [v184 performBatchRequest_];
    v96 = 7000;
    if ((v187 & 1) == 0)
    {
      v96 = v89;
    }

    v97 = v96 + 400;
    if (__OFADD__(v96, 400))
    {
      __break(1u);
LABEL_70:
      swift_once();
LABEL_60:
      v115 = qword_2814B0A20;
      v116 = v211;
      v95[19] = v210;
      v95[20] = v116;
      v199 = v212;
      v117 = v207;
      v95[15] = v206;
      v95[16] = v117;
      v118 = v209;
      v95[17] = v208;
      v95[18] = v118;
      v119 = v203;
      v95[11] = v202;
      v95[12] = v119;
      v120 = v205;
      v95[13] = v204;
      v95[14] = v120;
      GEOLocationCoordinate2DMake();
      v121 = v95[20];
      v95[8] = v95[19];
      v95[9] = v121;
      v197 = v199;
      v122 = v95[16];
      v95[4] = v95[15];
      v95[5] = v122;
      v123 = v95[18];
      v95[6] = v95[17];
      v95[7] = v123;
      v124 = v95[12];
      v193 = v95[11];
      v194 = v124;
      v125 = v95[14];
      v195 = v95[13];
      v196 = v125;
      v126 = v181;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v115, v181, "SendBatchRequest", 16, 2, &v193);
      v127 = v95[9];
      v95[30] = v95[8];
      v95[31] = v127;
      v201 = v197;
      v128 = v95[5];
      v95[26] = v95[4];
      v95[27] = v128;
      v129 = v95[7];
      v95[28] = v95[6];
      v95[29] = v129;
      v130 = v194;
      v95[22] = v193;
      v95[23] = v130;
      v131 = v196;
      v95[24] = v195;
      v95[25] = v131;
      sub_25293847C(v200, &qword_27F5407B0, &unk_252E42860);
      swift_beginAccess();
      v132 = *(v177 + 16);
      swift_beginAccess();
      v133 = *(v87 + 16);

      v134 = v133;
      v135 = v184;
      sub_252A5D4A0(v132, v133, a2, v97, v184);
      v44 = v136;

      v191 = 0;
      v192 = 0xE000000000000000;
      sub_252E379F4();

      v191 = 0x6552746E65746E69;
      v192 = 0xEF2065736E6F7073;
      v137 = [v44 description];
      v138 = sub_252E36F34();
      v140 = v139;

      MEMORY[0x2530AD570](v138, v140);

      sub_252CC3D90(v191, v192, 0xD00000000000007ALL, v189 | 0x8000000000000000);

      v141 = v187;
      sub_252A5E268(v187, v44, v180, v185, v178, v179);

      v142 = v186;

      (*(v166 + 8))(v126, v167);

      return v44;
    }

    v98 = v168;
    sub_252E36D14();
    v99 = v170;
    *v170 = v97;
    v101 = v173;
    v100 = v174;
    (*(v173 + 104))(v99, *MEMORY[0x277D85178], v174);
    v102 = v169;
    sub_252E36D24();
    (*(v101 + 8))(v99, v100);
    v103 = v172;
    v104 = *(v171 + 8);
    v104(v98, v172);
    sub_252E375F4();
    v104(v102, v103);
    v105 = sub_252E36C94();
    v106 = v162;
    if (v105)
    {
      v107 = sub_252E36AC4();
      v108 = sub_252E374D4();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        *(v109 + 4) = v97;
        _os_log_impl(&dword_252917000, v107, v108, "timedout after %ld", v109, 0xCu);
        MEMORY[0x2530AED00](v109, -1, -1);
      }

      sub_252CC4050(0xD00000000000003ALL, 0x8000000252E74310, 0xD00000000000007ALL, v189 | 0x8000000000000000, 0x293A5F28676F6CLL, 0xE700000000000000, 553);
      sub_2529515FC(8, 10, 0x6572676F72506E69, 0xEA00000000007373);
      type metadata accessor for HMError(0);
      v198 = 15;
      sub_252A5B958(MEMORY[0x277D84F90]);
      sub_252A5B8EC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);
      sub_252E32C34();
      v110 = *&v200[0];
      swift_beginAccess();
      v111 = *v106;
      *v106 = v110;
    }

    sub_252DB7C84(v105);

    v112 = sub_252DB5924();

    sub_252DB7C84(v113);
    v114 = sub_252DB7280(v186);

    if (v114)
    {
      if ((v112 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v112))
      {
        [v114 setCommandDuration_];
        goto LABEL_57;
      }

      __break(1u);
    }

LABEL_57:
    if (v183)
    {

      sub_252D2D83C(0, 0);
    }

    v187 = v114;
    v95 = &v193;
    v97 = v88;
    if (qword_2814B0A18 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_27:
  v65 = sub_252E36AC4();
  v66 = sub_252E374D4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_252917000, v65, v66, "Batch request creation failed.", v67, 2u);
    MEMORY[0x2530AED00](v67, -1, -1);
  }

  v44 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v68 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v44[v68] = 5;
  [v44 setUserActivity_];

  return v44;
}

uint64_t sub_252A57E18(uint64_t a1, uint64_t a2)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_2814B0A78);
  sub_252E379F4();

  v4 = sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v5 = MEMORY[0x2530AD730](a1, v4);
  MEMORY[0x2530AD570](v5);

  sub_252CC7784(0xD00000000000002CLL, 0x8000000252E74870, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  swift_beginAccess();

  sub_25297BB0C(v6);
  return swift_endAccess();
}

uint64_t sub_252A57F68(void *a1, uint64_t a2)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_2814B0A78);
  sub_252E379F4();

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC7784(0xD000000000000028, 0x8000000252E74840, 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = a1;
  v8 = a1;

  return sub_252E37614();
}

id sub_252A580D8(uint64_t a1, uint64_t a2, void *a3)
{
  v68 = a1;
  v70 = sub_252E32E04();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = sub_252E32E84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_252E36AB4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v59 = v13;
  v16 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v17 = sub_252E36A84();
  v18 = sub_252B680FC(v17);
  v65 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v63 = *(sub_252B680FC(v20) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v22 = sub_252B680FC(v21);
  v24 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  v23 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
  v62 = v24;
  v61 = v23;

  v64 = v19;
  LOBYTE(v72[0]) = v19;
  LOBYTE(v76[0]) = 1;
  LOBYTE(v74) = 1;
  v73 = 1;
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v60 = sub_252D2D190(203, 0x6E776F6E6B6E75, 0xE700000000000000);
  v71 = a3;
  v25 = [a3 clientContext];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 metricIdentifier];

    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v31)
  {
    v32 = v31;
    if (v30)
    {

      sub_252E32E14();

      v33 = v10;
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v34 = v28;
        (*(v11 + 32))(v59, v9, v33);
        v50 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v58 = v33;
        v51 = v50;
        v52 = sub_252E32E44();
        v53 = [v51 initWithNSUUID_];

        [v32 setCommandId_];
        [v32 setCommandType_];
        sub_252C471EC();
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v54 = sub_252E37254();

        [v32 setHomeAutomationRequests_];

        v56 = sub_252DB7C84(v55);
        swift_beginAccess();
        v57 = v32;
        MEMORY[0x2530AD700]();
        if (*((v56[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        swift_endAccess();

        v36 = (*(v11 + 8))(v59, v58);
        goto LABEL_13;
      }

      sub_25293847C(v9, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
    }
  }

  v34 = v28;
  if (qword_27F53F530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544E38);
    sub_252CC4050(0xD000000000000033, 0x8000000252E747E0, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000015, 0x8000000252E74820, 591);
LABEL_13:
    v37 = sub_252DB7C84(v36)[5];

    sub_252E32DF4();
    sub_252E32D44();
    v39 = v38;
    (*(v69 + 8))(v6, v70);
    v40 = v39 * 1000.0;
    if (COERCE__INT64(fabs(v39 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v40 <= -9.22337204e18)
    {
      goto LABEL_26;
    }

    if (v40 < 9.22337204e18)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  *(v37 + 16) = v40;

  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v42 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v34;
    *(inited + 56) = v30;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v42, &unk_27F541F10, &unk_252E42870);
  }

  v43 = [objc_opt_self() sharedAnalytics];
  if (v43)
  {
    v44 = v43;

    sub_252CC1408(v45);

    v46 = sub_252E36E24();

    [v44 logEventWithType:6501 context:v46];
  }

  else
  {
  }

  v72[3] = sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
  v72[0] = v71;
  v47 = v71;
  _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(v72);
  __swift_destroy_boxed_opaque_existential_1(v72);
  (*(v66 + 32))(v68, v15, v67);
  *a2 = v65;
  *(a2 + 8) = v64;
  *(a2 + 9) = v72[0];
  *(a2 + 12) = *(v72 + 3);
  v48 = v62;
  *(a2 + 16) = v63;
  *(a2 + 24) = v48;
  *(a2 + 32) = v61;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 97) = v76[0];
  *(a2 + 100) = *(v76 + 3);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 129) = 2;
  *(a2 + 130) = v74;
  *(a2 + 134) = v75;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a2 + 160) = 1;
  return v60;
}

uint64_t sub_252A58A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v3 = sub_252E37264();

  v2(v3);
}

uint64_t sub_252A58AE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a5;
  v8 = *a1;
  sub_252974E7C(a2, &v32);
  sub_252974E7C(a2, &v30);
  v9 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    v10 = [v8 metadata];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 maximumValue];

      if (v12)
      {
        *&v30 = 0;
        BYTE8(v30) = 1;
        MEMORY[0x2530AD810](v12, &v30);

        if ((BYTE8(v30) & 1) == 0)
        {
          v13 = v30;
          if (*&v30 < v29)
          {
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v14 = sub_252E36AD4();
            __swift_project_value_buffer(v14, qword_27F544CB8);
            *&v30 = 0;
            *(&v30 + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E74230);
            sub_252E37374();
            MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74280);
            sub_252E37374();
            sub_252CC4050(v30, *(&v30 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD00000000000005BLL, 0x8000000252E74120, 435);

            v31 = v9;
            *&v30 = v13;
            __swift_destroy_boxed_opaque_existential_1(&v32);
            sub_252A00AF4(&v30, &v32);
            goto LABEL_25;
          }
        }
      }
    }
  }

  sub_252974E7C(a2, &v30);
  v15 = MEMORY[0x277D839F8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = [v8 metadata];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  v18 = [v16 minimumValue];

  if (!v18)
  {
    goto LABEL_25;
  }

  *&v30 = 0;
  BYTE8(v30) = 1;
  MEMORY[0x2530AD810](v18, &v30);

  if (BYTE8(v30))
  {
    goto LABEL_25;
  }

  v19 = *&v30;
  if (v29 >= *&v30)
  {
    goto LABEL_25;
  }

  v20 = sub_252E36F34();
  if (!a4)
  {

    goto LABEL_21;
  }

  if (v20 != a3 || v21 != a4)
  {
    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_20;
    }

LABEL_21:
    v31 = v15;
    *&v30 = v19;
    goto LABEL_22;
  }

LABEL_20:
  v31 = v15;
  *&v30 = v19 + 1.0;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_252A00AF4(&v30, &v32);
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544CB8);
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E741A0);
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E741F0);
  sub_252E37374();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E74210);
  sub_252E37AE4();
  sub_252CC4050(v30, *(&v30 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD00000000000005BLL, 0x8000000252E74120, 449);

LABEL_25:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544CB8);
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74180);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  MEMORY[0x2530AD570](0x20687469772029, 0xE700000000000000);
  sub_252E37AE4();
  sub_252CC3D90(v30, *(&v30 + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

  __swift_project_boxed_opaque_existential_1(&v32, v33);
  v26 = sub_252E37DA4();
  v27 = [objc_opt_self() writeRequestWithCharacteristic:v8 value:v26];
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_1(&v32);
  *v34 = v27;
  return result;
}

void sub_252A591B8(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v2 = sub_2529FEBC8(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = HomeStore.accessories(matching:supporting:)(a1, a2);
  v7 = v6;

  if (v7)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v9 = type metadata accessor for HomeFilter();
    v10 = MEMORY[0x2530AD730](a1, v9);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v11 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000021, 0x8000000252E71210, 520);

    v12 = 1;
    goto LABEL_21;
  }

  if (!(v5 >> 62))
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_20:
    v12 = 0;
LABEL_21:
    sub_252929F10(v5, v12);
    return;
  }

  v13 = sub_252E378C4();
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_11:
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = v5 & 0xC000000000000001;
    v16 = v5;
    do
    {
      if (v15)
      {
        MEMORY[0x2530ADF00](v14, v5);
      }

      else
      {
      }

      ++v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = [a2 attribute];
      v18 = sub_252D51310(a1);
      v19 = sub_252C75958(v18);

      v20 = sub_252D51460(inited);
      swift_setDeallocating();
      v21 = sub_252C75958(v20);

      v22 = sub_2529F9A94(v21, v19);

      v2 = sub_2529F2424(v22, v2);

      v5 = v16;
    }

    while (v13 != v14);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_252A595F0(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v3 = sub_252E36AD4();
      __swift_project_value_buffer(v3, qword_2814B0A78);
      sub_252E379F4();

      v4 = [a1 description];
      v5 = sub_252E36F34();
      v7 = v6;

      sub_252A5B934(a1, 0);
      MEMORY[0x2530AD570](v5, v7);

      sub_252CC4050(0xD00000000000002FLL, 0x8000000252E74390, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 543);

      v8 = "m batch request for user task: ";
      v9 = 0xD000000000000017;
      goto LABEL_21;
    }

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_2814B0A78);
    sub_252E379F4();

    swift_getErrorValue();
    v16 = sub_252E37E54();
    MEMORY[0x2530AD570](v16);

    sub_252CC4050(0xD000000000000024, 0x8000000252E742C0, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 558);

    v13 = "mpleted with error: ";
    v14 = 0xD000000000000011;
    return sub_2529515FC(8, 10, v14, v13 | 0x8000000000000000);
  }

  if (a2 == 2)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_2814B0A78);
    sub_252E379F4();

    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](0x61722061206F7420, 0xEF65756C61762077);
    sub_252CC4050(0x7420656C62616E55, 0xEF203A70616D206FLL, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 563);

    v13 = "\nReturning maximum value ";
    v14 = 0xD000000000000015;
    return sub_2529515FC(8, 10, v14, v13 | 0x8000000000000000);
  }

  if (a1)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    sub_252CC4050(0xD00000000000003ALL, 0x8000000252E74310, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 553);
    v9 = 0x6572676F72506E69;
    v19 = 0xEA00000000007373;
    goto LABEL_22;
  }

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_2814B0A78);
  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
  v8 = "Found no matching entities";
  v9 = 0xD000000000000017;
LABEL_21:
  v19 = v8 | 0x8000000000000000;
LABEL_22:

  return sub_2529515FC(8, 10, v9, v19);
}

id sub_252A59B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v174 = a7;
  v179 = a6;
  v178 = a5;
  v177 = a4;
  v176 = a3;
  v175 = a2;
  v172 = a10;
  v217 = *MEMORY[0x277D85DE8];
  v170 = sub_252E32E84();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_252E36AD4();
  v185 = *(v188 - 8);
  v14 = MEMORY[0x28223BE20](v188);
  v184 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v173 = &v167 - v17;
  MEMORY[0x28223BE20](v16);
  v181 = &v167 - v18;
  v183 = sub_252E36AB4();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v20 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v171 = a11;
  v21 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v180 = v21;
  sub_252E36A84();
  v22 = MEMORY[0x277D84F90];
  v206 = MEMORY[0x277D84F90];
  v207 = MEMORY[0x277D84F90];
  v23 = *(a1 + 64);
  v191 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v190 = (v24 + 63) >> 6;
  v192 = a1;

  v27 = 0;
  v193 = 0;
  v195 = v20;
  while (1)
  {
    if (!v26)
    {
      v28 = v192;
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (v29 >= v190)
        {
          break;
        }

        v26 = *(v191 + 8 * v29);
        ++v27;
        if (v26)
        {
          v27 = v29;
          goto LABEL_13;
        }
      }

      v81 = v207;
      v43 = v207 >> 62;
      if (v207 >> 62)
      {
        v82 = sub_252E378C4();
      }

      else
      {
        v82 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0xD00000000000007ALL;
      if (v82)
      {
        if (qword_2814B0A70 != -1)
        {
          swift_once();
        }

        v83 = v188;
        v84 = __swift_project_value_buffer(v188, qword_2814B0A78);
        (*(v185 + 16))(v181, v84, v83);
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&aBlock = 0xD00000000000001ELL;
        *(&aBlock + 1) = 0x8000000252E74030;
        if (v43)
        {
          v45 = sub_252E378C4();
        }

        else
        {
          v45 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v215 = v45;

        v88 = sub_252E37D94();
        v20 = v89;
        MEMORY[0x2530AD570](v88);

        MEMORY[0x2530AD570](0x202020200ALL, 0xE500000000000000);
        v90 = MEMORY[0x277D84F90];
        if (!v45)
        {
          goto LABEL_119;
        }

        v204 = v43;
        *&v215 = MEMORY[0x277D84F90];
        sub_2529AA3A0(0, v45 & ~(v45 >> 63), 0);
        if ((v45 & 0x8000000000000000) == 0)
        {
          v91 = 0;
          v90 = v215;
          do
          {
            if ((v81 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x2530ADF00](v91, v81);
            }

            else
            {
              v92 = *(v81 + 8 * v91 + 32);
            }

            v93 = v92;
            v94 = [v92 characteristic];
            v95 = [v94 characteristicType];

            v96 = sub_252E36F34();
            v98 = v97;

            *&v215 = v90;
            v100 = *(v90 + 16);
            v99 = *(v90 + 24);
            if (v100 >= v99 >> 1)
            {
              sub_2529AA3A0((v99 > 1), v100 + 1, 1);
              v90 = v215;
            }

            ++v91;
            *(v90 + 16) = v100 + 1;
            v101 = v90 + 16 * v100;
            *(v101 + 32) = v96;
            *(v101 + 40) = v98;
          }

          while (v45 != v91);
          v11 = 0xD00000000000007ALL;
          v43 = v204;
LABEL_119:

          v102 = MEMORY[0x2530AD730](v90, MEMORY[0x277D837D0]);
          v104 = v103;

          MEMORY[0x2530AD570](v102, v104);

          v105 = v181;
          sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

          (*(v185 + 8))(v105, v188);

          if (v43)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
            sub_252E37B14();
            swift_bridgeObjectRelease_n();
            v20 = v195;
          }

          else
          {

            sub_252E37DD4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
            v106 = swift_dynamicCastMetatype();
            v20 = v195;
            if (v106 || (v127 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
            {
            }

            else
            {
              v128 = v195;
              v129 = (v81 & 0xFFFFFFFFFFFFFF8) + 32;
              do
              {
                v214 = &unk_2864E62E0;
                if (!swift_dynamicCastObjCProtocolConditional())
                {
                  break;
                }

                v129 += 8;
                --v127;
              }

              while (v127);

              v20 = v128;
              v11 = 0xD00000000000007ALL;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E88, &qword_252E42BF8);
          v107 = sub_252E37254();
          v108 = &selRef_batchRequestWithReadRequests_;
          goto LABEL_156;
        }

        __break(1u);
      }

      else
      {
        v43 = v206;
        v45 = v206 >> 62;
        if (!(v206 >> 62))
        {
          if (!*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_177;
          }

          goto LABEL_103;
        }
      }

      if (!sub_252E378C4())
      {
LABEL_177:

        if (qword_2814B0A70 != -1)
        {
          goto LABEL_195;
        }

LABEL_178:
        __swift_project_value_buffer(v188, qword_2814B0A78);
        sub_252CC4050((v11 - 60), 0x8000000252E740E0, 0xD00000000000007ALL, 0x8000000252E73FB0, (v11 - 31), 0x8000000252E74120, 482);
        v110 = 0;
        goto LABEL_179;
      }

LABEL_103:
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v85 = v188;
      v86 = __swift_project_value_buffer(v188, qword_2814B0A78);
      (*(v185 + 16))(v173, v86, v85);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&aBlock = 0xD00000000000001FLL;
      *(&aBlock + 1) = 0x8000000252E740C0;
      if (!v45)
      {
        v20 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_133;
      }

      goto LABEL_132;
    }

    v28 = v192;
LABEL_13:
    v186 = v26;
    v187 = v27;
    v30 = (v27 << 9) | (8 * __clz(__rbit64(v26)));
    v31 = *(v28 + 56);
    v200 = *(*(v28 + 48) + v30);
    v32 = *(v31 + v30);
    v205 = v22;
    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v199 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v189 = v32;
    if (!v33)
    {
      v79 = v22;
      goto LABEL_92;
    }

    v34 = 0;
    v198 = v32 & 0xC000000000000001;
    v197 = v32 & 0xFFFFFFFFFFFFFF8;
    v196 = v32 + 32;
    v194 = v33;
LABEL_19:
    if (v198)
    {
      v35 = MEMORY[0x2530ADF00](v34, v189);
    }

    else
    {
      if (v34 >= *(v197 + 16))
      {
        goto LABEL_172;
      }

      v35 = *(v196 + 8 * v34);
    }

    v11 = v35;
    v36 = __OFADD__(v34, 1);
    v37 = v34 + 1;
    if (v36)
    {
      goto LABEL_171;
    }

    v38 = [v35 taskType];
    v202 = v37;
    if ((v38 - 4) < 2)
    {
      break;
    }

    if (v38 != 1)
    {

      v87 = v11;
      sub_252A595F0(v11, 0);

LABEL_127:
      (*(v182 + 8))(v195, v183);
      return 0;
    }

    v55 = [v11 attribute];
    v56 = [v11 value];
    sub_252C6847C(v55, v56, &v215);

    if (!v216)
    {

      sub_25293847C(&v215, &qword_27F541E80, &qword_252E3DFA0);
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v188, qword_27F544CB8);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&aBlock = 0xD000000000000018;
      *(&aBlock + 1) = 0x8000000252E73F90;
      *&v215 = [v11 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v109 = sub_252E36F94();
      MEMORY[0x2530AD570](v109);

      sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

      goto LABEL_127;
    }

    sub_252A00AF4(&v215, &aBlock);
    v57 = v200;
    v203 = sub_252DE8C4C(v11, v200);
    v59 = v58;
    v60 = [*(v57 + v199) characteristics];
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    v43 = sub_252E37264();

    *&v215 = v22;
    if (v43 >> 62)
    {
      v61 = sub_252E378C4();
      if (!v61)
      {
LABEL_88:
        v75 = v22;
        goto LABEL_89;
      }
    }

    else
    {
      v61 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_88;
      }
    }

    v201 = v11;
    v45 = 0;
    v204 = v43 & 0xC000000000000001;
    do
    {
      if (v204)
      {
        v62 = MEMORY[0x2530ADF00](v45, v43);
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v62 = *(v43 + 8 * v45 + 32);
      }

      v63 = v62;
      v64 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v65 = v61;
      v66 = [v62 characteristicType];
      v67 = sub_252E36F34();
      v69 = v68;

      if (!v59)
      {

LABEL_52:

        goto LABEL_53;
      }

      if (v67 == v203 && v59 == v69)
      {
      }

      else
      {
        v71 = sub_252E37DB4();

        if ((v71 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_53:
      v61 = v65;
      ++v45;
    }

    while (v64 != v65);
    v75 = v215;
    v11 = v201;
    v33 = v194;
LABEL_89:

    MEMORY[0x28223BE20](v76);
    p_aBlock = &aBlock;
    v165 = v203;
    v166 = v59;
    v77 = v193;
    v78 = sub_252CB0D6C(sub_252A5B84C, (&v167 - 6), v75);
    v193 = v77;

    sub_25297BAB4(v78);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_18:
    v34 = v202;
    v20 = v195;
    v22 = MEMORY[0x277D84F90];
    if (v202 != v33)
    {
      goto LABEL_19;
    }

    v79 = v205;
LABEL_92:
    v26 = (v186 - 1) & v186;

    v11 = v200;
    v80 = sub_252CA8C88(v79, v200);

    sub_25297BAB4(v80);

    v27 = v187;
  }

  v39 = v200;
  v203 = sub_252DE8C4C(v11, v200);
  v41 = v40;
  v42 = [*(v39 + v199) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v43 = sub_252E37264();

  *&aBlock = v22;
  if (v43 >> 62)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v201 = v11;
  if (v44)
  {
    v45 = 0;
    v204 = v43 & 0xC000000000000001;
    v22 = v43 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v204)
      {
        v46 = MEMORY[0x2530ADF00](v45, v43);
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_131;
        }

        v46 = *(v43 + 8 * v45 + 32);
      }

      v47 = v46;
      v11 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        goto LABEL_130;
      }

      v48 = [v46 characteristicType];
      v49 = sub_252E36F34();
      v51 = v50;

      if (v41)
      {
        if (v49 == v203 && v41 == v51)
        {

LABEL_43:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_30;
        }

        v53 = sub_252E37DB4();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

LABEL_30:
      ++v45;
      if (v11 == v44)
      {
        v54 = aBlock;
        v22 = MEMORY[0x277D84F90];
        goto LABEL_69;
      }
    }
  }

  v54 = v22;
LABEL_69:

  *&aBlock = v22;
  if (v54 < 0 || (v54 & 0x4000000000000000) != 0)
  {
    v45 = sub_252E378C4();
  }

  else
  {
    v45 = *(v54 + 16);
  }

  v72 = 0;
  v73 = v22;
  while (1)
  {
    if (v45 == v72)
    {

      sub_25297BA88(v73);

      v33 = v194;
      goto LABEL_18;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x2530ADF00](v72, v54);
    }

    else
    {
      if (v72 >= *(v54 + 16))
      {
        goto LABEL_129;
      }

      v74 = *(v54 + 8 * v72 + 32);
    }

    v43 = v74;
    v22 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    v11 = [objc_opt_self() readRequestWithCharacteristic_];

    ++v72;
    if (v11)
    {
      MEMORY[0x2530AD700]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v73 = aBlock;
      v72 = v22;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v20 = sub_252E378C4();
LABEL_133:
  *&v215 = v20;

  v111 = sub_252E37D94();
  v11 = v112;
  MEMORY[0x2530AD570](v111);

  MEMORY[0x2530AD570](0x202020200ALL, 0xE500000000000000);
  if (!v20)
  {
LABEL_150:

    v114 = MEMORY[0x277D84F90];
    goto LABEL_151;
  }

  v204 = v45;
  *&v215 = v22;
  sub_2529AA3A0(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
LABEL_195:
    swift_once();
    goto LABEL_178;
  }

  v113 = 0;
  v114 = v215;
  v115 = v43 & 0xC000000000000001;
  v116 = v43;
  do
  {
    if (v115)
    {
      v117 = MEMORY[0x2530ADF00](v113, v43);
    }

    else
    {
      v117 = *(v43 + 8 * v113 + 32);
    }

    v118 = v117;
    v119 = [v117 characteristic];
    v120 = [v119 characteristicType];

    v121 = sub_252E36F34();
    v123 = v122;

    *&v215 = v114;
    v125 = *(v114 + 16);
    v124 = *(v114 + 24);
    if (v125 >= v124 >> 1)
    {
      sub_2529AA3A0((v124 > 1), v125 + 1, 1);
      v114 = v215;
    }

    ++v113;
    *(v114 + 16) = v125 + 1;
    v126 = v114 + 16 * v125;
    *(v126 + 32) = v121;
    *(v126 + 40) = v123;
    v43 = v116;
  }

  while (v20 != v113);

  v45 = v204;
LABEL_151:
  v130 = MEMORY[0x2530AD730](v114, MEMORY[0x277D837D0]);
  v132 = v131;

  MEMORY[0x2530AD570](v130, v132);

  v133 = v173;
  sub_252CC3D90(aBlock, *(&aBlock + 1), 0xD00000000000007ALL, 0x8000000252E73FB0);

  (*(v185 + 8))(v133, v188);

  v11 = 0xD00000000000007ALL;
  if (v45)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
    sub_252E37B14();
    swift_bridgeObjectRelease_n();
    v20 = v195;
  }

  else
  {

    sub_252E37DD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
    v134 = swift_dynamicCastMetatype();
    v20 = v195;
    if (!v134)
    {
      v142 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v142)
      {
        v143 = (v43 & 0xFFFFFFFFFFFFFF8) + 32;
        do
        {
          v208 = &unk_2864E63C8;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v143 += 8;
          --v142;
        }

        while (v142);
      }
    }

LABEL_173:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541EC0, &unk_252E42C10);
  v107 = sub_252E37254();
  v108 = &selRef_batchRequestWithWriteRequests_;
LABEL_156:

  v110 = [objc_opt_self() *v108];

  if (v110)
  {
    v135 = v174;
    if (v174)
    {
      v136 = sub_252E36F04();
    }

    else
    {
      v137 = v168;
      sub_252E32E74();
      sub_252E32E24();
      (*(v169 + 8))(v137, v170);
      v136 = sub_252E36F04();
    }

    v138 = [objc_opt_self() clientContextWithMetricIdentifier_];

    [v110 setClientContext_];
    if (v135)
    {
      v139 = sub_252B89AA0(v179, v135, v172, v171 & 1);
    }

    else
    {
      v139 = 0;
    }

    [v110 setReportContext_];

    v212 = v175;
    v213 = v176;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v210 = sub_252A58A5C;
    v211 = &block_descriptor_5;
    v140 = _Block_copy(&aBlock);

    [v110 setProgressHandler_];
    _Block_release(v140);
    v212 = v177;
    v213 = v178;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v210 = sub_2529E0210;
    v211 = &block_descriptor_3_0;
    v141 = _Block_copy(&aBlock);

    [v110 setCompletionHandler_];
    _Block_release(v141);
    v11 = 0xD00000000000007ALL;
  }

LABEL_179:
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v144 = v188;
  v145 = __swift_project_value_buffer(v188, qword_2814B09D8);
  (*(v185 + 16))(v184, v145, v144);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_252E379F4();
  v215 = aBlock;
  MEMORY[0x2530AD570](v11 - 88, 0x8000000252E74070);
  if (v110)
  {
    sub_252E329C4();
    swift_allocObject();
    sub_252E329B4();
    *&aBlock = v110;
    sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
    sub_252A5B884();
    v146 = v193;
    v147 = sub_252E329A4();
    if (v146)
    {

      goto LABEL_184;
    }

    v150 = v20;
    v151 = v147;
    v152 = v148;

    v153 = objc_opt_self();
    v154 = sub_252E32D14();
    sub_25296464C(v151, v152);
    *&aBlock = 0;
    v155 = [v153 JSONObjectWithData:v154 options:0 error:&aBlock];

    if (v155)
    {
      v156 = aBlock;
      sub_252E377F4();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
      v20 = v150;
      if (swift_dynamicCast())
      {
        v149 = v205;
      }

      else
      {
        v149 = sub_252CC630C(MEMORY[0x277D84F90]);
      }

      v11 = 0xD00000000000007ALL;
    }

    else
    {
      v157 = aBlock;
      v158 = sub_252E32C54();

      swift_willThrow();
      v146 = v158;
      v20 = v150;
      v11 = 0xD00000000000007ALL;
LABEL_184:
      v149 = sub_252CC630C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v149 = 0;
  }

  *&aBlock = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA0, &unk_252E42C00);
  v159 = sub_252E36F94();
  MEMORY[0x2530AD570](v159);

  MEMORY[0x2530AD570](v11 - 105, 0x8000000252E740A0);
  type metadata accessor for Service(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  sub_252A5B8EC(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
  v160 = sub_252E36E54();
  MEMORY[0x2530AD570](v160);

  v161 = v184;
  sub_252CC4A5C(v215, *(&v215 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);

  (*(v185 + 8))(v161, v188);
  v162 = sub_252E375C4();
  LOBYTE(v165) = 2;
  sub_252E36A74(v162, &dword_252917000, v180, "CreateBatchRequest", 18, 2, v20, " enableTelemetry=YES ", 21, v165, MEMORY[0x277D84F90]);
  (*(v182 + 8))(v20, v183);
  return v110;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252A5B884()
{
  result = qword_27F545350;
  if (!qword_27F545350)
  {
    v3 = sub_25293F638(255, &unk_27F541E90, 0x277CD1860);
    result = swift_getWitnessTable(protocol conformance descriptor for HMBatchRequest, v3, v0, v1);
    atomic_store(result, &qword_27F545350);
  }

  return result;
}

uint64_t sub_252A5B8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252A5B934(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

unint64_t sub_252A5B958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252A5E948(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_252A44A10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_252A5BA68(unint64_t result)
{
  v1 = result;
  v18 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_2814B0A78);
      sub_252E379F4();

      v7 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v7, v6);

      sub_252CC3D90(0xD000000000000030, 0x8000000252E747A0, 0xD00000000000007ALL, 0x8000000252E73FB0);

      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v8.n128_f64[0] = HomeEntity.Builder.init()();
      v10 = (*(*v9 + 448))(v8);

      v11 = sub_252B302FC();

      v12 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v13 = v11;
      v14 = sub_252E36F04();
      v15 = [v12 initWithIdentifier:0 displayString:v14];

      v16 = v15;
      [v16 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v17 = sub_252E37254();
      [v16 setTaskResponses_];

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v16);

      MEMORY[0x2530AD700]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v18;
  }

  return result;
}

unint64_t sub_252A5BDC4(unint64_t result)
{
  v1 = result;
  v16 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
      }

      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v4 = sub_252E36AD4();
      __swift_project_value_buffer(v4, qword_2814B0A78);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E743E0);
      v5 = sub_252CDBB90();
      MEMORY[0x2530AD570](v5);

      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v6.n128_f64[0] = HomeEntity.Builder.init()();
      v8 = (*(*v7 + 448))(v6);

      v9 = sub_252CDB028();

      v10 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v11 = v9;
      v12 = sub_252E36F04();
      v13 = [v10 initWithIdentifier:0 displayString:v12];

      v14 = v13;
      [v14 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v15 = sub_252E37254();
      [v14 setTaskResponses_];

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v14);

      MEMORY[0x2530AD700]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v16;
  }

  return result;
}

uint64_t sub_252A5C108(unint64_t a1, uint64_t a2)
{
  v40 = MEMORY[0x277D84F90];
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000041, 0x8000000252E74750, 0xD00000000000007ALL, 0x8000000252E73FB0);
  v5 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v5 = a1;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_5:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    v35 = xmmword_252E3C3D0;
    v38 = v5;
    v39 = a2;
    v37 = result;
    do
    {
      if (v36)
      {
        v8 = MEMORY[0x2530ADF00](v7);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      sub_252E379F4();
      MEMORY[0x2530AD570](0x6552797469746E45, 0xEF2065736E6F7073);
      type metadata accessor for MutableHomeEntityResponse();
      sub_252E37AE4();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

      v9 = *(v8 + 16);
      swift_beginAccess();
      v10 = *(v8 + 24);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v12 = type metadata accessor for HomeUserTaskResponse();
      v13 = objc_allocWithZone(v12);

      v14 = sub_252E36F04();
      v15 = [v13 initWithIdentifier:0 displayString:v14];

      v16 = v15;
      [v16 setTaskOutcome_];
      [v16 setUserTask_];

      type metadata accessor for MutableHomeUserTaskResponse();
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = [v16 userTask];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        *(v17 + 16) = sub_252D6CA80(v19);
      }

      v20 = [v16 taskOutcome];

      *(v17 + 24) = v20;
      v21 = swift_beginAccess();
      MEMORY[0x2530AD700](v21);
      if (*((*(v11 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();
      v22 = *(v8 + 16);
      v23 = *(v8 + 24);
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      v25 = objc_allocWithZone(v12);

      v26 = sub_252E36F04();
      v27 = [v25 initWithIdentifier:0 displayString:v26];

      v28 = v27;
      [v28 setTaskOutcome_];
      a2 = v39;
      [v28 setUserTask_];

      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      v30 = [v28 userTask];
      if (v30)
      {
        v31 = v30;
        type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        *(v29 + 16) = sub_252D6CA80(v31);
      }

      v32 = [v28 taskOutcome];

      *(v29 + 24) = v32;
      v33 = swift_beginAccess();
      MEMORY[0x2530AD700](v33);
      if (*((*(v24 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      ++v7;
      sub_252E372D4();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = v35;
      *(inited + 32) = v11;
      *(inited + 40) = v24;
      sub_25297BAE0(inited);

      v5 = v38;
    }

    while (v37 != v7);
    return v40;
  }

  return result;
}

unint64_t sub_252A5C6B0(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];
  v93 = v8;

  v90 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  v9 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_252A5B8EC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);
  sub_252E32C04();
  if (v109 != 64)
  {

LABEL_6:
    if (a1 >> 62)
    {
      goto LABEL_112;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
LABEL_113:

      return a1;
    }

LABEL_8:
    v11 = 0;
    v104 = a1 & 0xC000000000000001;
    v96 = a1 + 32;
    v97 = a1 & 0xFFFFFFFFFFFFFF8;
    v100 = a1;
    v103 = v10;
    while (1)
    {
      if (v104)
      {
        v12 = MEMORY[0x2530ADF00](v11, a1);
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v11 >= *(v97 + 16))
        {
          goto LABEL_110;
        }

        v12 = *(v96 + 8 * v11);

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_108;
        }
      }

      swift_beginAccess();
      v14 = *(v12 + 24);
      if (v14 >> 62)
      {
        v107 = v12;
        if (!sub_252E378C4())
        {
LABEL_78:
          v64 = *(v12 + 16);
          if (v64 && *(v64 + 32) == 5)
          {
            if (v90)
            {
              v65 = v90;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
              type metadata accessor for HMError(0);
              if (swift_dynamicCast())
              {
                if (qword_2814B0A70 != -1)
                {
                  swift_once();
                }

                v66 = sub_252E36AD4();
                __swift_project_value_buffer(v66, qword_2814B0A78);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E74730);
                sub_252E37AE4();
                sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

                v67 = sub_252DE5E64(0, v108);
              }

              else
              {
                v67 = 7;
              }
            }

            else
            {
              v67 = 1;
            }

            v68 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
            v69 = v93;
            v70 = sub_252E36F04();
            v71 = [v68 initWithIdentifier:0 displayString:v70];

            v72 = v71;
            [v72 setTaskOutcome_];
            [v72 setUserTask_];

            type metadata accessor for MutableHomeUserTaskResponse();
            v73 = swift_allocObject();
            *(v73 + 16) = 0;
            v74 = [v72 userTask];
            if (v74)
            {
              v75 = v74;
              type metadata accessor for MutableHomeUserTask();
              swift_allocObject();
              *(v73 + 16) = sub_252D6CA80(v75);
            }

            v76 = [v72 taskOutcome];

            *(v73 + 24) = v76;
            v77 = swift_beginAccess();
            MEMORY[0x2530AD700](v77);
            if (*((*(v107 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v107 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            swift_endAccess();
            if (qword_2814B0A70 != -1)
            {
              swift_once();
            }

            v78 = sub_252E36AD4();
            __swift_project_value_buffer(v78, qword_2814B0A78);
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000004ALL, 0x8000000252E746E0);
            v79 = sub_252D6C15C();
            v80 = [v79 description];
            v81 = sub_252E36F34();
            v83 = v82;

            MEMORY[0x2530AD570](v81, v83);

            sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

            goto LABEL_10;
          }
        }
      }

      else
      {
        v107 = v12;
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }
      }

      v15 = type metadata accessor for HomeStore(0);
      v16 = static HomeStore.shared.getter(v15);
      v17 = sub_2529D9D50();
      v18 = sub_2529D70E4(v17);

      v105 = v11;
      if (v18 >> 62)
      {
        v19 = sub_252E378C4();
        v20 = v107;
        if (!v19)
        {
LABEL_95:

          v11 = v105;
          goto LABEL_101;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v107;
        if (!v19)
        {
          goto LABEL_95;
        }
      }

      v21 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2530ADF00](v21, v18);
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v22 = *(v18 + 8 * v21 + 32);

          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            v10 = sub_252E378C4();
            if (!v10)
            {
              goto LABEL_113;
            }

            goto LABEL_8;
          }
        }

        v24 = sub_252E32E24();
        v26 = *(v20 + 16);
        if (!v26 || (v27 = *(v26 + 48)) == 0)
        {

          goto LABEL_23;
        }

        if (v24 == *(v26 + 40) && v27 == v25)
        {
          break;
        }

        v29 = sub_252E37DB4();

        if (v29)
        {
          v20 = v107;
          goto LABEL_40;
        }

        v20 = v107;
LABEL_23:
        ++v21;
        if (v23 == v19)
        {
          goto LABEL_95;
        }
      }

LABEL_40:

      v11 = v105;
      if (*(a2 + 16))
      {
        v30 = sub_252A454C0(v22);
        if (v31)
        {
          v32 = *(*(a2 + 56) + 8 * v30);
          v33 = *(v20 + 24);
          if (v33 >> 62)
          {
            v84 = v32;
            v85 = sub_252E378C4();
            v86 = v84;
            v34 = v85;
            v32 = v86;
            if (!(v86 >> 62))
            {
              goto LABEL_44;
            }
          }

          else
          {
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!(v32 >> 62))
            {
LABEL_44:
              v35 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v34 < v35)
              {
                if (!v35)
                {
LABEL_99:

                  goto LABEL_10;
                }

LABEL_46:
                v99 = v32 & 0xC000000000000001;
                v91 = v32 + 32;
                v92 = v32 & 0xFFFFFFFFFFFFFF8;
                v95 = v32;

                v36 = 0;
                v98 = v35;
                while (1)
                {
                  if (v99)
                  {
                    v37 = MEMORY[0x2530ADF00](v36, v95);
                  }

                  else
                  {
                    if (v36 >= *(v92 + 16))
                    {
                      goto LABEL_111;
                    }

                    v37 = *(v91 + 8 * v36);
                  }

                  v38 = v37;
                  v13 = __OFADD__(v36, 1);
                  v39 = v36 + 1;
                  if (v13)
                  {
                    goto LABEL_109;
                  }

                  v40 = [v37 taskType];
                  v106 = [v38 attribute];
                  v41 = *(v20 + 24);
                  v101 = v38;
                  v102 = v39;
                  if (v41 >> 62)
                  {
                    v42 = sub_252E378C4();
                  }

                  else
                  {
                    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v42)
                  {
                    v43 = 0;
                    a1 = v41 & 0xFFFFFFFFFFFFFF8;
                    do
                    {
                      if ((v41 & 0xC000000000000001) != 0)
                      {
                        v44 = MEMORY[0x2530ADF00](v43, v41);
                        v45 = v43 + 1;
                        if (__OFADD__(v43, 1))
                        {
                          goto LABEL_106;
                        }
                      }

                      else
                      {
                        if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_107;
                        }

                        v44 = *(v41 + 8 * v43 + 32);

                        v45 = v43 + 1;
                        if (__OFADD__(v43, 1))
                        {
                          goto LABEL_106;
                        }
                      }

                      v46 = *(v44 + 16);
                      if (v46 && *(v46 + 16) == v40)
                      {

                        v47 = *(v46 + 24);

                        if (v47 == v106)
                        {

                          a1 = v100;
                          goto LABEL_47;
                        }
                      }

                      else
                      {
                      }

                      ++v43;
                    }

                    while (v45 != v42);
                  }

                  v48 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
                  v49 = v101;
                  v50 = sub_252E36F04();
                  v51 = [v48 initWithIdentifier:0 displayString:v50];

                  v52 = v51;
                  [v52 setTaskOutcome_];
                  [v52 setUserTask_];

                  type metadata accessor for MutableHomeUserTaskResponse();
                  v53 = swift_allocObject();
                  *(v53 + 16) = 0;
                  v54 = [v52 userTask];
                  if (v54)
                  {
                    v55 = v54;
                    type metadata accessor for MutableHomeUserTask();
                    swift_allocObject();
                    *(v53 + 16) = sub_252D6CA80(v55);
                  }

                  v56 = [v52 taskOutcome];

                  *(v53 + 24) = v56;
                  v57 = swift_beginAccess();
                  MEMORY[0x2530AD700](v57);
                  a1 = v100;
                  if (*((*(v107 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v107 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  swift_endAccess();
                  if (qword_2814B0A70 != -1)
                  {
                    swift_once();
                  }

                  v58 = sub_252E36AD4();
                  __swift_project_value_buffer(v58, qword_2814B0A78);
                  sub_252E379F4();
                  MEMORY[0x2530AD570](0xD000000000000045, 0x8000000252E74690);
                  v59 = sub_252D6C15C();
                  v60 = [v59 description];
                  v61 = sub_252E36F34();
                  v63 = v62;

                  MEMORY[0x2530AD570](v61, v63);

                  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E73FB0);

LABEL_47:
                  v36 = v102;
                  v11 = v105;
                  v20 = v107;
                  if (v102 == v98)
                  {

                    goto LABEL_10;
                  }
                }
              }

              goto LABEL_100;
            }
          }

          v87 = v32;
          if (v34 < sub_252E378C4())
          {
            v35 = sub_252E378C4();
            v32 = v87;
            if (!v35)
            {
              goto LABEL_99;
            }

            goto LABEL_46;
          }
        }
      }

LABEL_100:

LABEL_101:
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v88 = sub_252E36AD4();
      __swift_project_value_buffer(v88, qword_2814B0A78);
      sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E74660, 0xD00000000000007ALL, 0x8000000252E73FB0);

LABEL_10:
      if (v11 == v103)
      {
        goto LABEL_113;
      }
    }
  }

  a1 = sub_252A5C108(a1, v8);

  return a1;
}

void sub_252A5D4A0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a5;
  v101 = sub_252E32E84();
  v9 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v12 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v11[v12] = 3;
  [v11 setUserActivity_];
  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  v92 = sub_252D6D96C(v11);

  if ((a3 & 0xC000000000000001) != 0)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *(a3 + 16);
  }

  v93 = a2;
  v102 = a1;
  if (v13)
  {
    v14 = sub_2529A37DC(a3);
    v15 = sub_252A5BA68(v14);
  }

  else
  {
    v16 = *(a4 + 16);
    if (v16)
    {
      v17 = sub_252E11384();
      v18 = sub_252E08BE0(&v106, (v17 + 32), v16, a4);
      v19 = v106;

      sub_25291AE30(v19);
      if (v18 != v16)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      a1 = v102;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v15 = sub_252A5BDC4(v17);
  }

  v105 = v15;

  v91 = a4;
  if (a1 >> 62)
  {
LABEL_116:
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v105 >> 62;
  if (!v21)
  {
LABEL_56:
    v54 = v93;
    if (v93)
    {
      swift_getErrorValue();
      v55 = v108;
      v56 = v54;
      v57 = sub_252DE5D70(v55);
      if (v57 == 2 || (v57 & 1) == 0)
      {
        if (qword_2814B0A70 != -1)
        {
          swift_once();
        }

        v63 = sub_252E36AD4();
        __swift_project_value_buffer(v63, qword_2814B0A78);
        v106 = 0;
        v107 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E74620);
        v109 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC3D90(v106, v107, 0xD00000000000007ALL, 0x8000000252E73FB0);

        v64 = v54;
        sub_252A595F0(v54, 1u);

        v65 = 5;
        v20 = v54;
        goto LABEL_155;
      }
    }

    if (v103)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v30 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_62:
        v58 = 0;
        v38 = v105 & 0xC000000000000001;
        v39 = v105 & 0xFFFFFFFFFFFFFF8;
        v26 = v105 + 32;
        v104 = (v105 & 0xC000000000000001);
        v103 = v105 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v38)
          {
            v59 = MEMORY[0x2530ADF00](v58, v105);
            v29 = __OFADD__(v58++, 1);
            if (!v29)
            {
LABEL_66:
              swift_beginAccess();
              v60 = *(v59 + 24);
              if (v60 >> 62)
              {
                v9 = sub_252E378C4();
              }

              else
              {
                v9 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              a1 = 0;
              while (v9 != a1)
              {
                if ((v60 & 0xC000000000000001) != 0)
                {
                  v61 = MEMORY[0x2530ADF00](a1, v60);
                  if (__OFADD__(a1, 1))
                  {
                    goto LABEL_113;
                  }
                }

                else
                {
                  if (a1 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_114;
                  }

                  if (__OFADD__(a1, 1))
                  {
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
                    goto LABEL_115;
                  }
                }

                v62 = *(v61 + 24);

                ++a1;
                if (v62 == 21)
                {

                  v65 = 105;
                  goto LABEL_154;
                }
              }

              v38 = v104;
              v39 = v103;
              if (v58 != v30)
              {
                continue;
              }

LABEL_89:
              v66 = 0;
              while (2)
              {
                if (v38)
                {
                  v67 = MEMORY[0x2530ADF00](v66, v105);
                  v29 = __OFADD__(v66++, 1);
                  if (!v29)
                  {
LABEL_93:
                    swift_beginAccess();
                    v68 = *(v67 + 24);
                    if (v68 >> 62)
                    {
                      v69 = sub_252E378C4();
                    }

                    else
                    {
                      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v70 = 0;
                    while (v69 != v70)
                    {
                      if ((v68 & 0xC000000000000001) != 0)
                      {
                        v71 = MEMORY[0x2530ADF00](v70, v68);
                        if (__OFADD__(v70, 1))
                        {
                          goto LABEL_156;
                        }
                      }

                      else
                      {
                        if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_157;
                        }

                        if (__OFADD__(v70, 1))
                        {
LABEL_156:
                          __break(1u);
LABEL_157:
                          __break(1u);
                          goto LABEL_158;
                        }
                      }

                      v72 = *(v71 + 24);

                      ++v70;
                      if (v72 == 22)
                      {
                        goto LABEL_112;
                      }
                    }

                    v38 = v104;
                    v39 = v103;
                    if (v66 != v30)
                    {
                      continue;
                    }

LABEL_119:
                    v73 = 0;
                    v65 = 110;
                    while (2)
                    {
                      if (v38)
                      {
                        v102 = MEMORY[0x2530ADF00](v73, v105, v20);
                        v29 = __OFADD__(v73++, 1);
                        if (!v29)
                        {
LABEL_123:
                          v74 = v102;
                          swift_beginAccess();
                          v75 = *(v74 + 24);
                          if (v75 >> 62)
                          {
                            v76 = sub_252E378C4();
                          }

                          else
                          {
                            v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          v77 = 0;
                          do
                          {
                            if (v76 == v77)
                            {

                              v80 = 0;
                              v65 = 5;
                              v81 = v104;
                              v82 = v103;
                              while (1)
                              {
                                if (v81)
                                {
                                  MEMORY[0x2530ADF00](v80, v105);
                                }

                                else
                                {
                                  if (v80 >= *(v82 + 16))
                                  {
                                    goto LABEL_164;
                                  }
                                }

                                v83 = (v80 + 1);
                                if (__OFADD__(v80, 1))
                                {
                                  goto LABEL_163;
                                }

                                v84 = sub_252D6C15C();
                                v85 = sub_252DA3CC8();

                                if (v85)
                                {
                                }

                                else
                                {
                                  v86 = sub_252D6C15C();
                                  v87 = sub_252DA3CEC();

                                  if ((v87 & 1) == 0)
                                  {
                                    goto LABEL_153;
                                  }
                                }

                                ++v80;
                                v20 = v93;
                                if (v83 == v30)
                                {
                                  goto LABEL_155;
                                }
                              }
                            }

                            if ((v75 & 0xC000000000000001) != 0)
                            {
                              v78 = MEMORY[0x2530ADF00](v77, v75);
                              if (__OFADD__(v77, 1))
                              {
                                goto LABEL_161;
                              }
                            }

                            else
                            {
                              if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_162;
                              }

                              if (__OFADD__(v77, 1))
                              {
                                goto LABEL_161;
                              }
                            }

                            v79 = *(v78 + 24);

                            ++v77;
                          }

                          while (v79 != 12);

                          v20 = v93;
                          v38 = v104;
                          v39 = v103;
                          if (v73 != v30)
                          {
                            continue;
                          }

                          goto LABEL_155;
                        }
                      }

                      else
                      {
                        if (v73 >= *(v39 + 16))
                        {
LABEL_166:
                          __break(1u);
                          return;
                        }

                        v102 = *(v26 + 8 * v73);

                        v29 = __OFADD__(v73++, 1);
                        if (!v29)
                        {
                          goto LABEL_123;
                        }
                      }

                      break;
                    }

LABEL_165:
                    __break(1u);
                    goto LABEL_166;
                  }
                }

                else
                {
                  if (v66 >= *(v39 + 16))
                  {
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
                    goto LABEL_165;
                  }

                  v67 = *(v26 + 8 * v66);

                  v29 = __OFADD__(v66++, 1);
                  if (!v29)
                  {
                    goto LABEL_93;
                  }
                }

                break;
              }

LABEL_159:
              __break(1u);
              goto LABEL_160;
            }
          }

          else
          {
            if (v58 >= *(v39 + 16))
            {
LABEL_118:
              __break(1u);
              goto LABEL_119;
            }

            v59 = *(v26 + 8 * v58);

            v29 = __OFADD__(v58++, 1);
            if (!v29)
            {
              goto LABEL_66;
            }
          }

          break;
        }

        __break(1u);
        goto LABEL_118;
      }
    }

LABEL_153:
    v65 = 4;
    goto LABEL_154;
  }

  v22 = 0;
  v23 = a1 & 0xC000000000000001;
  v96 = a1 & 0xFFFFFFFFFFFFFF8;
  v95 = a1 + 32;
  v99 = (v9 + 8);
  v24 = v105 & 0xFFFFFFFFFFFFFF8;
  if (v105 < 0)
  {
    v25 = v105;
  }

  else
  {
    v25 = v105 & 0xFFFFFFFFFFFFFF8;
  }

  v90[1] = v25;
  v26 = v105 & 0xC000000000000001;
  v97 = a1 & 0xC000000000000001;
  v98 = v21;
  while (1)
  {
    if (v23)
    {
      v27 = MEMORY[0x2530ADF00](v22, a1);
    }

    else
    {
      if (v22 >= *(v96 + 16))
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v27 = *(v95 + 8 * v22);
    }

    v28 = v27;
    v29 = __OFADD__(v22++, 1);
    if (v29)
    {
      break;
    }

    v30 = [v27 request];
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v104 = v28;
      v32 = [v31 characteristic];
      v33 = [v32 service];

      if (v33)
      {
        v34 = [v33 uniqueIdentifier];

        v9 = v100;
        sub_252E32E64();

        v35 = sub_252E32E24();
        v37 = v36;
        (*v99)(v9, v101);
        if (v103)
        {
          v40 = sub_252E378C4();
          if (v40)
          {
LABEL_29:
            v41 = 0;
            while (1)
            {
              if (v26)
              {
                v42 = MEMORY[0x2530ADF00](v41, v105);
                v9 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  goto LABEL_87;
                }
              }

              else
              {
                if (v41 >= *(v24 + 16))
                {
                  goto LABEL_88;
                }

                v42 = *(v105 + 8 * v41 + 32);

                v9 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
                  goto LABEL_89;
                }
              }

              v43 = *(v42 + 16);
              if (v43)
              {
                v44 = *(v43 + 48);
                if (v44)
                {
                  v45 = *(v43 + 40) == v35 && v44 == v37;
                  if (v45 || (sub_252E37DB4() & 1) != 0)
                  {
                    break;
                  }
                }
              }

              ++v41;
              if (v9 == v40)
              {
                goto LABEL_55;
              }
            }

            v46 = v104;
            v47 = sub_252DE56C8(v94);
            v23 = v97;
            if (v47)
            {
              v48 = v47;
              type metadata accessor for MutableHomeUserTaskResponse();
              v49 = swift_allocObject();
              *(v49 + 16) = 0;
              v50 = [v48 userTask];
              if (v50)
              {
                v51 = v50;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                *(v49 + 16) = sub_252D6CA80(v51);
              }

              v52 = [v48 taskOutcome];

              *(v49 + 24) = v52;
              swift_beginAccess();

              MEMORY[0x2530AD700](v53);
              if (*((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v9 = *((*(v42 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              swift_endAccess();
            }

            else
            {
            }

            a1 = v102;
            v21 = v98;
            goto LABEL_19;
          }
        }

        else
        {
          v40 = *(v24 + 16);
          if (v40)
          {
            goto LABEL_29;
          }
        }

LABEL_55:

        a1 = v102;
        v21 = v98;
        v23 = v97;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_19:
    if (v22 == v21)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_112:

  v65 = 111;
LABEL_154:
  v20 = v93;
LABEL_155:
  v88 = v92;
  *(v92 + 16) = v65;
  v89 = sub_252A5C6B0(v105, v91, v20);

  *(v88 + 24) = v89;

  sub_252D6BB10();
}

uint64_t sub_252A5E268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v9 = [a1 homeAutomationRequests];
    if (v9)
    {
      v10 = v9;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v11 = sub_252E37264();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v14 = v11;
    sub_252C47D2C(&v14);

    sub_252DB559C();
    sub_252C77798(a3, a4, a5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    sub_252C47D2C(&v14);
  }

  sub_252DB7C84(v12);
  sub_252DB649C(0, 0, 1);
}

char *sub_252A5E390(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v7 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = HomeStore.scenes(matching:)(a1);
  v12 = v11;

  if (v12)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ALL, 0x8000000252E74350, 0xD00000000000007ALL, 0x8000000252E73FB0, 0x293A5F28676F6CLL, 0xE700000000000000, 548);
    sub_2529515FC(8, 10, 0xD000000000000017, 0x8000000252E74370);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E744E0);
    v13 = type metadata accessor for HomeFilter();
    v14 = MEMORY[0x2530AD730](a1, v13);
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v43, v44, 0xD00000000000007ALL, 0x8000000252E73FB0, 0xD000000000000014, 0x8000000252E74500, 535);

    sub_252929F10(v10, 1);
    return v7;
  }

  v7 = sub_252C76550(v15);
  sub_252929F10(v10, 0);
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_2814B0A78);
  (*(v3 + 16))(v5, v16, v2);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();

  v43 = 0xD000000000000017;
  v44 = 0x8000000252E74520;
  if (!(v10 >> 62))
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_26:
    sub_252929F10(v10, 0);
    v19 = MEMORY[0x277D84F90];
LABEL_27:
    v34 = MEMORY[0x2530AD730](v19, MEMORY[0x277D837D0]);
    v36 = v35;

    MEMORY[0x2530AD570](v34, v36);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC3D90(v43, v44, 0xD00000000000007ALL, 0x8000000252E73FB0);

    (*(v3 + 8))(v5, v2);
    return v7;
  }

  v17 = sub_252E378C4();
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_11:
  v42 = v6;
  result = sub_2529AA3A0(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v38 = v5;
    v39 = v3;
    v40 = v2;
    v41 = v7;
    v19 = v42;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        v21 = MEMORY[0x2530ADF00](v20, v10);
        v23 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v42 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2529AA3A0((v24 > 1), v25 + 1, 1);
          v19 = v42;
        }

        ++v20;
        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
      }

      while (v17 != v20);
    }

    else
    {
      v27 = (v10 + 32);
      do
      {
        v28 = (*v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v30 = *v28;
        v29 = v28[1];
        v42 = v19;
        v32 = *(v19 + 16);
        v31 = *(v19 + 24);

        if (v32 >= v31 >> 1)
        {
          sub_2529AA3A0((v31 > 1), v32 + 1, 1);
          v19 = v42;
        }

        *(v19 + 16) = v32 + 1;
        v33 = v19 + 16 * v32;
        *(v33 + 32) = v30;
        *(v33 + 40) = v29;
        ++v27;
        --v17;
      }

      while (v17);
    }

    sub_252929F10(v10, 0);
    v2 = v40;
    v7 = v41;
    v5 = v38;
    v3 = v39;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A5E948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F10, &unk_252E42870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A5E9E4@<X0>(void *__src@<X0>, char a2@<W1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a2)
  {
    memcpy(a3, __src, 0x1F8uLL);
    return sub_2529353AC(__dst, v10);
  }

  else
  {
    v7 = __dst[47];
    memcpy(a3, __src, 0x1F8uLL);
    sub_2529353AC(__dst, v10);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2529F846C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_2529F846C((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = 5;
    a3[47] = v7;
  }

  return result;
}

void sub_252A5EAE8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_252E378C4();
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v4 deviceType] == 36)
    {

      goto LABEL_22;
    }

    v6 = [v5 outerDeviceType];

    ++v3;
    if (v6 == 36)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  if (sub_252BAFA20(0x29, a1))
  {
LABEL_18:
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v7 = sub_252BAFA20(0x18, a1);
    if (!v2 || !v7)
    {
      return;
    }
  }

LABEL_22:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v9 homeEntityName];
    if (v12)
    {
      v14 = v12;
      v13 = v10;
      v10 = v14;
LABEL_33:

      return;
    }

    v13 = [v10 groupName];
    if (v13)
    {
      goto LABEL_33;
    }

    if (v11 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

BOOL sub_252A5ECD8(__int128 *a1)
{
  v1 = *(a1 + 17);
  v2 = *(a1 + 18);
  v3 = *(a1 + 19);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  memcpy(v59, a1 + 11, sizeof(v59));
  v6 = sub_252BAC7E4();
  if (sub_252B2ADC8(5, v6))
  {
    if (*(v3 + 16) || *(v5 + 16) || *(v4 + 16) || *(v1 + 16) || *(v2 + 16))
    {

      if (qword_27F53F520 != -1)
      {
LABEL_39:
        swift_once();
      }

      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Found scene candidate with service, group, accessory name or type";
      goto LABEL_73;
    }

    v26 = type metadata accessor for HomeStore(0);
    v27 = static HomeStore.shared.getter(v26);
    v28 = HomeStore.scenes(matching:)(v6);
    v30 = v29;

    if (v30)
    {
      sub_252929F10(v28, 1);
LABEL_33:
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Couldn't get targetedScenes. Invalidating candidate";
LABEL_73:
      _os_log_impl(&dword_252917000, v8, v9, v11, v10, 2u);
      MEMORY[0x2530AED00](v10, -1, -1);
LABEL_74:

      return 0;
    }

    if (v28 >> 62)
    {
      v31 = sub_252E378C4();
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252929F10(v28, 0);
    if (!v31)
    {
      goto LABEL_33;
    }

    return 1;
  }

  KeyPath = swift_getKeyPath();
  v13 = sub_2529304DC(KeyPath, v6);

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

  v14 = swift_getKeyPath();
  v15 = sub_2529304DC(v14, v6);

  if ((v15 & 1) == 0)
  {
    v16 = swift_getKeyPath();
    v17 = sub_252BAF91C(v16, v6);

    if (!v17)
    {
      if (v6 >> 62)
      {
        v18 = sub_252E378C4();
        if (v18)
        {
LABEL_16:
          v19 = 0;
          while (v18 != v19)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v6);
            }

            else
            {
              if (v19 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v20 = *(v6 + 8 * v19 + 32);
            }

            v21 = v20;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v22 = type metadata accessor for HomeStore(0);
            v23 = static HomeStore.shared.getter(v22);
            v24 = sub_2529F1D14(v21);

            if (v24 >> 62)
            {
              v25 = sub_252E378C4();
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v19;
            if (v25)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
        v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_16;
        }
      }

LABEL_41:
      v33 = swift_getKeyPath();
      v34 = sub_2529304DC(v33, v6);

      if ((v34 & 1) != 0 || (v35 = swift_getKeyPath(), v36 = sub_252BAF91C(v35, v6), , v36))
      {
        v37 = type metadata accessor for HomeStore(0);
        v38 = static HomeStore.shared.getter(v37);
        v39 = HomeStore.accessories(matching:supporting:)(v6, 0);
        v41 = v40;

        if ((v41 & 1) == 0)
        {
          v42 = v39 >> 62;
          if (v39 >> 62)
          {
            if (sub_252E378C4())
            {
LABEL_46:
              v43 = *(v5 + 16);
              if (v43)
              {
                goto LABEL_47;
              }

              goto LABEL_56;
            }
          }

          else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }
        }

        sub_252929F10(v39, v41 & 1);
        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v57 = sub_252E36AD4();
        __swift_project_value_buffer(v57, qword_27F544E08);
        v8 = sub_252E36AC4();
        v9 = sub_252E374C4();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_74;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Couldn't get targetedAccessories. Invalidating candidate";
        goto LABEL_73;
      }

      sub_252A5EAE8(v6);
      v46 = v45;
      v47 = type metadata accessor for HomeStore(0);
      v48 = static HomeStore.shared.getter(v47);
      if (v46)
      {
        v49 = HomeStore.accessories(matching:supporting:)(v6, 0);
        v51 = v50;

        if (v51)
        {
          sub_252929F10(v49, 1);
        }

        else
        {
          if (v49 >> 62)
          {
            v54 = sub_252E378C4();
          }

          else
          {
            v54 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_252929F10(v49, 0);
          if (v54)
          {
            return 1;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v56 = sub_252E36AD4();
        __swift_project_value_buffer(v56, qword_27F544E08);
        v8 = sub_252E36AC4();
        v9 = sub_252E374C4();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_74;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Couldn't get targetedAccessories for Television or AppleTV. Invalidating candidate";
        goto LABEL_73;
      }

      v39 = HomeStore.services(matching:supporting:)(v6, 0);
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        v42 = v39 >> 62;
        if (v39 >> 62)
        {
          if (sub_252E378C4())
          {
LABEL_55:
            v43 = *(v3 + 16);
            if (v43)
            {
LABEL_47:
              if (v42)
              {
                v44 = sub_252E378C4();
              }

              else
              {
                v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_252929F10(v39, 0);
              return v44 >= v43;
            }

LABEL_56:
            sub_252929F10(v39, 0);
            return 1;
          }
        }

        else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }
      }

      sub_252929F10(v39, v53 & 1);
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v58 = sub_252E36AD4();
      __swift_project_value_buffer(v58, qword_27F544E08);
      v8 = sub_252E36AC4();
      v9 = sub_252E374C4();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_74;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Couldn't get targetedServices. Invalidating candidate";
      goto LABEL_73;
    }
  }

LABEL_13:

  return 0;
}

unint64_t sub_252A5F4E8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_252E378C4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_252A5F58C(unint64_t a1, unint64_t a2, void *a3)
{
  v58 = a3;
  v60 = sub_252E36AD4();
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_252E32E84();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v61 = a1 + 32;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v66 = (v7 + 8);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v50[1] = v12;
    v55 = (v5 + 16);
    v54 = 0x8000000252E74A70;
    v53 = "Didn't find services to warmup";
    v52 = (v5 + 8);
    v51 = 0x8000000252E74A90;
    v13 = &off_279711000;
    v64 = i;
    v65 = a1;
    v63 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v11)
      {
        v14 = MEMORY[0x2530ADF00](v10, a1);
      }

      else
      {
        if (v10 >= *(v62 + 16))
        {
          goto LABEL_53;
        }

        v14 = *(v61 + 8 * v10);
      }

      v7 = v14;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      v5 = [v14 v13[429]];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v69 = v5;
        v70 = v7;
        v5 = [v16 characteristic];
        v7 = [v5 service];

        if (v7)
        {
          v17 = [v7 uniqueIdentifier];

          v18 = v67;
          sub_252E32E64();

          v19 = sub_252E32E24();
          v5 = v20;
          (*v66)(v18, v68);
          if (a2 >> 62)
          {
            v7 = sub_252E378C4();
            if (v7)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
LABEL_18:
              v21 = 0;
              while (1)
              {
                if ((a2 & 0xC000000000000001) != 0)
                {
                  v22 = MEMORY[0x2530ADF00](v21, a2);
                  a1 = v21 + 1;
                  if (__OFADD__(v21, 1))
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_51;
                  }

                  v22 = *(a2 + 8 * v21 + 32);

                  a1 = v21 + 1;
                  if (__OFADD__(v21, 1))
                  {
LABEL_50:
                    __break(1u);
LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }
                }

                v23 = *(v22 + 16);
                if (v23)
                {
                  v24 = *(v23 + 48);
                  if (v24)
                  {
                    v25 = *(v23 + 40) == v19 && v24 == v5;
                    if (v25 || (sub_252E37DB4() & 1) != 0)
                    {
                      break;
                    }
                  }
                }

                ++v21;
                if (a1 == v7)
                {
                  goto LABEL_48;
                }
              }

              v7 = v70;
              v26 = sub_252DE56C8(v58);
              if (v26)
              {
                v27 = v26;
                type metadata accessor for MutableHomeUserTaskResponse();
                v28 = swift_allocObject();
                *(v28 + 16) = 0;
                v29 = [v27 userTask];
                if (v29)
                {
                  v30 = v29;
                  type metadata accessor for MutableHomeUserTask();
                  swift_allocObject();
                  *(v28 + 16) = sub_252D6CA80(v30);
                }

                v31 = [v27 taskOutcome];

                *(v28 + 24) = v31;
                swift_beginAccess();

                MEMORY[0x2530AD700](v32);
                v33 = *((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                v34 = *((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18);
                v57 = v28;
                if (v33 >= v34 >> 1)
                {
                  sub_252E372A4();
                  v28 = v57;
                }

                sub_252E372D4();
                swift_endAccess();
                if (qword_27F53F4F0 != -1)
                {
                  swift_once();
                }

                v35 = __swift_project_value_buffer(v60, qword_27F544D78);
                v36 = *v55;
                v56 = v35;
                v36(v59);
                v73 = 0;
                v74 = 0xE000000000000000;
                sub_252E379F4();

                v73 = 0xD00000000000001DLL;
                v74 = v54;
                MEMORY[0x2530AD570](v19, v5);

                MEMORY[0x2530AD570](8250, 0xE200000000000000);
                v37 = *(v28 + 16);
                if (v37)
                {

                  v38 = sub_252D6CB58();

                  v39 = [v38 description];

                  v37 = sub_252E36F34();
                  v41 = v40;
                }

                else
                {
                  v41 = 0;
                }

                v71 = v37;
                v72 = v41;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
                v42 = sub_252E36F94();
                MEMORY[0x2530AD570](v42);

                v43 = v53;
                v44 = v59;
                sub_252CC3D90(v73, v74, 0xD000000000000081, v53 | 0x8000000000000000);

                (*v52)(v44, v60);
                v73 = 0;
                v74 = 0xE000000000000000;
                sub_252E379F4();

                v73 = 0xD00000000000001CLL;
                v74 = v51;
                v45 = sub_252D6C15C();
                v46 = [v45 description];

                v47 = sub_252E36F34();
                v49 = v48;

                MEMORY[0x2530AD570](v47, v49);

                v5 = v74;
                v7 = v56;
                sub_252CC3D90(v73, v74, 0xD000000000000081, v43 | 0x8000000000000000);
              }

              else
              {
              }

              goto LABEL_49;
            }
          }

LABEL_48:

LABEL_49:
          i = v64;
          a1 = v65;
          v11 = v63;
          v13 = &off_279711000;
          goto LABEL_8;
        }
      }

      else
      {
      }

LABEL_8:
      if (v10 == i)
      {
        return;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }
}

void sub_252A5FD64(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, unint64_t a4)
{
  if (qword_27F53F4F0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D78);
    sub_252CC7784(0xD00000000000001ELL, 0x8000000252E74A20, 0, 0xD000000000000081, 0x8000000252E748C0);
    if (a1)
    {
      v8 = a1;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E74A40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 50);

      v9 = a1;
      a2(a1, 1);

      return;
    }

    v14 = MEMORY[0x277D84F90];
    if (!(a4 >> 62))
    {
      a1 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        break;
      }

      goto LABEL_6;
    }

    a1 = sub_252E378C4();
    if (!a1)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    while ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v10, a4);
      v11 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_252D6C15C();

      MEMORY[0x2530AD700](v12);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      if (v11 == a1)
      {
        v13 = v14;
        goto LABEL_21;
      }
    }

    if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v11 = (v10 + 1);
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_21:
  a2(v13, 0);
}

void sub_252A6007C(unint64_t a1, uint64_t a2, char a3, void (*a4)(void, void), unint64_t a5)
{
  LOBYTE(v8) = a3;
  v10 = sub_252A75EFC(a2, a3 & 1);
  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  v62 = v10;
  v13 = HomeStore.services(matching:supporting:)(a1, v10);
  LOBYTE(v15) = v14;

  if (v15)
  {
    goto LABEL_40;
  }

  v61 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_39:
    v16 = sub_252E378C4();
    if (!v16)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_40;
    }
  }

  v63 = v13 & 0xC000000000000001;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2530ADF00](0, v13);
    goto LABEL_7;
  }

  if (*(v61 + 16))
  {
    v17 = *(v13 + 32);

LABEL_7:
    v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

    v19 = [v18 accessory];

    if (v19)
    {
      v20 = [v19 home];

      if (v20)
      {

        v22 = sub_252A5F4E8(v21, sub_252E11384, sub_252E04F94);
        v23 = sub_252A5BDC4(v22);

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v20;
        v60 = v24;
        v25 = swift_allocObject();
        v25[2] = a4;
        v25[3] = a5;
        v59 = v25;
        v25[4] = v23;

        v58 = v20;
        v5 = sub_252CC6468(MEMORY[0x277D84F90]);
        if (qword_27F53F4F0 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_47;
      }
    }

LABEL_40:
    sub_252929F10(v13, v15 & 1);
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v56 = sub_252E36AD4();
    __swift_project_value_buffer(v56, qword_27F544D78);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E748A0, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 23);
    a4(MEMORY[0x277D84F90], 0);

    return;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_10:
  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544D78);
  sub_252E379F4();

  type metadata accessor for Service(0);
  v27 = MEMORY[0x2530AD730](v13);
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E74990, 0xD000000000000081, 0x8000000252E748C0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  if (v8)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252E3C130;
    *(v28 + 32) = v62;
    v29 = v62;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C3D0;
    *(inited + 32) = v62;
    v31 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v32 = v62;
    v33 = sub_252E36F04();
    v34 = [v31 initWithIdentifier:0 displayString:v33];

    v35 = v34;
    [v35 setTaskType_];
    [v35 setAttribute_];
    [v35 setValue_];

    *(inited + 40) = v35;
    v36 = sub_252C76598(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = sub_2529A3808(v36);
  }

  a5 = 0;
  v15 = v5;
  do
  {
    if (v63)
    {
      a4 = MEMORY[0x2530ADF00](a5, v13);
      v5 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (a5 >= *(v61 + 16))
      {
        goto LABEL_38;
      }

      a4 = *(v13 + 8 * a5 + 32);

      v5 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    v8 = v13;
    v13 = v16;
    v38 = v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_252A454C0(a4);
    v42 = *(v15 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_36;
    }

    v45 = v40;
    if (*(v15 + 24) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252E03EC4();
      }
    }

    else
    {
      sub_252E00638(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_252A454C0(a4);
      if ((v45 & 1) != (v47 & 1))
      {
        sub_252E37E24();
        __break(1u);
        return;
      }

      v41 = v46;
    }

    v28 = v38;
    if (v45)
    {
      *(*(v15 + 56) + 8 * v41) = v38;
    }

    else
    {
      *(v15 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(*(v15 + 48) + 8 * v41) = a4;
      *(*(v15 + 56) + 8 * v41) = v38;
      v48 = *(v15 + 16);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_37;
      }

      *(v15 + 16) = v50;
    }

    ++a5;
    v16 = v13;
    v37 = v5 == v13;
    v13 = v8;
  }

  while (!v37);

  sub_252929F10(v8, 0);
  LOBYTE(v57) = 0;
  v51 = sub_252A59B64(v15, sub_252A60910, v60, sub_252A60918, v59, 0, 0, 0, v57, 0, 1u);
  if (v51)
  {
    v52 = v51;
    sub_252E379F4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252A60924();
    v53 = sub_252E36E54();
    v55 = v54;

    MEMORY[0x2530AD570](v53, v55);

    sub_252CC7784(0xD000000000000025, 0x8000000252E749F0, 0, 0xD000000000000081, 0x8000000252E748C0);

    [v58 performBatchRequest_];
  }

  else
  {

    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E749C0, 0xD000000000000081, 0x8000000252E748C0, 0xD000000000000031, 0x8000000252E74950, 76);
  }
}

unint64_t sub_252A60924()
{
  result = qword_27F541EB0;
  if (!qword_27F541EB0)
  {
    v3 = type metadata accessor for Service(255);
    result = swift_getWitnessTable(protocol conformance descriptor for Entity, v3, v0, v1);
    atomic_store(result, &qword_27F541EB0);
  }

  return result;
}

void sub_252A6097C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E34414();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_252E342B4();
  v43 = *(v50 - 8);
  v6 = MEMORY[0x28223BE20](v50);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = v38 - v8;
  v9 = sub_252E34354();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v38 - v13;
  v14 = sub_252E34244();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_252E34474();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v38 - v23;
  v45 = a2;
  sub_252A61CD4();
  if (a1)
  {
    v40 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v25 = a1;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252E3C130;
    *(v26 + 32) = v25;
    v27 = sub_252E34A74();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    swift_retain_n();
    v28 = MEMORY[0x2530AAE70](v26, v24);

    sub_252A63908(v24);
    sub_252E34464();
    sub_252E344E4();
    sub_252E34454();
    v29 = v47;
    sub_252E34344();
    v30 = *(v16 + 16);
    v39 = v15;
    v30(v19, v21, v15);
    sub_252E34334();
    v31 = v42;
    sub_252E342A4();
    (*(v48 + 16))(v12, v29, v49);
    sub_252E34294();
    v38[1] = v28;
    v32 = v44;
    sub_252E34404();
    v33 = v43;
    (*(v43 + 16))(v41, v31, v50);
    sub_252E343E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
    v34 = v46;
    v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_252E3C290;
    v37 = v40;
    (*(v34 + 16))(v36 + v35, v32, v40);
    sub_252E33BA4();

    (*(v34 + 8))(v32, v37);
    (*(v33 + 8))(v31, v50);
    (*(v48 + 8))(v47, v49);
    (*(v16 + 8))(v21, v39);
  }
}

uint64_t sub_252A6105C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>)
{
  v53 = a4;
  v61 = a2;
  v55 = sub_252E34414();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E34244();
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E34384();
  v62 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v48 - v19;
  v20 = sub_252E33C44();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A61CD4();
  if (a3)
  {
    v59 = v20;
    v60 = v13;
    v52 = v10;
    v57 = v23;
    v24 = qword_27F53F2E8;

    if (v24 != -1)
    {
      swift_once();
    }

    v58 = v21;
    v25 = a5;
    v23 = off_27F541F48;
    v26 = *(off_27F541F48 + 2);
    v56 = v17;
    if (v26)
    {
      v49 = a1;
      v50 = v8;
      v51 = a3;
      v27 = sub_252DFA3E0(v26, 0);
      a5 = sub_252E082D0(&v67, v27 + 4, v26, v23);
      v28 = v67;

      sub_25297DEB0(v28);
      if (a5 != v26)
      {
        __break(1u);
        swift_once();
        v37 = sub_252E36AD4();
        __swift_project_value_buffer(v37, qword_27F544DA8);
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E74F10);
        v65 = v25;
        v38 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        v39 = sub_252E36F94();
        MEMORY[0x2530AD570](v39);

        sub_252CC4050(v67, v68, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000031, 0x8000000252E74ED0, 139);

LABEL_16:
        v21 = v58;
        v20 = v59;
        return (*(v21 + 32))(a5, v23, v20);
      }

      a3 = v51;
      v8 = v50;
      v17 = v56;
      a1 = v49;
    }

    v23 = v57;
    sub_252E33C24();
    if (v61)
    {
      v29 = v25;
      if (v61 == 1)
      {
        v30 = sub_252A6340C(a1);
      }

      else
      {
        v30 = sub_252A62FFC(a3, v53);
      }

      v33 = v30;
    }

    else
    {
      v29 = v25;
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v31 = sub_252E36AD4();
      __swift_project_value_buffer(v31, qword_27F544DA8);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_252E379F4();

      v67 = 0xD000000000000018;
      v68 = 0x8000000252E74EB0;
      v65 = a1;
      v66 = 0;

      v32 = sub_252E36F94();
      MEMORY[0x2530AD570](v32);

      sub_252CC4050(v67, v68, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000031, 0x8000000252E74ED0, 127);

      v33 = a3;
    }

    v34 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_252E3C130;
    *(v35 + 32) = v33;
    v36 = sub_252E34A74();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);

    MEMORY[0x2530AAE70](v35, v34);

    sub_252A63908(v34);
    sub_252E34374();
    sub_252E344E4();
    sub_252E34364();
    v40 = v52;
    sub_252E34404();
    v41 = v17;
    v42 = v62;
    v43 = *(v62 + 16);
    v64 = v29;
    v43(v54, v41, v60);
    sub_252E343F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
    v44 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_252E3C290;
    v46 = v55;
    (*(v8 + 16))(v45 + v44, v40, v55);
    sub_252E33BA4();

    (*(v8 + 8))(v40, v46);
    a5 = v64;
    (*(v42 + 8))(v56, v60);
    goto LABEL_16;
  }

  return (*(v21 + 32))(a5, v23, v20);
}

uint64_t sub_252A61874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  *(inited + 32) = sub_252A61964(2);
  *(inited + 40) = v1;
  *(inited + 48) = sub_252A61964(3);
  *(inited + 56) = v2;
  *(inited + 64) = sub_252A61964(4);
  *(inited + 72) = v3;
  *(inited + 80) = sub_252A61964(5);
  *(inited + 88) = v4;
  *(inited + 96) = sub_252A61964(6);
  *(inited + 104) = v5;
  *(inited + 112) = sub_252A61964(7);
  *(inited + 120) = v6;
  *(inited + 128) = sub_252A61964(8);
  *(inited + 136) = v7;
  *(inited + 144) = sub_252A61964(9);
  *(inited + 152) = v8;
  v9 = sub_252C75848(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_27F541F40 = v9;
  return result;
}

unint64_t sub_252A61964(uint64_t a1)
{
  v1 = a1;
  sub_252E379F4();

  v2 = sub_252A61B34(v1);
  v3 = v2;
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_252E37174();
    v7 = sub_252E36FC4();
    v9 = v8;

    v3 = sub_252AD52A0(0xFuLL, 15, v7, v9, v3, v5);
    v11 = v10;

    v5 = v11;
  }

  MEMORY[0x2530AD570](v3, v5);

  return 0xD000000000000012;
}

uint64_t sub_252A61A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = sub_252A61964(10);
  *(inited + 40) = v1;
  *(inited + 48) = sub_252A61964(11);
  *(inited + 56) = v2;
  *(inited + 64) = sub_252A61964(12);
  *(inited + 72) = v3;
  *(inited + 80) = sub_252A61964(13);
  *(inited + 88) = v4;
  v5 = sub_252C75848(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_27F541F48 = v5;
  return result;
}

unint64_t sub_252A61B34(char a1)
{
  result = 0x6F747541656D6F68;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      v3 = 9;
      goto LABEL_14;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 5;
LABEL_14:
      result = v3 | 0xD000000000000012;
      break;
    case 9:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_252A61CD4()
{
  sub_252E33C34();
  sub_252E33BC4();
  sub_252A61964(0);
  sub_252E33BE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E3C290;
  v12 = sub_252A61964(1);
  v17 = v1;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](0x4C45434E4143, 0xE600000000000000);
  *(v0 + 32) = v12;
  *(v0 + 40) = v17;
  sub_252E33BD4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 32) = sub_252A61964(1);
  *(v2 + 40) = v3;
  sub_252E33C14();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  v13 = sub_252A61964(1);
  v18 = v5;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](0x4C45434E4143, 0xE600000000000000);
  *(v4 + 32) = v13;
  *(v4 + 40) = v18;
  v14 = sub_252A61964(1);
  v19 = v6;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](5457241, 0xE300000000000000);
  *(v4 + 48) = v14;
  *(v4 + 56) = v19;
  v15 = sub_252A61964(1);
  v20 = v7;
  MEMORY[0x2530AD570](0x2E65756C61562ELL, 0xE700000000000000);
  MEMORY[0x2530AD570](20302, 0xE200000000000000);
  *(v4 + 64) = v15;
  *(v4 + 72) = v20;
  sub_252E33C04();
  v16 = MEMORY[0x277D84F90];
  v8 = [objc_allocWithZone(MEMORY[0x277D47138]) init];
  [v8 setDomain_];
  v9 = sub_252E37254();
  [v8 setAppIdHints_];

  v11 = v8;
  MEMORY[0x2530AD700]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  sub_252E33BF4();
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E74E10, 0xD00000000000006FLL, 0x8000000252E74AE0);
}

void sub_252A62028(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v5) = a2;
  v8 = a2;
  v9 = sub_252E34414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v85 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E34444();
  v84 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v76 - v15;
  v16 = sub_252E34244();
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_252E343C4();
  v18 = *(v114 - 8);
  v19 = MEMORY[0x28223BE20](v114);
  v102 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = &v76 - v21;
  v113 = sub_252E34354();
  v106 = *(v113 - 8);
  v22 = MEMORY[0x28223BE20](v113);
  v112 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v103 = sub_252E34614();
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v107 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  MEMORY[0x28223BE20](v27 - 8);
  v105 = &v76 - v28;
  v87 = sub_252E33C44();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A61CD4();
  if (v8 || !a1)
  {
    if (qword_27F53F500 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_11:
    (*(v86 + 32))(a4, v95, v87);
    return;
  }

  v80 = v12;
  v30 = qword_27F53F2E0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = off_27F541F40;
  v32 = *(off_27F541F40 + 2);
  v111 = v25;
  v100 = a3;
  v79 = v9;
  v78 = v10;
  v99 = a1;
  if (!v32)
  {
    v38 = MEMORY[0x277D84F90];
    v37 = v80;
    v5 = v107;
LABEL_13:
    sub_252E33C24();
    v119 = v38;
    v81 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v41 = sub_252E378C4();
    }

    else
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v101 = v41;
    if (v41)
    {
      v77 = a4;
      v92 = sub_252A62FB0();
      v42 = 0;
      a4 = 0;
      v97 = a1 & 0xC000000000000001;
      v91 = (v110 + 1);
      v90 = (v18 + 16);
      v89 = (v106 + 16);
      v93 = (v18 + 8);
      v94 = v106 + 8;
      v43 = MEMORY[0x277D84F90];
      v88 = v106 + 32;
      v96 = xmmword_252E3C130;
      v98 = MEMORY[0x277D84F90];
      while (1)
      {
        v110 = v43;
        if (v97)
        {
          v44 = MEMORY[0x2530ADF00](v42, a1);
          v45 = v115;
          v46 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v45 = v115;
          if (v42 >= *(v81 + 16))
          {
            goto LABEL_37;
          }

          v44 = *(a1 + 8 * v42 + 32);
          v46 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            swift_once();
LABEL_10:
            v39 = sub_252E36AD4();
            __swift_project_value_buffer(v39, qword_27F544DA8);
            v117 = 0;
            v118 = 0xE000000000000000;
            sub_252E379F4();

            v117 = 0xD000000000000024;
            v118 = 0x8000000252E74AB0;
            v119 = a1;
            v120 = v5;
            sub_252A62FA0(a1, v5);
            v40 = sub_252E36F94();
            MEMORY[0x2530AD570](v40);

            sub_252CC4050(v117, v118, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000027, 0x8000000252E74B50, 150);

            goto LABEL_11;
          }
        }

        v109 = v46;
        if (a4)
        {
        }

        v47 = v44;
        v48 = sub_252B09EF8(v47, 0);
        v108 = v47;

        v49 = sub_252A635BC(a3, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v50 = swift_allocObject();
        *(v50 + 16) = v96;
        *(v50 + 32) = v49;
        v51 = sub_252E34A74();
        v52 = v105;
        (*(*(v51 - 8) + 56))(v105, 1, 1, v51);

        MEMORY[0x2530AAE70](v50, v52);

        sub_252A63908(v52);
        sub_252E357F4();
        v53 = MEMORY[0x2530ADA70](v5);
        (*v91)(v5, v103);
        v54 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];
        MEMORY[0x2530AD700]();
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v45 = v115;
        }

        sub_252E372D4();
        v98 = v119;
        v55 = v111;
        sub_252E34344();
        sub_252E343B4();
        sub_252E344E4();
        sub_252E343A4();
        (*v90)(v102, v45, v114);
        sub_252E34324();
        (*v89)(v112, v55, v113);
        v56 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2529F8930(0, v56[2] + 1, 1, v56);
        }

        v58 = v56[2];
        v57 = v56[3];
        v59 = v56;
        if (v58 >= v57 >> 1)
        {
          v59 = sub_2529F8930((v57 > 1), v58 + 1, 1, v56);
        }

        (*v93)(v115, v114);
        v60 = v106;
        v61 = v113;
        (*(v106 + 8))(v111, v113);
        v59[2] = v58 + 1;
        v43 = v59;
        (*(v60 + 32))(v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58, v112, v61);
        ++v42;
        a4 = 1;
        a3 = v100;
        a1 = v99;
        v5 = v107;
        if (v109 == v101)
        {

          a4 = v77;
          v9 = v79;
          v10 = v78;
          v37 = v80;
          goto LABEL_33;
        }
      }
    }

    goto LABEL_33;
  }

  v109 = v18;
  v33 = a4;
  v34 = sub_252DFA3E0(v32, 0);
  v35 = sub_252E082D0(&v117, v34 + 4, v32, v31);
  v36 = v117;

  sub_25297DEB0(v36);
  if (v35 == v32)
  {
    a4 = v33;
    a3 = v100;
    v9 = v79;
    v10 = v78;
    v37 = v80;
    a1 = v99;
    v5 = v107;
    v18 = v109;
    v38 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  swift_once();
  v62 = sub_252E36AD4();
  __swift_project_value_buffer(v62, qword_27F544DA8);
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E74B80);
  v116 = v31;
  v63 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  v64 = sub_252E36F94();
  MEMORY[0x2530AD570](v64);

  MEMORY[0x2530AD570](0x696620726F660A2CLL, 0xED0000207265746CLL);
  v65 = v36;
  v66 = [v65 description];
  v67 = sub_252E36F34();
  v69 = v68;
  v108 = v65;

  MEMORY[0x2530AD570](v67, v69);

  sub_252CC4050(v117, v118, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000027, 0x8000000252E74B50, 179);

  a4 = v77;
  v9 = v79;
  v10 = v78;
  v37 = v80;
LABEL_33:
  v70 = v83;
  sub_252E34434();
  sub_252E34424();
  v71 = v85;
  sub_252E34404();
  v72 = v84;
  (*(v84 + 16))(v82, v70, v37);
  sub_252E343D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F60, &qword_252E42D08);
  v73 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_252E3C290;
  (*(v10 + 16))(v74 + v73, v71, v9);
  v75 = v95;
  sub_252E33BA4();

  (*(v10 + 8))(v71, v9);
  (*(v72 + 8))(v70, v37);
  (*(v86 + 32))(a4, v75, v87);
  if (v101)
  {
  }
}

uint64_t sub_252A62FA0(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

unint64_t sub_252A62FB0()
{
  result = qword_27F541F58;
  if (!qword_27F541F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541F58);
  }

  return result;
}

uint64_t sub_252A62FFC(uint64_t a1, unsigned __int8 a2)
{
  sub_252E35074();
  swift_allocObject();
  sub_252E35064();
  sub_252E35054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F68, &qword_252E42D10);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    if (a2 <= 1u)
    {
      if (!a2)
      {

LABEL_15:
        sub_252E353A4();
        swift_allocObject();
        sub_252E35394();
        sub_252E35624();
        swift_allocObject();
        sub_252E35614();
        sub_252E350A4();
        swift_allocObject();
        sub_252E35094();
        sub_252E35604();

        sub_252E35384();

        sub_252E355E4();

        goto LABEL_17;
      }
    }

    else if (a2 != 2 && a2 != 3)
    {

      goto LABEL_16;
    }

    v8 = sub_252E37DB4();

    if (v8)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_252E355D4();
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F70, &qword_252E42D18);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v5 = v6;

    sub_252E35734();
LABEL_17:

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F78, &qword_252E42D20);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v5 = v7;

    sub_252E357C4();
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F80, &qword_252E42D28);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v5 = v10;

    sub_252E35264();
    goto LABEL_17;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E74F50);
  sub_252E34844();

  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000035, 0x8000000252E74F90, 238);

  return a1;
}

uint64_t sub_252A6340C(unint64_t a1)
{
  if (a1 > 0x3B)
  {
    goto LABEL_7;
  }

  if (((1 << a1) & 0xFE40036618A0EB4) == 0)
  {
    if (((1 << a1) & 0xA000004000040) != 0)
    {
      sub_252E356C4();
      swift_allocObject();
      v1 = sub_252E356B4();
      sub_252E35354();
      swift_allocObject();
      sub_252E35344();
      sub_252E357D4();
      goto LABEL_4;
    }

LABEL_7:
    sub_252E35224();
    swift_allocObject();
    v1 = sub_252E35214();
    sub_252E35074();
    swift_allocObject();
    sub_252E35064();
    sub_252E355D4();
    goto LABEL_4;
  }

  sub_252E354E4();
  swift_allocObject();
  v1 = sub_252E354D4();
  sub_252E34FC4();
  swift_allocObject();
  sub_252E34FB4();
  sub_252E35744();
LABEL_4:

  return v1;
}

unint64_t sub_252A63570(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A635BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F68, &qword_252E42D10);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;

    sub_252E355F4();
    return v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F70, &qword_252E42D18);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;

      sub_252E35754();
      return v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F78, &qword_252E42D20);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;

        sub_252E357E4();
        return v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F80, &qword_252E42D28);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;

          sub_252E35274();
          return v10;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F88, &qword_252E42D30);
          v11 = swift_dynamicCastClass();
          if (v11)
          {
            v12 = v11;

            sub_252E34564();
            return v12;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F90, &qword_252E42D38);
            v13 = swift_dynamicCastClass();
            if (v13)
            {
              v14 = v13;

              sub_252E35264();
              return v14;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F98, &unk_252E42D40);
              v15 = swift_dynamicCastClass();
              if (v15)
              {
                v16 = v15;

                sub_252E35514();
                return v16;
              }

              else
              {
                if (qword_27F53F500 != -1)
                {
                  swift_once();
                }

                v17 = sub_252E36AD4();
                __swift_project_value_buffer(v17, qword_27F544DA8);
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E74BC0);
                sub_252E34844();

                v18 = sub_252E36F94();
                MEMORY[0x2530AD570](v18);

                sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E74AE0, 0xD000000000000041, 0x8000000252E74C00, 301);
              }
            }
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_252A63908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_22HomeAutomationInternal17NLContextProviderO10PromptHintO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_252A639A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252A639E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_252A63A2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252A63A74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252A63ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_252A63B24()
{
  result = qword_27F541FA0;
  if (!qword_27F541FA0)
  {
    result = swift_getWitnessTable(asc_252E42F20, &type metadata for PossibleValuesForAttribute, v0, v1);
    atomic_store(result, &qword_27F541FA0);
  }

  return result;
}

uint64_t sub_252A63B8C(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252A63C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A64B3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A63C9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12639;
  v5 = 0xE600000000000000;
  v6 = 0x444961657261;
  v7 = 0xE500000000000000;
  v8 = 0x444970616DLL;
  if (v2 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65746174536E7572;
  if (v2 != 1)
  {
    v10 = 0x646F4D6E61656C63;
    v9 = 0xEA00000000007365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_252A63D44()
{
  v15 = sub_252E37F54();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[7] = &type metadata for PossibleValuesForAttribute;
  v4 = swift_allocObject();
  v18[4] = v4;
  v5 = v0[1];
  v4[1] = *v0;
  v4[2] = v5;
  *(v4 + 41) = *(v0 + 25);
  sub_252A656C8(v0, &v16);
  sub_252E37F24();
  sub_252E37F44();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_252E37A14();
  swift_getObjectType();
  if (v6 != sub_252E37A14())
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = sub_252E37A24();
  swift_unknownObjectRelease();
  if (v7)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  sub_252E37AF4();
  swift_unknownObjectRelease();

  v9 = v16;
  v8 = v17;
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v8)
  {
LABEL_6:
    if (qword_27F53F568 == -1)
    {
LABEL_7:
      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544EE0);
      sub_252CC4050(0xD00000000000003ALL, 0x8000000252E751A0, 0xD000000000000089, 0x8000000252E75010, 0x6E65644965707974, 0xEE00726569666974, 31);
      v11 = 0x6E776F6E6B6E55;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  sub_252E37F34();
  v16 = sub_252E37FB4();
  v17 = v10;
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  MEMORY[0x2530AD570](v9, v8);

  v11 = v16;
LABEL_8:
  (*(v1 + 8))(v3, v15);
  return v11;
}

uint64_t sub_252A6403C()
{
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C280;
      sub_252A654C8();
      sub_252E366F4();
    }

    else
    {

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A654C8();
    }

    sub_252E366F4();
    sub_252E366F4();
  }

  else
  {
    if (*(v0 + 40))
    {
      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      sub_252A6551C();
      sub_252A654C8();
    }

    else
    {

      sub_252A63D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      sub_252A65570();
      sub_252A654C8();
      sub_252E366F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0);
      sub_252A655C4();
    }

    sub_252E366F4();
  }

  sub_252E36564();
}