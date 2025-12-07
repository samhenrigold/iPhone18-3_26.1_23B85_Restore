uint64_t sub_1B610F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = v13;
  *(v8 + 312) = v14;
  *(v8 + 288) = v12;
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 256) = a5;
  *(v8 + 264) = a6;
  *(v8 + 240) = a3;
  *(v8 + 248) = a4;
  *(v8 + 232) = a2;
  *(v8 + 320) = type metadata accessor for NetworkTelemetry(0);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0, &qword_1B622D260);
  *(v8 + 344) = swift_task_alloc();
  v9 = sub_1B621D8F4();
  *(v8 + 352) = v9;
  *(v8 + 360) = *(v9 - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B610F7D0, 0, 0);
}

uint64_t sub_1B610F7D0()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_339();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    sub_1B621D8E4();

    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    v0[49] = v2;
    *v2 = v3;
    v2[1] = sub_1B610F924;
    v4 = v0[43];
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[32];
    v8 = v0[33];
    v9 = v0[30];
    v10 = v0[31];

    return sub_1B611849C(v4, v9, v10, v7, v8, v5, v6, &unk_1B622D270);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v12();
  }
}

uint64_t sub_1B610F924()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B610FA3C()
{
  v80 = v0;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v74 = sub_1B6220B34();
  OUTLINED_FUNCTION_88_0(v74, qword_1EDAC2AB0);
  sub_1B6220784();
  v2 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  v3 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_399();
    *(v1 + 4) = OUTLINED_FUNCTION_199(4.8751e-34, v5, v6, v7, v8, v9, v10, v11, v12, v70, v72, v74, v76);
    OUTLINED_FUNCTION_91_0();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_95_0();
    v19 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v19);
  }

  v20 = *(v0 + 344);
  v77 = *(v0 + 320);
  v21 = OUTLINED_FUNCTION_132(*(v0 + 384));
  v22(v21);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_529();
  v23 = OUTLINED_FUNCTION_191();
  v24(v23);
  v25 = OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_108_0(v25, v26, v27, v28, v29, v30, v31, v32, v70, v72, v74, v77);
  v33 = OUTLINED_FUNCTION_158();
  v34(v33);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  OUTLINED_FUNCTION_551();
  sub_1B611B134(v35);
  if (v20)
  {
    sub_1B61540AC(*(v0 + 344), &qword_1EB925FB0, &qword_1B622D260);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    OUTLINED_FUNCTION_111_0(v75, qword_1EDAC2AB0);
    sub_1B6220784();
    v36 = v20;
    v37 = sub_1B6220B14();
    sub_1B62217F4();
    OUTLINED_FUNCTION_528();

    if (OUTLINED_FUNCTION_126())
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_334();
      OUTLINED_FUNCTION_8_2();
      swift_slowAlloc();
      OUTLINED_FUNCTION_394();
      v47 = OUTLINED_FUNCTION_193(4.8752e-34, v39, v40, v41, v42, v43, v44, v45, v46, v71, v73, v75, v78);
      OUTLINED_FUNCTION_189(v47);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_384(v48);
      OUTLINED_FUNCTION_182(&dword_1B6020000, v49, v50, "Request failed: %{public}s due to: %{private}@");
      sub_1B61540AC(v38, &qword_1EB924E68, &unk_1B6226DD0);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      __swift_destroy_boxed_opaque_existential_1(v1);
      v51 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v51);
      v52 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B8C91C90](v52);
    }

    v53 = *(v0 + 368);
    v54 = *(v0 + 352);
    v55 = *(v0 + 320);
    v56 = OUTLINED_FUNCTION_133(*(v0 + 384));
    v57(v56);
    sub_1B621D8E4();
    OUTLINED_FUNCTION_712();
    v58 = OUTLINED_FUNCTION_190();
    v59(v58);
    v60 = OUTLINED_FUNCTION_12_14();
    OUTLINED_FUNCTION_706(v60);
    OUTLINED_FUNCTION_486();
    v61 = OUTLINED_FUNCTION_279();
    v53(v61);
    OUTLINED_FUNCTION_2_33();
    sub_1B6153250();
    *(v0 + 216) = v20;
    v62 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    if (swift_dynamicCast())
    {
      sub_1B60F2F48(*(v0 + 224));
      OUTLINED_FUNCTION_350();

      if (!v55)
      {
        v63 = v20;
        v55 = v20;
      }

      (*(v0 + 304))(v55);

      v64 = OUTLINED_FUNCTION_264();
      v54(v64);
    }

    else
    {
      (*(v0 + 304))(v20);

      v67 = OUTLINED_FUNCTION_27();
      v54(v67);
    }
  }

  else
  {
    v65 = *(v0 + 344);
    (*(v0 + 288))(__src);

    memcpy((v0 + 16), __src, 0xB0uLL);
    sub_1B61538F4(v0 + 16);
    sub_1B61540AC(v65, &qword_1EB925FB0, &qword_1B622D260);
    v66 = OUTLINED_FUNCTION_398();
    v73(v66);
  }

  OUTLINED_FUNCTION_97();

  return v68();
}

uint64_t sub_1B610FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_349();
  v19 = *(v16 + 400);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v20 = sub_1B6220B34();
  OUTLINED_FUNCTION_88_0(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v21 = v19;
  v22 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_424();

  if (OUTLINED_FUNCTION_525())
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_504();
    v29 = OUTLINED_FUNCTION_290(4.8752e-34, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_286(v29);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_489(v30);
    OUTLINED_FUNCTION_218();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_1B61540AC(v18, &qword_1EB924E68, &unk_1B6226DD0);
    v36 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v36);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v37 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v37);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v38 = *(v16 + 352);
  v39 = *(v16 + 328);
  v40 = OUTLINED_FUNCTION_46_3(*(v16 + 384));
  v41(v40);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_599();
  v42 = OUTLINED_FUNCTION_100_0();
  v43(v42);
  v44 = type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_51_1(v44);
  OUTLINED_FUNCTION_401();
  v45 = OUTLINED_FUNCTION_163();
  v38(v45);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  *(v16 + 216) = v19;
  v46 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  if (swift_dynamicCast())
  {
    sub_1B60F2F48(*(v16 + 224));
    OUTLINED_FUNCTION_612();
    if (!v39)
    {
      v47 = v19;
      v39 = v19;
    }

    (*(v16 + 304))(v39);

    v48 = OUTLINED_FUNCTION_264();
    a11(v48);
  }

  else
  {
    (*(v16 + 304))(v19);

    v49 = OUTLINED_FUNCTION_27();
    a11(v49);
  }

  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_296();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B61101CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v8[15] = type metadata accessor for NetworkTelemetry(0);
  v8[16] = swift_task_alloc();
  v8[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0, &qword_1B622D358);
  v8[18] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6110318, 0, 0);
}

uint64_t sub_1B6110318()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    sub_1B621D8E4();

    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 192) = v2;
    *v2 = v3;
    v2[1] = sub_1B611044C;
    OUTLINED_FUNCTION_194();

    return sub_1B611895C(v4, v5, v6, v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B611044C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B6110A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_349();
  v19 = *(v16 + 200);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v20 = OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_88_0(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v21 = v19;
  v22 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_424();

  if (OUTLINED_FUNCTION_525())
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_504();
    v29 = OUTLINED_FUNCTION_290(4.8752e-34, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_286(v29);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_489(v30);
    OUTLINED_FUNCTION_218();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_1B61540AC(v18, &qword_1EB924E68, &unk_1B6226DD0);
    v36 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v36);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v37 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v37);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v38 = *(v16 + 152);
  v39 = *(v16 + 128);
  v40 = OUTLINED_FUNCTION_46_3(*(v16 + 184));
  v41(v40);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_599();
  v42 = OUTLINED_FUNCTION_100_0();
  v43(v42);
  v44 = type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_51_1(v44);
  OUTLINED_FUNCTION_401();
  v45 = OUTLINED_FUNCTION_163();
  v38(v45);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  OUTLINED_FUNCTION_610();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  if (OUTLINED_FUNCTION_297(v46, v47, v46, &type metadata for RetriedError))
  {
    OUTLINED_FUNCTION_476();
    OUTLINED_FUNCTION_612();
    if (!v39)
    {
      v48 = v19;
      v39 = v19;
    }

    (*(v16 + 104))(v39);

    v49 = OUTLINED_FUNCTION_264();
    a11(v49);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_382();
    v51(v50);

    v52 = OUTLINED_FUNCTION_27();
    a11(v52);
  }

  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_296();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B6110CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for WeatherAlert(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90, &qword_1B622D168);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6110E34, 0, 0);
}

uint64_t sub_1B6110E34()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B6118DEC(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B6110F58()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B611145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for DailyWeatherStatistics(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F68, &qword_1B622D0D8);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61115D4, 0, 0);
}

uint64_t sub_1B61115D4()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B61192DC(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B61116F8()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B6111BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for HourlyWeatherStatistics(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F28, &qword_1B622CFB8);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6111D74, 0, 0);
}

uint64_t sub_1B6111D74()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B611963C(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B6111E98()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B611239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for MonthlyWeatherStatistics(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F10, &qword_1B622CF28);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6112514, 0, 0);
}

uint64_t sub_1B6112514()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B61198A4(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B6112638()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B6112B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EF8, &qword_1B622CE48);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6112C8C, 0, 0);
}

uint64_t sub_1B6112C8C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  v2 = OUTLINED_FUNCTION_446(Strong);
  if (v2)
  {
    v3 = v2;
    sub_1B621D8E4();

    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_203(v4);
    *v5 = v6;
    v5[1] = sub_1B6112DC0;
    v7 = v0[19];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];

    return sub_1B6119B0C(v7, v10, v11, v8, v9, &unk_1B622CE58, v3);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v13();
  }
}

uint64_t sub_1B6112DC0()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B6113340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_349();
  v20 = *(v16 + 208);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v21 = *(v16 + 88);
  v22 = sub_1B6220B34();
  OUTLINED_FUNCTION_88_0(v22, qword_1EDAC2AB0);
  sub_1B6220784();
  v23 = v20;
  v24 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_424();

  if (OUTLINED_FUNCTION_525())
  {
    v19 = *(v16 + 88);
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_504();
    v31 = OUTLINED_FUNCTION_290(4.8752e-34, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_286(v31);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_489(v32);
    OUTLINED_FUNCTION_218();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    sub_1B61540AC(v18, &qword_1EB924E68, &unk_1B6226DD0);
    v38 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v38);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v39 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v39);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  OUTLINED_FUNCTION_404();
  v41 = OUTLINED_FUNCTION_46_3(v40);
  v42(v41);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_599();
  v43 = OUTLINED_FUNCTION_100_0();
  v44(v43);
  v45 = type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_51_1(v45);
  OUTLINED_FUNCTION_401();
  v46 = OUTLINED_FUNCTION_163();
  v19(v46);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  OUTLINED_FUNCTION_610();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  if (OUTLINED_FUNCTION_297(v47, v48, v47, &type metadata for RetriedError))
  {
    OUTLINED_FUNCTION_476();
    OUTLINED_FUNCTION_612();
    if (!v21)
    {
      v49 = v20;
      v21 = v20;
    }

    (*(v16 + 112))(v21);

    v50 = OUTLINED_FUNCTION_264();
    a11(v50);
  }

  else
  {
    (*(v16 + 112))(v20);

    v51 = OUTLINED_FUNCTION_27();
    a11(v51);
  }

  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_296();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B61135F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for Weather(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E60, &qword_1B622CB60);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B611376C, 0, 0);
}

uint64_t sub_1B611376C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B6119F6C(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B6113890()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6113990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  type metadata accessor for Weather(0);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for NetworkTelemetry(0);
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E60, &qword_1B622CB60);
  v8[19] = swift_task_alloc();
  v9 = sub_1B621D8F4();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6113B08, 0, 0);
}

uint64_t sub_1B6113B08()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  if (OUTLINED_FUNCTION_446(Strong))
  {
    sub_1B621D8E4();

    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_203(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_116_0(v2);
    OUTLINED_FUNCTION_194();

    return sub_1B611A3CC(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_109_0();

    OUTLINED_FUNCTION_97();

    return v11();
  }
}

uint64_t sub_1B6113C2C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6114118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_349();

  v20 = *(v16 + 208);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v21 = OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_88_0(v21, qword_1EDAC2AB0);
  sub_1B6220784();
  v22 = v20;
  v23 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_424();

  if (OUTLINED_FUNCTION_525())
  {
    v19 = *(v16 + 80);
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_504();
    v30 = OUTLINED_FUNCTION_290(4.8752e-34, v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_286(v30);
    v31 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_489(v31);
    OUTLINED_FUNCTION_218();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    sub_1B61540AC(v18, &qword_1EB924E68, &unk_1B6226DD0);
    v37 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v37);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v38 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v38);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  OUTLINED_FUNCTION_404();
  v40 = OUTLINED_FUNCTION_46_3(v39);
  v41(v40);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_599();
  v42 = OUTLINED_FUNCTION_100_0();
  v43(v42);
  v44 = type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_51_1(v44);
  OUTLINED_FUNCTION_401();
  v45 = OUTLINED_FUNCTION_163();
  v19(v45);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  OUTLINED_FUNCTION_610();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  if (OUTLINED_FUNCTION_297(v46, v47, v46, &type metadata for RetriedError))
  {
    v48 = OUTLINED_FUNCTION_476();

    if (!v48)
    {
      v49 = v20;
      v48 = v20;
    }

    (*(v16 + 104))(v48);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_382();
    v51(v50);
  }

  v52 = OUTLINED_FUNCTION_445();
  a11(v52);
  OUTLINED_FUNCTION_109_0();

  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_296();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B61143A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6114D88(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B61144A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1B60D7AB4;

  return sub_1B6115410(a1, a2, a3, a4, a5, a6, a7, a8 & 1);
}

uint64_t sub_1B61145A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6115B1C(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B61146A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6116040(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B611479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B611646C(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B6114898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6116898(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B6114994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6116CC4(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B6114A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1B60D7AB4;

  return sub_1B61170F0(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
}

uint64_t sub_1B6114B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B61177F0(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B6114C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6117C3C(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1B6114D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6114E70, 0, 0);
}

uint64_t sub_1B6115014()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611510C()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B6123A14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B61151B4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61152AC()
{
  OUTLINED_FUNCTION_11();
  (*(v0[11] + 8))(v0[13], v0[10]);

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B6115328()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 128))(*(v0 + 104), *(v0 + 80));

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B611539C()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 128))(*(v0 + 104), *(v0 + 80));

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B6115410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 185) = v15;
  *(v9 + 88) = v14;
  *(v9 + 96) = v8;
  *(v9 + 72) = v13;
  *(v9 + 184) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B621D284();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6115508, 0, 0);
}

uint64_t sub_1B61156E0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61157D8()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_75();
  v0[19] = v1;
  v0[20] = v2;
  v3 = OUTLINED_FUNCTION_302();
  v4(v3);
  v5 = OUTLINED_FUNCTION_76_0();
  v6(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  v0[21] = v7;
  *v7 = v8;
  v7[1] = sub_1B61158C0;
  v9 = v0[16];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return sub_1B6124BA8(v15, v16, v9, v10, v11, v13, v14, v12);
}

uint64_t sub_1B61158C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61159B8()
{
  OUTLINED_FUNCTION_11();
  (*(v0[14] + 8))(v0[16], v0[13]);

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B6115A34()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 152))(*(v0 + 128), *(v0 + 104));

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6115AA8()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 152))(*(v0 + 128), *(v0 + 104));

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B6115B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6115C04, 0, 0);
}

uint64_t sub_1B6115DA8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6115EA0()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B61261D0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B6115F48()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6116040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6116128, 0, 0);
}

uint64_t sub_1B61162CC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61163C4()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B61275DC(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B611646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6116554, 0, 0);
}

uint64_t sub_1B61166F8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61167F0()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B61289E8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B6116898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6116980, 0, 0);
}

uint64_t sub_1B6116B24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6116C1C()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B6129B5C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B6116CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6116DAC, 0, 0);
}

uint64_t sub_1B6116F50()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6117048()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B612ACD0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B61170F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v13;
  *(v9 + 80) = v8;
  *(v9 + 169) = v14;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 168) = a6;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B621D284();
  *(v9 + 88) = v10;
  *(v9 + 96) = *(v10 - 8);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61171E0, 0, 0);
}

uint64_t sub_1B61173BC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61174B4()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_75();
  v0[17] = v1;
  v0[18] = v2;
  v3 = OUTLINED_FUNCTION_302();
  v4(v3);
  v5 = OUTLINED_FUNCTION_76_0();
  v6(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_1B6117594;
  v9 = v0[14];
  v10 = v0[9];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return sub_1B612BE44(v15, v16, v9, v11, v12, v13, v14, v10);
}

uint64_t sub_1B6117594()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611768C()
{
  OUTLINED_FUNCTION_11();
  (*(v0[12] + 8))(v0[14], v0[11]);

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B6117708()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 136))(*(v0 + 112), *(v0 + 88));

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B611777C()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 136))(*(v0 + 112), *(v0 + 88));

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B61177F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61178D8, 0, 0);
}

uint64_t sub_1B6117A9C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6117B94()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B612D1DC(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B6117C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 161) = v13;
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 160) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1B621D284();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6117D24, 0, 0);
}

uint64_t sub_1B6117EE8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6117FE0()
{
  OUTLINED_FUNCTION_13_7();
  v0 = OUTLINED_FUNCTION_13_13();
  v1(v0);
  v2 = OUTLINED_FUNCTION_76_0();
  v3(v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_12(v5);

  return sub_1B612E9C8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B6118088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[53] = a6;
  v7[54] = v6;
  v7[51] = a4;
  v7[52] = a5;
  v7[49] = a2;
  v7[50] = a3;
  v7[48] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B61180B4, 0, 0);
}

uint64_t sub_1B61182F0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61183E8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6118440()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B611849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[47] = v11;
  v9[48] = v8;
  v9[45] = a7;
  v9[46] = a8;
  v9[43] = a5;
  v9[44] = a6;
  v9[41] = a3;
  v9[42] = a4;
  v9[39] = a1;
  v9[40] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B61184D4, 0, 0);
}

uint64_t sub_1B61187B0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61188A8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6118900()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B611895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[50] = a6;
  v7[51] = v6;
  v7[48] = a4;
  v7[49] = a5;
  v7[46] = a2;
  v7[47] = a3;
  v7[45] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6118988, 0, 0);
}

uint64_t sub_1B6118988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 + 400);
  v25 = *(v22 + 384);
  v57 = *(v22 + 392);
  v26 = *(v22 + 368);
  v27 = *(v22 + 376);
  OUTLINED_FUNCTION_80_0(OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  v28 = OUTLINED_FUNCTION_103_0();
  v29(v28);
  OUTLINED_FUNCTION_291(OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  v58 = *(v22 + 40);
  OUTLINED_FUNCTION_268();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_37_4(v30);
  *(v31 + 80) = v27;
  *(v31 + 88) = v25;
  OUTLINED_FUNCTION_268();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_37_4(v32);
  *(v33 + 80) = v27;
  *(v33 + 88) = v25;
  v59 = *v26;
  v60 = v26[1];
  v61 = v26[2];
  sub_1B602D048(v23, v22 + 320);
  OUTLINED_FUNCTION_654();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_37_4(v34);
  *(v35 + 80) = v59;
  *(v35 + 96) = v60;
  *(v35 + 112) = v61;
  *(v35 + 128) = v57;
  *(v35 + 136) = v24;
  *(v35 + 144) = v27;
  *(v35 + 152) = v25;
  OUTLINED_FUNCTION_464((v22 + 320), v34 + 160);
  sub_1B6220784();
  OUTLINED_FUNCTION_579();
  sub_1B6220784();
  OUTLINED_FUNCTION_580();
  sub_1B6220784();
  sub_1B605B798(v26, v22 + 272);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0, &qword_1B622D358);
  OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_160();
  *(v22 + 416) = sub_1B6038580(v58, v36, v37, v38, v39, v40, v41, v42, v55, v56);
  v43 = OUTLINED_FUNCTION_377();
  sub_1B602C6A0(v43);

  v44 = swift_task_alloc();
  *(v22 + 424) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  OUTLINED_FUNCTION_130();
  *v44 = v45;
  v44[1] = sub_1B6118C40;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_606();

  return MEMORY[0x1EEE6DA10](v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6118C40()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6118D38()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6118D90()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6118DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[56] = a6;
  v7[57] = v6;
  v7[54] = a4;
  v7[55] = a5;
  v7[52] = a2;
  v7[53] = a3;
  v7[51] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6118E18, 0, 0);
}

uint64_t sub_1B6119130()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 480) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6119228()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6119280()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61192DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[53] = a6;
  v7[54] = v6;
  v7[51] = a4;
  v7[52] = a5;
  v7[49] = a2;
  v7[50] = a3;
  v7[48] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6119308, 0, 0);
}

uint64_t sub_1B6119544()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[53] = a6;
  v7[54] = v6;
  v7[51] = a4;
  v7[52] = a5;
  v7[49] = a2;
  v7[50] = a3;
  v7[48] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6119668, 0, 0);
}

uint64_t sub_1B61198A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[53] = a6;
  v7[54] = v6;
  v7[51] = a4;
  v7[52] = a5;
  v7[49] = a2;
  v7[50] = a3;
  v7[48] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B61198D0, 0, 0);
}

uint64_t sub_1B6119B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[45] = a7;
  v8[46] = v7;
  v8[43] = a5;
  v8[44] = a6;
  v8[41] = a3;
  v8[42] = a4;
  v8[39] = a1;
  v8[40] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6119B38, 0, 0);
}

uint64_t sub_1B6119DC0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6119EB8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6119F10()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6119F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[44] = a6;
  v7[45] = v6;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  v8 = *(type metadata accessor for WeatherRequest(0) - 8);
  v7[46] = v8;
  v7[47] = *(v8 + 64);
  v7[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B611A03C, 0, 0);
}

uint64_t sub_1B611A2D4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[44] = a6;
  v7[45] = v6;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  v8 = *(type metadata accessor for WeatherRequest(0) - 8);
  v7[46] = v8;
  v7[47] = *(v8 + 64);
  v7[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B611A49C, 0, 0);
}

uint64_t sub_1B611A734()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611A82C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B611A88C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B611A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[46] = a8;
  v9[47] = v8;
  v9[44] = a6;
  v9[45] = a7;
  v9[42] = a4;
  v9[43] = a5;
  v9[40] = a2;
  v9[41] = a3;
  v9[39] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B611A920, 0, 0);
}

uint64_t sub_1B611ABF0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611ACE8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B611AD40()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

void sub_1B611AD9C(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B40, &qword_1B62251C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F50, &qword_1B622D070);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = MEMORY[0x1B8C91460](v9);
  sub_1B613E660(v3, a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v12);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v13 = sub_1B6220B34();
    __swift_project_value_buffer(v13, qword_1EDAC2AB0);
    sub_1B603AA48(v3, v11, &qword_1EB925F50, &qword_1B622D070);
    v14 = v2;
    v15 = sub_1B6220B14();
    v16 = sub_1B62217E4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v17 = 136446467;
      v18 = &v11[*(v8 + 56)];
      v32 = v3;
      v20 = *v18;
      v19 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v11, &qword_1EB925F50, &qword_1B622D070);
      v21 = sub_1B602EEB0(v20, v19, &v34);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2081;
      v33 = v2;
      v22 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v34);
      v3 = v32;

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v15, v16, "Failed to create response model for request: %{public}s with error: %{private}s", v17, 0x16u);
      v26 = v31;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v17, -1, -1);
    }

    else
    {

      sub_1B61540AC(v11, &qword_1EB925F50, &qword_1B622D070);
    }

    v27 = *(v3 + *(v8 + 60));
    v28 = type metadata accessor for DailySummary(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
    v27(v7);
    sub_1B61540AC(v7, &qword_1EB924B40, &qword_1B62251C8);
    sub_1B60624F4();
    swift_allocError();
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *v29 = v2;
    *(v29 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v12);
  }
}

void sub_1B611B134(void *a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8, &unk_1B622D280);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27[-v7 - 8];
  v9 = MEMORY[0x1B8C91460](v6);
  sub_1B613F270(v3, a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v9);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6220B34();
    __swift_project_value_buffer(v10, qword_1EDAC2AB0);
    sub_1B603AA48(v3, v8, &qword_1EB925FB8, &unk_1B622D280);
    v11 = v2;
    v12 = sub_1B6220B14();
    v13 = sub_1B62217E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v14 = 136446467;
      v15 = &v8[*(v5 + 56)];
      v30 = v5;
      v17 = *v15;
      v16 = v15[1];
      sub_1B6220784();
      sub_1B61540AC(v8, &qword_1EB925FB8, &unk_1B622D280);
      v18 = sub_1B602EEB0(v17, v16, v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2081;
      *&v28[0] = v2;
      v19 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v20 = sub_1B6221234();
      v22 = sub_1B602EEB0(v20, v21, v29);
      v5 = v30;

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B6020000, v12, v13, "Failed to create response model for request: %{public}s with error: %{private}s", v14, 0x16u);
      v23 = v26;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v23, -1, -1);
      MEMORY[0x1B8C91C90](v14, -1, -1);
    }

    else
    {

      sub_1B61540AC(v8, &qword_1EB925FB8, &unk_1B622D280);
    }

    v24 = *(v3 + *(v5 + 60));
    sub_1B6153AC8(v28);
    memcpy(v27, v28, sizeof(v27));
    v24(v27);
    memcpy(v29, v27, 0xB0uLL);
    sub_1B61540AC(v29, &unk_1EB9275A0, &unk_1B62379F0);
    sub_1B60624F4();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = v2;
    *(v25 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v9);
  }
}

void sub_1B611B490()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925058, &qword_1B6226788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98, &qword_1B622D190);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = MEMORY[0x1B8C91460](v4);
  v8 = v0;
  sub_1B61409A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v6, &qword_1EB925F98, &qword_1B622D190);
    v10 = v1;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v33;
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = v8;
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 136446467;
      v18 = &v6[*(v14 + 56)];
      v19 = *v18;
      v20 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v6, &qword_1EB925F98, &qword_1B622D190);
      v21 = sub_1B602EEB0(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2081;
      v34 = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v35);
      v14 = v33;

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to create response model for request: %{public}s with error: %{private}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      v8 = v16;
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v15, -1, -1);
    }

    else
    {

      sub_1B61540AC(v6, &qword_1EB925F98, &qword_1B622D190);
    }

    v27 = *(v8 + *(v14 + 60));
    v28 = type metadata accessor for WeatherAlert(0);
    v29 = v32;
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v28);
    v27(v29);
    sub_1B61540AC(v29, &qword_1EB925058, &qword_1B6226788);
    sub_1B60624F4();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v1;
    *(v30 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1B611B890()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F70, &qword_1B6230470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F78, &qword_1B622D100);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = MEMORY[0x1B8C91460](v4);
  v8 = v0;
  sub_1B61409A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v6, &qword_1EB925F78, &qword_1B622D100);
    v10 = v1;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v33;
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = v8;
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 136446467;
      v18 = &v6[*(v14 + 56)];
      v19 = *v18;
      v20 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v6, &qword_1EB925F78, &qword_1B622D100);
      v21 = sub_1B602EEB0(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2081;
      v34 = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v35);
      v14 = v33;

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to create response model for request: %{public}s with error: %{private}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      v8 = v16;
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v15, -1, -1);
    }

    else
    {

      sub_1B61540AC(v6, &qword_1EB925F78, &qword_1B622D100);
    }

    v27 = *(v8 + *(v14 + 60));
    v28 = type metadata accessor for DailyWeatherStatistics(0);
    v29 = v32;
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v28);
    v27(v29);
    sub_1B61540AC(v29, &qword_1EB925F70, &qword_1B6230470);
    sub_1B60624F4();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v1;
    *(v30 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1B611BC90()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A0, &qword_1B6226F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F30, &qword_1B622CFE0);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = MEMORY[0x1B8C91460](v4);
  v8 = v0;
  sub_1B61409A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v6, &qword_1EB925F30, &qword_1B622CFE0);
    v10 = v1;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v33;
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = v8;
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 136446467;
      v18 = &v6[*(v14 + 56)];
      v19 = *v18;
      v20 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v6, &qword_1EB925F30, &qword_1B622CFE0);
      v21 = sub_1B602EEB0(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2081;
      v34 = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v35);
      v14 = v33;

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to create response model for request: %{public}s with error: %{private}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      v8 = v16;
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v15, -1, -1);
    }

    else
    {

      sub_1B61540AC(v6, &qword_1EB925F30, &qword_1B622CFE0);
    }

    v27 = *(v8 + *(v14 + 60));
    v28 = type metadata accessor for HourlyWeatherStatistics(0);
    v29 = v32;
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v28);
    v27(v29);
    sub_1B61540AC(v29, &qword_1EB9252A0, &qword_1B6226F20);
    sub_1B60624F4();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v1;
    *(v30 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1B611C090()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925888, &qword_1B622A020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F18, &qword_1B622CF50);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = MEMORY[0x1B8C91460](v4);
  v8 = v0;
  sub_1B61409A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v6, &qword_1EB925F18, &qword_1B622CF50);
    v10 = v1;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v33;
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = v8;
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 136446467;
      v18 = &v6[*(v14 + 56)];
      v19 = *v18;
      v20 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v6, &qword_1EB925F18, &qword_1B622CF50);
      v21 = sub_1B602EEB0(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2081;
      v34 = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v35);
      v14 = v33;

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to create response model for request: %{public}s with error: %{private}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      v8 = v16;
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v15, -1, -1);
    }

    else
    {

      sub_1B61540AC(v6, &qword_1EB925F18, &qword_1B622CF50);
    }

    v27 = *(v8 + *(v14 + 60));
    v28 = type metadata accessor for MonthlyWeatherStatistics(0);
    v29 = v32;
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v28);
    v27(v29);
    sub_1B61540AC(v29, &qword_1EB925888, &qword_1B622A020);
    sub_1B60624F4();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v1;
    *(v30 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v7);
  }
}

void sub_1B611C490(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00, &qword_1B622CE68);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - v7;
  v9 = MEMORY[0x1B8C91460](v6);
  sub_1B613FE28(v3, a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v9);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6220B34();
    __swift_project_value_buffer(v10, qword_1EDAC2AB0);
    sub_1B603AA48(v3, v8, &qword_1EB925F00, &qword_1B622CE68);
    v11 = v2;
    v12 = sub_1B6220B14();
    v13 = sub_1B62217E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      v27 = v26[0];
      *v14 = 136446467;
      v15 = &v8[*(v5 + 56)];
      v17 = *v15;
      v16 = v15[1];
      sub_1B6220784();
      sub_1B61540AC(v8, &qword_1EB925F00, &qword_1B622CE68);
      v18 = sub_1B602EEB0(v17, v16, &v27);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2081;
      v26[1] = v2;
      v19 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v20 = sub_1B6221234();
      v22 = sub_1B602EEB0(v20, v21, &v27);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B6020000, v12, v13, "Failed to create response model for request: %{public}s with error: %{private}s", v14, 0x16u);
      v23 = v26[0];
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v23, -1, -1);
      MEMORY[0x1B8C91C90](v14, -1, -1);
    }

    else
    {

      sub_1B61540AC(v8, &qword_1EB925F00, &qword_1B622CE68);
    }

    v24 = *(v3 + *(v5 + 60));
    v27 = 0xF000000000000007;
    v24(&v27);
    sub_1B615206C(v27);
    sub_1B60624F4();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = v2;
    *(v25 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v9);
  }
}

void sub_1B611C7B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0, &qword_1B62267F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68, &unk_1B622CB80);
  v4 = MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = MEMORY[0x1B8C91460](v4);
  v8 = v0;
  sub_1B61409A8();
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v6, &qword_1EB925E68, &unk_1B622CB80);
    v10 = v1;
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v33;
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = v8;
      v17 = swift_slowAlloc();
      v35 = v17;
      *v15 = 136446467;
      v18 = &v6[*(v14 + 56)];
      v19 = *v18;
      v20 = v18[1];
      sub_1B6220784();
      sub_1B61540AC(v6, &qword_1EB925E68, &unk_1B622CB80);
      v21 = sub_1B602EEB0(v19, v20, &v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2081;
      v34 = v1;
      v22 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v23 = sub_1B6221234();
      v25 = sub_1B602EEB0(v23, v24, &v35);
      v14 = v33;

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B6020000, v11, v12, "Failed to create response model for request: %{public}s with error: %{private}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      v8 = v16;
      MEMORY[0x1B8C91C90](v26, -1, -1);
      MEMORY[0x1B8C91C90](v15, -1, -1);
    }

    else
    {

      sub_1B61540AC(v6, &qword_1EB925E68, &unk_1B622CB80);
    }

    v27 = *(v8 + *(v14 + 60));
    v28 = type metadata accessor for Weather(0);
    v29 = v32;
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v28);
    v27(v29);
    sub_1B61540AC(v29, &qword_1EB9250C0, &qword_1B62267F0);
    sub_1B60624F4();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v1;
    *(v30 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_1B611CBB0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = MEMORY[0x1B8C91460](v9);
  v44 = v4;
  sub_1B614146C();
  v14 = v13;
  if (v5)
  {
    objc_autoreleasePoolPop(v12);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v15 = sub_1B6220B34();
    __swift_project_value_buffer(v15, qword_1EDAC2AB0);
    sub_1B603AA48(v44, v11, a1, a2);
    v16 = v5;
    v17 = sub_1B6220B14();
    v18 = sub_1B62217E4();

    v19 = OUTLINED_FUNCTION_237();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v43;
    if (v21)
    {
      OUTLINED_FUNCTION_110();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_233();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v23 = 136446467;
      v42 = v14;
      sub_1B6220784();
      v24 = OUTLINED_FUNCTION_360();
      sub_1B61540AC(v24, v25, a2);
      v26 = OUTLINED_FUNCTION_244();
      v29 = sub_1B602EEB0(v26, v27, v28);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2081;
      v45 = v5;
      v30 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v31 = sub_1B6221234();
      v33 = sub_1B602EEB0(v31, v32, &v46);
      v14 = v42;

      *(v23 + 14) = v33;
      v22 = v43;
      _os_log_impl(&dword_1B6020000, v17, v18, "Failed to create response model for request: %{public}s with error: %{private}s", v23, 0x16u);
      swift_arrayDestroy();
      v34 = OUTLINED_FUNCTION_118_0();
      MEMORY[0x1B8C91C90](v34);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    else
    {

      v35 = OUTLINED_FUNCTION_360();
      sub_1B61540AC(v35, v36, a2);
    }

    v37 = *(v44 + *(v22 + 60));
    v46 = 0;
    v37(&v46);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    swift_allocError();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *v38 = v5;
    *(v38 + 24) = 2;
    swift_willThrow();
  }

  else
  {
    objc_autoreleasePoolPop(v12);
  }

  return v14;
}

uint64_t sub_1B611CE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1B621D944();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
    a4 = sub_1B621D904();
    v17 = v18;
    v14 = (*(v13 + 8))(v16, v12);
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v21 - 4) = v6;
  *(&v21 - 3) = v22;
  *(&v21 - 2) = a4;
  *(&v21 - 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EC8, &qword_1B622CD38);
  swift_allocObject();
  sub_1B6220784();
  v19 = sub_1B62209D4();

  return v19;
}

double sub_1B611D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler + 24);
  v15 = *(a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler), v14);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = a10;
  v17[8] = a1;
  v17[9] = a2;
  v17[10] = a3;
  v17[11] = a4;
  v18 = *(v15 + 8);
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();

  v18(&unk_1B622CD48, v17, MEMORY[0x1E69E7CA8] + 8, v14, v15);

  return result;
}

uint64_t sub_1B611D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 112) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 56) = a2;
  *(v8 + 136) = type metadata accessor for NetworkTelemetry(0);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED0, &qword_1B622CD58);
  *(v8 + 160) = swift_task_alloc();
  v9 = sub_1B621D8F4();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B611D2E8, 0, 0);
}

uint64_t sub_1B611D2E8()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_119_0();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1B621D8E4();

    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    v0[26] = v3;
    *v3 = v4;
    v3[1] = sub_1B611D428;
    v5 = v0[20];
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[8];

    return sub_1B611A8F0(v5, v10, v8, v9, v6, v7, &unk_1B622CD68, v2);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v12();
  }
}

uint64_t sub_1B611D428()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B611D9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_349();
  v19 = *(v16 + 216);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v20 = sub_1B6220B34();
  OUTLINED_FUNCTION_88_0(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  v21 = v19;
  v22 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_424();

  if (OUTLINED_FUNCTION_525())
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_427();
    OUTLINED_FUNCTION_81_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_504();
    v29 = OUTLINED_FUNCTION_290(4.8752e-34, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_286(v29);
    v30 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_489(v30);
    OUTLINED_FUNCTION_218();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_1B61540AC(v18, &qword_1EB924E68, &unk_1B6226DD0);
    v36 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v36);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v37 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v37);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v38 = *(v16 + 168);
  v39 = *(v16 + 144);
  v40 = OUTLINED_FUNCTION_46_3(*(v16 + 200));
  v41(v40);
  sub_1B621D8E4();
  OUTLINED_FUNCTION_599();
  v42 = OUTLINED_FUNCTION_100_0();
  v43(v42);
  v44 = type metadata accessor for NetworkOperationTelemetry(0);
  OUTLINED_FUNCTION_51_1(v44);
  OUTLINED_FUNCTION_401();
  v45 = OUTLINED_FUNCTION_163();
  v38(v45);
  OUTLINED_FUNCTION_2_33();
  sub_1B6153250();
  OUTLINED_FUNCTION_610();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  if (OUTLINED_FUNCTION_297(v46, v47, v46, &type metadata for RetriedError))
  {
    OUTLINED_FUNCTION_476();
    OUTLINED_FUNCTION_612();
    if (!v39)
    {
      v48 = v19;
      v39 = v19;
    }

    (*(v16 + 120))(v39);

    v49 = OUTLINED_FUNCTION_264();
    a11(v49);
  }

  else
  {
    (*(v16 + 120))(v19);

    v50 = OUTLINED_FUNCTION_27();
    a11(v50);
  }

  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_296();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B611DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_1B60D7AB4;

  return sub_1B611DD74(a1, a2, a3, a4, a5, a6, a7 & 1, a8);
}

uint64_t sub_1B611DD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 289) = v15;
  *(v9 + 192) = v14;
  *(v9 + 200) = v8;
  *(v9 + 176) = a8;
  *(v9 + 184) = v13;
  *(v9 + 288) = a7;
  *(v9 + 160) = a5;
  *(v9 + 168) = a6;
  *(v9 + 144) = a3;
  *(v9 + 152) = a4;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  v10 = sub_1B621D284();
  *(v9 + 208) = v10;
  *(v9 + 216) = *(v10 - 8);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B611DE64, 0, 0);
}

uint64_t sub_1B611DE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_318();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_349();
  a22 = v24;
  v27 = 0;
  sub_1B6123284(*(v24 + 136), *(v24 + 144), *(v24 + 152), *(v24 + 160), *(v24 + 176), *(v24 + 184), *(v24 + 232));
  v29 = *(v24 + 152);
  v28 = *(v24 + 160);
  sub_1B621D1F4();
  v30 = OUTLINED_FUNCTION_244();
  sub_1B60EF358(v30, v31, v28);
  if (v32 >> 60 != 15)
  {
    OUTLINED_FUNCTION_519();
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v33 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v33, qword_1EDAC2AB0);
    sub_1B6220784();
    v34 = OUTLINED_FUNCTION_232();
    sub_1B6151DF0(v34, v35);
    v36 = sub_1B6220B14();
    v37 = sub_1B62217F4();

    v38 = OUTLINED_FUNCTION_232();
    sub_1B602FF58(v38, v39);
    if (!os_log_type_enabled(v36, v37))
    {

LABEL_15:
      OUTLINED_FUNCTION_232();
      sub_1B621D264();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_8_2();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    a11 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_13(7.2226e-34);
    v41 = OUTLINED_FUNCTION_390();
    *(v40 + 14) = sub_1B602EEB0(v41, v42, v43);
    *(v40 + 22) = 2080;
    v44 = OUTLINED_FUNCTION_232();
    sub_1B604D8AC(v44, v45);
    v46 = OUTLINED_FUNCTION_232();
    sub_1B60622F8(v46, v47);
    if (!v48)
    {
      *(v24 + 96) = v28;
      *(v24 + 104) = v29;
      v49 = OUTLINED_FUNCTION_232();
      sub_1B604D8AC(v49, v50);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E70, &qword_1B622CC08);
      if (OUTLINED_FUNCTION_453(v51, v52, MEMORY[0x1E6969080], v51))
      {
        OUTLINED_FUNCTION_587();
        v27 = *(v24 + 48);
        __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
        if (sub_1B6221CC4())
        {
          v53 = OUTLINED_FUNCTION_232();
          sub_1B602FF58(v53, v54);
          __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
          OUTLINED_FUNCTION_7_19();
          v27 = 0;
          sub_1B6221CB4();
          __swift_destroy_boxed_opaque_existential_1((v24 + 16));
LABEL_14:
          v59 = OUTLINED_FUNCTION_390();
          sub_1B602EEB0(v59, v60, v61);
          OUTLINED_FUNCTION_612();
          *(v40 + 24) = v27;
          OUTLINED_FUNCTION_477(&dword_1B6020000, v36, v37, "Will POST in request: %{private,mask.hash}s, Body=%s");
          OUTLINED_FUNCTION_454();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();

          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_1((v24 + 16));
      }

      else
      {
        OUTLINED_FUNCTION_154();
        sub_1B61540AC(v24 + 56, &qword_1EB925E78, &unk_1B622CC10);
      }

      v55 = OUTLINED_FUNCTION_232();
      sub_1B614A8D8(v55, v56);
    }

    v57 = OUTLINED_FUNCTION_232();
    sub_1B602FF58(v57, v58);
    goto LABEL_14;
  }

LABEL_16:
  if ((*(v24 + 288) & 1) == 0)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v62 = sub_1B6220B34();
    OUTLINED_FUNCTION_88_0(v62, qword_1EDAC2AB0);
    sub_1B6220784();
    v63 = sub_1B6220B14();
    sub_1B62217F4();
    OUTLINED_FUNCTION_230();

    v64 = OUTLINED_FUNCTION_237();
    if (os_log_type_enabled(v64, v65))
    {
      v67 = *(v24 + 176);
      v66 = *(v24 + 184);
      OUTLINED_FUNCTION_110();
      v68 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v69 = swift_slowAlloc();
      a11 = v69;
      *v68 = 136315394;
      v70 = sub_1B602EEB0(v67, v66, &a11);
      OUTLINED_FUNCTION_65_0(v70);
      OUTLINED_FUNCTION_94_0();
      _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v76 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v76);
      v77 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v77);
    }

    sub_1B621D204();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v24 + 240) = v78;
  *v78 = v79;
  v78[1] = sub_1B611E2C0;
  OUTLINED_FUNCTION_296();

  return sub_1B60AB264(v80, v81);
}

uint64_t sub_1B611E2C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611E3B8()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_75();
  v0[32] = v1;
  v0[33] = v2;
  v3 = OUTLINED_FUNCTION_302();
  v4(v3);
  v5 = OUTLINED_FUNCTION_76_0();
  v6(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  v0[34] = v7;
  *v7 = v8;
  v7[1] = sub_1B611E4A0;
  v9 = v0[29];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[16];

  return sub_1B61301B4(v16, v14, v9, v10, v11, v15, v12, v13);
}

uint64_t sub_1B611E4A0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B611E598()
{
  OUTLINED_FUNCTION_11();
  (*(v0[27] + 8))(v0[29], v0[26]);

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B611E614()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B611E688()
{
  OUTLINED_FUNCTION_11();
  (*(v0 + 256))(*(v0 + 232), *(v0 + 208));

  OUTLINED_FUNCTION_3_17();

  return v1();
}

uint64_t sub_1B611E6FC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8, &qword_1B622CD78);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  if (sub_1B6175390(*(v0 + *(v5 + 40)), *(v0 + *(v5 + 40) + 8)))
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v6 = sub_1B6220B34();
    __swift_project_value_buffer(v6, qword_1EDAC2AB0);
    sub_1B603AA48(v0, v4, &qword_1EB925ED8, &qword_1B622CD78);
    v7 = sub_1B6220B14();
    v8 = sub_1B62217C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = &v4[*(v2 + 56)];
      v12 = *v11;
      v13 = v11[1];
      sub_1B6220784();
      sub_1B61540AC(v4, &qword_1EB925ED8, &qword_1B622CD78);
      v14 = sub_1B602EEB0(v12, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B6020000, v7, v8, "Request contained no response data; skipping model conversion: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1B8C91C90](v10, -1, -1);
      MEMORY[0x1B8C91C90](v9, -1, -1);
    }

    else
    {

      sub_1B61540AC(v4, &qword_1EB925ED8, &qword_1B622CD78);
    }

    return 0;
  }

  else
  {
    result = sub_1B611CBB0(&qword_1EB925ED8, &qword_1B622CD78, sub_1B6144AA4, sub_1B6145EB0);
    if (v1)
    {
      return v16;
    }
  }

  return result;
}

void sub_1B611E970(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a1;
  v69 = a5;
  v10 = sub_1B621D634();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v76 = v18;
  v70 = v10;
  v19 = sub_1B6220B34();
  v20 = __swift_project_value_buffer(v19, qword_1EDAC2AB0);
  memcpy(__src, __dst, 0x41uLL);
  sub_1B6152A68(__src, v77);
  sub_1B6152A68(__src, v77);
  sub_1B6220784();
  v66 = v20;
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();

  sub_1B6152BE4(__src);
  v23 = os_log_type_enabled(v21, v22);
  v71 = v11;
  v74 = a3;
  v67 = v15;
  v75 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v80 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B602EEB0(a3, a4, &v80);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    memcpy(v77, __src, 0x41uLL);
    v26 = sub_1B6221234();
    v28 = sub_1B602EEB0(v26, v27, &v80);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B6020000, v21, v22, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v25, -1, -1);
    MEMORY[0x1B8C91C90](v24, -1, -1);
  }

  else
  {

    sub_1B6152BE4(__src);
  }

  v29 = __src[7];
  v30 = __src[8];
  v65 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v77[0]) = *(v6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v31 = unk_1EB927E70;
  v72 = *aSummary_0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
  v33 = v6;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B6225510;
  sub_1B6220784();
  v81.value = v29;
  v81.is_nil = v30;
  v35 = CLLocationCoordinate2D.path(with:)(v81);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1B6035A98();
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  v37 = sub_1B6221204();
  v39 = v38;
  v40 = sub_1B60F7D98();
  v41 = v76;
  v42 = v73;
  sub_1B6038CD0(v74, v75, v72, v31, v37, v39, v40, v76);
  if (v42)
  {

    return;
  }

  v62 = v36;
  v72 = v32;
  v73 = v33;

  v43 = v71;
  v44 = v67;
  v45 = v70;
  v63 = *(v71 + 16);
  v63(v67, v41, v70);
  sub_1B6220784();
  v46 = sub_1B6220B14();
  v47 = sub_1B62217D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77[0] = v66;
    *v49 = 136380931;
    sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
    v50 = sub_1B6221F04();
    v52 = v51;
    v67 = *(v71 + 8);
    v67(v48, v45);
    v53 = sub_1B602EEB0(v50, v52, v77);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1B602EEB0(v74, v75, v77);
    _os_log_impl(&dword_1B6020000, v46, v47, "Constructed URL: %{private}s for request: %{public}s", v49, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v54, -1, -1);
    MEMORY[0x1B8C91C90](v49, -1, -1);
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v44, v45);
  }

  v63(v68, v76, v45);
  sub_1B621D234();
  sub_1B621D254();
  if (*(v73 + v65))
  {
    if (*(v73 + v65) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B605FB0C(4);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v77[0] & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v77[0] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F58, &qword_1B622D0B0);
      v55 = sub_1B6221234();
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B6227640;
      v59 = MEMORY[0x1E69E6158];
      v60 = v62;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v60;
      *(v58 + 32) = 13174;
      *(v58 + 40) = 0xE200000000000000;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 72) = v55;
      *(v58 + 80) = v57;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v58);
    }
  }

LABEL_20:
  v67(v76, v45);
}

void sub_1B611F294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64[0] = a1;
  v67 = a8;
  v74 = sub_1B621D634();
  v68 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v70 = a4;
  v20 = a2;
  v76 = v19;
  v21 = sub_1B6220B34();
  v22 = __swift_project_value_buffer(v21, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v64[1] = v22;
  v23 = sub_1B6220B14();
  v24 = sub_1B62217F4();

  v25 = os_log_type_enabled(v23, v24);
  v73 = a3;
  v75 = a7;
  v69 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v81 = v27;
    *v26 = 136446723;
    *(v26 + 4) = sub_1B602EEB0(a6, a7, &v81);
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2081;
    v77 = v20;
    v78 = v73;
    v28 = v70;
    v79 = v70;
    v80 = a5;
    sub_1B6220784();
    sub_1B6220784();
    v29 = sub_1B6221234();
    v31 = sub_1B602EEB0(v29, v30, &v81);

    *(v26 + 24) = v31;
    _os_log_impl(&dword_1B6020000, v23, v24, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v27, -1, -1);
    MEMORY[0x1B8C91C90](v26, -1, -1);
  }

  else
  {

    v28 = v70;
  }

  v32 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v81) = *(v72 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v33 = qword_1EB925B20;
  v34 = unk_1EB925B28;
  v77 = v28;
  v78 = a5;
  sub_1B6220784();
  sub_1B6220784();
  MEMORY[0x1B8C90530](47, 0xE100000000000000);
  MEMORY[0x1B8C90530](v69, v73);
  v35 = v76;
  v36 = v71;
  sub_1B6038CD0(a6, v75, v33, v34, v77, v78, 0, v76);

  if (!v36)
  {
    v37 = a6;
    v73 = v32;
    v38 = v68;
    v39 = v65;
    v71 = *(v68 + 16);
    v71(v65, v35, v74);
    sub_1B6220784();
    v40 = sub_1B6220B14();
    v41 = sub_1B62217D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v42 = 136380931;
      sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
      LODWORD(v69) = v41;
      v43 = v74;
      v44 = sub_1B6221F04();
      v45 = v43;
      v47 = v46;
      v48 = *(v68 + 8);
      v48(v39, v45);
      v49 = sub_1B602EEB0(v44, v47, &v77);
      v50 = v48;

      *(v42 + 4) = v49;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_1B602EEB0(v37, v75, &v77);
      _os_log_impl(&dword_1B6020000, v40, v69, "Constructed URL: %{private}s for request: %{public}s", v42, 0x16u);
      v51 = v70;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v51, -1, -1);
      MEMORY[0x1B8C91C90](v42, -1, -1);
    }

    else
    {

      v50 = *(v38 + 8);
      v50(v39, v74);
    }

    v52 = v72;
    v71(v66, v76, v74);
    sub_1B621D234();
    sub_1B621D254();
    v53 = *(v52 + v73);
    if (*(v52 + v73) && (v53 != 1 || (static Settings.Daemon.requestFlatbuffers.getter() & 1) != 0))
    {
      v77 = v64[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FC0, &qword_1B622D328);
      v54 = sub_1B6221234();
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      v57 = swift_allocObject();
      v58 = v57;
      *(v57 + 16) = xmmword_1B6227640;
      v59 = v53 == 2;
      if (v53 == 2)
      {
        v60 = 13174;
      }

      else
      {
        v60 = 0x32762F697061;
      }

      if (v59)
      {
        v61 = 0xE200000000000000;
      }

      else
      {
        v61 = 0xE600000000000000;
      }

      v62 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v63 = sub_1B6035A98();
      v58[4] = v60;
      v58[5] = v61;
      v58[12] = v62;
      v58[13] = v63;
      v58[8] = v63;
      v58[9] = v54;
      v58[10] = v56;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v58);
    }

    v50(v76, v74);
  }
}

void sub_1B611F980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a1;
  v68 = a5;
  v8 = sub_1B621D634();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v76 = v15;
  v70 = v8;
  v16 = sub_1B6220B34();
  v17 = __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  v72 = *(a2 + 16);
  v18 = *(a2 + 24);
  v82 = v18;
  v80[0] = *(a2 + 25);
  *(v80 + 15) = *(a2 + 40);
  sub_1B6220784();
  sub_1B605B798(a2, v79);
  v65 = v17;
  v19 = sub_1B6220B14();
  v20 = sub_1B62217F4();

  sub_1B605C4AC(a2);
  v21 = os_log_type_enabled(v19, v20);
  v71 = v9;
  v75 = a4;
  if (v21)
  {
    v81 = *(v80 + 7);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78 = v23;
    *v22 = 136446723;
    *(v22 + 4) = sub_1B602EEB0(a3, a4, &v78);
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v24 = *(a2 + 16);
    v79[0] = *a2;
    v79[1] = v24;
    v79[2] = *(a2 + 32);
    sub_1B603AA48(&v81, v77, &qword_1EB925FE0, &qword_1B622D410);
    v25 = sub_1B6221234();
    v69 = a3;
    v27 = sub_1B602EEB0(v25, v26, &v78);

    *(v22 + 24) = v27;
    _os_log_impl(&dword_1B6020000, v19, v20, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v23, -1, -1);
    MEMORY[0x1B8C91C90](v22, -1, -1);

    v18 = v82;
    v28 = v69;
  }

  else
  {

    v28 = a3;
  }

  v64 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v79[0]) = *(v74 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v29 = aAvailability[0];
  v30 = aAvailability[1];
  sub_1B6220784();
  v83.is_nil = v18 & 1;
  v83.value = v72;
  v31 = CLLocationCoordinate2D.path(with:)(v83);
  v32 = sub_1B605C6B0();
  v33 = v76;
  v34 = v73;
  sub_1B6038CD0(v28, v75, v29, v30, v31._countAndFlagsBits, v31._object, v32, v76);
  if (v34)
  {
  }

  else
  {
    v69 = v28;

    v35 = v71;
    v36 = v66;
    v37 = v70;
    v72 = *(v71 + 16);
    v72(v66, v33, v70);
    sub_1B6220784();
    v38 = sub_1B6220B14();
    v39 = sub_1B62217D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v36;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v79[0] = v42;
      *v41 = 136380931;
      sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
      v43 = sub_1B6221F04();
      v45 = v44;
      v73 = *(v71 + 8);
      v73(v40, v70);
      v46 = sub_1B602EEB0(v43, v45, v79);
      v47 = v70;

      *(v41 + 4) = v46;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_1B602EEB0(v69, v75, v79);
      _os_log_impl(&dword_1B6020000, v38, v39, "Constructed URL: %{private}s for request: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      v48 = v42;
      v37 = v47;
      MEMORY[0x1B8C91C90](v48, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    else
    {

      v73 = *(v35 + 8);
      v73(v36, v37);
    }

    v49 = v74;
    v72(v67, v76, v37);
    sub_1B621D234();
    sub_1B621D254();
    v50 = *(v49 + v64);
    if (*(v49 + v64) && (v50 != 1 || (static Settings.Daemon.requestFlatbuffers.getter() & 1) != 0))
    {
      v51 = v37;
      *&v79[0] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FE8, &qword_1B622D418);
      v52 = sub_1B6221234();
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      v55 = swift_allocObject();
      v56 = v55;
      *(v55 + 16) = xmmword_1B6227640;
      v57 = v50 == 2;
      if (v50 == 2)
      {
        v58 = 13174;
      }

      else
      {
        v58 = 0x32762F697061;
      }

      if (v57)
      {
        v59 = 0xE200000000000000;
      }

      else
      {
        v59 = 0xE600000000000000;
      }

      v60 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1B6035A98();
      v56[4] = v58;
      v56[5] = v59;
      v56[12] = v60;
      v56[13] = v61;
      v56[8] = v61;
      v56[9] = v52;
      v56[10] = v54;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v56);

      v37 = v51;
    }

    v73(v76, v37);
  }
}

void sub_1B6120168(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v80 = a3;
  v66 = a1;
  v71 = a5;
  v9 = sub_1B621D634();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6220B34();
  v17 = __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  v18 = *a2;
  v19 = *(a2 + 8);
  v83[0] = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v74 = v18;
  v75 = v20;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6153380(v83, v81);
  sub_1B6220784();
  v68 = v17;
  v22 = sub_1B6220B14();
  v23 = sub_1B62217F4();

  sub_1B61537E4(v83);
  v78 = v21;

  v24 = os_log_type_enabled(v22, v23);
  v72 = v9;
  v79 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v84 = v26;
    *v25 = 136446723;
    *(v25 + 4) = sub_1B602EEB0(v80, a4, &v84);
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2081;
    v27 = *(a2 + 16);
    v81[0] = *a2;
    v81[1] = v27;
    v81[2] = *(a2 + 32);
    sub_1B6220784();
    sub_1B6153380(v83, v82);
    sub_1B6220784();
    v28 = sub_1B6221234();
    v30 = sub_1B602EEB0(v28, v29, &v84);

    *(v25 + 24) = v30;
    _os_log_impl(&dword_1B6020000, v22, v23, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v26, -1, -1);
    MEMORY[0x1B8C91C90](v25, -1, -1);
  }

  v31 = a4;
  v73 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_endpoint;
  v67 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v84) = *(v6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v33 = aWeatheralert_1[0];
  v32 = aWeatheralert_1[1];
  v81[0] = v83[0];
  sub_1B6153380(v83, v82);
  sub_1B6220784();
  MEMORY[0x1B8C90530](47, 0xE100000000000000);
  MEMORY[0x1B8C90530](v74, v19);
  v34 = v81[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924928, &qword_1B622D230);
  sub_1B621D3A4();
  v35 = v6;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B6225510;
  sub_1B621D374();
  v37 = v79;
  v38 = v76;
  sub_1B6038CD0(v80, v31, v33, v32, v34, *(&v34 + 1), v36, v79);

  if (!v38)
  {
    v78 = v35;
    v39 = v77;
    v40 = v31;
    v41 = v69;
    v42 = v37;
    v43 = v72;
    v75 = *(v77 + 16);
    v75(v69, v42, v72);
    sub_1B6220784();
    v44 = sub_1B6220B14();
    v45 = sub_1B62217D4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v81[0] = v74;
      *v46 = 136380931;
      sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
      v47 = sub_1B6221F04();
      v48 = v41;
      v50 = v49;
      v76 = *(v77 + 8);
      v76(v48, v43);
      v51 = sub_1B602EEB0(v47, v50, v81);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_1B602EEB0(v80, v40, v81);
      _os_log_impl(&dword_1B6020000, v44, v45, "Constructed URL: %{private}s for request: %{public}s", v46, 0x16u);
      v52 = v74;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v52, -1, -1);
      MEMORY[0x1B8C91C90](v46, -1, -1);
    }

    else
    {

      v76 = *(v39 + 8);
      v76(v41, v43);
    }

    v53 = v67;
    v75(v70, v79, v43);
    sub_1B621D234();
    sub_1B621D254();
    v54 = *(v78 + v53);
    if (*(v78 + v53) && (v54 != 1 || (static Settings.Daemon.requestFlatbuffers.getter() & 1) != 0))
    {
      *&v81[0] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FA0, &qword_1B622D238);
      v55 = sub_1B6221234();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      v58 = swift_allocObject();
      v59 = v58;
      *(v58 + 16) = xmmword_1B6227640;
      v60 = v54 == 2;
      if (v54 == 2)
      {
        v61 = 13174;
      }

      else
      {
        v61 = 0x32762F697061;
      }

      if (v60)
      {
        v62 = 0xE200000000000000;
      }

      else
      {
        v62 = 0xE600000000000000;
      }

      v63 = MEMORY[0x1E69E6158];
      *(v58 + 56) = MEMORY[0x1E69E6158];
      v64 = sub_1B6035A98();
      v59[4] = v61;
      v59[5] = v62;
      v59[12] = v63;
      v59[13] = v64;
      v59[8] = v64;
      v59[9] = v55;
      v59[10] = v57;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v59);

      v43 = v72;
    }

    v76(v79, v43);
  }
}

void sub_1B612095C(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a1;
  v69 = a5;
  v10 = sub_1B621D634();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v76 = v18;
  v70 = v10;
  v19 = sub_1B6220B34();
  v20 = __swift_project_value_buffer(v19, qword_1EDAC2AB0);
  memcpy(__src, __dst, 0x41uLL);
  sub_1B6152D7C(__src, v77);
  sub_1B6152D7C(__src, v77);
  sub_1B6220784();
  v66 = v20;
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();

  sub_1B610AF28(__src);
  v23 = os_log_type_enabled(v21, v22);
  v71 = v11;
  v74 = a3;
  v67 = v15;
  v75 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v80 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B602EEB0(a3, a4, &v80);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    memcpy(v77, __src, 0x41uLL);
    v26 = sub_1B6221234();
    v28 = sub_1B602EEB0(v26, v27, &v80);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B6020000, v21, v22, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v25, -1, -1);
    MEMORY[0x1B8C91C90](v24, -1, -1);
  }

  else
  {
    sub_1B610AF28(__src);
  }

  v29 = __src[7];
  v30 = __src[8];
  v65 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v77[0]) = *(v6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v31 = aStatistics[1];
  v72 = aStatistics[0];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
  v33 = v6;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B6225510;
  sub_1B6220784();
  v81.value = v29;
  v81.is_nil = v30;
  v35 = CLLocationCoordinate2D.path(with:)(v81);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1B6035A98();
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  v37 = sub_1B6221204();
  v39 = v38;
  v40 = sub_1B60FAF58();
  v41 = v76;
  v42 = v73;
  sub_1B6038CD0(v74, v75, v72, v31, v37, v39, v40, v76);
  if (v42)
  {

    return;
  }

  v62 = v36;
  v72 = v32;
  v73 = v33;

  v43 = v71;
  v44 = v67;
  v45 = v70;
  v63 = *(v71 + 16);
  v63(v67, v41, v70);
  sub_1B6220784();
  v46 = sub_1B6220B14();
  v47 = sub_1B62217D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77[0] = v66;
    *v49 = 136380931;
    sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
    v50 = sub_1B6221F04();
    v52 = v51;
    v67 = *(v71 + 8);
    v67(v48, v45);
    v53 = sub_1B602EEB0(v50, v52, v77);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1B602EEB0(v74, v75, v77);
    _os_log_impl(&dword_1B6020000, v46, v47, "Constructed URL: %{private}s for request: %{public}s", v49, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v54, -1, -1);
    MEMORY[0x1B8C91C90](v49, -1, -1);
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v44, v45);
  }

  v63(v68, v76, v45);
  sub_1B621D234();
  sub_1B621D254();
  if (*(v73 + v65))
  {
    if (*(v73 + v65) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B605FB0C(2);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v77[0] & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v77[0] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F80, &unk_1B622D140);
      v55 = sub_1B6221234();
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B6227640;
      v59 = MEMORY[0x1E69E6158];
      v60 = v62;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v60;
      *(v58 + 32) = 13174;
      *(v58 + 40) = 0xE200000000000000;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 72) = v55;
      *(v58 + 80) = v57;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v58);
    }
  }

LABEL_20:
  v67(v76, v45);
}

void sub_1B612127C(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a1;
  v69 = a5;
  v10 = sub_1B621D634();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v76 = v18;
  v70 = v10;
  v19 = sub_1B6220B34();
  v20 = __swift_project_value_buffer(v19, qword_1EDAC2AB0);
  memcpy(__src, __dst, 0x41uLL);
  sub_1B6152748(__src, v77);
  sub_1B6152748(__src, v77);
  sub_1B6220784();
  v66 = v20;
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();

  sub_1B6152938(__src);
  v23 = os_log_type_enabled(v21, v22);
  v71 = v11;
  v74 = a3;
  v67 = v15;
  v75 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v80 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B602EEB0(a3, a4, &v80);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    memcpy(v77, __src, 0x41uLL);
    v26 = sub_1B6221234();
    v28 = sub_1B602EEB0(v26, v27, &v80);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B6020000, v21, v22, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v25, -1, -1);
    MEMORY[0x1B8C91C90](v24, -1, -1);
  }

  else
  {
    sub_1B6152938(__src);
  }

  v29 = __src[7];
  v30 = __src[8];
  v65 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v77[0]) = *(v6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v31 = aStatistics_0[1];
  v72 = aStatistics_0[0];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
  v33 = v6;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B6225510;
  sub_1B6220784();
  v81.value = v29;
  v81.is_nil = v30;
  v35 = CLLocationCoordinate2D.path(with:)(v81);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1B6035A98();
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  v37 = sub_1B6221204();
  v39 = v38;
  v40 = sub_1B61A3408();
  v41 = v76;
  v42 = v73;
  sub_1B6038CD0(v74, v75, v72, v31, v37, v39, v40, v76);
  if (v42)
  {

    return;
  }

  v62 = v36;
  v72 = v32;
  v73 = v33;

  v43 = v71;
  v44 = v67;
  v45 = v70;
  v63 = *(v71 + 16);
  v63(v67, v41, v70);
  sub_1B6220784();
  v46 = sub_1B6220B14();
  v47 = sub_1B62217D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77[0] = v66;
    *v49 = 136380931;
    sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
    v50 = sub_1B6221F04();
    v52 = v51;
    v67 = *(v71 + 8);
    v67(v48, v45);
    v53 = sub_1B602EEB0(v50, v52, v77);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1B602EEB0(v74, v75, v77);
    _os_log_impl(&dword_1B6020000, v46, v47, "Constructed URL: %{private}s for request: %{public}s", v49, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v54, -1, -1);
    MEMORY[0x1B8C91C90](v49, -1, -1);
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v44, v45);
  }

  v63(v68, v76, v45);
  sub_1B621D234();
  sub_1B621D254();
  if (*(v73 + v65))
  {
    if (*(v73 + v65) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B605FB0C(1);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v77[0] & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v77[0] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F38, &unk_1B622D020);
      v55 = sub_1B6221234();
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B6227640;
      v59 = MEMORY[0x1E69E6158];
      v60 = v62;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v60;
      *(v58 + 32) = 13174;
      *(v58 + 40) = 0xE200000000000000;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 72) = v55;
      *(v58 + 80) = v57;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v58);
    }
  }

LABEL_20:
  v67(v76, v45);
}

void sub_1B6121BA0(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v64 = a1;
  v69 = a5;
  v10 = sub_1B621D634();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  memcpy(__dst, a2, sizeof(__dst));
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v76 = v18;
  v70 = v10;
  v19 = sub_1B6220B34();
  v20 = __swift_project_value_buffer(v19, qword_1EDAC2AB0);
  memcpy(__src, __dst, 0x41uLL);
  sub_1B61524F0(__src, v77);
  sub_1B61524F0(__src, v77);
  sub_1B6220784();
  v66 = v20;
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();

  sub_1B60C9208(__src);
  v23 = os_log_type_enabled(v21, v22);
  v71 = v11;
  v74 = a3;
  v67 = v15;
  v75 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v80 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B602EEB0(a3, a4, &v80);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    memcpy(v77, __src, 0x41uLL);
    v26 = sub_1B6221234();
    v28 = sub_1B602EEB0(v26, v27, &v80);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B6020000, v21, v22, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v25, -1, -1);
    MEMORY[0x1B8C91C90](v24, -1, -1);
  }

  else
  {
    sub_1B60C9208(__src);
  }

  v29 = __src[7];
  v30 = __src[8];
  v65 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v77[0]) = *(v6 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v31 = aStatistics_1[1];
  v72 = aStatistics_1[0];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
  v33 = v6;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B6225510;
  sub_1B6220784();
  v81.value = v29;
  v81.is_nil = v30;
  v35 = CLLocationCoordinate2D.path(with:)(v81);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1B6035A98();
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  v37 = sub_1B6221204();
  v39 = v38;
  v40 = sub_1B6173C8C();
  v41 = v76;
  v42 = v73;
  sub_1B6038CD0(v74, v75, v72, v31, v37, v39, v40, v76);
  if (v42)
  {

    return;
  }

  v62 = v36;
  v72 = v32;
  v73 = v33;

  v43 = v71;
  v44 = v67;
  v45 = v70;
  v63 = *(v71 + 16);
  v63(v67, v41, v70);
  sub_1B6220784();
  v46 = sub_1B6220B14();
  v47 = sub_1B62217D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v77[0] = v66;
    *v49 = 136380931;
    sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
    v50 = sub_1B6221F04();
    v52 = v51;
    v67 = *(v71 + 8);
    v67(v48, v45);
    v53 = sub_1B602EEB0(v50, v52, v77);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1B602EEB0(v74, v75, v77);
    _os_log_impl(&dword_1B6020000, v46, v47, "Constructed URL: %{private}s for request: %{public}s", v49, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v54, -1, -1);
    MEMORY[0x1B8C91C90](v49, -1, -1);
  }

  else
  {

    v67 = *(v43 + 8);
    v67(v44, v45);
  }

  v63(v68, v76, v45);
  sub_1B621D234();
  sub_1B621D254();
  if (*(v73 + v65))
  {
    if (*(v73 + v65) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B605FB0C(3);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v77[0] & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v77[0] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F20, &unk_1B622CF90);
      v55 = sub_1B6221234();
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B6227640;
      v59 = MEMORY[0x1E69E6158];
      v60 = v62;
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v60;
      *(v58 + 32) = 13174;
      *(v58 + 40) = 0xE200000000000000;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 72) = v55;
      *(v58 + 80) = v57;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v58);
    }
  }

LABEL_20:
  v67(v76, v45);
}

void sub_1B61224C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v66 = a1;
  v69 = a6;
  v12 = sub_1B621D634();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v62[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v62[-v17];
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v18 = sub_1B6220B34();
  v19 = __swift_project_value_buffer(v18, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v67 = v19;
  v20 = sub_1B6220B14();
  v21 = sub_1B62217F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v71 = v7;
    v23 = v22;
    v65 = swift_slowAlloc();
    v77 = v65;
    *v23 = 136446723;
    *(v23 + 4) = sub_1B602EEB0(a4, a5, &v77);
    *(v23 + 12) = 2160;
    *(v23 + 14) = 1752392040;
    *(v23 + 22) = 2081;
    v76[0] = a2;
    v76[1] = a3;
    sub_1B6220784();
    v24 = sub_1B6221234();
    v26 = sub_1B602EEB0(v24, v25, &v77);

    *(v23 + 24) = v26;
    v27 = v21;
    v28 = a4;
    _os_log_impl(&dword_1B6020000, v20, v27, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v23, 0x20u);
    v29 = v65;
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v29, -1, -1);
    v30 = v23;
    v7 = v71;
    MEMORY[0x1B8C91C90](v30, -1, -1);
  }

  else
  {

    v28 = a4;
  }

  v31 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v76[0]) = *(v7 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v33 = qword_1EB925190;
  v32 = off_1EB925198;
  sub_1B6220784();
  sub_1B6220784();
  v34 = v33;
  v35 = v72;
  sub_1B6038CD0(v28, a5, v34, v32, a2, a3, 0, v75);

  if (!v35)
  {
    v71 = v7;
    v72 = v28;
    v65 = *(v73 + 16);
    v65(v70, v75, v74);
    sub_1B6220784();
    v36 = sub_1B6220B14();
    v37 = sub_1B62217D4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v76[0] = v64;
      *v38 = 136380931;
      sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
      v63 = v37;
      v39 = v70;
      v40 = v74;
      v41 = sub_1B6221F04();
      v67 = a5;
      v42 = v40;
      v44 = v43;
      v45 = *(v73 + 8);
      v45(v39, v42);
      v46 = sub_1B602EEB0(v41, v44, v76);
      v47 = v45;
      v48 = v67;

      *(v38 + 4) = v46;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1B602EEB0(v72, v48, v76);
      _os_log_impl(&dword_1B6020000, v36, v63, "Constructed URL: %{private}s for request: %{public}s", v38, 0x16u);
      v49 = v64;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v49, -1, -1);
      MEMORY[0x1B8C91C90](v38, -1, -1);
    }

    else
    {

      v47 = *(v73 + 8);
      v47(v70, v74);
    }

    v65(v68, v75, v74);
    sub_1B621D234();
    sub_1B621D254();
    v50 = *(v71 + v31);
    if (v50 && (v50 != 1 || (static Settings.Daemon.requestFlatbuffers.getter() & 1) != 0))
    {
      v51 = v47;
      v76[0] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F08, &unk_1B622CF00);
      v52 = sub_1B6221234();
      v54 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      v55 = swift_allocObject();
      v56 = v55;
      *(v55 + 16) = xmmword_1B6227640;
      v57 = v50 == 2;
      if (v50 == 2)
      {
        v58 = 13174;
      }

      else
      {
        v58 = 0x32762F697061;
      }

      if (v57)
      {
        v59 = 0xE200000000000000;
      }

      else
      {
        v59 = 0xE600000000000000;
      }

      v60 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1B6035A98();
      v56[4] = v58;
      v56[5] = v59;
      v56[12] = v60;
      v56[13] = v61;
      v56[8] = v61;
      v56[9] = v52;
      v56[10] = v54;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v56);

      v47 = v51;
    }

    v47(v75, v74);
  }
}

void sub_1B6122B4C(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v74 = a6;
  v75 = a7;
  v84 = a4;
  v85 = a5;
  v9 = v8;
  v88 = a2;
  v73 = a1;
  sub_1B621D634();
  OUTLINED_FUNCTION_2();
  v82 = v13;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v79 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v73 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v73 - v18;
  type metadata accessor for WeatherRequest(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v21 = sub_1B6220B34();
  v22 = __swift_project_value_buffer(v21, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_3_25();
  v23 = OUTLINED_FUNCTION_516();
  sub_1B61531FC(v23, v24);
  sub_1B6220784();
  v76 = v22;
  v25 = sub_1B6220B14();
  v26 = sub_1B62217F4();

  v27 = OUTLINED_FUNCTION_552();
  v29 = os_log_type_enabled(v27, v28);
  v80 = a8;
  if (v29)
  {
    OUTLINED_FUNCTION_8_2();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    v31 = swift_slowAlloc();
    v81 = v9;
    v89 = v31;
    *v30 = 136446723;
    *(v30 + 4) = sub_1B602EEB0(v88, a3, &v89);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    OUTLINED_FUNCTION_3_25();
    v32 = OUTLINED_FUNCTION_665();
    sub_1B61531FC(v32, v33);
    OUTLINED_FUNCTION_510();
    sub_1B6221234();
    OUTLINED_FUNCTION_656();
    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
    v34 = OUTLINED_FUNCTION_510();
    v37 = sub_1B602EEB0(v34, v35, v36);

    *(v30 + 24) = v37;
    _os_log_impl(&dword_1B6020000, v25, v26, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v30, 0x20u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v9 = v81;
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    v38 = OUTLINED_FUNCTION_200();
    MEMORY[0x1B8C91C90](v38);
  }

  else
  {

    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
  }

  v77 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v89) = *(v9 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v39 = *v84;
  v40 = *v85;
  sub_1B6220784();
  v41 = sub_1B605F170();
  v43 = v42;
  v44 = sub_1B603AA90();
  v45 = v86;
  sub_1B6038CD0(v88, a3, v39, v40, v41, v43, v44, v87);
  if (v45)
  {

    return;
  }

  v86 = 0;
  v81 = v9;

  v46 = v82;
  v47 = v78;
  v48 = OUTLINED_FUNCTION_277();
  v49 = v83;
  v85 = v50;
  (v50)(v48);
  sub_1B6220784();
  v51 = sub_1B6220B14();
  v52 = sub_1B62217D4();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_122_0();
    v89 = swift_slowAlloc();
    *v9 = 136380931;
    OUTLINED_FUNCTION_6_18();
    sub_1B61532A0(v53, v54);
    sub_1B6221F04();
    v55 = v47;
    v56 = *(v82 + 8);
    v56(v55, v83);
    v57 = OUTLINED_FUNCTION_305();
    v60 = sub_1B602EEB0(v57, v58, v59);
    v49 = v83;

    *(v9 + 4) = v60;
    *(v9 + 12) = 2082;
    v61 = OUTLINED_FUNCTION_7_13();
    *(v9 + 14) = sub_1B602EEB0(v61, v62, v63);
    _os_log_impl(&dword_1B6020000, v51, v52, "Constructed URL: %{private}s for request: %{public}s", v9, 0x16u);
    OUTLINED_FUNCTION_416();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    v64 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v64);
  }

  else
  {

    v66 = v47;
    v56 = *(v46 + 8);
    v56(v66, v49);
  }

  v65 = v81;
  (v85)(v79, v87, v49);
  sub_1B621D234();
  OUTLINED_FUNCTION_7_13();
  sub_1B621D254();
  if (*(v65 + v77))
  {
    if (*(v65 + v77) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B605FB0C(0);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v89 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v89 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      v67 = sub_1B6221234();
      v69 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      OUTLINED_FUNCTION_245();
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1B6227640;
      v71 = MEMORY[0x1E69E6158];
      *(v70 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1B6035A98();
      *(v70 + 32) = 13174;
      *(v70 + 40) = 0xE200000000000000;
      *(v70 + 96) = v71;
      *(v70 + 104) = v72;
      *(v70 + 64) = v72;
      *(v70 + 72) = v67;
      *(v70 + 80) = v69;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v70);
    }
  }

LABEL_20:
  v56(v87, v49);
}

uint64_t sub_1B6123284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a7;
  v64 = a5;
  v56 = a1;
  v11 = sub_1B621D634();
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v53 - v17;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v58 = v15;
  v18 = sub_1B6220B34();
  v19 = __swift_project_value_buffer(v18, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v57 = v19;
  v20 = sub_1B6220B14();
  v21 = sub_1B62217F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55 = v11;
    v24 = v23;
    v67 = v23;
    *v22 = 136446723;
    v25 = v64;
    *(v22 + 4) = sub_1B602EEB0(v64, a6, &v67);
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v66[0] = a2;
    v66[1] = a3;
    v66[2] = a4;
    sub_1B6220784();
    sub_1B6220784();
    v26 = sub_1B6221234();
    v28 = sub_1B602EEB0(v26, v27, &v67);

    *(v22 + 24) = v28;
    _os_log_impl(&dword_1B6020000, v20, v21, "Attempting request with identifier: %{public}s for resource: %{private,mask.hash}s", v22, 0x20u);
    swift_arrayDestroy();
    v29 = v24;
    v11 = v55;
    MEMORY[0x1B8C91C90](v29, -1, -1);
    MEMORY[0x1B8C91C90](v22, -1, -1);
  }

  else
  {

    v25 = v64;
  }

  v30 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version;
  LOBYTE(v66[0]) = *(v65 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version);
  v31 = v63;
  v32 = v61;
  result = sub_1B6038CD0(v25, a6, 0x72656874616577, 0xE700000000000000, 0x6E6F697461636F6CLL, 0xE900000000000073, 0, v63);
  if (!v32)
  {
    v61 = 0;
    v34 = v58;
    v55 = *(v62 + 16);
    v55(v58, v31, v11);
    sub_1B6220784();
    v35 = sub_1B6220B14();
    v36 = sub_1B62217D4();

    LODWORD(v57) = v36;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v37 = 136380931;
      sub_1B61532A0(&qword_1EDAB2110, MEMORY[0x1E6968FB0]);
      v53 = v35;
      v38 = sub_1B6221F04();
      v39 = v11;
      v41 = v40;
      v58 = *(v62 + 8);
      v58(v34, v39);
      v42 = sub_1B602EEB0(v38, v41, v66);
      v11 = v39;

      *(v37 + 4) = v42;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_1B602EEB0(v64, a6, v66);
      v43 = v53;
      _os_log_impl(&dword_1B6020000, v53, v57, "Constructed URL: %{private}s for request: %{public}s", v37, 0x16u);
      v44 = v54;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v44, -1, -1);
      v45 = v37;
      v31 = v63;
      MEMORY[0x1B8C91C90](v45, -1, -1);
    }

    else
    {

      v58 = *(v62 + 8);
      v58(v34, v11);
    }

    v55(v59, v31, v11);
    sub_1B621D234();
    sub_1B621D254();
    sub_1B621D254();
    if (!*(v65 + v30))
    {
      return (v58)(v31, v11);
    }

    if (*(v65 + v30) == 1)
    {
      if ((static Settings.Daemon.requestFlatbuffers.getter() & 1) == 0)
      {
        return (v58)(v31, v11);
      }

      sub_1B605FB0C(6);
      sub_1B621D254();

      sub_1B621DC04();
      sub_1B621DBF4();
      if (qword_1EDAB0D60 != -1)
      {
        swift_once();
      }

      sub_1B621DBE4();

      if ((v66[0] & 1) == 0)
      {
        return (v58)(v31, v11);
      }

      sub_1B621E3C4();
      sub_1B621D254();
    }

    else
    {
      v66[0] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925EE0, &qword_1B622CE18);
      v46 = sub_1B6221234();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924678, &qword_1B622CB90);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1B6227640;
      v50 = v11;
      v51 = MEMORY[0x1E69E6158];
      *(v49 + 56) = MEMORY[0x1E69E6158];
      v52 = sub_1B6035A98();
      *(v49 + 32) = 13174;
      *(v49 + 40) = 0xE200000000000000;
      *(v49 + 96) = v51;
      *(v49 + 104) = v52;
      v11 = v50;
      *(v49 + 64) = v52;
      *(v49 + 72) = v46;
      *(v49 + 80) = v48;
      v31 = v63;
      MEMORY[0x1B8C8F910]("Encountered an unexpected WDS version for resource type. version=%@, type=%@", 76, 2, v49);
    }

    return (v58)(v31, v11);
  }

  return result;
}

uint64_t sub_1B6123A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 81) = a8;
  *(v9 + 328) = a7;
  *(v9 + 336) = v8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B40, &qword_1B62251C8);
  *(v9 + 344) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 352) = v10;
  *(v9 + 360) = *(v10 - 8);
  *(v9 + 368) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 376) = v11;
  *(v9 + 384) = *(v11 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6123C48, 0, 0);
}

uint64_t sub_1B612407C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_53_1();
  *v4 = v3;
  OUTLINED_FUNCTION_234(v5, v6, v7, v8);
  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B6124BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1624) = v8;
  *(v9 + 1824) = v17;
  *(v9 + 1616) = v16;
  *(v9 + 1608) = v15;
  *(v9 + 1600) = a8;
  *(v9 + 1592) = a7;
  *(v9 + 1584) = a6;
  *(v9 + 1576) = a5;
  *(v9 + 1568) = a4;
  *(v9 + 1560) = a3;
  *(v9 + 1552) = a2;
  *(v9 + 1544) = a1;
  v10 = sub_1B621D8F4();
  *(v9 + 1632) = v10;
  *(v9 + 1640) = *(v10 - 8);
  *(v9 + 1648) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 1656) = v11;
  *(v9 + 1664) = *(v11 - 8);
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 1720) = v12;
  *(v9 + 1728) = *(v12 - 8);
  *(v9 + 1736) = swift_task_alloc();
  *(v9 + 1744) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6124DCC, 0, 0);
}

uint64_t sub_1B6125338()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v7[224] = v6;
  v7[225] = v8;
  v7[226] = v9;
  v7[227] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B612545C()
{
  v2 = *(v1 + 1656);
  v3 = *(v1 + 1568);
  v4 = *(v1 + 1808);
  sub_1B6221924();
  v5 = OUTLINED_FUNCTION_180();
  *(v5 + 16) = xmmword_1B6227640;
  OUTLINED_FUNCTION_316(v5);
  sub_1B621D244();
  v6 = OUTLINED_FUNCTION_223();
  v7 = *(v1 + 1688);
  if (v6 == 1)
  {
    sub_1B61540AC(*(v1 + 1688), &qword_1EB924690, &qword_1B622B4A0);
    OUTLINED_FUNCTION_294();
  }

  else
  {
    v3 = *(v1 + 1664);
    sub_1B621D584();
    v9 = OUTLINED_FUNCTION_36_3();
    v10(v9);
    OUTLINED_FUNCTION_294();
    if (v7)
    {
      *v8 = v2;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_250(v8);
LABEL_6:
  v11 = *(v1 + 1736);
  v12 = *(v1 + 1720);
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_186(v13, &dword_1B6020000, v14, "Weather:dataTask.await");

  v15 = OUTLINED_FUNCTION_149();
  v0(v15);
  v16 = objc_opt_self();
  v17 = OUTLINED_FUNCTION_526(v16);
  if (!v17)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v43 = sub_1B6220B34();
    OUTLINED_FUNCTION_88_0(v43, qword_1EDAC2AB0);
    sub_1B6220784();
    v44 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_230();

    v45 = OUTLINED_FUNCTION_237();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_9_3();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v48);
      *(v47 + 4) = OUTLINED_FUNCTION_181(4.8751e-34);
      OUTLINED_FUNCTION_94_0();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v54 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v54);
      v55 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v55);
    }

    v56 = *(v1 + 1808);
    OUTLINED_FUNCTION_653();
    v57 = *(v1 + 1824);
    v58 = *(v1 + 1616);
    v59 = *(v1 + 1608);
    v60 = *(v1 + 1600);
    sub_1B6153AC8((v1 + 896));
    memcpy((v1 + 192), (v1 + 896), 0xB0uLL);
    v61 = sub_1B6058720();
    v62 = OUTLINED_FUNCTION_361();
    v36 = v44;
    sub_1B613D2E4(v62, v63, v60, v59, v56, v61, v64, 0, v58, v57);

    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v65 = swift_allocError();
    *(v66 + 8) = 0;
    *(v66 + 16) = 0;
    OUTLINED_FUNCTION_113_0(v65, v66, 1);

    sub_1B60362A8(v158, v160);
    goto LABEL_37;
  }

  if (OUTLINED_FUNCTION_603(v17) == 401)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v18 = sub_1B6220B34();
    OUTLINED_FUNCTION_111_0(v18, qword_1EDAC2AB0);
    sub_1B6220784();
    v19 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_295();

    if (OUTLINED_FUNCTION_451())
    {
      OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_0();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1(v20);
      *(v12 + 4) = OUTLINED_FUNCTION_183(4.8751e-34);
      OUTLINED_FUNCTION_91_0();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_95_0();
      v27 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v27);
    }

    v28 = *(v1 + 1808);
    OUTLINED_FUNCTION_653();
    v29 = *(v1 + 1624);
    v30 = *(v1 + 1824);
    v31 = *(v1 + 1616);
    v157 = *(v1 + 1608);
    v32 = *(v1 + 1600);
    sub_1B6153AC8((v1 + 1248));
    memcpy((v1 + 544), (v1 + 1248), 0xB0uLL);
    v33 = sub_1B6058720();
    v34 = OUTLINED_FUNCTION_304();
    v35 = v32;
    v36 = v19;
    sub_1B613D2E4(v34, v37, v35, v157, v28, v33, v38, 0, v31, v30);

    v39 = OUTLINED_FUNCTION_14_16((v29 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator));
    v40(v39);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v41 = swift_allocError();
    OUTLINED_FUNCTION_49_2(v41, v42);
    sub_1B60362A8(v158, v160);

    goto LABEL_37;
  }

  if (NSHTTPURLResponse.isSuccess.getter())
  {
    v67 = [v3 MIMEType];
    v68 = *(v1 + 1808);
    if (v67)
    {
      v69 = v67;
      v70 = sub_1B62211D4();
      v154 = v71;
      v155 = v70;
    }

    else
    {

      v154 = OUTLINED_FUNCTION_430(OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
      v155 = v99;
      sub_1B6220784();
    }

    v150 = *(v1 + 1808);
    v151 = *(v1 + 1792);
    v149 = *(v1 + 1776);
    v152 = *(v1 + 1800);
    v153 = *(v1 + 1752);
    v142 = *(v1 + 1744);
    v100 = *(v1 + 1728);
    v101 = *(v1 + 1720);
    HIDWORD(v147) = *(v1 + 1824);
    v145 = *(v1 + 1608);
    v146 = *(v1 + 1616);
    v143 = *(v1 + 1624);
    v144 = *(v1 + 1600);
    v102 = *(v1 + 1592);
    v141 = *(v1 + 1584);
    v148 = *(v1 + 1568);
    v103 = *(v1 + 1560);
    v104 = *(v1 + 1552);
    v105 = *(v1 + 1544);
    (*(*(v1 + 1640) + 32))(v105);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8, &unk_1B622D280);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_3_0();
    (*(v107 + 16))(v105 + v11, v103);
    (*(v100 + 32))(v105 + *(v106 + 52), v142, v101);
    OUTLINED_FUNCTION_648();
    v108 = swift_allocObject();
    *(v108 + 16) = v143;
    *(v108 + 24) = v104;
    *(v108 + 32) = v141;
    *(v108 + 40) = v102;
    *(v108 + 48) = v144;
    *(v108 + 56) = v145;
    *(v108 + 64) = v150;
    *(v108 + 72) = v149;
    *(v108 + 80) = v146;
    *(v108 + 88) = BYTE4(v147);
    OUTLINED_FUNCTION_312(v108, v109, v110, v111, v112, v113, v114, v115, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
    *v117 = sub_1B6153E70;
    v117[1] = v116;
    v119 = v118;
    sub_1B6220784();
    sub_1B6220784();
    sub_1B6220784();

    OUTLINED_FUNCTION_97();
    goto LABEL_38;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v72 = *(v1 + 1808);
  v73 = sub_1B6220B34();
  __swift_project_value_buffer(v73, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_222();
  sub_1B6220784();
  v74 = v72;
  v75 = sub_1B6220B14();
  sub_1B62217E4();
  OUTLINED_FUNCTION_338();

  v76 = OUTLINED_FUNCTION_451();
  v77 = *(v1 + 1808);
  if (v76)
  {
    OUTLINED_FUNCTION_110();
    v78 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v79 = swift_slowAlloc();
    OUTLINED_FUNCTION_283(v79);
    *(v78 + 4) = OUTLINED_FUNCTION_595(3.9123e-34);

    *(v78 + 14) = OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_131(&dword_1B6020000, v80, v81, "Received invalid http response code %{public}ld for request: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    v82 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v82);
    v83 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v83);
  }

  else
  {
  }

  v159 = *(v1 + 1808);
  v84 = *(v1 + 1792);
  v85 = *(v1 + 1824);
  v86 = *(v1 + 1616);
  v156 = *(v1 + 1608);
  v87 = *(v1 + 1600);
  sub_1B6153AC8((v1 + 1072));
  memcpy((v1 + 368), (v1 + 1072), 0xB0uLL);
  v88 = sub_1B6058720();
  v89 = OUTLINED_FUNCTION_361();
  sub_1B613D2E4(v89, v90, v87, v156, v159, v88, v91, 0, v86, v85);

  v92 = OUTLINED_FUNCTION_244();
  sub_1B604D8AC(v92, v93);
  v94 = OUTLINED_FUNCTION_244();
  sub_1B60622F8(v94, v95);
  OUTLINED_FUNCTION_503();
  v96 = *(v1 + 1800);
  v97 = *(v1 + 1792);
  if (!v85)
  {
    *(v1 + 1504) = v97;
    *(v1 + 1512) = v96;
    sub_1B604D8AC(v97, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E70, &qword_1B622CC08);
    if (swift_dynamicCast())
    {
      sub_1B60273A4((v1 + 1464), v1 + 1424);
      __swift_project_boxed_opaque_existential_1((v1 + 1424), *(v1 + 1448));
      OUTLINED_FUNCTION_103_0();
      v98 = v3;
      if (sub_1B6221CC4())
      {
        sub_1B60362A8(*(v1 + 1792), *(v1 + 1800));
        __swift_project_boxed_opaque_existential_1((v1 + 1424), *(v1 + 1448));
        v121 = OUTLINED_FUNCTION_7_19();
        OUTLINED_FUNCTION_317(v121, v122, v123);
        v84 = *(v1 + 1520);
        v85 = *(v1 + 1528);
        __swift_destroy_boxed_opaque_existential_1((v1 + 1424));
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 1424));
    }

    else
    {
      *(v1 + 1496) = 0;
      *(v1 + 1464) = 0u;
      *(v1 + 1480) = 0u;
      sub_1B61540AC(v1 + 1464, &qword_1EB925E78, &unk_1B622CC10);
      v98 = v3;
    }

    v124 = OUTLINED_FUNCTION_5_2();
    sub_1B614A8D8(v124, v125);
    OUTLINED_FUNCTION_503();
    v126 = OUTLINED_FUNCTION_5_2();
    sub_1B60362A8(v126, v127);
    goto LABEL_36;
  }

  sub_1B60362A8(v97, v96);
  v98 = v3;
LABEL_36:
  v128 = *(v1 + 1808);
  v36 = *(v1 + 1776);
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v129 = swift_allocError();
  *v130 = v98;
  v130[1] = v84;
  v130[2] = v85;
  OUTLINED_FUNCTION_184(v129, v130);
  v131 = OUTLINED_FUNCTION_5_2();
  sub_1B60362A8(v131, v132);

LABEL_37:
  OUTLINED_FUNCTION_413();
  v133 = OUTLINED_FUNCTION_523();
  v134(v133);
  v135 = OUTLINED_FUNCTION_173();
  v136(v135);

  OUTLINED_FUNCTION_146();
LABEL_38:

  return v120();
}

uint64_t sub_1B61261D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 472) = a8;
  *(v9 + 264) = a7;
  *(v9 + 272) = v8;
  *(v9 + 248) = a5;
  *(v9 + 256) = a6;
  *(v9 + 232) = a3;
  *(v9 + 240) = a4;
  *(v9 + 216) = a1;
  *(v9 + 224) = a2;
  v10 = sub_1B621D8F4();
  *(v9 + 280) = v10;
  *(v9 + 288) = *(v10 - 8);
  *(v9 + 296) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 304) = v11;
  *(v9 + 312) = *(v11 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 368) = v12;
  *(v9 + 376) = *(v12 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61263CC, 0, 0);
}

uint64_t sub_1B61268AC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v8[55] = v6;
  v8[56] = v7;
  v8[57] = v9;
  v8[58] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B6127310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_412();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_319();
  a26 = v28;
  v31 = v28[47];
  v77 = *(v31 + 8);
  v78 = v31 + 8;
  v77(v28[48], v28[46]);
  v76 = sub_1B621D564();
  if ([v76 code] != -999)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v32 = v28[58];
    v33 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v33, qword_1EDAC2AB0);
    sub_1B6220784();
    v34 = v32;
    v35 = sub_1B6220B14();
    sub_1B62217E4();

    if (OUTLINED_FUNCTION_451())
    {
      v36 = v28[58];
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_122_0();
      a16 = swift_slowAlloc();
      *v32 = 136380931;
      v28[26] = v36;
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v38 = sub_1B6221234();
      sub_1B602EEB0(v38, v39, &a16);
      OUTLINED_FUNCTION_527();
      OUTLINED_FUNCTION_168();
      v40 = OUTLINED_FUNCTION_304();
      *(v32 + 14) = sub_1B602EEB0(v40, v41, v42);
      OUTLINED_FUNCTION_131(&dword_1B6020000, v43, v44, "A network error occurred while communicating with WDS: %{private}s for request: %{public}s");
      OUTLINED_FUNCTION_121_0();
      swift_arrayDestroy();
      v45 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v45);
      v46 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B8C91C90](v46);
    }
  }

  v47 = v28[58];
  v48 = v28[53];
  v49 = sub_1B6058720();
  v50 = v47;
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_422();
  sub_1B613D3E4(v51, v52, v53, v54, v55, v56, v57);

  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v75 = swift_allocError();
  OUTLINED_FUNCTION_185(v75, v58);

  v59 = v28[49];
  v60 = v28[46];
  v72 = v28[42];
  v73 = v28[41];
  v74 = v28[40];

  v61 = OUTLINED_FUNCTION_1_3();
  v62(v61);
  v77(v59, v60);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_364();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74, v75, v76, v77, v78, a16, a17, a18, a19, a20);
}

uint64_t sub_1B61275DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 544) = a8;
  *(v9 + 328) = a7;
  *(v9 + 336) = v8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925058, &qword_1B6226788);
  *(v9 + 344) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 352) = v10;
  *(v9 + 360) = *(v10 - 8);
  *(v9 + 368) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 376) = v11;
  *(v9 + 384) = *(v11 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6127810, 0, 0);
}

uint64_t sub_1B6127D90()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_53_1();
  *v4 = v3;
  OUTLINED_FUNCTION_234(v5, v6, v7, v8);
  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B61289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 81) = a8;
  *(v9 + 328) = a7;
  *(v9 + 336) = v8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F70, &qword_1B6230470);
  *(v9 + 344) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 352) = v10;
  *(v9 + 360) = *(v10 - 8);
  *(v9 + 368) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 376) = v11;
  *(v9 + 384) = *(v11 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6128C1C, 0, 0);
}

uint64_t sub_1B6129050()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_53_1();
  *v4 = v3;
  OUTLINED_FUNCTION_234(v5, v6, v7, v8);
  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B6129B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 81) = a8;
  *(v9 + 328) = a7;
  *(v9 + 336) = v8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A0, &qword_1B6226F20);
  *(v9 + 344) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 352) = v10;
  *(v9 + 360) = *(v10 - 8);
  *(v9 + 368) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 376) = v11;
  *(v9 + 384) = *(v11 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6129D90, 0, 0);
}

uint64_t sub_1B612A1C4()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_53_1();
  *v4 = v3;
  OUTLINED_FUNCTION_234(v5, v6, v7, v8);
  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B612ACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 81) = a8;
  *(v9 + 328) = a7;
  *(v9 + 336) = v8;
  *(v9 + 312) = a5;
  *(v9 + 320) = a6;
  *(v9 + 296) = a3;
  *(v9 + 304) = a4;
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925888, &qword_1B622A020);
  *(v9 + 344) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 352) = v10;
  *(v9 + 360) = *(v10 - 8);
  *(v9 + 368) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 376) = v11;
  *(v9 + 384) = *(v11 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 440) = v12;
  *(v9 + 448) = *(v12 - 8);
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B612AF04, 0, 0);
}

uint64_t sub_1B612B338()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_53_1();
  *v4 = v3;
  OUTLINED_FUNCTION_234(v5, v6, v7, v8);
  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B612BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = a8;
  *(v9 + 200) = v8;
  *(v9 + 400) = v15;
  *(v9 + 176) = a6;
  *(v9 + 184) = a7;
  *(v9 + 160) = a4;
  *(v9 + 168) = a5;
  *(v9 + 144) = a2;
  *(v9 + 152) = a3;
  *(v9 + 136) = a1;
  v10 = sub_1B621D8F4();
  *(v9 + 208) = v10;
  *(v9 + 216) = *(v10 - 8);
  *(v9 + 224) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 232) = v11;
  *(v9 + 240) = *(v11 - 8);
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 296) = v12;
  *(v9 + 304) = *(v12 - 8);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B612C04C, 0, 0);
}

uint64_t sub_1B612C530()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v8[46] = v6;
  v8[47] = v7;
  v8[48] = v9;
  v8[49] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B612CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_675();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 304);
  v69 = *(v29 + 8);
  v70 = v29 + 8;
  (v69)(*(v26 + 312), *(v26 + 296));
  v67 = sub_1B621D564();
  if ([v67 code] != -999)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v30 = *(v26 + 392);
    v31 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v31, qword_1EDAC2AB0);
    sub_1B6220784();
    v32 = v30;
    v33 = sub_1B6220B14();
    sub_1B62217E4();

    if (OUTLINED_FUNCTION_451())
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_122_0();
      a14 = swift_slowAlloc();
      OUTLINED_FUNCTION_499(4.8452e-34);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v35 = OUTLINED_FUNCTION_708(v34);
      sub_1B602EEB0(v35, v36, &a14);
      OUTLINED_FUNCTION_527();
      OUTLINED_FUNCTION_168();
      v37 = OUTLINED_FUNCTION_304();
      *(v30 + 14) = sub_1B602EEB0(v37, v38, v39);
      OUTLINED_FUNCTION_131(&dword_1B6020000, v40, v41, "A network error occurred while communicating with WDS: %{private}s for request: %{public}s");
      OUTLINED_FUNCTION_121_0();
      swift_arrayDestroy();
      v42 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v42);
      v43 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B8C91C90](v43);
    }
  }

  v44 = *(v26 + 392);
  v45 = *(v26 + 352);
  v46 = *(v26 + 400);
  v47 = *(v26 + 192);
  v48 = sub_1B6058720();
  v49 = v44;
  v50 = OUTLINED_FUNCTION_277();
  sub_1B613DBAC(v50, v51, 0, v48, 0xF000000000000007, v44, v47, v46);

  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v66 = swift_allocError();
  OUTLINED_FUNCTION_185(v66, v52);

  OUTLINED_FUNCTION_549();
  v68 = v53;
  v54 = OUTLINED_FUNCTION_523();
  v55(v54);
  v56 = OUTLINED_FUNCTION_232();
  v69(v56);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_544();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, v68, v69, v70, a14, a15, a16, a17, a18);
}

uint64_t sub_1B612D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 504) = a8;
  *(v9 + 200) = a7;
  *(v9 + 208) = v8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0, &qword_1B62267F0);
  *(v9 + 216) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 224) = v10;
  *(v9 + 232) = *(v10 - 8);
  *(v9 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925078, &qword_1B622ED90);
  *(v9 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = type metadata accessor for WDSNetworkActivity(0);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 304) = v11;
  *(v9 + 312) = *(v11 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v12 = type metadata accessor for WeatherRequest(0);
  *(v9 + 336) = v12;
  v13 = *(v12 - 8);
  *(v9 + 344) = v13;
  *(v9 + 352) = *(v13 + 64);
  *(v9 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v14 = sub_1B6220A84();
  *(v9 + 400) = v14;
  *(v9 + 408) = *(v14 - 8);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B612D538, 0, 0);
}

uint64_t sub_1B612DD20()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v8[59] = v6;
  v8[60] = v7;
  v8[61] = v9;
  v8[62] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B612DE3C()
{
  OUTLINED_FUNCTION_540();
  sub_1B6221924();
  v4 = OUTLINED_FUNCTION_180();
  *(v4 + 16) = xmmword_1B6227640;
  v5 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_316(v4);
  sub_1B621D244();
  v6 = OUTLINED_FUNCTION_223();
  v7 = v2[46];
  if (v6 == 1)
  {
    sub_1B61540AC(v2[46], &qword_1EB924690, &qword_1B622B4A0);
    OUTLINED_FUNCTION_294();
  }

  else
  {
    v1 = v2[46];
    sub_1B621D584();
    v9 = OUTLINED_FUNCTION_36_3();
    v10(v9);
    OUTLINED_FUNCTION_294();
    if (v7)
    {
      *v8 = v3;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_250(v8);
LABEL_6:
  v11 = (v2 + 61);
  v12 = v2[61];
  v14 = v2[51];
  v13 = v2[52];
  v15 = v2[50];
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_186(v16, &dword_1B6020000, v17, "Weather:dataTask.await");

  v18 = OUTLINED_FUNCTION_149();
  v0(v18);
  v19 = objc_opt_self();
  v20 = OUTLINED_FUNCTION_526(v19);
  if (!v20)
  {
    OUTLINED_FUNCTION_547();
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v4 = v2[23];
    v46 = sub_1B6220B34();
    OUTLINED_FUNCTION_88_0(v46, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_230();

    v47 = OUTLINED_FUNCTION_237();
    if (os_log_type_enabled(v47, v48))
    {
      v4 = v2[23];
      OUTLINED_FUNCTION_9_3();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v49);
      *(v13 + 4) = OUTLINED_FUNCTION_181(4.8751e-34);
      OUTLINED_FUNCTION_94_0();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v55 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v55);
      v56 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v56);
    }

    v57 = OUTLINED_FUNCTION_458();
    v58 = OUTLINED_FUNCTION_217(v57);
    OUTLINED_FUNCTION_74_0();
    v59 = OUTLINED_FUNCTION_18_10();
    sub_1B613DC84(v59, v60, v61, v62, v63, v64, v65, v66, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

    sub_1B61540AC(v4, &qword_1EB9250C0, &qword_1B62267F0);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v67 = swift_allocError();
    OUTLINED_FUNCTION_92_1(v67, v68);

    sub_1B60362A8(v158, v159);
    goto LABEL_38;
  }

  if (OUTLINED_FUNCTION_363(v20) == 401)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v21 = OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_111_0(v21, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_295();

    OUTLINED_FUNCTION_451();
    OUTLINED_FUNCTION_450();
    if (v23)
    {
      v12 = v2[23];
      OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_0();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1(v24);
      *(v15 + 4) = OUTLINED_FUNCTION_183(4.8751e-34);
      OUTLINED_FUNCTION_91_0();
      _os_log_impl(v25, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_95_0();
      v31 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v31);
    }

    v32 = OUTLINED_FUNCTION_471();
    v33 = OUTLINED_FUNCTION_169(v32);
    OUTLINED_FUNCTION_74_0();
    v34 = OUTLINED_FUNCTION_26_8();
    sub_1B613DC84(v34, v35, v36, v37, v38, v39, v40, v41, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

    sub_1B61540AC(v5, &qword_1EB9250C0, &qword_1B62267F0);
    v42 = OUTLINED_FUNCTION_14_16((v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator));
    v43(v42);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v44 = swift_allocError();
    OUTLINED_FUNCTION_49_2(v44, v45);
    sub_1B60362A8(v157, v158);

    v11 = v159;
    goto LABEL_38;
  }

  if (NSHTTPURLResponse.isSuccess.getter())
  {
    v69 = [v1 MIMEType];
    v70 = *v11;
    if (v69)
    {
      v71 = v69;
      v156 = sub_1B62211D4();
      v153 = v72;
    }

    else
    {
      v71 = v2[26];

      OUTLINED_FUNCTION_693();
    }

    v103 = OUTLINED_FUNCTION_243();
    v104(v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68, &unk_1B622CB80);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_3_0();
    (*(v105 + 16))(v5 + v13, v71);
    v106 = OUTLINED_FUNCTION_555();
    v107(v106);
    OUTLINED_FUNCTION_3_25();
    sub_1B61531FC(v70, v139);
    OUTLINED_FUNCTION_359();
    v108 = swift_allocObject();
    *(v108 + 16) = v15;
    *(v108 + 24) = v140;
    OUTLINED_FUNCTION_8_20();
    v110 = sub_1B614E95C(v139, v71 + v109);
    OUTLINED_FUNCTION_269(v110, v111, v112, v113, v114, v115, v116, v117, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, SBYTE4(v145), v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
    *v118 = sub_1B6150280;
    v118[1] = v108;
    v120 = v119;
    sub_1B6220784();

    OUTLINED_FUNCTION_97();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_448();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v73 = v2[61];
  v74 = sub_1B6220B34();
  __swift_project_value_buffer(v74, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_222();
  sub_1B6220784();
  v75 = v73;
  v76 = sub_1B6220B14();
  sub_1B62217E4();
  OUTLINED_FUNCTION_338();

  v77 = OUTLINED_FUNCTION_451();
  v78 = v2[61];
  if (v77)
  {
    OUTLINED_FUNCTION_110();
    v79 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v80 = swift_slowAlloc();
    OUTLINED_FUNCTION_283(v80);
    *(v79 + 4) = OUTLINED_FUNCTION_358(3.9123e-34);

    *(v79 + 14) = OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_131(&dword_1B6020000, v81, v82, "Received invalid http response code %{public}ld for request: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    v83 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v83);
    v84 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v84);
  }

  else
  {
  }

  v85 = OUTLINED_FUNCTION_470();
  v86 = OUTLINED_FUNCTION_216(v85);
  OUTLINED_FUNCTION_74_0();
  v87 = OUTLINED_FUNCTION_33_3();
  sub_1B613DC84(v87, v88, v89, v90, v91, v92, v93, v94, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

  sub_1B61540AC(v15, &qword_1EB9250C0, &qword_1B62267F0);
  v95 = OUTLINED_FUNCTION_244();
  sub_1B604D8AC(v95, v96);
  v97 = OUTLINED_FUNCTION_244();
  sub_1B60622F8(v97, v98);
  v100 = v99;
  v101 = v2[59];
  v102 = v2[60];
  if (!v100)
  {
    v2[12] = v101;
    v2[13] = v102;
    sub_1B604D8AC(v101, v102);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E70, &qword_1B622CC08);
    if (OUTLINED_FUNCTION_453(v122, v123, MEMORY[0x1E6969080], v122))
    {
      OUTLINED_FUNCTION_587();
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_232();
      if (sub_1B6221CC4())
      {
        sub_1B60362A8(v2[59], v2[60]);
        OUTLINED_FUNCTION_82_0();
        v124 = OUTLINED_FUNCTION_7_19();
        OUTLINED_FUNCTION_317(v124, v125, v126);
        __swift_destroy_boxed_opaque_existential_1(v2 + 2);
        goto LABEL_28;
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    }

    else
    {
      OUTLINED_FUNCTION_154();
      sub_1B61540AC((v2 + 7), &qword_1EB925E78, &unk_1B622CC10);
    }

    v4 = v160;
    v127 = OUTLINED_FUNCTION_5_2();
    sub_1B614A8D8(v127, v128);
    OUTLINED_FUNCTION_220();
    goto LABEL_37;
  }

  sub_1B60362A8(v101, v102);
LABEL_28:
  v4 = v160;
LABEL_37:
  v22 = v2[60];
  v129 = v2[57];
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v130 = swift_allocError();
  OUTLINED_FUNCTION_105_0(v130, v131);
  v132 = OUTLINED_FUNCTION_5_2();
  sub_1B60362A8(v132, v133);

LABEL_38:
  OUTLINED_FUNCTION_345();
  (v11[1])(v4, v22);
  v134 = OUTLINED_FUNCTION_516();
  v161(v134);

  OUTLINED_FUNCTION_146();
LABEL_39:

  return v121();
}

uint64_t sub_1B612E6DC()
{
  v76 = v3;
  v7 = OUTLINED_FUNCTION_577();
  v8(v7);
  v73 = sub_1B621D564();
  if ([v73 code] != -999)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v0 = *(v3 + 496);
    v9 = OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_111_0(v9, qword_1EDAC2AB0);
    sub_1B6220784();
    v10 = v0;
    v1 = sub_1B6220B14();
    sub_1B62217E4();

    if (OUTLINED_FUNCTION_451())
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_122_0();
      v5 = swift_slowAlloc();
      v75 = v5;
      OUTLINED_FUNCTION_499(4.8452e-34);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v12 = OUTLINED_FUNCTION_708(v11);
      v0 = v13;
      sub_1B602EEB0(v12, v13, &v75);
      OUTLINED_FUNCTION_527();
      OUTLINED_FUNCTION_168();
      v14 = OUTLINED_FUNCTION_304();
      *(v4 + 14) = sub_1B602EEB0(v14, v15, v16);
      OUTLINED_FUNCTION_131(&dword_1B6020000, v17, v18, "A network error occurred while communicating with WDS: %{private}s for request: %{public}s");
      OUTLINED_FUNCTION_121_0();
      swift_arrayDestroy();
      v19 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v19);
      v20 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B8C91C90](v20);
    }
  }

  OUTLINED_FUNCTION_539();
  v21 = OUTLINED_FUNCTION_576();
  type metadata accessor for Weather(v21);
  v22 = OUTLINED_FUNCTION_22();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  v25 = v2;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_422();
  sub_1B613DC84(v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);

  sub_1B61540AC(v0, &qword_1EB9250C0, &qword_1B62267F0);
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v72 = swift_allocError();
  OUTLINED_FUNCTION_185(v72, v34);

  OUTLINED_FUNCTION_343(v35, v36, v37, v38, v39, v40, v41, v42, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v72, v73);
  (v0)[1](v4, v2);
  v74(v5, v1);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_607();

  return v43();
}

uint64_t sub_1B612E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 504) = a8;
  *(v9 + 200) = a7;
  *(v9 + 208) = v8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0, &qword_1B62267F0);
  *(v9 + 216) = swift_task_alloc();
  v10 = sub_1B621D8F4();
  *(v9 + 224) = v10;
  *(v9 + 232) = *(v10 - 8);
  *(v9 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925078, &qword_1B622ED90);
  *(v9 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = type metadata accessor for WDSNetworkActivity(0);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 304) = v11;
  *(v9 + 312) = *(v11 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v12 = type metadata accessor for WeatherRequest(0);
  *(v9 + 336) = v12;
  v13 = *(v12 - 8);
  *(v9 + 344) = v13;
  *(v9 + 352) = *(v13 + 64);
  *(v9 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v14 = sub_1B6220A84();
  *(v9 + 400) = v14;
  *(v9 + 408) = *(v14 - 8);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B612ED24, 0, 0);
}

uint64_t sub_1B612F50C()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v8[59] = v6;
  v8[60] = v7;
  v8[61] = v9;
  v8[62] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B612F628()
{
  OUTLINED_FUNCTION_540();
  sub_1B6221924();
  v4 = OUTLINED_FUNCTION_180();
  *(v4 + 16) = xmmword_1B6227640;
  v5 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_316(v4);
  sub_1B621D244();
  v6 = OUTLINED_FUNCTION_223();
  v7 = v2[46];
  if (v6 == 1)
  {
    sub_1B61540AC(v2[46], &qword_1EB924690, &qword_1B622B4A0);
    OUTLINED_FUNCTION_294();
  }

  else
  {
    v1 = v2[46];
    sub_1B621D584();
    v9 = OUTLINED_FUNCTION_36_3();
    v10(v9);
    OUTLINED_FUNCTION_294();
    if (v7)
    {
      *v8 = v3;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_250(v8);
LABEL_6:
  v11 = (v2 + 61);
  v12 = v2[61];
  v14 = v2[51];
  v13 = v2[52];
  v15 = v2[50];
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_186(v16, &dword_1B6020000, v17, "Weather:dataTask.await");

  v18 = OUTLINED_FUNCTION_149();
  v0(v18);
  v19 = objc_opt_self();
  v20 = OUTLINED_FUNCTION_526(v19);
  if (!v20)
  {
    OUTLINED_FUNCTION_547();
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v4 = v2[23];
    v46 = sub_1B6220B34();
    OUTLINED_FUNCTION_88_0(v46, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_230();

    v47 = OUTLINED_FUNCTION_237();
    if (os_log_type_enabled(v47, v48))
    {
      v4 = v2[23];
      OUTLINED_FUNCTION_9_3();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v49);
      *(v13 + 4) = OUTLINED_FUNCTION_181(4.8751e-34);
      OUTLINED_FUNCTION_94_0();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v55 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v55);
      v56 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v56);
    }

    v57 = OUTLINED_FUNCTION_458();
    v58 = OUTLINED_FUNCTION_217(v57);
    OUTLINED_FUNCTION_72_1();
    v59 = OUTLINED_FUNCTION_18_10();
    sub_1B613DC84(v59, v60, v61, v62, v63, v64, v65, v66, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

    sub_1B61540AC(v4, &qword_1EB9250C0, &qword_1B62267F0);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v67 = swift_allocError();
    OUTLINED_FUNCTION_92_1(v67, v68);

    sub_1B60362A8(v158, v159);
    goto LABEL_38;
  }

  if (OUTLINED_FUNCTION_363(v20) == 401)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v21 = OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_111_0(v21, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_295();

    OUTLINED_FUNCTION_451();
    OUTLINED_FUNCTION_450();
    if (v23)
    {
      v12 = v2[23];
      OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_0();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1(v24);
      *(v15 + 4) = OUTLINED_FUNCTION_183(4.8751e-34);
      OUTLINED_FUNCTION_91_0();
      _os_log_impl(v25, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_95_0();
      v31 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v31);
    }

    v32 = OUTLINED_FUNCTION_471();
    v33 = OUTLINED_FUNCTION_169(v32);
    OUTLINED_FUNCTION_72_1();
    v34 = OUTLINED_FUNCTION_26_8();
    sub_1B613DC84(v34, v35, v36, v37, v38, v39, v40, v41, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

    sub_1B61540AC(v5, &qword_1EB9250C0, &qword_1B62267F0);
    v42 = OUTLINED_FUNCTION_14_16((v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator));
    v43(v42);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v44 = swift_allocError();
    OUTLINED_FUNCTION_49_2(v44, v45);
    sub_1B60362A8(v157, v158);

    v11 = v159;
    goto LABEL_38;
  }

  if (NSHTTPURLResponse.isSuccess.getter())
  {
    v69 = [v1 MIMEType];
    v70 = *v11;
    if (v69)
    {
      v71 = v69;
      v156 = sub_1B62211D4();
      v153 = v72;
    }

    else
    {
      v71 = v2[26];

      OUTLINED_FUNCTION_693();
    }

    v103 = OUTLINED_FUNCTION_243();
    v104(v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68, &unk_1B622CB80);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_3_0();
    (*(v105 + 16))(v5 + v13, v71);
    v106 = OUTLINED_FUNCTION_555();
    v107(v106);
    OUTLINED_FUNCTION_3_25();
    sub_1B61531FC(v70, v139);
    OUTLINED_FUNCTION_359();
    v108 = swift_allocObject();
    *(v108 + 16) = v15;
    *(v108 + 24) = v140;
    OUTLINED_FUNCTION_8_20();
    v110 = sub_1B614E95C(v139, v71 + v109);
    OUTLINED_FUNCTION_269(v110, v111, v112, v113, v114, v115, v116, v117, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, SBYTE4(v145), v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
    *v118 = sub_1B614E8EC;
    v118[1] = v108;
    v120 = v119;
    sub_1B6220784();

    OUTLINED_FUNCTION_97();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_448();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v73 = v2[61];
  v74 = sub_1B6220B34();
  __swift_project_value_buffer(v74, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_222();
  sub_1B6220784();
  v75 = v73;
  v76 = sub_1B6220B14();
  sub_1B62217E4();
  OUTLINED_FUNCTION_338();

  v77 = OUTLINED_FUNCTION_451();
  v78 = v2[61];
  if (v77)
  {
    OUTLINED_FUNCTION_110();
    v79 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v80 = swift_slowAlloc();
    OUTLINED_FUNCTION_283(v80);
    *(v79 + 4) = OUTLINED_FUNCTION_358(3.9123e-34);

    *(v79 + 14) = OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_131(&dword_1B6020000, v81, v82, "Received invalid http response code %{public}ld for request: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    v83 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v83);
    v84 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v84);
  }

  else
  {
  }

  v85 = OUTLINED_FUNCTION_470();
  v86 = OUTLINED_FUNCTION_216(v85);
  OUTLINED_FUNCTION_72_1();
  v87 = OUTLINED_FUNCTION_33_3();
  sub_1B613DC84(v87, v88, v89, v90, v91, v92, v93, v94, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);

  sub_1B61540AC(v15, &qword_1EB9250C0, &qword_1B62267F0);
  v95 = OUTLINED_FUNCTION_244();
  sub_1B604D8AC(v95, v96);
  v97 = OUTLINED_FUNCTION_244();
  sub_1B60622F8(v97, v98);
  v100 = v99;
  v101 = v2[59];
  v102 = v2[60];
  if (!v100)
  {
    v2[12] = v101;
    v2[13] = v102;
    sub_1B604D8AC(v101, v102);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E70, &qword_1B622CC08);
    if (OUTLINED_FUNCTION_453(v122, v123, MEMORY[0x1E6969080], v122))
    {
      OUTLINED_FUNCTION_587();
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_232();
      if (sub_1B6221CC4())
      {
        sub_1B60362A8(v2[59], v2[60]);
        OUTLINED_FUNCTION_82_0();
        v124 = OUTLINED_FUNCTION_7_19();
        OUTLINED_FUNCTION_317(v124, v125, v126);
        __swift_destroy_boxed_opaque_existential_1(v2 + 2);
        goto LABEL_28;
      }

      __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    }

    else
    {
      OUTLINED_FUNCTION_154();
      sub_1B61540AC((v2 + 7), &qword_1EB925E78, &unk_1B622CC10);
    }

    v4 = v160;
    v127 = OUTLINED_FUNCTION_5_2();
    sub_1B614A8D8(v127, v128);
    OUTLINED_FUNCTION_220();
    goto LABEL_37;
  }

  sub_1B60362A8(v101, v102);
LABEL_28:
  v4 = v160;
LABEL_37:
  v22 = v2[60];
  v129 = v2[57];
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v130 = swift_allocError();
  OUTLINED_FUNCTION_105_0(v130, v131);
  v132 = OUTLINED_FUNCTION_5_2();
  sub_1B60362A8(v132, v133);

LABEL_38:
  OUTLINED_FUNCTION_345();
  (v11[1])(v4, v22);
  v134 = OUTLINED_FUNCTION_516();
  v161(v134);

  OUTLINED_FUNCTION_146();
LABEL_39:

  return v121();
}

uint64_t sub_1B612FEC8()
{
  v76 = v3;
  v7 = OUTLINED_FUNCTION_577();
  v8(v7);
  v73 = sub_1B621D564();
  if ([v73 code] != -999)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v0 = *(v3 + 496);
    v9 = OUTLINED_FUNCTION_713();
    OUTLINED_FUNCTION_111_0(v9, qword_1EDAC2AB0);
    sub_1B6220784();
    v10 = v0;
    v1 = sub_1B6220B14();
    sub_1B62217E4();

    if (OUTLINED_FUNCTION_451())
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_122_0();
      v5 = swift_slowAlloc();
      v75 = v5;
      OUTLINED_FUNCTION_499(4.8452e-34);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      v12 = OUTLINED_FUNCTION_708(v11);
      v0 = v13;
      sub_1B602EEB0(v12, v13, &v75);
      OUTLINED_FUNCTION_527();
      OUTLINED_FUNCTION_168();
      v14 = OUTLINED_FUNCTION_304();
      *(v4 + 14) = sub_1B602EEB0(v14, v15, v16);
      OUTLINED_FUNCTION_131(&dword_1B6020000, v17, v18, "A network error occurred while communicating with WDS: %{private}s for request: %{public}s");
      OUTLINED_FUNCTION_121_0();
      swift_arrayDestroy();
      v19 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v19);
      v20 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B8C91C90](v20);
    }
  }

  OUTLINED_FUNCTION_539();
  v21 = OUTLINED_FUNCTION_576();
  type metadata accessor for Weather(v21);
  v22 = OUTLINED_FUNCTION_22();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  v25 = v2;
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_422();
  sub_1B613DC84(v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);

  sub_1B61540AC(v0, &qword_1EB9250C0, &qword_1B62267F0);
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v72 = swift_allocError();
  OUTLINED_FUNCTION_185(v72, v34);

  OUTLINED_FUNCTION_343(v35, v36, v37, v38, v39, v40, v41, v42, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v72, v73);
  (v0)[1](v4, v2);
  v74(v5, v1);

  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_607();

  return v43();
}

uint64_t sub_1B61301B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 408) = v16;
  *(v9 + 200) = v15;
  *(v9 + 208) = v8;
  *(v9 + 184) = a7;
  *(v9 + 192) = a8;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  v10 = sub_1B621D8F4();
  *(v9 + 216) = v10;
  *(v9 + 224) = *(v10 - 8);
  *(v9 + 232) = swift_task_alloc();
  v11 = sub_1B621D634();
  *(v9 + 240) = v11;
  *(v9 + 248) = *(v11 - 8);
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690, &qword_1B622B4A0);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v12 = sub_1B6220A84();
  *(v9 + 304) = v12;
  *(v9 + 312) = *(v12 - 8);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61303C0, 0, 0);
}

uint64_t sub_1B61308E8()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_53_1();
  *v5 = v4;
  v8[47] = v6;
  v8[48] = v7;
  v8[49] = v9;
  v8[50] = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B6130A04()
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 160);
  v4 = *(v1 + 392);
  sub_1B6221924();
  v5 = OUTLINED_FUNCTION_180();
  *(v5 + 16) = xmmword_1B6227640;
  OUTLINED_FUNCTION_316(v5);
  sub_1B621D244();
  v6 = OUTLINED_FUNCTION_223();
  v7 = *(v1 + 272);
  if (v6 == 1)
  {
    sub_1B61540AC(*(v1 + 272), &qword_1EB924690, &qword_1B622B4A0);
    OUTLINED_FUNCTION_294();
  }

  else
  {
    v3 = *(v1 + 248);
    sub_1B621D584();
    v9 = OUTLINED_FUNCTION_36_3();
    v10(v9);
    OUTLINED_FUNCTION_294();
    if (v7)
    {
      *v8 = v2;
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_250(v8);
LABEL_6:
  v11 = *(v1 + 320);
  v12 = *(v1 + 304);
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_186(v13, &dword_1B6020000, v14, "Weather:dataTask.await");

  v15 = OUTLINED_FUNCTION_149();
  v0(v15);
  v16 = objc_opt_self();
  v17 = OUTLINED_FUNCTION_526(v16);
  if (!v17)
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v40 = sub_1B6220B34();
    OUTLINED_FUNCTION_88_0(v40, qword_1EDAC2AB0);
    sub_1B6220784();
    v41 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_230();

    v42 = OUTLINED_FUNCTION_237();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_9_3();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v45);
      *(v44 + 4) = OUTLINED_FUNCTION_181(4.8751e-34);
      OUTLINED_FUNCTION_94_0();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v51 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v51);
      v52 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v52);
    }

    v53 = *(v1 + 392);
    v154 = *(v1 + 376);
    v157 = *(v1 + 384);
    v158 = *(v1 + 360);
    v54 = *(v1 + 200);
    v55 = *(v1 + 408);
    v56 = *(v1 + 192);
    v57 = sub_1B6058720();
    v58 = OUTLINED_FUNCTION_361();
    sub_1B613DE80(v58, v59, v56, v53, v57, 0, 0, v54, v55);

    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v60 = swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    OUTLINED_FUNCTION_113_0(v60, v61, 1);

    sub_1B60362A8(v154, v157);
    goto LABEL_37;
  }

  if (OUTLINED_FUNCTION_603(v17) == 401)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v18 = sub_1B6220B34();
    OUTLINED_FUNCTION_111_0(v18, qword_1EDAC2AB0);
    sub_1B6220784();
    v19 = sub_1B6220B14();
    sub_1B62217E4();
    OUTLINED_FUNCTION_295();

    if (OUTLINED_FUNCTION_451())
    {
      OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_81_0();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1(v20);
      *(v12 + 4) = OUTLINED_FUNCTION_183(4.8751e-34);
      OUTLINED_FUNCTION_91_0();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_95_0();
      v27 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v27);
    }

    v28 = *(v1 + 392);
    v153 = *(v1 + 376);
    v156 = *(v1 + 384);
    v30 = *(v1 + 200);
    v29 = *(v1 + 208);
    v31 = *(v1 + 408);
    v32 = *(v1 + 184);
    v33 = *(v1 + 192);
    v34 = *(v1 + 176);
    v158 = *(v1 + 360);
    v35 = sub_1B6058720();
    sub_1B613DE80(v34, v32, v33, v28, v35, 0, 0, v30, v31);

    v36 = OUTLINED_FUNCTION_14_16((v29 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator));
    v37(v36);
    sub_1B60624F4();
    OUTLINED_FUNCTION_228();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_49_2(v38, v39);
    sub_1B60362A8(v153, v156);

    goto LABEL_37;
  }

  if (NSHTTPURLResponse.isSuccess.getter())
  {
    v62 = [v3 MIMEType];
    v63 = *(v1 + 392);
    if (v62)
    {
      v64 = v62;
      v65 = sub_1B62211D4();
      v151 = v66;
      v152 = v65;
    }

    else
    {

      v151 = OUTLINED_FUNCTION_430(OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
      v152 = v94;
      sub_1B6220784();
    }

    v147 = *(v1 + 392);
    v148 = *(v1 + 376);
    v146 = *(v1 + 360);
    v149 = *(v1 + 384);
    v150 = *(v1 + 336);
    v140 = *(v1 + 328);
    v95 = *(v1 + 312);
    v96 = *(v1 + 304);
    HIDWORD(v144) = *(v1 + 408);
    v143 = *(v1 + 200);
    v141 = *(v1 + 208);
    v142 = *(v1 + 192);
    v97 = *(v1 + 184);
    v139 = *(v1 + 176);
    v145 = *(v1 + 160);
    v99 = *(v1 + 144);
    v98 = *(v1 + 152);
    v100 = *(v1 + 136);
    (*(*(v1 + 224) + 32))(v100);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8, &qword_1B622CD78);
    OUTLINED_FUNCTION_545();
    OUTLINED_FUNCTION_3_0();
    (*(v102 + 16))(v100 + v11, v98);
    (*(v95 + 32))(v100 + *(v101 + 52), v140, v96);
    v103 = swift_allocObject();
    *(v103 + 16) = v141;
    *(v103 + 24) = v99;
    *(v103 + 32) = v139;
    *(v103 + 40) = v97;
    *(v103 + 48) = v142;
    *(v103 + 56) = v147;
    *(v103 + 64) = v146;
    *(v103 + 72) = v143;
    *(v103 + 80) = BYTE4(v144);
    OUTLINED_FUNCTION_312(v103, v104, v105, v106, v107, v108, v109, v110, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    *v112 = sub_1B6151E4C;
    v112[1] = v111;
    v114 = v113;
    sub_1B6220784();
    sub_1B6220784();
    sub_1B6220784();

    OUTLINED_FUNCTION_97();
    goto LABEL_38;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v67 = *(v1 + 392);
  v68 = sub_1B6220B34();
  __swift_project_value_buffer(v68, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_222();
  sub_1B6220784();
  v69 = v67;
  v70 = sub_1B6220B14();
  sub_1B62217E4();
  OUTLINED_FUNCTION_338();

  v71 = OUTLINED_FUNCTION_451();
  v72 = *(v1 + 392);
  if (v71)
  {
    OUTLINED_FUNCTION_110();
    v73 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v74 = swift_slowAlloc();
    OUTLINED_FUNCTION_283(v74);
    *(v73 + 4) = OUTLINED_FUNCTION_595(3.9123e-34);

    *(v73 + 14) = OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_131(&dword_1B6020000, v75, v76, "Received invalid http response code %{public}ld for request: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v12);
    v77 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x1B8C91C90](v77);
    v78 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v78);
  }

  else
  {
  }

  v155 = *(v1 + 392);
  v79 = *(v1 + 376);
  v80 = *(v1 + 200);
  v81 = *(v1 + 408);
  v82 = *(v1 + 192);
  v83 = *(v1 + 176);
  v84 = sub_1B6058720();
  v85 = OUTLINED_FUNCTION_568();
  sub_1B613DE80(v85, v86, v82, v155, v84, 0, 0, v80, v81);

  v87 = OUTLINED_FUNCTION_244();
  sub_1B604D8AC(v87, v88);
  v89 = OUTLINED_FUNCTION_244();
  sub_1B60622F8(v89, v90);
  OUTLINED_FUNCTION_503();
  v91 = *(v1 + 376);
  v92 = *(v1 + 384);
  if (!v83)
  {
    *(v1 + 96) = v91;
    *(v1 + 104) = v92;
    sub_1B604D8AC(v91, v92);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E70, &qword_1B622CC08);
    if (OUTLINED_FUNCTION_453(v116, v117, MEMORY[0x1E6969080], v116))
    {
      OUTLINED_FUNCTION_587();
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_232();
      v93 = v3;
      if (sub_1B6221CC4())
      {
        sub_1B60362A8(*(v1 + 376), *(v1 + 384));
        OUTLINED_FUNCTION_82_0();
        v118 = OUTLINED_FUNCTION_7_19();
        OUTLINED_FUNCTION_317(v118, v119, v120);
        v79 = *(v1 + 112);
        v83 = *(v1 + 120);
        __swift_destroy_boxed_opaque_existential_1((v1 + 16));
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_154();
      sub_1B61540AC(v1 + 56, &qword_1EB925E78, &unk_1B622CC10);
      v93 = v3;
    }

    v121 = OUTLINED_FUNCTION_5_2();
    sub_1B614A8D8(v121, v122);
    OUTLINED_FUNCTION_503();
    v123 = OUTLINED_FUNCTION_5_2();
    sub_1B60362A8(v123, v124);
    goto LABEL_36;
  }

  sub_1B60362A8(v91, v92);
  v93 = v3;
LABEL_36:
  v125 = *(v1 + 392);
  v158 = *(v1 + 360);
  sub_1B60624F4();
  OUTLINED_FUNCTION_228();
  v126 = swift_allocError();
  *v127 = v93;
  v127[1] = v79;
  v127[2] = v83;
  OUTLINED_FUNCTION_184(v126, v127);
  v128 = OUTLINED_FUNCTION_5_2();
  sub_1B60362A8(v128, v129);

LABEL_37:
  OUTLINED_FUNCTION_562();
  v130 = OUTLINED_FUNCTION_523();
  v131(v130);
  v132 = OUTLINED_FUNCTION_173();
  v133(v132);

  OUTLINED_FUNCTION_146();
LABEL_38:

  return v115();
}

uint64_t sub_1B613160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, void *__src)
{
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;
  *(v8 + 82) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a6;
  *(v8 + 81) = a5;
  *(v8 + 400) = a2;
  *(v8 + 408) = a3;
  *(v8 + 392) = a1;
  memcpy((v8 + 88), __src, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1B613169C, 0, 0);
}

uint64_t sub_1B613169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_684();
  OUTLINED_FUNCTION_17_6();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_225(v11, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_485();
  v12 = OUTLINED_FUNCTION_628();
  sub_1B6152A68(v12, v13);
  v14 = OUTLINED_FUNCTION_627();
  sub_1B6152A68(v14, v15);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  sub_1B6152BE4(v10 + 16);
  v17 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v10 + 400);
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_573();
    *v20 = 136446467;
    v21 = OUTLINED_FUNCTION_321();
    v24 = sub_1B602EEB0(v21, v22, v23);
    OUTLINED_FUNCTION_167(v24);
    OUTLINED_FUNCTION_497();
    v25 = sub_1B6221234();
    OUTLINED_FUNCTION_614(v25, v26, v27, v28);
    OUTLINED_FUNCTION_472();
    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v34);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    sub_1B6152BE4(v10 + 16);
  }

  v35 = *(v10 + 82);
  *(v10 + 376) = *(v10 + 424);
  *(v10 + 384) = v35;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v10 + 448) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_271(v37);
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_687();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, v50, a10);
}

uint64_t sub_1B6131894()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61319B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 168) = v13;
  *(v8 + 176) = v14;
  *(v8 + 152) = v11;
  *(v8 + 160) = v12;
  *(v8 + 136) = a8;
  *(v8 + 144) = v10;
  *(v8 + 90) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a6;
  *(v8 + 89) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  *(v8 + 16) = a8;
  *(v8 + 24) = v10;
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1B6131A08, 0, 0);
}

uint64_t sub_1B6131A08()
{
  OUTLINED_FUNCTION_298();
  v30 = v0;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  OUTLINED_FUNCTION_111_0(v1, qword_1EDAC2AB0);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B6220784();
  v2 = sub_1B6220B14();
  sub_1B62217F4();

  v3 = OUTLINED_FUNCTION_237();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = *(v0 + 152);
    v27 = *(v0 + 136);
    v8 = *(v0 + 112);
    OUTLINED_FUNCTION_110();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    v29 = swift_slowAlloc();
    *v9 = 136446467;
    v10 = OUTLINED_FUNCTION_304();
    v13 = sub_1B602EEB0(v10, v11, v12);
    OUTLINED_FUNCTION_167(v13);
    *(v0 + 48) = v27;
    *(v0 + 64) = v7;
    *(v0 + 72) = v6;
    v14 = sub_1B6221234();
    sub_1B602EEB0(v14, v15, &v29);
    OUTLINED_FUNCTION_472();
    *(v9 + 14) = v8;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v21 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v21);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
  }

  v22 = *(v0 + 90);
  *(v0 + 80) = *(v0 + 128);
  *(v0 + 88) = v22;
  OUTLINED_FUNCTION_1_30();
  v28 = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 184) = v24;
  *v24 = v25;
  v24[1] = sub_1B6131C78;
  OUTLINED_FUNCTION_260();

  return v28();
}

uint64_t sub_1B6131C78()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6131D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 320) = v11;
  *(v8 + 328) = v12;
  *(v8 + 266) = a7;
  *(v8 + 304) = a6;
  *(v8 + 312) = a8;
  *(v8 + 265) = a5;
  *(v8 + 288) = a3;
  *(v8 + 296) = a4;
  *(v8 + 272) = a1;
  *(v8 + 280) = a2;
  v9 = a8[1];
  *(v8 + 16) = *a8;
  *(v8 + 32) = v9;
  *(v8 + 48) = a8[2];
  return MEMORY[0x1EEE6DFA0](sub_1B6131DE0, 0, 0);
}

uint64_t sub_1B6131DE0()
{
  OUTLINED_FUNCTION_226();
  v35 = v0;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v2, qword_1EDAC2AB0);
  *(v0 + 112) = *v1;
  *(v0 + 128) = v1[1];
  *(v0 + 144) = v1[2];
  sub_1B6153380(v0 + 112, v0 + 160);
  sub_1B6153380(v0 + 128, v0 + 176);
  sub_1B6153380(v0 + 144, v0 + 192);
  sub_1B6153380(v0 + 112, v0 + 208);
  sub_1B6153380(v0 + 128, v0 + 224);
  sub_1B6153380(v0 + 144, v0 + 240);
  sub_1B6220784();
  v3 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  sub_1B61537E4(v0 + 112);
  sub_1B61537E4(v0 + 128);
  sub_1B61537E4(v0 + 144);
  v4 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    OUTLINED_FUNCTION_110();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_652(4.8752e-34);
    v8 = OUTLINED_FUNCTION_321();
    v11 = sub_1B602EEB0(v8, v9, v10);
    OUTLINED_FUNCTION_167(v11);
    v12 = OUTLINED_FUNCTION_649();
    *(v0 + 64) = v14;
    *(v0 + 80) = v13;
    *(v0 + 96) = v12;
    v15 = sub_1B6221234();
    sub_1B602EEB0(v15, v16, &v34);
    OUTLINED_FUNCTION_472();
    *(v7 + 14) = v6;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v22 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v22);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
    sub_1B61537E4(v0 + 112);
    sub_1B61537E4(v0 + 128);
    sub_1B61537E4(v0 + 144);
  }

  v23 = *(v0 + 266);
  v24 = *(v0 + 265);
  *(v0 + 256) = *(v0 + 304);
  *(v0 + 264) = v23;
  OUTLINED_FUNCTION_1_30();
  v33 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 336) = v26;
  *v26 = v27;
  v26[1] = sub_1B613208C;
  v29 = *(v0 + 288);
  v28 = *(v0 + 296);
  v30 = *(v0 + 272);
  v31 = *(v0 + 280);

  return v33(v30, &type metadata for WeatherAlertResource, v0 + 16, v28, v24 & 1, v31, v29, v0 + 256);
}

uint64_t sub_1B613208C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61321A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, void *__src)
{
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;
  *(v8 + 82) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a6;
  *(v8 + 81) = a5;
  *(v8 + 400) = a2;
  *(v8 + 408) = a3;
  *(v8 + 392) = a1;
  memcpy((v8 + 88), __src, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1B6132238, 0, 0);
}

uint64_t sub_1B6132238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_684();
  OUTLINED_FUNCTION_17_6();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_225(v11, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_485();
  v12 = OUTLINED_FUNCTION_628();
  sub_1B6152D7C(v12, v13);
  v14 = OUTLINED_FUNCTION_627();
  sub_1B6152D7C(v14, v15);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  sub_1B610AF28(v10 + 16);
  v17 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v10 + 400);
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_573();
    *v20 = 136446467;
    v21 = OUTLINED_FUNCTION_321();
    v24 = sub_1B602EEB0(v21, v22, v23);
    OUTLINED_FUNCTION_167(v24);
    OUTLINED_FUNCTION_497();
    v25 = sub_1B6221234();
    OUTLINED_FUNCTION_614(v25, v26, v27, v28);
    OUTLINED_FUNCTION_472();
    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v34);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
    sub_1B610AF28(v10 + 16);
  }

  v35 = *(v10 + 82);
  *(v10 + 376) = *(v10 + 424);
  *(v10 + 384) = v35;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v10 + 448) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_271(v37);
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_687();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, v50, a10);
}

uint64_t sub_1B613242C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6132524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, void *__src)
{
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;
  *(v8 + 82) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a6;
  *(v8 + 81) = a5;
  *(v8 + 400) = a2;
  *(v8 + 408) = a3;
  *(v8 + 392) = a1;
  memcpy((v8 + 88), __src, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1B61325B4, 0, 0);
}

uint64_t sub_1B61325B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_684();
  OUTLINED_FUNCTION_17_6();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_225(v11, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_485();
  v12 = OUTLINED_FUNCTION_628();
  sub_1B6152748(v12, v13);
  v14 = OUTLINED_FUNCTION_627();
  sub_1B6152748(v14, v15);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  sub_1B6152938(v10 + 16);
  v17 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v10 + 400);
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_573();
    *v20 = 136446467;
    v21 = OUTLINED_FUNCTION_321();
    v24 = sub_1B602EEB0(v21, v22, v23);
    OUTLINED_FUNCTION_167(v24);
    OUTLINED_FUNCTION_497();
    v25 = sub_1B6221234();
    OUTLINED_FUNCTION_614(v25, v26, v27, v28);
    OUTLINED_FUNCTION_472();
    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v34);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
    sub_1B6152938(v10 + 16);
  }

  v35 = *(v10 + 82);
  *(v10 + 376) = *(v10 + 424);
  *(v10 + 384) = v35;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v10 + 448) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_271(v37);
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_687();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, v50, a10);
}

uint64_t sub_1B61327A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, void *__src)
{
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;
  *(v8 + 82) = a7;
  *(v8 + 416) = a4;
  *(v8 + 424) = a6;
  *(v8 + 81) = a5;
  *(v8 + 400) = a2;
  *(v8 + 408) = a3;
  *(v8 + 392) = a1;
  memcpy((v8 + 88), __src, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1B6132838, 0, 0);
}

uint64_t sub_1B6132838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_684();
  OUTLINED_FUNCTION_17_6();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_225(v11, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_485();
  v12 = OUTLINED_FUNCTION_628();
  sub_1B61524F0(v12, v13);
  v14 = OUTLINED_FUNCTION_627();
  sub_1B61524F0(v14, v15);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  sub_1B60C9208(v10 + 16);
  v17 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v10 + 400);
    OUTLINED_FUNCTION_110();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_573();
    *v20 = 136446467;
    v21 = OUTLINED_FUNCTION_321();
    v24 = sub_1B602EEB0(v21, v22, v23);
    OUTLINED_FUNCTION_167(v24);
    OUTLINED_FUNCTION_497();
    v25 = sub_1B6221234();
    OUTLINED_FUNCTION_614(v25, v26, v27, v28);
    OUTLINED_FUNCTION_472();
    *(v20 + 14) = v19;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v34 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v34);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
    sub_1B60C9208(v10 + 16);
  }

  v35 = *(v10 + 82);
  *(v10 + 376) = *(v10 + 424);
  *(v10 + 384) = v35;
  OUTLINED_FUNCTION_1_30();
  v50 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v10 + 448) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_271(v37);
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_687();

  return v47(v39, v40, v41, v42, v43, v44, v45, v46, v50, a10);
}

uint64_t sub_1B6132A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 144) = v12;
  *(v8 + 152) = v13;
  *(v8 + 128) = v10;
  *(v8 + 136) = v11;
  *(v8 + 74) = a7;
  *(v8 + 112) = a6;
  *(v8 + 120) = a8;
  *(v8 + 73) = a5;
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  *(v8 + 16) = a8;
  *(v8 + 24) = v10;
  *(v8 + 32) = v11;
  return MEMORY[0x1EEE6DFA0](sub_1B6132A78, 0, 0);
}

uint64_t sub_1B6132A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_452();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_298();
  a20 = v22;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v25 = sub_1B6220B34();
  OUTLINED_FUNCTION_111_0(v25, qword_1EDAC2AB0);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B6220784();
  v26 = sub_1B6220B14();
  sub_1B62217F4();

  v27 = OUTLINED_FUNCTION_237();
  v29 = os_log_type_enabled(v27, v28);
  v31 = *(v22 + 128);
  v30 = *(v22 + 136);
  if (v29)
  {
    v32 = *(v22 + 120);
    OUTLINED_FUNCTION_110();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_652(4.8752e-34);
    v34 = OUTLINED_FUNCTION_360();
    v37 = sub_1B602EEB0(v34, v35, v36);
    OUTLINED_FUNCTION_167(v37);
    *(v22 + 40) = v32;
    *(v22 + 48) = v31;
    *(v22 + 56) = v30;
    v38 = sub_1B6221234();
    sub_1B602EEB0(v38, v39, &a11);
    OUTLINED_FUNCTION_472();
    *(v33 + 14) = v31;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v45 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v45);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
  }

  v46 = *(v22 + 74);
  *(v22 + 64) = *(v22 + 112);
  *(v22 + 72) = v46;
  OUTLINED_FUNCTION_1_30();
  v61 = v47;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v22 + 160) = v48;
  *v48 = v49;
  v48[1] = sub_1B6132CB8;
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_22_5();

  return v58(v50, v51, v52, v53, v54, v55, v56, v57, a9, v61, a11, a12, a13, a14);
}

uint64_t sub_1B6132CB8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6132DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v15 = swift_task_alloc();
  *(v13 + 16) = v15;
  *v15 = v13;
  v15[1] = sub_1B60D7AB4;

  return sub_1B61319B4(a1, a8, a9, a10, a11 & 1, a12, a13, a2);
}

uint64_t sub_1B6132EE4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 170) = v12;
  *(v8 + 169) = a8;
  *(v8 + 224) = a7;
  *(v8 + 232) = v11;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  v9 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v9;
  *(v8 + 48) = a2[2];
  return MEMORY[0x1EEE6DFA0](sub_1B6132F34, 0, 0);
}

uint64_t sub_1B6132F34()
{
  OUTLINED_FUNCTION_226();
  v27 = v0;
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_1B6220B34();
  __swift_project_value_buffer(v2, qword_1EDAC2AB0);
  sub_1B605B798(v1, v0 + 64);
  sub_1B6220784();
  v3 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_338();

  if (OUTLINED_FUNCTION_451())
  {
    v4 = *(v0 + 208);
    OUTLINED_FUNCTION_110();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_574();
    *v5 = 136446467;
    v6 = OUTLINED_FUNCTION_321();
    *(v5 + 4) = sub_1B602EEB0(v6, v7, v8);
    *(v5 + 12) = 2081;
    v9 = OUTLINED_FUNCTION_649();
    *(v0 + 112) = v11;
    *(v0 + 128) = v10;
    *(v0 + 144) = v9;
    v12 = sub_1B6221234();
    sub_1B602EEB0(v12, v13, &v26);
    OUTLINED_FUNCTION_472();
    *(v5 + 14) = v4;
    OUTLINED_FUNCTION_239();
    _os_log_impl(v14, v15, v16, v17, v5, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v18 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v18);
    v19 = OUTLINED_FUNCTION_118_0();
    MEMORY[0x1B8C91C90](v19);
  }

  else
  {
    sub_1B605C4AC(*(v0 + 184));
  }

  v20 = *(v0 + 170);
  *(v0 + 160) = *(v0 + 232);
  *(v0 + 168) = v20;
  OUTLINED_FUNCTION_1_30();
  v25 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 240) = v22;
  *v22 = v23;
  v22[1] = sub_1B6133170;
  OUTLINED_FUNCTION_260();

  return v25();
}

uint64_t sub_1B6133170()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B613328C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_1B60D7AB4;

  return sub_1B6131D94(a1, a5, a6, a7, a8 & 1, a9, a10, a2);
}

uint64_t sub_1B6133388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 58) = v12;
  *(v8 + 120) = a8;
  *(v8 + 128) = v11;
  *(v8 + 57) = v10;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B61333D4, 0, 0);
}

uint64_t sub_1B61333D4()
{
  OUTLINED_FUNCTION_226();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_350();
  sub_1B6220784();
  sub_1B6220784();
  v2 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  v3 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    OUTLINED_FUNCTION_110();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_573();
    *v8 = 136446467;
    v9 = OUTLINED_FUNCTION_321();
    v12 = sub_1B602EEB0(v9, v10, v11);
    OUTLINED_FUNCTION_167(v12);
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    v13 = sub_1B6221234();
    OUTLINED_FUNCTION_614(v13, v14, v15, v16);
    OUTLINED_FUNCTION_472();
    *(v8 + 14) = v5;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v22 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v22);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {
  }

  v23 = *(v0 + 58);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 56) = v23;
  OUTLINED_FUNCTION_1_30();
  v28 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 136) = v25;
  *v25 = v26;
  v25[1] = sub_1B61335FC;
  OUTLINED_FUNCTION_260();

  return v28();
}

uint64_t sub_1B61335FC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6133718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 26) = v12;
  *(v8 + 25) = a8;
  *(v8 + 80) = a7;
  *(v8 + 88) = v11;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = type metadata accessor for WeatherRequest(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61337D8, 0, 0);
}

uint64_t sub_1B61337D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_452();
  OUTLINED_FUNCTION_298();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_694();
  __swift_project_value_buffer(v15, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_3_25();
  v16 = OUTLINED_FUNCTION_5_2();
  sub_1B61531FC(v16, v17);
  sub_1B6220784();
  v18 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  v19 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_110();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_652(4.8752e-34);
    v22 = OUTLINED_FUNCTION_277();
    v25 = sub_1B602EEB0(v22, v23, v24);
    OUTLINED_FUNCTION_167(v25);
    OUTLINED_FUNCTION_3_25();
    v26 = OUTLINED_FUNCTION_264();
    sub_1B61531FC(v26, v27);
    OUTLINED_FUNCTION_373();
    sub_1B6221234();
    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
    v28 = OUTLINED_FUNCTION_373();
    v31 = sub_1B602EEB0(v28, v29, v30);

    *(v21 + 14) = v31;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v37 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v37);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
  }

  v38 = *(v14 + 26);
  *(v14 + 16) = *(v14 + 88);
  *(v14 + 24) = v38;
  OUTLINED_FUNCTION_1_30();
  v53 = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v14 + 120) = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_639(v40);
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_22_5();

  return v50(v42, v43, v44, v45, v46, v47, v48, v49, a9, v53, a11, a12, a13, a14);
}

uint64_t sub_1B6133A00()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v10();
  }
}

uint64_t sub_1B6133B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 26) = v12;
  *(v8 + 25) = a8;
  *(v8 + 80) = a7;
  *(v8 + 88) = v11;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 96) = type metadata accessor for WeatherRequest(0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6133BE4, 0, 0);
}

uint64_t sub_1B6133BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_452();
  OUTLINED_FUNCTION_298();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_694();
  __swift_project_value_buffer(v15, qword_1EDAC2AB0);
  OUTLINED_FUNCTION_3_25();
  v16 = OUTLINED_FUNCTION_5_2();
  sub_1B61531FC(v16, v17);
  sub_1B6220784();
  v18 = sub_1B6220B14();
  sub_1B62217F4();
  OUTLINED_FUNCTION_230();

  v19 = OUTLINED_FUNCTION_237();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_110();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_233();
    swift_slowAlloc();
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_652(4.8752e-34);
    v22 = OUTLINED_FUNCTION_277();
    v25 = sub_1B602EEB0(v22, v23, v24);
    OUTLINED_FUNCTION_167(v25);
    OUTLINED_FUNCTION_3_25();
    v26 = OUTLINED_FUNCTION_264();
    sub_1B61531FC(v26, v27);
    OUTLINED_FUNCTION_373();
    sub_1B6221234();
    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
    v28 = OUTLINED_FUNCTION_373();
    v31 = sub_1B602EEB0(v28, v29, v30);

    *(v21 + 14) = v31;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_129_0();
    swift_arrayDestroy();
    v37 = OUTLINED_FUNCTION_60_0();
    MEMORY[0x1B8C91C90](v37);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    OUTLINED_FUNCTION_4_23();
    sub_1B6153250();
  }

  v38 = *(v14 + 26);
  *(v14 + 16) = *(v14 + 88);
  *(v14 + 24) = v38;
  OUTLINED_FUNCTION_1_30();
  v53 = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v14 + 120) = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_639(v40);
  OUTLINED_FUNCTION_260();
  OUTLINED_FUNCTION_22_5();

  return v50(v42, v43, v44, v45, v46, v47, v48, v49, a9, v53, a11, a12, a13, a14);
}

uint64_t sub_1B6133E0C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v3 = v2;
  OUTLINED_FUNCTION_2_21();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_97();

    return v10();
  }
}

uint64_t sub_1B6133F30()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6133F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  *v14 = v12;
  v14[1] = sub_1B60D7AB4;

  return sub_1B6132A2C(a1, a7, a8, a9, a10 & 1, a11, a12, a2);
}

uint64_t sub_1B6134098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8, &unk_1B622D280);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD8, &qword_1B622D378);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98, &qword_1B622D190);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F00, &qword_1B622CE68);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E68, &unk_1B622CB80);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_task_alloc();
  *(v22 + 16) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925ED8, &qword_1B622CD78);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  *v25 = v22;
  v25[1] = sub_1B60D7AB4;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v26, v27, v31, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1B6134608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_598(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
  v3 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x1EEE6DA18](v3);
}

uint64_t sub_1B6134660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F50, &qword_1B622D070);
  v8[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613470C, 0, 0);
}

uint64_t sub_1B613470C()
{
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_170();
  v1 = OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_432(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 96) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_0(v3);
  OUTLINED_FUNCTION_682();

  return sub_1B613160C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1B61347A8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B61348BC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_666();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F48, &qword_1B622D048);
  OUTLINED_FUNCTION_468(&qword_1EB925F50, &qword_1B622D070, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6134950()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61349AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v12;
  *(v8 + 144) = v13;
  *(v8 + 120) = v11;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB8, &unk_1B622D280);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6134A68, 0, 0);
}

uint64_t sub_1B6134A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22[8];
  v24 = sub_1B605C024(v23);
  v26 = v25;
  if (v23 || (v27 = v22[9], (*v27 & 1) == 0))
  {
    sub_1B6038910(v22[8], 0, v22[16], v22[17]);
    OUTLINED_FUNCTION_565();
    v22[23] = v61;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    v22[24] = v62;
    *v62 = v63;
    v62[1] = sub_1B61350BC;
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_607();

    return sub_1B61319B4(v64, v65, v66, v67, v68, v69, v70, v71);
  }

  else
  {
    v28 = v22[16];
    v29 = v22[17];
    v115 = v22[15];
    v31 = v22[11];
    v30 = v22[12];
    v32 = v22[10];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A40, &qword_1B6224B50);
    v34 = OUTLINED_FUNCTION_581(v33);
    *(v34 + 16) = xmmword_1B6225510;
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    *(v35 + 24) = v31;
    *(v35 + 32) = v30;
    v113 = v22[13];
    *(v35 + 40) = *(v22 + 13);
    *(v35 + 56) = v115;
    *(v35 + 64) = v28;
    *(v35 + 72) = v29;
    *(v35 + 80) = v24;
    *(v35 + 88) = v26 & 1;
    *(v35 + 96) = 0;
    *(v34 + 32) = &unk_1B622D2C0;
    *(v34 + 40) = v35;
    v36 = v34;
    v37 = *(v27 + 8);
    v105 = *(v37 + 16);
    if (v105)
    {
      HIDWORD(v101) = v26;
      v38 = sub_1B6220784();
      OUTLINED_FUNCTION_543(v38, v39, v40, v41, v42, v43, v44, v45, v101, v24, v105, v22, v109, v28, v113);

      sub_1B6220784();
      v46 = 0;
      v47 = (v37 + 40);
      do
      {
        v48 = *(v107 + 120);
        v111 = *(v107 + 128);
        v114 = *(v107 + 136);
        v50 = *(v107 + 88);
        v49 = *(v107 + 96);
        v51 = *(v107 + 80);
        v52 = *(v47 - 1);
        v110 = *v47;
        v116 = *(v107 + 104);
        sub_1B602D048(*(v107 + 144), v107 + 16);
        v53 = swift_allocObject();
        sub_1B60273A4((v107 + 16), v53 + 16);
        *(v53 + 56) = v51;
        *(v53 + 64) = v50;
        *(v53 + 72) = v49;
        *(v53 + 80) = v116;
        *(v53 + 96) = v48;
        *(v53 + 104) = v111;
        *(v53 + 112) = v114;
        *(v53 + 120) = 0;
        *(v53 + 128) = v46;
        *(v53 + 136) = v52;
        *(v53 + 144) = v110;
        *(v53 + 152) = v104;
        *(v53 + 160) = v102 & 1;
        v54 = *(v36 + 16);
        v55 = *(v36 + 24);
        sub_1B6220784();
        sub_1B6220784();

        sub_1B6220784();
        if (v54 >= v55 >> 1)
        {
          v57 = OUTLINED_FUNCTION_636();
          sub_1B609C384(v57, v58, v59, v36);
          v36 = v60;
        }

        ++v46;
        v47 += 2;
        *(v36 + 16) = v54 + 1;
        v56 = v36 + 16 * v54;
        *(v56 + 32) = &unk_1B622D2D0;
        *(v56 + 40) = v53;
      }

      while (v106 != v46);
      v74 = v107;
      v75 = *(v107 + 128);
      v29 = *(v107 + 136);
    }

    else
    {
      v76 = sub_1B6220784();
      OUTLINED_FUNCTION_543(v76, v77, v78, v79, v80, v81, v82, v83, v101, v103, 0, v22, v109, v28, v113);

      sub_1B6220784();
      v74 = v108;
      v75 = v112;
    }

    v84 = v74[18];
    v85 = v84[3];
    v86 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v85);
    OUTLINED_FUNCTION_90();
    v87 = swift_allocObject();
    *(v87 + 16) = v75;
    *(v87 + 24) = v29;
    sub_1B6220784();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0, &qword_1B622D260);
    v89 = OUTLINED_FUNCTION_253();
    v74[20] = sub_1B6061450(v89, v90, v87, v85, v88, v86);

    v91 = swift_task_alloc();
    v74[21] = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    OUTLINED_FUNCTION_320();
    *v91 = v92;
    v91[1] = sub_1B6134F00;
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_607();

    return MEMORY[0x1EEE6DA10](v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1B6134F00()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6134FF8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6135058()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61350BC()
{
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_2_21();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_281();

  OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B61351D4()
{
  OUTLINED_FUNCTION_13_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FB0, &qword_1B622D260);
  OUTLINED_FUNCTION_468(&qword_1EB925FB8, &unk_1B622D280, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B613526C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B61352C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[53] = v11;
  v8[50] = a6;
  v8[51] = a7;
  v8[48] = a4;
  v8[49] = a5;
  v8[46] = a2;
  v8[47] = a3;
  v8[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD8, &qword_1B622D378);
  v8[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B613537C, 0, 0);
}

uint64_t sub_1B613537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_299();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_322();
  a28 = v30;
  v34 = *(v30 + 368);
  v33 = *(v30 + 376);
  v35 = v33[1];
  a15 = *v33;
  a16 = v35;
  v36 = v33[3];
  a17 = v33[2];
  a18 = v36;
  v132 = sub_1B605C024(v34);
  HIDWORD(a11) = v37;
  if (v34 || (v38 = *(v30 + 376), (*v38 & 1) == 0))
  {
    sub_1B6038910(*(v30 + 368), 0, *(v30 + 408), *(v30 + 416));
    OUTLINED_FUNCTION_519();
    *(v30 + 464) = v69;
    v70 = OUTLINED_FUNCTION_629();
    *(v30 + 16) = v72;
    *(v30 + 32) = v71;
    *(v30 + 48) = v70;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v73 = *(v30 + 384);
    v74 = sub_1B6220B34();
    OUTLINED_FUNCTION_601(v74, qword_1EDAC2AB0);
    sub_1B605B798(v73, v30 + 64);
    sub_1B6220784();
    v75 = sub_1B6220B14();
    sub_1B62217F4();
    OUTLINED_FUNCTION_697();
    v76 = OUTLINED_FUNCTION_552();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v30 + 384);
    if (v78)
    {
      OUTLINED_FUNCTION_110();
      v80 = swift_slowAlloc();
      OUTLINED_FUNCTION_233();
      *&a15 = swift_slowAlloc();
      *v80 = 136446467;
      v81 = OUTLINED_FUNCTION_232();
      v84 = sub_1B602EEB0(v81, v82, v83);
      OUTLINED_FUNCTION_405(v84);
      v86 = v79[1];
      v85 = v79[2];
      *(v30 + 112) = *v79;
      *(v30 + 128) = v86;
      *(v30 + 144) = v85;
      v87 = sub_1B6221234();
      v89 = sub_1B602EEB0(v87, v88, &a15);

      *(v80 + 14) = v89;
      OUTLINED_FUNCTION_254();
      _os_log_impl(v90, v91, v92, v93, v94, 0x16u);
      OUTLINED_FUNCTION_454();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      v95 = OUTLINED_FUNCTION_52_1();
      MEMORY[0x1B8C91C90](v95);
    }

    else
    {
      sub_1B605C4AC(*(v30 + 384));
    }

    *(v30 + 344) = *(v30 + 368);
    *(v30 + 352) = 0;
    OUTLINED_FUNCTION_1_30();
    v133 = v96;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v30 + 472) = v97;
    *v97 = v98;
    v97[1] = sub_1B6135AD0;
    OUTLINED_FUNCTION_252();

    return v107(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, v132, a13, v133, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1), a19, a20, a21, a22);
  }

  else
  {
    v40 = *(v30 + 408);
    v39 = *(v30 + 416);
    v42 = *(v30 + 392);
    v41 = *(v30 + 400);
    v43 = *(v30 + 384);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A48, &qword_1B6224B58);
    v45 = OUTLINED_FUNCTION_581(v44);
    *(v45 + 16) = xmmword_1B6225510;
    OUTLINED_FUNCTION_633();
    v46 = swift_allocObject();
    v47 = OUTLINED_FUNCTION_632(v46, v43[2], v43[1], *v43);
    v47[4].n128_u64[0] = v42;
    v47[4].n128_u64[1] = v41;
    v47[5].n128_u64[0] = v40;
    v47[5].n128_u64[1] = v39;
    v47[6].n128_u64[0] = v132;
    OUTLINED_FUNCTION_553();
    *(v48 + 104) = v49;
    *(v48 + 112) = 0;
    *(v45 + 32) = &unk_1B622D3A8;
    *(v45 + 40) = v48;
    v50 = *(v38 + 8);
    v131 = v50[2];
    if (v131)
    {
      sub_1B605B798(v43, v30 + 160);

      sub_1B6220784();
      v51 = 0;
      v50 += 5;
      do
      {
        a14 = v45;
        v52 = *(v30 + 416);
        v54 = *(v30 + 400);
        v53 = *(v30 + 408);
        v55 = *(v30 + 384);
        v56 = *(v30 + 392);
        v57 = *(v50 - 1);
        a13 = *v50;
        sub_1B602D048(*(v30 + 424), v30 + 304);
        v58 = v55[1];
        a15 = *v55;
        a16 = v58;
        a17 = v55[2];
        OUTLINED_FUNCTION_631();
        v59 = swift_allocObject();
        sub_1B60273A4((v30 + 304), v59 + 16);
        v60 = a16;
        *(v59 + 56) = a15;
        *(v59 + 72) = v60;
        *(v59 + 88) = a17;
        *(v59 + 104) = v56;
        *(v59 + 112) = v54;
        *(v59 + 120) = v53;
        *(v59 + 128) = v52;
        *(v59 + 136) = 0;
        *(v59 + 144) = v51;
        *(v59 + 152) = v57;
        v45 = a14;
        *(v59 + 160) = a13;
        *(v59 + 168) = v132;
        OUTLINED_FUNCTION_553();
        *(v59 + 176) = v61;
        sub_1B605B798(v55, v30 + 208);
        v62 = *(a14 + 16);
        v63 = *(a14 + 24);

        sub_1B6220784();
        if (v62 >= v63 >> 1)
        {
          OUTLINED_FUNCTION_387();
          sub_1B609C8A4(v65, v66, v67, a14);
          v45 = v68;
        }

        ++v51;
        v50 += 2;
        *(v45 + 16) = v62 + 1;
        v64 = v45 + 16 * v62;
        *(v64 + 32) = &unk_1B622D3B8;
        *(v64 + 40) = v59;
      }

      while (v131 != v51);
    }

    else
    {
      sub_1B605B798(v43, v30 + 256);

      sub_1B6220784();
    }

    OUTLINED_FUNCTION_381(*(v30 + 424));
    OUTLINED_FUNCTION_90();
    v110 = swift_allocObject();
    OUTLINED_FUNCTION_604(v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0, &qword_1B622D358);
    v111 = OUTLINED_FUNCTION_253();
    *(v30 + 440) = OUTLINED_FUNCTION_179(v111, v112);

    if (v50)
    {

      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_252();

      return v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, v131, a11, v132, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1), a19, a20, a21, a22);
    }

    else
    {
      v121 = swift_task_alloc();
      *(v30 + 448) = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      OUTLINED_FUNCTION_320();
      *v121 = v122;
      v121[1] = sub_1B6135914;
      OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_252();

      return MEMORY[0x1EEE6DA10](v123, v124, v125, v126, v127, v128, v129, v130, a9, v131, a11, v132, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, *(&a18 + 1));
    }
  }
}

uint64_t sub_1B6135914()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6135A0C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_97();

  return v0();
}

uint64_t sub_1B6135A6C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6135AD0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_53_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_17();
  *v5 = v4;
  *(v6 + 480) = v0;

  OUTLINED_FUNCTION_12_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B6135BC8()
{
  OUTLINED_FUNCTION_13_7();

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925FD0, &qword_1B622D358);
  OUTLINED_FUNCTION_468(&qword_1EB925FD8, &qword_1B622D378, *(v0 + 40));
  OUTLINED_FUNCTION_329();

  OUTLINED_FUNCTION_97();

  return v1();
}

uint64_t sub_1B6135C68()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B6135CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a8;
  v8[39] = v11;
  v8[36] = a6;
  v8[37] = a7;
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F98, &qword_1B622D190);
  v8[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6135D80, 0, 0);
}

uint64_t sub_1B6135D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 + 256);
  v24 = sub_1B605C024(v23);
  v26 = v25;
  if (v23 || (v27 = *(v22 + 264), (*v27 & 1) == 0))
  {
    sub_1B6038910(*(v22 + 256), 0, *(v22 + 296), *(v22 + 304));
    OUTLINED_FUNCTION_565();
    *(v22 + 352) = v57;
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v22 + 360) = v58;
    *v58 = v59;
    v58[1] = sub_1B61363B4;
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_606();

    return sub_1B6131D94(v60, v61, v62, v63, v64, v65, v66, v67);
  }

  else
  {
    v28 = *(v22 + 296);
    v29 = *(v22 + 304);
    v31 = *(v22 + 280);
    v30 = *(v22 + 288);
    v32 = *(v22 + 272);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924A30, &qword_1B6224B40);
    v34 = OUTLINED_FUNCTION_581(v33);
    *(v34 + 16) = xmmword_1B6225510;
    *(v22 + 56) = *v32;
    *(v22 + 72) = v32[1];
    *(v22 + 88) = v32[2];
    OUTLINED_FUNCTION_633();
    swift_allocObject();
    v35 = OUTLINED_FUNCTION_649();
    v39 = OUTLINED_FUNCTION_632(v36, v35, v37, v38);
    v39[4].n128_u64[0] = v31;
    v39[4].n128_u64[1] = v30;
    v39[5].n128_u64[0] = v28;
    v39[5].n128_u64[1] = v29;
    v39[6].n128_u64[0] = v24;
    v39[6].n128_u8[8] = v26 & 1;
    v39[7].n128_u64[0] = 0;
    *(v34 + 32) = &unk_1B622D1C8;
    *(v34 + 40) = v39;
    v40 = *(v27 + 8);
    v87 = *(v40 + 16);
    if (v87)
    {
      v85 = v26;
      v86 = v24;
      sub_1B6153380(v22 + 56, v22 + 104);
      sub_1B6153380(v22 + 72, v22 + 120);
      sub_1B6153380(v22 + 88, v22 + 136);

      sub_1B6220784();
      v29 = 0;
      v41 = (v40 + 40);
      do
      {
        v88 = v34;
        v42 = *(v22 + 304);
        v44 = *(v22 + 288);
        v43 = *(v22 + 296);
        v45 = *(v22 + 272);
        v46 = *(v22 + 280);
        v48 = *(v41 - 1);
        v47 = *v41;
        sub_1B602D048(*(v22 + 312), v22 + 16);
        v89 = *v45;
        v90 = v45[1];
        v91 = v45[2];
        OUTLINED_FUNCTION_631();
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_455(v49);
        *(v45 + 56) = v89;
        *(v45 + 72) = v90;
        *(v45 + 88) = v91;
        *(v45 + 13) = v46;
        *(v45 + 14) = v44;
        *(v45 + 15) = v43;
        *(v45 + 16) = v42;
        *(v45 + 17) = 0;
        *(v45 + 18) = v29;
        *(v45 + 19) = v48;
        *(v45 + 20) = v47;
        v34 = v88;
        *(v45 + 21) = v86;
        *(v45 + 176) = v85 & 1;
        sub_1B6153380(v22 + 56, v22 + 152);
        sub_1B6153380(v22 + 72, v22 + 168);
        sub_1B6153380(v22 + 88, v22 + 184);
        v50 = *(v88 + 16);
        v51 = *(v88 + 24);

        sub_1B6220784();
        if (v50 >= v51 >> 1)
        {
          OUTLINED_FUNCTION_387();
          sub_1B609C8B8(v53, v54, v55, v88);
          v34 = v56;
        }

        ++v29;
        v41 += 2;
        *(v34 + 16) = v50 + 1;
        v52 = v34 + 16 * v50;
        *(v52 + 32) = &unk_1B622D1D8;
        *(v52 + 40) = v45;
      }

      while (v87 != v29);
    }

    else
    {
      sub_1B6153380(v22 + 56, v22 + 200);
      sub_1B6153380(v22 + 72, v22 + 216);
      sub_1B6153380(v22 + 88, v22 + 232);

      sub_1B6220784();
    }

    OUTLINED_FUNCTION_381(*(v22 + 312));
    OUTLINED_FUNCTION_90();
    v70 = swift_allocObject();
    OUTLINED_FUNCTION_604(v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925F90, &qword_1B622D168);
    v71 = OUTLINED_FUNCTION_253();
    *(v22 + 328) = OUTLINED_FUNCTION_179(v71, v72);

    if (v29)
    {

      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_606();

      return v73();
    }

    else
    {
      v75 = swift_task_alloc();
      *(v22 + 336) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
      OUTLINED_FUNCTION_320();
      *v75 = v76;
      v75[1] = sub_1B61361F8;
      OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_606();

      return MEMORY[0x1EEE6DA10](v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }
  }
}