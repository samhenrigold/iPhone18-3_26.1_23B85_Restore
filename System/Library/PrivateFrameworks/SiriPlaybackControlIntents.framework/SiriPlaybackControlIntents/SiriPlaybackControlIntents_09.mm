void sub_26898CFF8(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_26898ECBC();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v7 = v3;
  v8 = SkipTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_26898D0C0(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B36ED4();
  sub_26898ECBC();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v7 = v3;
  v8 = SkipTimeIntentResponse.init(code:userActivity:)(v5, v3);
  a2();
}

void sub_26898D228(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for SignedDuration();
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_26893A824(0, 0, 0, 0xE000000000000000);
    [v5 setDirection_];
  }

  type metadata accessor for SignedDurationResolutionResult();
  v7 = sub_268B2E114(v5);
  (a3)[2](a3, v7);

  _Block_release(a3);
}

void sub_26898D2F0(void *a1, void (*a2)(void))
{
  v3 = [a1 duration];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for SignedDuration();
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = OUTLINED_FUNCTION_86_1();
    v4 = sub_26893A824(v6, 0, 0, 0xE000000000000000);
    [v4 setDirection_];
  }

  type metadata accessor for SignedDurationResolutionResult();
  v7 = sub_268B2E114(v4);
  a2();
}

void sub_26898D3CC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for skip time", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for SkipTimeDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F650], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_268906D70();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_26898D824()
{
  OUTLINED_FUNCTION_26();
  v36 = v0;
  v37 = v1;
  v38 = v3;
  v39 = v2;
  v35 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v34 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v19 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v33 = *(v12 + 16);
  v33(v18, v19, v10);
  v20 = sub_268B37A34();
  v21 = sub_268B37F04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "Resolving devices for skip time", v22, 2u);
    OUTLINED_FUNCTION_12();
  }

  v23 = *(v12 + 8);
  v23(v18, v10);
  v24 = sub_268921060();
  v25 = v36;
  if ((v24 & 1) != 0 && (__swift_project_boxed_opaque_existential_1(&v36[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState], *&v36[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState + 24]), (sub_2688C3240() & 1) == 0))
  {
    v27 = v34;
    v33(v34, v19, v10);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v30);
      _os_log_impl(&dword_2688BB000, v28, v29, "Whole House Audio requests are unsupported on this platform", v25, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v23(v27, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_11_11(v31, xmmword_268B3BBA0);
    v31[2].n128_u64[0] = sub_268B17B04(2);
    v37(v31);
  }

  else
  {
    v26 = v35;
    (*(v5 + 104))(v9, *MEMORY[0x277D5F650], v35);
    [v39 mediaType];

    sub_268907630();
    (*(v5 + 8))(v9, v26);
  }

  OUTLINED_FUNCTION_23();
}

void sub_26898DBC8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      (*(v9 + 16))(v17);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_172_0();
        v24 = OUTLINED_FUNCTION_173_0();
        v66 = v24;
        *v23 = 136315138;
        v25 = type metadata accessor for Device();
        v26 = MEMORY[0x26D6256F0](v6, v25);
        OUTLINED_FUNCTION_30_3(v26, v27);
        v64 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v23 + 4) = v9;
        _os_log_impl(&dword_2688BB000, v21, v22, "SkipTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (v2)[1](v17, v7);
        v2 = v64;
      }

      else
      {

        (*(v9 + 8))(v17, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v49, xmmword_268B3BBA0);
      v50 = sub_268B2CCFC(v6);
    }

    else
    {
      v64 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
      v62 = *(v9 + 16);
      v63 = v35;
      v62(v20);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_172_0();
        v61 = v9;
        v39 = v38;
        v60 = OUTLINED_FUNCTION_173_0();
        v66 = v60;
        *v39 = 136315138;
        v65 = v6 & 1;
        sub_26890C84C();
        v40 = sub_268B384A4();
        v42 = sub_26892CDB8(v40, v41, &v66);

        *(v39 + 4) = v42;
        _os_log_impl(&dword_2688BB000, v36, v37, "SkipTimeIntentHandler#resolveDevices Error resolving devices: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        OUTLINED_FUNCTION_12();
        v9 = v61;
        OUTLINED_FUNCTION_12();
      }

      v43 = *(v9 + 8);
      v43(v20, v7);
      v2 = v64;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v56, xmmword_268B3BBA0);
        v56[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v62)(v13, v63, v7);
      v44 = sub_268B37A34();
      v45 = sub_268B37EE4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v46);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v47, v48, "SkipTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v43(v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v49, xmmword_268B3BBA0);
      v50 = sub_268B17B04(1);
    }

    v49[2].n128_u64[0] = v50;
LABEL_32:
    v57 = sub_268B37CE4();
    OUTLINED_FUNCTION_15_7();
    v58(v2, v57);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
  (*(v9 + 16))(v0);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_172_0();
    v31 = OUTLINED_FUNCTION_173_0();
    v66 = v31;
    *v30 = 136315138;
    v32 = type metadata accessor for Device();
    v33 = MEMORY[0x26D6256F0](v6, v32);
    OUTLINED_FUNCTION_30_3(v33, v34);
    v64 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v30 + 4) = v9;
    _os_log_impl(&dword_2688BB000, v28, v29, "SkipTimeIntentHandler#resolveDevices Success resolving devices: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v2[1](v0, v7);
    v2 = v64;
  }

  else
  {

    (*(v9 + 8))(v0, v7);
  }

  v51 = sub_2688EFD0C();
  if (!v51)
  {
LABEL_30:
    type metadata accessor for SkipTimeDevicesResolutionResult();
    goto LABEL_32;
  }

  v52 = v51;
  v66 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipTimeDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v6);
      }

      else
      {
        v54 = *(v6 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_26898E2C4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v64 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      OUTLINED_FUNCTION_15_7();
      v22(v14);

      v23 = sub_268B37A34();
      v24 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_172_0();
        v26 = OUTLINED_FUNCTION_173_0();
        v66 = v26;
        *v25 = 136315138;
        v27 = type metadata accessor for Device();
        v28 = MEMORY[0x26D6256F0](v7, v27);
        OUTLINED_FUNCTION_30_3(v28, v29);
        v63 = v8;
        OUTLINED_FUNCTION_16_7();
        *(v25 + 4) = v2;
        _os_log_impl(&dword_2688BB000, v23, v24, "SkipTimeIntentHandler#resolveDevices Disambiguating between devices: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v10 + 8))(v14, v63);
      }

      else
      {

        (*(v10 + 8))(v14, v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v52 = swift_allocObject();
      OUTLINED_FUNCTION_11_11(v52, xmmword_268B3BBA0);
      v53 = sub_268B2CCFC(v7);
    }

    else
    {
      v63 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v61 = *(v10 + 16);
      v62 = v38;
      v61(v21);
      v39 = sub_268B37A34();
      v40 = sub_268B37EE4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_172_0();
        v60 = v10;
        v42 = v41;
        v59 = OUTLINED_FUNCTION_173_0();
        v66 = v59;
        *v42 = 136315138;
        v65 = v7 & 1;
        sub_26890C84C();
        v43 = sub_268B384A4();
        v45 = sub_26892CDB8(v43, v44, &v66);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_2688BB000, v39, v40, "SkipTimeIntentHandler#resolveDevices Error resolving devices: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_12();
        v10 = v60;
        OUTLINED_FUNCTION_12();
      }

      v46 = *(v10 + 8);
      v46(v21, v8);
      if (v7)
      {
        (v61)(v0, v62, v8);
        v47 = sub_268B37A34();
        v48 = sub_268B37EE4();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v49);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v50, v51, "SkipTimeIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v46(v0, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v52 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v52, xmmword_268B3BBA0);
        v53 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v52 = swift_allocObject();
        OUTLINED_FUNCTION_11_11(v52, xmmword_268B3BBA0);
        v53 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v52[2].n128_u64[0] = v53;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v30(v18);

  v31 = sub_268B37A34();
  v32 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_172_0();
    v34 = OUTLINED_FUNCTION_173_0();
    v66 = v34;
    *v33 = 136315138;
    v35 = type metadata accessor for Device();
    v36 = MEMORY[0x26D6256F0](v7, v35);
    OUTLINED_FUNCTION_30_3(v36, v37);
    v63 = v8;
    OUTLINED_FUNCTION_16_7();
    *(v33 + 4) = v2;
    _os_log_impl(&dword_2688BB000, v31, v32, "SkipTimeIntentHandler#resolveDevices Success resolving devices: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v10 + 8))(v18, v63);
  }

  else
  {

    (*(v10 + 8))(v18, v8);
  }

  v54 = sub_2688EFD0C();
  v52 = MEMORY[0x277D84F90];
  if (!v54)
  {
    goto LABEL_32;
  }

  v55 = v54;
  v66 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v55 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SkipTimeDevicesResolutionResult();
    v56 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26D625BD0](v56, v7);
      }

      else
      {
        v57 = *(v7 + 8 * v56 + 32);
      }

      v58 = v57;
      ++v56;
      sub_268B2CC98(v57);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v55 != v56);
    v52 = v66;
LABEL_32:
    v64(v52);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_26898E99C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_86_1();
  type metadata accessor for SkipTimeDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_26898EA04(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
    if ([v4 direction])
    {
      v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
      v7 = 1;
      v8 = 0;
      goto LABEL_6;
    }
  }

  v9 = sub_268B36EA4();
  objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v5 = v9;
  v7 = 5;
  v8 = v9;
LABEL_6:
  v10 = SkipTimeIntentResponse.init(code:userActivity:)(v7, v8);
  (a3)[2](a3, v10);

  _Block_release(a3);
}

void sub_26898EB0C(void *a1, void (*a2)(void))
{
  v4 = [a1 duration];
  if (v4)
  {
    v5 = v4;
    if ([v4 direction])
    {
      v6 = objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
      v7 = 1;
      v8 = 0;
      goto LABEL_6;
    }
  }

  sub_268B36EA4();
  OUTLINED_FUNCTION_86_1();
  objc_allocWithZone(type metadata accessor for SkipTimeIntentResponse());
  v5 = v2;
  v7 = 5;
  v8 = v2;
LABEL_6:
  v9 = SkipTimeIntentResponse.init(code:userActivity:)(v7, v8);
  a2();
}

void sub_26898EC30(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_26898ECBC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v32 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v33 = (v5 - v6);
  v8 = MEMORY[0x28223BE20](v7);
  v31 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v15, qword_2802CDA10);
  (*(v17 + 16))(v21);
  v22 = sub_268B37A34();
  v23 = sub_268B37ED4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_14();
    v30 = v12;
    OUTLINED_FUNCTION_81(v24);
    _os_log_impl(&dword_2688BB000, v22, v23, "responseCodeFromResult for SkipTimeIntentResponseCode", v1, 2u);
    OUTLINED_FUNCTION_12();
  }

  (*(v17 + 8))(v21, v15);
  sub_26893B66C(v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v32;
    v26 = *(v32 + 32);
    v26(v11, v14, v2);
    v27 = v31;
    sub_268B36EC4();
    v28 = *(v25 + 8);
    v28(v11, v2);
    v29 = v33;
    v26(v33, v27, v2);
    if ((*(v25 + 88))(v29, v2) != *MEMORY[0x277D5F6B0])
    {
      v28(v29, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SkipTimeIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SkipTimeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_26898F0B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_26898F348(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_26898F310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_26898F348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v27[3] = sub_268B36C54();
  v27[4] = MEMORY[0x277D5F680];
  v27[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  v11 = type metadata accessor for SkipTimeIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_2879539D0;
  v25[0] = v17;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceSelector] = a2;
  sub_26890C900(v25, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_analyticsService]);
  sub_26890C900(a3, v24);
  sub_26890C900(a5, v23);
  type metadata accessor for AceServiceHelper();
  v18 = swift_allocObject();
  sub_2688E6514(v24, v18 + 16);
  sub_2688E6514(v23, v18 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_aceServiceHelper] = v18;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents21SkipTimeIntentHandler_deviceState]);
  v22.receiver = v12;
  v22.super_class = v11;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v19;
}

uint64_t sub_26898F570()
{
  v1 = sub_268B37A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_26898F718()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_11_11(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SkipTimeDevicesResolutionResult();
}

id sub_26898F790()
{
  result = [objc_allocWithZone(type metadata accessor for MoveSpeakerIntentHandler()) init];
  qword_2802CD930 = result;
  return result;
}

uint64_t sub_26898F7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = sub_268B35494();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v51 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  v48 = (v7 - v6);
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v47 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v49 = &v46 - v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v50 = *(v10 + 16);
  v50(v17, v18, v8);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "MoveSpeakerFlowStrategy#actionForInput called", v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v10 + 8);
  v22(v17, v8);
  sub_268B35414();
  sub_26893BA8C(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v51) != 1)
  {
    v33 = v5;
    v34 = v48;
    sub_2688C0464(v33, v48);
    v35 = *v34;
    if (v35 == 24)
    {
LABEL_10:
      v50(v49, v18, v8);
      v36 = sub_268B37A34();
      v37 = sub_268B37EE4();
      if (os_log_type_enabled(v36, v37))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_23_4(&dword_2688BB000, v38, v39, "MoveSpeakerFlowStrategy#actionForInput not a moveSpeaker request, ignoring...");
        OUTLINED_FUNCTION_12();
      }

      v22(v49, v8);
      type metadata accessor for ErrorFilingHelper();
      OUTLINED_FUNCTION_3_16();
      static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(v40 + 16, v41 | 0x8000000000000000, 0x6165705365766F4DLL, 0xEB0000000072656BLL, 0xD000000000000014, v42 | 0x8000000000000000);
      sub_268B34ED4();
      return sub_2688C2F6C(v34);
    }

    if (sub_26893E3F8(v35) == 0x6165705365766F6DLL && v43 == 0xEB0000000072656BLL)
    {
    }

    else
    {
      v45 = sub_268B38444();

      if ((v45 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_268B34EC4();
    return sub_2688C2F6C(v34);
  }

  sub_2688C2E64(v5);
  v23 = v47;
  v50(v47, v18, v8);
  v24 = sub_268B37A34();
  v25 = sub_268B37EE4();
  if (os_log_type_enabled(v24, v25))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_23_4(&dword_2688BB000, v26, v27, "MoveSpeakerFlowStrategy#actionForInput not a MediaPlayerIntent, ignoring...");
    OUTLINED_FUNCTION_12();
  }

  v22(v23, v8);
  type metadata accessor for ErrorFilingHelper();
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_6_14();
  static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(v28, v29, v30, 0xEB0000000072656BLL, 0xD000000000000014, v31);
  return sub_268B34ED4();
}

void sub_26898FCB8(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v70 = a2;
  v65 = a1;
  v67 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v71 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v62 = v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  v64 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v66 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v24 = __swift_project_value_buffer(v16, qword_2802CDA10);
  v59 = *(v18 + 16);
  v60 = v24;
  v59(v23);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_14();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "MoveSpeakerFlowStrategy#makeIntentFromParse called", v27, 2u);
    OUTLINED_FUNCTION_12();
  }

  v61 = *(v18 + 8);
  v61(v23, v16);
  v28 = *(v71 + 16);
  v29 = v65;
  v30 = v67;
  v28(v9, v65, v67);
  sub_26893BA8C(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v64) == 1)
  {
    sub_2688C2E64(v12);
    (v59)(v66, v60, v16);
    v31 = v62;
    v28(v62, v29, v30);
    v32 = v30;
    v33 = sub_268B37A34();
    v34 = sub_268B37EE4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v35 = 136315138;
      v28(v9, v31, v32);
      v36 = sub_268B37C24();
      v38 = v37;
      v39 = OUTLINED_FUNCTION_7_11();
      v40(v39);
      v41 = sub_26892CDB8(v36, v38, &v72);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2688BB000, v33, v34, "MoveSpeakerFlowStrategy#makeIntentFromParse received unexpected parse: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      v43 = OUTLINED_FUNCTION_7_11();
      v44(v43);
    }

    v61(v66, v16);
    type metadata accessor for ErrorFilingHelper();
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_6_14();
    static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(v45 + 30, v46 | 0x8000000000000000, v48, 0xEB0000000072656BLL, 0xD000000000000014, v47 | 0x8000000000000000);
    sub_2688C2ECC();
    v49 = swift_allocError();
    *v50 = 28;
    v68(v49, 1);
  }

  else
  {
    sub_2688C0464(v12, v15);
    if (v70)
    {
      v42 = v70;
    }

    else
    {
      v42 = [objc_allocWithZone(type metadata accessor for MoveSpeakerIntent()) init];
    }

    v51 = v70;
    sub_268991714(v15);
    v52 = v63;
    v53 = v63[5];
    v54 = v63[6];
    __swift_project_boxed_opaque_existential_1(v63 + 2, v53);
    v55 = v15;
    v56 = swift_allocObject();
    v57 = v69;
    v56[2] = v68;
    v56[3] = v57;
    v56[4] = v42;
    v58 = v42;

    sub_268AD35F4(v58, &off_287953CA8, (v52 + 7), sub_268990B70, v56, v53, v54);

    sub_2688C2F6C(v55);
  }
}

uint64_t sub_2689902B8(uint64_t (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "MoveSpeakerFlowStrategy#makeIntentFromParse finished creating intent from parse", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return a1(a3, 0);
}

uint64_t sub_268990474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268B3C5A0;
  sub_268B34BB4();
  swift_allocObject();
  *(v0 + 32) = sub_268B34BA4();
  swift_allocObject();
  *(v0 + 40) = sub_268B34BA4();
  return v0;
}

uint64_t sub_26899058C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BB210](a1, a2, a3, a4, v11, a6);
}

id sub_268990634()
{
  if (qword_2802A4D78 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD930;

  return v1;
}

uint64_t sub_268990690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA8](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689906FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9DA0](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_268990768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821B9D98](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689907D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268990824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268990878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

uint64_t sub_2689908E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BA0E0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268990960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MoveSpeakerFlowStrategy();

  return MEMORY[0x2821BB548](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268990A78(uint64_t a1)
{
  result = sub_268990AF0(&qword_2802A6900, &unk_268B40E50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268990AF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoveSpeakerFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268990B30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268990BC4(char *a1)
{
  v71 = a1;
  v1 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v66 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v75 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v64 - v10;
  v74 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_20_0();
  v64 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v65 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v67 = &v64 - v16;
  v17 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - v28;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v31 = *(v19 + 16);
  v68 = v30;
  v69 = v31;
  (v31)(v29);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v73 = v27;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "Making flow from parse", v34, 2u);
    v27 = v73;
    OUTLINED_FUNCTION_12();
  }

  v72 = *(v19 + 8);
  v73 = (v19 + 8);
  v72(v29, v17);
  v35 = *(v3 + 16);
  v36 = v71;
  v35(v75, v71, v1);
  v37 = v70;
  sub_26893BA8C(v70);
  if (__swift_getEnumTagSinglePayload(v37, 1, v74) == 1)
  {
    sub_2688EF38C(v37, &qword_2802A5650, &unk_268B3BAC0);
    v69(v23, v68, v17);
    v38 = v66;
    v35(v66, v36, v1);
    v39 = sub_268B37A34();
    v40 = sub_268B37EE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76 = v71;
      *v41 = 136315138;
      v74 = v23;
      v35(v75, v38, v1);
      v42 = sub_268B37C24();
      v43 = v1;
      v44 = v42;
      v46 = v45;
      (*(v3 + 8))(v38, v43);
      v47 = sub_26892CDB8(v44, v46, &v76);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2688BB000, v39, v40, "MediaPlayerFlowProvider.makeFlow Received unexpected parse: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v48 = v74;
    }

    else
    {

      (*(v3 + 8))(v38, v1);
      v48 = v23;
    }

    v72(v48, v17);
    return 0;
  }

  else
  {
    v49 = v67;
    sub_2688C0464(v37, v67);
    v69(v27, v68, v17);
    v50 = v65;
    sub_268946C8C(v49, v65);
    v51 = sub_268B37A34();
    v52 = sub_268B37F04();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v27;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v76 = v55;
      *v54 = 136315138;
      sub_268946C8C(v50, v64);
      v56 = sub_268B37C24();
      v58 = v57;
      sub_2688C2F6C(v50);
      v59 = sub_26892CDB8(v56, v58, &v76);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2688BB000, v51, v52, "MediaPlayerIntent: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v60 = v53;
    }

    else
    {

      sub_2688C2F6C(v50);
      v60 = v27;
    }

    v72(v60, v17);
    sub_268991280(v49);
    v61 = v62;
    sub_2688C2F6C(v49);
  }

  return v61;
}

void sub_268991280(_BYTE *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  switch(*a1)
  {
    case 1:
    case 3:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B03D2C();
      return;
    case 2:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B041A4();
      return;
    case 4:
    case 5:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0533C();
      return;
    case 6:
    case 0xA:
      goto LABEL_26;
    case 7:
    case 8:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B04CDC();
      return;
    case 9:
      v17 = a1[*(type metadata accessor for MediaPlayerIntent(0) + 32)];
      if (v17 == 2)
      {
        goto LABEL_21;
      }

      if (v17)
      {
        v18 = sub_268B38444();

        if ((v18 & 1) == 0)
        {
LABEL_21:
          __swift_project_boxed_opaque_existential_1(v1, v1[3]);
          sub_268B0566C();
          return;
        }
      }

      else
      {
      }

LABEL_26:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0500C();
      return;
    case 0xB:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0599C();
      return;
    case 0xC:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B07BBC();
      return;
    case 0xD:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      goto LABEL_19;
    case 0xE:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0366C();
      return;
    case 0xF:
    case 0x18:
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v3, qword_2802CDA10);
      (*(v4 + 16))(v6, v10, v3);
      v11 = sub_268B37A34();
      v12 = sub_268B37F04();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2688BB000, v11, v12, "Unable to make flow for mediaPlayer intent", v13, 2u);
        MEMORY[0x26D6266E0](v13, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      return;
    case 0x10:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B0869C();
      return;
    case 0x11:
    case 0x12:
    case 0x17:
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      sub_268B089CC();
      return;
    default:
      v14 = type metadata accessor for MediaPlayerIntent(0);
      sub_2689916A4(&a1[*(v14 + 40)], v9);
      v15 = sub_268B37924();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v15);
      sub_2688EF38C(v9, &qword_2802A5CA8, &unk_268B3CE30);
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      if (EnumTagSinglePayload == 1)
      {
        sub_268B0461C();
      }

      else
      {
LABEL_19:
        sub_268B074FC();
      }

      return;
  }
}

uint64_t sub_2689916A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_268991714(uint64_t a1)
{
  sub_26899178C(a1);
  v3 = type metadata accessor for MediaPlayerIntent(0);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + *(v3 + 48));
  if (v6 != 26)
  {
    v4 = sub_268942D54(v6);
  }

  v7 = sub_268A7528C(v4, v5);

  return [v1 setMediaType_];
}

uint64_t sub_26899178C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v8);
  sub_268965BF8();
  v9 = sub_268B37854();
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v11 = v9 + 32;
    do
    {
      sub_26890C900(v11, v22);
      sub_26890C900(v22, v21);
      sub_268AC88F0(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v11 += 40;
      --v10;
    }

    while (v10);

    v12 = v23;
    v13 = off_28795BC58;
    v14 = type metadata accessor for MoveSpeakerIntent();
    v13(v12, v14, &off_28795BC48);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2688BB000, v16, v17, "Home Automation entities are empty, skip adding to intent.", v18, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_2688C2F6C(v8);
}

id AddSpeakerIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AddSpeakerIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_2689962E4(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268991EA8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 22);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_268958724;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_26899207C(v15, v16, sub_268996618, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

void sub_26899207C(NSObject *a1, uint64_t a2, objc_class *a3, objc_class *a4)
{
  v119 = a2;
  v126 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v116 = (&v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v117 = (&v107 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v118 = (&v107 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v125 = (&v107 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v107 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v107 - v19);
  v21 = swift_allocObject();
  v21[2].isa = a3;
  v21[3].isa = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268958D98;
  *(v22 + 24) = v21;
  v120 = v22;
  v23 = qword_2802A4F30;

  if (v23 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v24 = __swift_project_value_buffer(v6, qword_2802CDA10);
    v25 = *(v7 + 16);
    v121 = v24;
    v122 = v25;
    v123 = v7 + 16;
    (v25)(v20);
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "AddSpeakerIntentHandler.handle() called", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v30 = *(v7 + 8);
    v29 = v7 + 8;
    v124 = v30;
    v30(v20, v6);
    v31 = v126;
    v32 = [v126 source];
    if (!v32)
    {
      goto LABEL_18;
    }

    v20 = v32;
    v33 = sub_268B0F7F4(v31);
    if (!v33)
    {

      goto LABEL_18;
    }

    v34 = v33;
    v35 = sub_2688F42F4(v20);
    if (!v35)
    {

LABEL_18:

LABEL_19:
      v122(v18, v121, v6);
      v40 = sub_268B37A34();
      v41 = sub_268B37EE4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2688BB000, v40, v41, "Could not find a valid source and/or destinations in the intent", v42, 2u);
        MEMORY[0x26D6266E0](v42, -1, -1);
      }

      v124(v18, v6);
      v43 = sub_268B36EA4();
      v44 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v45 = v43;
      v46 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v43);
      v127[0] = v46;
      (a3)(v127);

      goto LABEL_22;
    }

    v36 = v35;
    v113 = v29;
    v114 = v6;
    v110 = a3;
    v111 = v21;
    v112 = a4;
    v37 = sub_2688EFD0C();
    v6 = 0;
    a4 = (v36 & 0xC000000000000001);
    v7 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_8:
    if (v37 == v6)
    {

      a3 = v110;
      v6 = v114;
      goto LABEL_19;
    }

    if (a4)
    {
      v38 = MEMORY[0x26D625BD0](v6, v36);
    }

    else
    {
      if (v6 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v38 = *(v36 + 8 * v6 + 32);
    }

    v21 = v38;
    if (!__OFADD__(v6, 1))
    {
      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  sub_26892D418(v38);
  if (!v39)
  {

    ++v6;
    goto LABEL_8;
  }

  a3 = v125;
  v47 = v114;
  v122(v125, v121, v114);
  v48 = v20;

  v18 = sub_268B37A34();
  v49 = sub_268B37F04();

  v50 = os_log_type_enabled(v18, v49);
  v108 = v48;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v127[0] = v52;
    *v51 = 136315394;
    v53 = sub_2688F3970();
    v55 = sub_26892CDB8(v53, v54, v127);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = type metadata accessor for DeviceGroup();
    v57 = MEMORY[0x26D625710](v34, v56);
    v59 = v58;

    v60 = sub_26892CDB8(v57, v59, v127);

    *(v51 + 14) = v60;
    _os_log_impl(&dword_2688BB000, v18, v49, "Resolved Source: %s, Resolved Destinations: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v52, -1, -1);
    MEMORY[0x26D6266E0](v51, -1, -1);
  }

  else
  {
  }

  v124(a3, v47);
  v125 = *(v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_aceServiceHelper);
  v20 = v126;
  sub_268A581C0(v125);
  v62 = v61;
  v6 = 0;
  a4 = *(v61 + 16);
  v63 = v61 + 40;
  v115 = MEMORY[0x277D84F90];
  v109 = v61 + 40;
LABEL_28:
  v7 = v63 + 16 * v6;
  while (a4 != v6)
  {
    if (v6 >= *(v62 + 16))
    {
      goto LABEL_66;
    }

    v18 = v21;
    v64 = *(v7 - 8);
    a3 = *v7;
    swift_bridgeObjectRetain_n();
    v65 = sub_268AA3CE8(v125);
    if (!v66)
    {

LABEL_41:
      v69 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127[0] = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26894470C(0, *(v69 + 16) + 1, 1, v71, v72, v73, v74);
        v69 = v127[0];
      }

      v76 = *(v69 + 16);
      v75 = *(v69 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_26894470C(v75 > 1, v76 + 1, 1, v71, v72, v73, v74);
        v69 = v127[0];
      }

      ++v6;
      *(v69 + 16) = v76 + 1;
      v115 = v69;
      v77 = v69 + 16 * v76;
      *(v77 + 32) = v64;
      *(v77 + 40) = a3;
      v20 = v126;
      v63 = v109;
      goto LABEL_28;
    }

    if (v64 == v65 && v66 == a3)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v68 = sub_268B38444();

      if ((v68 & 1) == 0)
      {
        goto LABEL_41;
      }

      v20 = v126;
    }

    v7 += 16;
    ++v6;
  }

  if (!*(v115 + 16))
  {

    v82 = v118;
    v83 = v114;
    v122(v118, v121, v114);
    v84 = sub_268B37A34();
    v85 = sub_268B37EE4();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2688BB000, v84, v85, "Empty destination ids found after filtration. Returning error", v86, 2u);
      MEMORY[0x26D6266E0](v86, -1, -1);
    }

    v124(v82, v83);
    v87 = sub_268B36EA4();
    v88 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v89 = v87;
    v90 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v87);
    v127[0] = v90;
    (v110)(v127);

LABEL_63:

    return;
  }

  v78 = (v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState);
  __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
  v79 = sub_268B34D04();
  v80 = v114;
  if (v79)
  {
    v81 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v79 = sub_268B34D24();
    v81 = v79;
  }

  if (sub_268983434(v79) & 1) == 0 || (v81)
  {
    sub_268AA3CE8(v125);
    if (v97)
    {
      __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController), *(v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 24));
      v98 = swift_allocObject();
      v99 = v120;
      *(v98 + 16) = sub_2688E19F8;
      *(v98 + 24) = v99;
      sub_268B36D94();

      goto LABEL_22;
    }

    v100 = v116;
    v122(v116, v121, v80);
    v101 = sub_268B37A34();
    v102 = sub_268B37EE4();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_2688BB000, v101, v102, "Failed to get the device id of the source. Returning error", v103, 2u);
      MEMORY[0x26D6266E0](v103, -1, -1);
    }

    v124(v100, v80);
    v104 = sub_268B36EA4();
    v105 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v106 = v104;
    v90 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v104);
    v127[0] = v90;
    (v110)(v127);

    goto LABEL_63;
  }

  v91 = v117;
  v122(v117, v121, v80);
  v92 = sub_268B37A34();
  v93 = sub_268B37F04();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_2688BB000, v92, v93, "Source device doesn't support add command, sending a move command instead", v94, 2u);
    MEMORY[0x26D6266E0](v94, -1, -1);
  }

  v124(v91, v80);
  __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController), *(v119 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController + 24));
  v95 = swift_allocObject();
  v96 = v120;
  *(v95 + 16) = sub_2688E19F8;
  *(v95 + 24) = v96;
  sub_268B36DC4();

LABEL_22:
}

void sub_268992E08(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v72 = sub_268B37A54();
  v69 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - v7;
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v67 = a1;
  sub_2688F1FA4(a1, &v62 - v18, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v16, v19, v8);
    v20 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = v72;
    v22 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v23 = v68;
    v24 = v69;
    (*(v69 + 16))(v68, v22, v21);
    v25 = v9;
    v63 = *(v9 + 16);
    v64 = v16;
    v63(v14, v16, v20);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v65 = v20;
      v29 = v28;
      v62 = swift_slowAlloc();
      v73 = v62;
      *v29 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6E8]);
      v30 = sub_268B384A4();
      v31 = v24;
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v14, v65);
      v35 = sub_26892CDB8(v30, v33, &v73);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v26, v27, "Failed to move output devices to group. Error: %s", v29, 0xCu);
      v36 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v36, -1, -1);
      v37 = v29;
      v20 = v65;
      MEMORY[0x26D6266E0](v37, -1, -1);

      (*(v31 + 8))(v68, v72);
    }

    else
    {

      v34 = *(v9 + 8);
      v34(v14, v20);
      (*(v24 + 8))(v23, v72);
    }

    v46 = v66;
    v47 = v64;
    v63(v66, v64, v20);
    v48 = (*(v25 + 88))(v46, v20);
    if (v48 == *MEMORY[0x277D5F6C0])
    {
      v49 = sub_268B36ED4();
      v50 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v51 = v49;
      v52 = AddSpeakerIntentResponse.init(code:userActivity:)(101, v49);
      v71();

      v34(v47, v20);
    }

    else
    {
      if (v48 == *MEMORY[0x277D5F6A8])
      {
        v53 = sub_268B36ED4();
        v54 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v55 = v53;
        v56 = AddSpeakerIntentResponse.init(code:userActivity:)(102, v53);
        v71();

        v57 = v47;
      }

      else
      {
        v58 = sub_268B36ED4();
        v59 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v60 = v58;
        v61 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v58);
        v71();

        v34(v47, v20);
        v57 = v46;
      }

      v34(v57, v20);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v72;
    v39 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v40 = v69;
    (*(v69 + 16))(v6, v39, v38);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "Success moving output devices to group", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v40 + 8))(v6, v38);
    v44 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v45 = AddSpeakerIntentResponse.init(code:userActivity:)(100, 0);
    v71();
  }
}

void sub_268993590(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v72 = sub_268B37A54();
  v69 = *(v72 - 8);
  v4 = MEMORY[0x28223BE20](v72);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - v7;
  v8 = sub_268B36F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v67 = a1;
  sub_2688F1FA4(a1, &v62 - v18, &qword_2802A5DE8, &qword_268B3D790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v16, v19, v8);
    v20 = v8;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = v72;
    v22 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v23 = v68;
    v24 = v69;
    (*(v69 + 16))(v68, v22, v21);
    v25 = v9;
    v63 = *(v9 + 16);
    v64 = v16;
    v63(v14, v16, v20);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v65 = v20;
      v29 = v28;
      v62 = swift_slowAlloc();
      v73 = v62;
      *v29 = 136315138;
      sub_26899693C(&qword_2802A5F88, MEMORY[0x277D5F6E0], MEMORY[0x277D5F6E8]);
      v30 = sub_268B384A4();
      v31 = v24;
      v33 = v32;
      v34 = *(v9 + 8);
      v34(v14, v65);
      v35 = sub_26892CDB8(v30, v33, &v73);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v26, v27, "Failed to add output devices to group. Error: %s", v29, 0xCu);
      v36 = v62;
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x26D6266E0](v36, -1, -1);
      v37 = v29;
      v20 = v65;
      MEMORY[0x26D6266E0](v37, -1, -1);

      (*(v31 + 8))(v68, v72);
    }

    else
    {

      v34 = *(v9 + 8);
      v34(v14, v20);
      (*(v24 + 8))(v23, v72);
    }

    v46 = v66;
    v47 = v64;
    v63(v66, v64, v20);
    v48 = (*(v25 + 88))(v46, v20);
    if (v48 == *MEMORY[0x277D5F6C0])
    {
      v49 = sub_268B36ED4();
      v50 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
      v51 = v49;
      v52 = AddSpeakerIntentResponse.init(code:userActivity:)(101, v49);
      v71();

      v34(v47, v20);
    }

    else
    {
      if (v48 == *MEMORY[0x277D5F6A8])
      {
        v53 = sub_268B36ED4();
        v54 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v55 = v53;
        v56 = AddSpeakerIntentResponse.init(code:userActivity:)(102, v53);
        v71();

        v57 = v47;
      }

      else
      {
        v58 = sub_268B36ED4();
        v59 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
        v60 = v58;
        v61 = AddSpeakerIntentResponse.init(code:userActivity:)(5, v58);
        v71();

        v34(v47, v20);
        v57 = v46;
      }

      v34(v57, v20);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = v72;
    v39 = __swift_project_value_buffer(v72, qword_2802CDA10);
    v40 = v69;
    (*(v69 + 16))(v6, v39, v38);
    v41 = sub_268B37A34();
    v42 = sub_268B37F04();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2688BB000, v41, v42, "Success adding output devices to group", v43, 2u);
      MEMORY[0x26D6266E0](v43, -1, -1);
    }

    (*(v40 + 8))(v6, v38);
    v44 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
    v45 = AddSpeakerIntentResponse.init(code:userActivity:)(4, 0);
    v71();
  }
}

void sub_268993D4C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 23);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_2689969C0;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_268993F20(v16, v15, sub_268996618, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

void sub_268993F20(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4)
{
  v40 = a2;
  v43 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = swift_allocObject();
  v42 = a3;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268958D98;
  *(v15 + 24) = v14;
  v16 = qword_2802A4F30;
  v45 = a4;

  v44 = v14;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v18 = *(v7 + 16);
  v18(v13, v17, v6);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "AddSpeakerIntentHandler.resolveSource()", v21, 2u);
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  v22 = *(v7 + 8);
  v22(v13, v6);
  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(v43 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
  if ((sub_2688C3240() & 1) == 0)
  {

    v26 = v41;
    v18(v41, v17, v6);
    v27 = sub_268B37A34();
    v28 = sub_268B37EE4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2688BB000, v27, v28, "Whole House Audio requests are unsupported on this platform", v29, 2u);
      MEMORY[0x26D6266E0](v29, -1, -1);
    }

    v22(v26, v6);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v30 = 4;
    goto LABEL_17;
  }

  v23 = v40;
  if (!sub_268B1CC90(v40))
  {
LABEL_14:

    v31 = v39;
    v18(v39, v17, v6);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Could not find any device queries in the intent. Returning error", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v22(v31, v6);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v30 = 3;
LABEL_17:
    v35 = sub_268B17B04(v30);
    v46 = v35;
    v42(&v46);

    return;
  }

  if (!sub_2688EFD0C())
  {

    goto LABEL_14;
  }

  if (sub_268B1CCB0(v23))
  {
    sub_268AA4074();
    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  sub_268920A60();
  v37 = v36;

  v38 = swift_allocObject();
  *(v38 + 16) = sub_268958EA4;
  *(v38 + 24) = v15;
  sub_2688F9A5C(v37, v25, 0, sub_268996924, v38);
}

void sub_26899444C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (!sub_2688EFD0C())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v8, v24, v4);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Could not find a source stream for the add request.", v27, 2u);
      MEMORY[0x26D6266E0](v27, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v28 = 2;
    goto LABEL_20;
  }

  if (sub_2688EFD0C() != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v11, v29, v4);
    v30 = sub_268B37A34();
    v31 = sub_268B37EE4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2688BB000, v30, v31, "Multiple sources found for add request.", v32, 2u);
      MEMORY[0x26D6266E0](v32, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    type metadata accessor for AddSpeakerSourceResolutionResult();
    v28 = 1;
LABEL_20:
    v23 = sub_268B17B04(v28);
    a2();
    goto LABEL_21;
  }

  sub_2688EFD10();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26D625BD0](0, a1);
  }

  else
  {
    v14 = *(a1 + 32);
  }

  v15 = v14;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v13, v16, v4);
  v17 = v15;
  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_2688BB000, v18, v19, "Success resolving source: %@.", v20, 0xCu);
    sub_2688C058C(v21, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v21, -1, -1);
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  (*(v5 + 8))(v13, v4);
  type metadata accessor for AddSpeakerSourceResolutionResult();
  v23 = sub_268B32628(v17);
  a2();

LABEL_21:
}

uint64_t sub_268994948(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_2689949F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_12(v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  v6 = qword_2802A5028;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  qword_2802CDB28;
  sub_268B37A14();
  v7 = OUTLINED_FUNCTION_4_13();
  v8(v7);
  OUTLINED_FUNCTION_5_5();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_0_20(v9, 29);
  v11(v10);
  OUTLINED_FUNCTION_9_10();
  *(v12 + 8) = sub_2688E19C4;
  *(v12 + 16) = v5;

  sub_268B38004();
  sub_268B37A04();

  sub_268994BC4(v15, v16, sub_268996618, v9);

  v13 = OUTLINED_FUNCTION_11_12();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268994BC4(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v35 = a2;
  v39 = a1;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = swift_allocObject();
  v38 = a3;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268958D98;
  *(v14 + 24) = v13;
  v15 = qword_2802A4F30;
  v41 = a4;

  v40 = v13;

  if (v15 != -1)
  {
    swift_once();
  }

  v37 = v10;
  v16 = __swift_project_value_buffer(v6, qword_2802CDA10);
  v36 = *(v7 + 16);
  v36(v12, v16, v6);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "AddSpeakerIntentHandler.resolveDestination() called", v19, 2u);
    MEMORY[0x26D6266E0](v19, -1, -1);
  }

  v20 = *(v7 + 8);
  v20(v12, v6);
  v21 = v39;
  v22 = sub_268B1CC90(v39);
  if (v22)
  {
    v23 = v22;
    if (sub_2688EFD0C())
    {
      v24 = [v21 source];
      if (v24)
      {
        v25 = v24;
        v26 = v35;
        sub_268920A60();
        sub_268B1CCB0(v21);
        v27 = swift_allocObject();
        v27[2] = sub_2688E19F8;
        v27[3] = v14;
        v27[4] = v26;
        v27[5] = v23;
        v28 = v26;
        sub_2688FC9D4();
      }
    }
  }

  v29 = v37;
  v36(v37, v16, v6);
  v30 = sub_268B37A34();
  v31 = sub_268B37EE4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2688BB000, v30, v31, "Could not find a device query or could not find add source in the intent. Returning error", v32, 2u);
    MEMORY[0x26D6266E0](v32, -1, -1);
  }

  v20(v29, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_268B3BBA0;
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  *(v33 + 32) = sub_268B1CD38(2);
  v42 = v33;
  v38(&v42);
}

uint64_t sub_268995024(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v124 = sub_268B37464();
  v109 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  MEMORY[0x28223BE20](v120);
  v11 = &v102 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v114 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v102 - v16;
  MEMORY[0x28223BE20](v15);
  v122 = &v102 - v17;
  v18 = sub_268B37A54();
  v112 = *(v18 - 8);
  v113 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v110 = &v102 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v102 - v26;
  v125 = a1;
  v28 = sub_2688EFD0C();
  if (v28)
  {
    v29 = v28;
    v107 = a3;
    v108 = a2;
    v30 = (a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState), *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState + 24));
    v31 = sub_268B34C74();
    sub_268AA43C8(v125);
    if (v32)
    {
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      if ((sub_268B34D04() & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        if (((sub_268B34D24() | v31) & 1) == 0)
        {
          if (qword_2802A4F30 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_37;
        }
      }
    }

    v33 = 0;
    v34 = (v125 & 0xC000000000000001);
    v35 = v125 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v29 == v33)
      {
        goto LABEL_46;
      }

      if (v34)
      {
        v36 = MEMORY[0x26D625BD0](v33, v125);
      }

      else
      {
        if (v33 >= *(v35 + 16))
        {
          goto LABEL_60;
        }

        v36 = *(v125 + 8 * v33 + 32);
      }

      v37 = v36;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ([v36 type] == 7)
      {
        sub_2689CB550();
        v45 = sub_2688EFD0C();

        if (v45 >= 2)
        {
          v102 = v34;
          v46 = v121;
          v47 = sub_2688EFD0C();
          v48 = 0;
          v118 = v46 & 0xC000000000000001;
          v119 = v47;
          v117 = v46 & 0xFFFFFFFFFFFFFF8;
          v116 = *MEMORY[0x277D5F868];
          v115 = (v109 + 13);
          v104 = (v109 + 4);
          ++v109;
          v49 = &qword_2802A5BA8;
          v34 = &qword_268B3C690;
          v103 = v11;
          while (1)
          {
            if (v119 == v48)
            {
              if (qword_2802A4F30 != -1)
              {
                swift_once();
              }

              v74 = v113;
              v75 = __swift_project_value_buffer(v113, qword_2802CDA10);
              v76 = v112;
              v77 = v105;
              (*(v112 + 16))(v105, v75, v74);
              v78 = sub_268B37A34();
              v79 = sub_268B37EE4();
              v80 = os_log_type_enabled(v78, v79);
              v81 = v108;
              if (v80)
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&dword_2688BB000, v78, v79, "User asked for a single device matching a deviceType, but multiple devices were found. Returning an error", v82, 2u);
                MEMORY[0x26D6266E0](v82, -1, -1);
              }

              (*(v76 + 8))(v77, v74);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v83 = swift_allocObject();
              *(v83 + 16) = xmmword_268B3BBA0;
              type metadata accessor for AddSpeakerDestinationsResolutionResult();
              *(v83 + 32) = sub_268B1CD38(1);
              v81(v83);
            }

            if (v118)
            {
              v50 = MEMORY[0x26D625BD0](v48, v121);
            }

            else
            {
              if (v48 >= *(v117 + 16))
              {
                goto LABEL_62;
              }

              v50 = *(v121 + 8 * v48 + 32);
            }

            v51 = v50;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_61;
            }

            v52 = v122;
            DeviceQuery.deviceQuantifier.getter();
            v54 = v123;
            v53 = v124;
            (*v115)(v123, v116, v124);
            __swift_storeEnumTagSinglePayload(v54, 0, 1, v53);
            v55 = *(v120 + 48);
            sub_2688F1FA4(v52, v11, v49, v34);
            sub_2688F1FA4(v54, &v11[v55], v49, v34);
            if (__swift_getEnumTagSinglePayload(v11, 1, v53) == 1)
            {
              break;
            }

            v56 = v123;
            v57 = v124;
            v58 = v114;
            sub_2688F1FA4(v11, v114, v49, v34);
            if (__swift_getEnumTagSinglePayload(&v11[v55], 1, v57) == 1)
            {

              sub_2688C058C(v56, v49, v34);
              sub_2688C058C(v122, v49, v34);
              (*v109)(v58, v57);
LABEL_31:
              sub_2688C058C(v11, &qword_2802A5BA0, &unk_268B41020);
              goto LABEL_33;
            }

            v59 = &v11[v55];
            v60 = v34;
            v61 = v49;
            v62 = v111;
            (*v104)(v111, v59, v57);
            sub_26899693C(&qword_2802A5BB0, MEMORY[0x277D5F880], MEMORY[0x277D5F890]);
            v106 = sub_268B37BB4();

            v63 = *v109;
            v64 = v62;
            v49 = v61;
            v34 = v60;
            v11 = v103;
            (*v109)(v64, v57);
            sub_2688C058C(v56, v49, v34);
            sub_2688C058C(v122, v49, v34);
            v63(v58, v57);
            sub_2688C058C(v11, v49, v34);
            if (v106)
            {
              goto LABEL_45;
            }

LABEL_33:
            ++v48;
          }

          sub_2688C058C(v123, v49, v34);
          sub_2688C058C(v52, v49, v34);
          if (__swift_getEnumTagSinglePayload(&v11[v55], 1, v124) == 1)
          {
            sub_2688C058C(v11, &qword_2802A5BA8, &qword_268B3C690);
LABEL_45:

            v34 = v102;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

LABEL_46:
        if (qword_2802A4F30 == -1)
        {
LABEL_47:
          v84 = v113;
          v85 = __swift_project_value_buffer(v113, qword_2802CDA10);
          v86 = v112;
          v87 = v110;
          (*(v112 + 16))(v110, v85, v84);

          v88 = sub_268B37A34();
          v89 = sub_268B37F04();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v126 = v91;
            *v90 = 136315138;
            v92 = type metadata accessor for DeviceGroup();
            v93 = MEMORY[0x26D6256F0](v125, v92);
            v95 = sub_26892CDB8(v93, v94, &v126);

            *(v90 + 4) = v95;
            _os_log_impl(&dword_2688BB000, v88, v89, "Success resolving destination: %s.", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v91);
            MEMORY[0x26D6266E0](v91, -1, -1);
            MEMORY[0x26D6266E0](v90, -1, -1);
          }

          (*(v86 + 8))(v87, v84);
          v96 = sub_2688EFD0C();
          v27 = MEMORY[0x277D84F90];
          if (!v96)
          {
            goto LABEL_57;
          }

          v97 = v96;
          v126 = MEMORY[0x277D84F90];
          sub_268B38234();
          if ((v97 & 0x8000000000000000) == 0)
          {
            type metadata accessor for AddSpeakerDestinationsResolutionResult();
            v98 = 0;
            do
            {
              if (v34)
              {
                v99 = MEMORY[0x26D625BD0](v98, v125);
              }

              else
              {
                v99 = *(v125 + 8 * v98 + 32);
              }

              v100 = v99;
              ++v98;
              sub_268B319C8(v99);

              sub_268B38214();
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            while (v97 != v98);
            v27 = v126;
LABEL_57:
            v108(v27);
          }

          __break(1u);
LABEL_65:
          swift_once();
LABEL_37:
          v65 = v113;
          v66 = __swift_project_value_buffer(v113, qword_2802CDA10);
          v67 = v112;
          (*(v112 + 16))(v27, v66, v65);
          v68 = sub_268B37A34();
          v69 = sub_268B37EE4();
          v70 = os_log_type_enabled(v68, v69);
          v71 = v108;
          if (v70)
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_2688BB000, v68, v69, "AddSpeaker destination device is not TV, HomePod, or other supported device. Returning an error", v72, 2u);
            MEMORY[0x26D6266E0](v72, -1, -1);
          }

          (*(v67 + 8))(v27, v65);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_268B3BBA0;
          type metadata accessor for AddSpeakerDestinationsResolutionResult();
          *(v73 + 32) = sub_268B1CD38(3);
          v71(v73);
        }

LABEL_63:
        swift_once();
        goto LABEL_47;
      }

      ++v33;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v38 = v113;
  v39 = __swift_project_value_buffer(v113, qword_2802CDA10);
  v40 = v112;
  (*(v112 + 16))(v21, v39, v38);
  v41 = sub_268B37A34();
  v42 = sub_268B37EE4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2688BB000, v41, v42, "Could not resolve any destination for add speaker request.", v43, 2u);
    MEMORY[0x26D6266E0](v43, -1, -1);
  }

  (*(v40 + 8))(v21, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_268B3BBA0;
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  *(v44 + 32) = sub_268B1CD38(1);
  a2(v44);
}

void sub_268995DC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AddSpeakerDestinationsResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268995E2C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268B37A34();
  v10 = sub_268B37F04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2688BB000, v9, v10, "AddSpeakerIntentHandler.confirm() called", v11, 2u);
    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
  v13 = AddSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v13);

  _Block_release(a3);
}

void sub_268996004(uint64_t a1, void (*a2)(void))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "AddSpeakerIntentHandler.confirm() called", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v3);
  v14 = objc_allocWithZone(type metadata accessor for AddSpeakerIntentResponse());
  v15 = AddSpeakerIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

id AddSpeakerIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddSpeakerIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2689962E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v34[3] = sub_268B36C54();
  v34[4] = MEMORY[0x277D5F680];
  v34[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v33[3] = v10;
  v33[4] = &off_2879539D0;
  v33[0] = a4;
  v11 = type metadata accessor for AddSpeakerIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v33, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v32[3] = v10;
  v32[4] = &off_2879539D0;
  v32[0] = v17;
  sub_26890C900(a3, v31);
  sub_26890C900(v32, &v29);
  sub_26890C900(a5, v28);
  sub_268B376A4();
  v18 = sub_268B37694();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v19);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_26892D53C(a2, v31, *v21, v28, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceSelector] = v23;
  sub_26890C900(v34, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_playbackController]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_deviceState]);
  sub_26890C900(a3, v31);
  sub_26890C900(a5, &v29);
  type metadata accessor for AceServiceHelper();
  v24 = swift_allocObject();
  sub_2688E6514(v31, v24 + 16);
  sub_2688E6514(&v29, v24 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23AddSpeakerIntentHandler_aceServiceHelper] = v24;
  v27.receiver = v12;
  v27.super_class = v11;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v25;
}

uint64_t sub_2689965E4()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_2Tm()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_2689966C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268B37A24() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t sub_268996890()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689968D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26899693C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_268B37A24();
}

id sub_268996A94(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_268996F40(a2);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    sub_268B37CE4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v6, sel_setConfirmCommands_);

  v7 = sub_268996F40(a1);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
    sub_268B37CE4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v7, sel_setDenyCommands_);

  v8 = sub_268996FAC(a2);
  if (v9)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v8, sel_setConfirmText_);

  v10 = sub_268996FAC(a1);
  if (v11)
  {
    sub_268B37BC4();
    OUTLINED_FUNCTION_0_21();
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_1_23(v10, sel_setDenyText_);

  v12 = sub_268B37BF4();
  sub_268997010(v12, v13, v5, &selRef_setCancelTrigger_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_268B3C5A0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = a1;
  v16 = a2;
  sub_26899707C(v14, v5);

  return v5;
}

id sub_268996C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_268997010(a1, a2, v14, &selRef_setLabel_);
  sub_268997010(a3, a4, v14, &selRef_setType_);
  sub_268997010(a5, a6, v14, &selRef_setIconType_);
  sub_268996EC0(a7, v14);

  return v14;
}

id sub_268996D44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setCentered_];
  [objc_allocWithZone(MEMORY[0x277D47770]) init];
  v8 = OUTLINED_FUNCTION_0_21();
  sub_268996EC0(v8, a4);
  [v7 setAction_];

  v9 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  sub_268997010(a1, a2, v9, &selRef_setText_);
  [v7 setDecoratedLabel_];

  return v7;
}

id sub_268996E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_268997010(a1, a2, v6, &selRef_setText_);
  sub_268996EC0(a3, v6);

  return v6;
}

void sub_268996EC0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
  v3 = sub_268B37CE4();

  [a2 setCommands_];
}

uint64_t sub_268996F40(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5870, &qword_268B3BE88);
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_268996FAC(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

void sub_268997010(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_268B37BC4();

  [a3 *a4];
}

void sub_26899707C(uint64_t a1, void *a2)
{
  sub_2689970F0();
  v3 = sub_268B37CE4();

  [a2 setAllConfirmationOptions_];
}

unint64_t sub_2689970F0()
{
  result = qword_2802A6940;
  if (!qword_2802A6940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A6940);
  }

  return result;
}

id OUTLINED_FUNCTION_1_23(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_268997354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v59 = v26;
  v60 = v25;
  v52 = v27;
  v53 = v28;
  v51 = v29;
  v55 = v30;
  v32 = v31;
  v54 = v33;
  v57 = a23;
  v58 = a24;
  v56 = a22;
  v34 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  v38 = *(v37 + 64);
  v40 = MEMORY[0x28223BE20](v39);
  v41 = v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_136();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  v50[1] = qword_2802CDB28;
  sub_268B37A14();
  OUTLINED_FUNCTION_43_4();
  v42(v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v34);
  v43 = (*(v36 + 80) + 33) & ~*(v36 + 80);
  v44 = v43 + v38;
  v45 = (v43 + v38) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  *(v46 + 24) = v32;
  *(v46 + 32) = v55;
  (*(v36 + 32))(v46 + v43, v41);
  *(v46 + v44) = v51 & 1;
  v47 = v46 + v45;
  v48 = v53;
  *(v47 + 8) = v52;
  *(v47 + 16) = v48;

  sub_268B38004();
  sub_268B37A04();
  OUTLINED_FUNCTION_0_3();
  v49 = swift_allocObject();
  *(v49 + 16) = v57;
  *(v49 + 24) = v46;

  v60(v58, v49);

  (*(v36 + 8))(v24, v34);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268997584(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_26894474C();
  v3 = v9;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_2688EF2C0(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_26894474C();
        v3 = v9;
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v7;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2689976AC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_268B38234();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_2688EF2C0(v3, v5);
    type metadata accessor for Device();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_268B38214();
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_268997798()
{
  v0 = sub_268B37A24();
  __swift_allocate_value_buffer(v0, qword_2802A6950);
  __swift_project_value_buffer(v0, qword_2802A6950);
  if (qword_2802A5028 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB28;
  return sub_268B37A14();
}

uint64_t sub_268997824()
{
  if (*(v0 + 464))
  {
    v1 = *(v0 + 464);
  }

  else
  {
    v1 = sub_268997870(v0);
    *(v0 + 464) = v1;
  }

  return v1;
}

uint64_t sub_268997870(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268B37A34();
  v8 = sub_268B37F04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "ControlsFlowProvider#deviceSelector initializing device selecting util...", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(a1 + 408);

  v12 = v10(v11);

  return v12;
}

void *sub_268997A2C()
{
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v0 = sub_268B36734();
  v1 = sub_268B36C54();
  v2 = sub_268B36C44();
  v3 = type metadata accessor for MultiUserConnectionProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v31 = v1;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v2;
  v10 = type metadata accessor for AnalyticsServiceLogger();
  v29[3] = v10;
  v29[4] = &off_28795F5E0;
  v29[0] = v9;
  v28 = &off_287960608;
  v27 = v3;
  v26[0] = v4;
  type metadata accessor for AnalyticsServiceImpl();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  MEMORY[0x28223BE20](v12);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x28223BE20](v16);
  v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v14;
  v21 = *v18;
  v11[5] = v10;
  v11[6] = &off_28795F5E0;
  v11[2] = v20;
  v11[21] = v3;
  v11[22] = &off_287960608;
  v11[18] = v21;
  sub_2688E6514(v33, (v11 + 7));
  v11[12] = v0;
  sub_2688E6514(&v30, (v11 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_268B37204();
  v22 = sub_268B371F4();
  sub_2688E4594(v35, v33);
  sub_2688E4594(v34, &v30);
  sub_268B376A4();

  v23 = sub_268B37694();

  v24 = sub_26892D53C(v22, v33, v11, &v30, v23);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v24;
}

void ControlsFlowProvider.init()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  sub_268B354A4();
  sub_2689209D0(v57);
  sub_268AD33CC(&v54);
  sub_268B36754();
  v38 = sub_268B36734();
  v2 = sub_268B36C54();
  v3 = sub_268B36C44();
  v4 = type metadata accessor for MultiUserConnectionProvider();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CEF318]);
  v7 = v3;

  *(v5 + 16) = [v6 init];
  __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  v13 = *v11;
  v52 = v2;
  v53 = MEMORY[0x277D5F680];
  *&v51 = v7;
  v14 = type metadata accessor for AnalyticsServiceLogger();
  v50[3] = v14;
  v50[4] = &off_28795F5E0;
  v50[0] = v13;
  v48 = v4;
  v49 = &off_287960608;
  v47[0] = v5;
  v15 = type metadata accessor for AnalyticsServiceImpl();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v14);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  v24 = OUTLINED_FUNCTION_78_3(v23);
  v25(v24);
  v26 = *v20;
  v27 = *v13;
  v16[5] = v14;
  v16[6] = &off_28795F5E0;
  v16[2] = v26;
  v16[21] = v4;
  v16[22] = &off_287960608;
  v16[18] = v27;
  sub_2688E6514(&v54, (v16 + 7));
  v16[12] = v38;
  sub_2688E6514(&v51, (v16 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);

  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  sub_268B34C64();
  v55 = &type metadata for ControlsFlowFactoryImpl;
  v56 = &off_28795FF48;
  v28 = sub_268B36C44();
  v52 = v2;
  v53 = MEMORY[0x277D5F680];
  *&v51 = v28;
  sub_268AD33CC(v50);
  v1[49] = v15;
  v1[50] = &off_2879539D0;
  v1[46] = v16;
  sub_2688E4594(v58, v47);
  v46[3] = sub_268B36F44();
  v46[4] = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(v46);

  sub_268B36F34();
  sub_2688E4594(v57, (v1 + 53));
  v1[58] = 0;
  sub_2688E4594(&v54, v1);
  sub_2688E4594(&v51, (v1 + 5));
  sub_2688E4594(v50, (v1 + 10));
  sub_2688E4594((v1 + 46), v44);
  sub_2688E4594(v47, v43);
  sub_268B376A4();
  v29 = sub_268B37694();
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  v35 = sub_2689A52C0(*v33, v43, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v1[15] = v35;
  sub_2688E4594(&v54, (v1 + 16));
  sub_2688E4594(&v54, (v1 + 21));
  sub_2688E4594(&v54, (v1 + 26));
  sub_2688E4594(v47, (v1 + 31));
  sub_2688E4594(v46, (v1 + 36));
  sub_2688E4594(&v54, v44);
  sub_2688E4594(v50, v43);
  sub_2688E4594(v47, v42);
  sub_2688E4594(&v51, v41);
  sub_2688E4594(v46, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v39[3] = &type metadata for ControlsFlowFactoryImpl;
  v39[4] = &off_28795FF48;
  v36 = type metadata accessor for QuickStopUtil();
  v37 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for ControlsFlowFactoryImpl);
  *(v37 + 40) = &type metadata for ControlsFlowFactoryImpl;
  *(v37 + 48) = &off_28795FF48;
  sub_2688E6514(v43, v37 + 56);
  sub_2688E6514(v42, v37 + 96);
  sub_2688E6514(v41, v37 + 136);
  sub_2688E6514(v40, v37 + 176);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v1[44] = v36;
  v1[45] = &off_28795AF78;

  v1[41] = v37;
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(&v51);
  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  v1[51] = sub_268998418;
  v1[52] = 0;
  OUTLINED_FUNCTION_23();
}

void ControlsFlowProvider.findFlowFor(parse:)()
{
  OUTLINED_FUNCTION_26();
  v109 = v0;
  v110 = v1;
  v3 = v2;
  v4 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v101 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v108 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v112 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  v15 = &v98 - v14;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v99 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v102 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v103 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v98 = v26;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v27);
  v29 = &v98 - v28;
  sub_268B38014();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  if (qword_2802A4D80 != -1)
  {
    OUTLINED_FUNCTION_40_4(&qword_2802A4D80);
  }

  v30 = sub_268B37A24();
  __swift_project_value_buffer(v30, qword_2802A6950);
  sub_268B379F4();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v16, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v113 = v31;
  v104 = v33;
  v105 = v32;
  (v33)(v29);
  v34 = v3;
  v35 = *(v6 + 16);
  v35(v15, v34, v4);
  v114 = v18;
  v107 = v29;
  v36 = sub_268B37A34();
  v37 = sub_268B37F04();
  v38 = OUTLINED_FUNCTION_196(v37);
  v106 = v34;
  v111 = v16;
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_172_0();
    v100 = v35;
    v40 = v39;
    v41 = OUTLINED_FUNCTION_173_0();
    v115 = v41;
    *v40 = 136315138;
    v100(v112, v15, v4);
    v42 = sub_268B37C24();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_60_1();
    v46(v45);
    v47 = sub_26892CDB8(v42, v44, &v115);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_2688BB000, v36, v37, "ControlsFlowProvider#findFlowFor Recieved parse: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_20_2();
    v35 = v100;
    v34 = v106;
    OUTLINED_FUNCTION_12();

    v48 = *(v114 + 8);
    v49 = v107;
    v50 = v111;
  }

  else
  {

    v51 = OUTLINED_FUNCTION_60_1();
    v52(v51);
    v48 = *(v114 + 8);
    v49 = v107;
    v50 = v16;
  }

  v107 = v48;
  v48(v49, v50);
  v35(v108, v34, v4);
  v53 = *(v6 + 88);
  v54 = OUTLINED_FUNCTION_60_0();
  v55 = v53(v54);
  v56 = *MEMORY[0x277D5C150];
  v57 = *MEMORY[0x277D5C160];
  v100 = (v6 + 88);
  v58 = OUTLINED_FUNCTION_60_0();
  v112(v58);
  v59 = v55 == v56 || v55 == v57;
  v60 = v109;
  if (v59)
  {
    v35(v101, v34, v4);
    v61 = OUTLINED_FUNCTION_60_0();
    v62 = v53(v61);
    v63 = OUTLINED_FUNCTION_60_0();
    v112(v63);
    if (v62 == v57)
    {
      __swift_project_boxed_opaque_existential_1((v60 + 288), *(v60 + 312));
      OUTLINED_FUNCTION_129();
      if ((sub_268B36F64() & 1) == 0)
      {
        v91 = v98;
        v92 = v111;
        v104(v98, v113, v111);
        v93 = sub_268B37A34();
        v94 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v94))
        {
          v95 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v95);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v96, v97, "ControlsFlowProvider#findFlowFor Received a uso parse but Media Controls on Siri X feature is disabled, returning .noFlow");
          OUTLINED_FUNCTION_83_0();
        }

        v107(v91, v92);
        goto LABEL_32;
      }
    }

    v64 = v106;
    if (sub_268A409F0())
    {
      sub_268998C0C();
      sub_268998DAC(v64, v110);
      sub_268999344();
      goto LABEL_33;
    }
  }

  v65 = v103;
  v66 = v104;
  v67 = v111;
  v104(v103, v113, v111);
  v68 = sub_268B37A34();
  v69 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v69))
  {
    v70 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v70);
    OUTLINED_FUNCTION_112_1(&dword_2688BB000, v71, v72, "ControlsFlowProvider#findFlowFor Calling ControlsFlowProvider().makeFlow for a flow to return");
    OUTLINED_FUNCTION_83_0();
  }

  v73 = v65;
  v74 = v107;
  v107(v73, v67);
  ControlsFlowProvider.makeFlow(for:)();
  if (!v75)
  {
    v84 = v99;
    v66(v99, v113, v67);
    v85 = sub_268B37A34();
    v86 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v86))
    {
      v87 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v87);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v88, v89, "ControlsFlowProvider#findFlowFor Didn't recieve a flow, returning .noFlow");
      OUTLINED_FUNCTION_83_0();
    }

    v74(v84, v67);
LABEL_32:
    sub_268B34AB4();
    goto LABEL_33;
  }

  v66(v102, v113, v67);
  v76 = sub_268B37A34();
  v77 = sub_268B37F04();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v74;
    v79 = OUTLINED_FUNCTION_172_0();
    v80 = OUTLINED_FUNCTION_173_0();
    v115 = v80;
    *v79 = 136315138;
    v81 = sub_268B34924();
    v83 = sub_26892CDB8(v81, v82, &v115);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_2688BB000, v76, v77, "ControlsFlowProvider#findFlowFor Returning flow: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_20_2();

    v78(v102, v67);
  }

  else
  {

    v90 = OUTLINED_FUNCTION_230_0();
    (v74)(v90);
  }

  sub_268B34AE4();

LABEL_33:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268998C0C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_268B37A34();
  v6 = sub_268B37F04();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2688BB000, v5, v6, "ControlsFlowProvider#preWarmHomeKit Pre-warming HomeKit...", v7, 2u);
    MEMORY[0x26D6266E0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_268B37204();
  sub_268B371F4();
}

unint64_t sub_268998DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_268B35224();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  __swift_project_boxed_opaque_existential_1((v2 + 328), *(v2 + 352));
  v17 = sub_268A7C750(a1);
  if (v17 >> 62)
  {
    if (v17 >> 62 == 1)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 328), *(v2 + 352));
      sub_268A7EA00(v17);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v7, qword_2802CDA10);
      (*(v8 + 16))(v14, v18, v7);
      v19 = sub_268B37A34();
      v20 = sub_268B37F04();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v21 = 136315138;
        v23 = 0xE500000000000000;
        v24 = 0x6D72616C61;
        switch(v17)
        {
          case 1:
            v24 = 0x72656D6974;
            break;
          case 2:
            v23 = 0x8000000268B58FF0;
            v24 = 0xD000000000000010;
            break;
          case 3:
            v24 = 0x656E6F6870;
            break;
          default:
            break;
        }

        v34 = sub_26892CDB8(v24, v23, &v40);

        *(v21 + 4) = v34;
        _os_log_impl(&dword_2688BB000, v19, v20, "ControlsFlowProvider#quickStopFlowResult QuickStop reforming to %s domain", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x26D6266E0](v22, -1, -1);
        MEMORY[0x26D6266E0](v21, -1, -1);
      }

      (*(v8 + 8))(v14, v7);
      v35 = v38;
      v36 = v37;
      sub_268B34AF4();
      return (*(v36 + 8))(v6, v35);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v7, qword_2802CDA10);
      (*(v8 + 16))(v11, v30, v7);
      v31 = sub_268B37A34();
      v32 = sub_268B37EE4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2688BB000, v31, v32, "ControlsFlowProvider#quickStopFlowResult QuickStop received an unsupported QuickStop parse. Returning .noFlow", v33, 2u);
        MEMORY[0x26D6266E0](v33, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      return sub_268B34AB4();
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v16, v25, v7);
    v26 = sub_268B37A34();
    v27 = sub_268B37F04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "ControlsFlowProvider#quickStopFlowResult QuickStop returned flow", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    sub_268B34AE4();
    return sub_2689A7D70(v17);
  }
}

uint64_t sub_268999344()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6970, qword_268B41130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  if (sub_268B34AD4())
  {
  }

  else
  {
    sub_268B34AC4();
    v5 = sub_268B35224();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    result = sub_2689A7CD8(v4, &qword_2802A6970, qword_268B41130);
    if (EnumTagSinglePayload == 1)
    {
      return result;
    }
  }

  v8 = v1[13];
  v9 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_268B3BBC0;
  if (qword_2802A50C0 != -1)
  {
    swift_once();
  }

  v11 = unk_2802CDB50;
  *(v10 + 32) = qword_2802CDB48;
  *(v10 + 40) = v11;
  sub_2689A563C(v1, v15);
  v12 = swift_allocObject();
  memcpy((v12 + 16), v15, 0x1D8uLL);
  v13 = *(v9 + 24);

  v13(v10, sub_2689A7D68, v12, v8, v9);
}

void ControlsFlowProvider.makeFlow(for:)()
{
  OUTLINED_FUNCTION_26();
  v66 = v0;
  v2 = v1;
  v3 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v60 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v59 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v65 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v11, qword_2802CDA10);
  v21 = *(v13 + 16);
  v61 = v22;
  v62 = v21;
  v63 = v13 + 16;
  (v21)(v20);
  v23 = *(v5 + 16);
  v64 = v2;
  v23(v10, v2, v3);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_172_0();
    v57 = v13;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_173_0();
    v58 = v11;
    v56 = v28;
    v67 = v28;
    *v27 = 136315138;
    v29 = OUTLINED_FUNCTION_64_3();
    (v23)(v29);
    v30 = sub_268B37C24();
    v32 = v31;
    (*(v5 + 8))(v10, v3);
    v33 = sub_26892CDB8(v30, v32, &v67);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2688BB000, v24, v25, "ControlsFlowProvider#makeFlow Recieved parse: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v11 = v58;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_83_0();

    v34 = *(v57 + 8);
  }

  else
  {

    (*(v5 + 8))(v10, v3);
    v34 = *(v13 + 8);
  }

  v35 = OUTLINED_FUNCTION_190();
  v34(v35);
  type metadata accessor for ErrorFilingHelper();
  static ErrorFilingHelper.setupTrialClient()();
  ControlsFlowProvider.makeFlowWithoutWarmup(for:)(v64, v36, v37, v38, v39, v40, v41, v42, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v43 = v65;
  if (v44)
  {
    v62(v65, v61, v11);
    v45 = sub_268B37A34();
    v46 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v46))
    {
      v47 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v47);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v48, v49, "ControlsFlowProvider#makeFlow flow returned. Pre-warming HomeKit");
      OUTLINED_FUNCTION_6();
    }

    (v34)(v43, v11);
    sub_268998C0C();
  }

  else
  {
    v50 = v59;
    v62(v59, v61, v11);
    v51 = sub_268B37A34();
    v52 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v52))
    {
      v53 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v53);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v54, v55, "ControlsFlowProvider#makeFlow No flow returned");
      OUTLINED_FUNCTION_6();
    }

    (v34)(v50, v11);
  }

  OUTLINED_FUNCTION_23();
}

void ControlsFlowProvider.makeFlowWithoutWarmup(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v23;
  a20 = v24;
  v314 = v25;
  sub_268B35474();
  OUTLINED_FUNCTION_1();
  v302 = v27;
  v303 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_78();
  v304 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6968, &qword_268B41030);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_136();
  v33 = sub_268B366C4();
  OUTLINED_FUNCTION_1();
  v309 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v307 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  v308 = v38;
  OUTLINED_FUNCTION_9();
  v312 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v301 = v44;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  v305 = v46;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18();
  v300 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_78();
  v292 = v60;
  OUTLINED_FUNCTION_9();
  v310 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_20_0();
  v66 = v64 - v65;
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v288 - v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_78();
  v313 = v71;
  sub_268B38014();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  v306 = v20;
  v311 = v40;
  if (qword_2802A4D80 != -1)
  {
    OUTLINED_FUNCTION_40_4(&qword_2802A4D80);
  }

  v72 = sub_268B37A24();
  __swift_project_value_buffer(v72, qword_2802A6950);
  sub_268B379F4();
  v73 = (v62 + 16);
  v74 = *(v62 + 16);
  v75 = v313;
  v76 = v310;
  v74(v313, v314, v310);
  v77 = (*(v62 + 88))(v75, v76);
  if (v77 == *MEMORY[0x277D5C128])
  {
    (*(v62 + 96))(v75, v76);
    v78 = v308;
    v79 = v309;
    v80 = v75;
    v81 = v33;
    (*(v309 + 4))(v308, v80, v33);
    sub_268B36694();
    v82 = sub_268B35CB4();
    if (__swift_getEnumTagSinglePayload(v22, 1, v82) == 1)
    {
      v83 = sub_2689A7CD8(v22, &qword_2802A6968, &qword_268B41030);
      v84 = v311;
      v85 = v312;
      v86 = v307;
LABEL_8:
      if (qword_2802A4F30 != -1)
      {
        v83 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_13_8(v83, qword_2802CDA10);
      OUTLINED_FUNCTION_43_4();
      v87 = v305;
      v88(v305);
      OUTLINED_FUNCTION_51_1();
      v89(v86, v78, v81);
      v90 = sub_268B37A34();
      v91 = v78;
      v92 = sub_268B37EE4();
      if (os_log_type_enabled(v90, v92))
      {
        v93 = OUTLINED_FUNCTION_172_0();
        v94 = OUTLINED_FUNCTION_173_0();
        v315[0] = v94;
        *v93 = 136315138;
        v95 = v299;
        sub_268B36694();
        if (__swift_getEnumTagSinglePayload(v95, 1, v82) == 1)
        {
          sub_2689A7CD8(v95, &qword_2802A6968, &qword_268B41030);
          v96 = 0xE500000000000000;
          v97 = 0x3E6C696E3CLL;
        }

        else
        {
          v97 = sub_268B35C94();
          v96 = v180;
          OUTLINED_FUNCTION_70();
          (*(v181 + 8))(v182, v82);
        }

        v183 = *(v309 + 1);
        v183(v307, v81);
        v184 = sub_26892CDB8(v97, v96, v315);

        *(v93 + 4) = v184;
        _os_log_impl(&dword_2688BB000, v90, v92, "ControlsFlowProvider#makeFlow Unexpected NL domain: %s, returning no flow", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_6();

        (*(v311 + 8))(v305, v312);
        v183(v308, v81);
      }

      else
      {

        v144 = *(v79 + 1);
        v144(v86, v81);
        (*(v84 + 8))(v87, v85);
        v144(v91, v81);
      }

      goto LABEL_101;
    }

    v122 = sub_268B35C94();
    v124 = v123;
    OUTLINED_FUNCTION_70();
    (*(v125 + 8))(v22, v82);
    v126 = v122 == 0x616964656DLL && v124 == 0xE500000000000000;
    v84 = v311;
    v85 = v312;
    v86 = v307;
    if (v126 || (OUTLINED_FUNCTION_67_2(0x616964656DLL) & 1) != 0)
    {

      v154 = v300;
      if (qword_2802A4F30 != -1)
      {
        v153 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_13_8(v153, qword_2802CDA10);
      OUTLINED_FUNCTION_43_4();
      v155(v154);
      v156 = sub_268B37A34();
      v157 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v157))
      {
        v158 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v158);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v159, v160, "ControlsFlowProvider#makeFlow Attempting to make frame from media NL intent");
        OUTLINED_FUNCTION_83_0();
      }

      v161 = OUTLINED_FUNCTION_56_3();
      v162(v161);
      sub_268A02860(v314);
    }

    else
    {
      v185 = v122 == 0x616C50616964656DLL && v124 == 0xEB00000000726579;
      if (v185 || (OUTLINED_FUNCTION_67_2(0x616C50616964656DLL) & 1) != 0)
      {

        v187 = v295;
        if (qword_2802A4F30 != -1)
        {
          v186 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_13_8(v186, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v188(v187);
        v189 = sub_268B37A34();
        v190 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v190))
        {
          v191 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v191);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v192, v193, "ControlsFlowProvider#makeFlow Attempting to make frame from mediaPlayer NL intent");
          OUTLINED_FUNCTION_83_0();
        }

        v194 = OUTLINED_FUNCTION_56_3();
        v195(v194);
        sub_268990BC4(v314);
      }

      else
      {
        if (v122 == 0x676E6974746573 && v124 == 0xE700000000000000)
        {
        }

        else
        {
          v230 = OUTLINED_FUNCTION_67_2(0x676E6974746573);

          if ((v230 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        if (qword_2802A4F30 != -1)
        {
          v83 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_13_8(v83, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v263(v291);
        v264 = sub_268B37A34();
        v265 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v265))
        {
          v266 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v266);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v267, v268, "ControlsFlowProvider#makeFlow Attempting to make frame from settings NL intent");
          OUTLINED_FUNCTION_83_0();
        }

        v269 = OUTLINED_FUNCTION_56_3();
        v270(v269);
        sub_26891DC50(v314);
      }
    }

    (*(v79 + 1))(v78, v81);
    goto LABEL_101;
  }

  v98 = v62;
  if (v77 == *MEMORY[0x277D5C150])
  {
    v99 = *(v62 + 96);
    v100 = v313;
    v99(v313, v76);
    v101 = v302;
    v102 = v303;
    v103 = v304;
    (*(v302 + 32))(v304, v100, v303);
    v105 = sub_268B35454() == 0xD00000000000003ALL && 0x8000000268B58F50 == v104;
    v106 = v311;
    if (v105)
    {

      v109 = v312;
      v110 = v301;
    }

    else
    {
      v107 = sub_268B38444();

      v109 = v312;
      v110 = v301;
      if ((v107 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          v108 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_13_8(v108, qword_2802CDA10);
        OUTLINED_FUNCTION_51_1();
        v111 = v298;
        v112(v298);
        v113 = v296;
        (*(v101 + 16))(v296, v103, v102);
        v114 = sub_268B37A34();
        v115 = sub_268B37EE4();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = OUTLINED_FUNCTION_172_0();
          v314 = OUTLINED_FUNCTION_173_0();
          v315[0] = v314;
          *v116 = 136315138;
          v313 = sub_268B35454();
          v118 = v117;
          v119 = *(v101 + 8);
          v120 = OUTLINED_FUNCTION_230_0();
          v119(v120);
          v121 = sub_26892CDB8(v313, v118, v315);

          *(v116 + 4) = v121;
          _os_log_impl(&dword_2688BB000, v114, v115, "ControlsFlowProvider#makeFlow Unexpected invocation identifier: %s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v314);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_83_0();

          (*(v106 + 8))(v298, v109);
          (v119)(v304, v102);
        }

        else
        {

          v215 = *(v101 + 8);
          v215(v113, v102);
          (*(v106 + 8))(v111, v109);
          v216 = OUTLINED_FUNCTION_64_3();
          (v215)(v216);
        }

        goto LABEL_101;
      }
    }

    if (qword_2802A4F30 != -1)
    {
      v108 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_13_8(v108, qword_2802CDA10);
    OUTLINED_FUNCTION_51_1();
    v145(v110);
    v146 = sub_268B37A34();
    v147 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v147))
    {
      v148 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v148);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v149, v150, "ControlsFlowProvider#makeFlow Returning PauseMediaFlow for stop direct invocation");
      OUTLINED_FUNCTION_6();
    }

    (*(v106 + 8))(v110, v109);
    __swift_project_boxed_opaque_existential_1(v306, v306[3]);
    sub_268B0366C();
    v151 = OUTLINED_FUNCTION_64_3();
    v152(v151);
    goto LABEL_101;
  }

  if (v77 != *MEMORY[0x277D5C148])
  {
    v163 = v312;
    if (v77 != *MEMORY[0x277D5C160])
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v163, qword_2802CDA10);
      v196 = v311;
      v197 = v297;
      (*(v311 + 16))(v297);
      v74(v70, v314, v76);
      v198 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = OUTLINED_FUNCTION_172_0();
        v314 = OUTLINED_FUNCTION_173_0();
        v315[0] = v314;
        *v200 = 136315138;
        v201 = v310;
        v74(v66, v70, v310);
        v202 = sub_268B37C24();
        v204 = v203;
        v205 = OUTLINED_FUNCTION_65_3();
        (v73)(v205, v201);
        v206 = sub_26892CDB8(v202, v204, v315);

        *(v200 + 4) = v206;
        _os_log_impl(&dword_2688BB000, v198, v21, "ControlsFlowProvider#makeFlow Received unexpected parse: %s", v200, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v314);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        v207 = OUTLINED_FUNCTION_61_2();
        v208(v207);
        v209 = v201;
      }

      else
      {

        v227 = OUTLINED_FUNCTION_65_3();
        v228 = v310;
        (v73)(v227, v310);
        (*(v196 + 8))(v197, v312);
        v209 = v228;
      }

      (v73)(v313, v209);
      goto LABEL_101;
    }

    __swift_project_boxed_opaque_existential_1(v306 + 36, v306[39]);
    OUTLINED_FUNCTION_129();
    if ((sub_268B36F64() & 1) == 0)
    {
      v217 = v311;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v163, qword_2802CDA10);
      (*(v217 + 16))(v294);
      v218 = sub_268B37A34();
      v219 = sub_268B37EE4();
      v220 = OUTLINED_FUNCTION_19(v219);
      v221 = v313;
      if (v220)
      {
        v222 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v222);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v223, v224, "ControlsFlowProvider#makeFlow Received a .uso parse but Media Controls on Siri X feature is disabled, returning nil");
        OUTLINED_FUNCTION_83_0();
      }

      v225 = OUTLINED_FUNCTION_64_3();
      v226(v225);
      (*(v98 + 8))(v221, v310);
      goto LABEL_101;
    }

    v164 = sub_268A40454();
    v165 = v311;
    if (v164)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v163, qword_2802CDA10);
      v166 = *(v165 + 16);
      v167 = v293;
      v308 = v168;
      v309 = v166;
      v166(v293);

      v169 = sub_268B37A34();
      v170 = sub_268B37F04();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v315[0] = swift_slowAlloc();
        *v171 = 136446466;
        v172 = sub_268B36684();
        v174 = sub_26892CDB8(v172, v173, v315);

        *(v171 + 4) = v174;
        *(v171 + 12) = 2082;
        v175 = sub_268B36674();
        v177 = sub_26892CDB8(v175, v176, v315);

        *(v171 + 14) = v177;
        _os_log_impl(&dword_2688BB000, v169, v170, "ControlsFlowProvider#makeFlow uso parse input is entity=%{public}s verb=%{public}s", v171, 0x16u);
        swift_arrayDestroy();
        v178 = v311;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_20_2();

        v179 = *(v178 + 8);
        v179(v293, v163);
      }

      else
      {

        v179 = *(v165 + 8);
        v179(v167, v163);
      }

      sub_26899B144(v315);
      v238 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD18(v238, v239, v240, v241, v242, v243, v244, v245, v288, v289))
      {
        v246 = OUTLINED_FUNCTION_20_10(&a11);
        v247(v246);
        v248 = sub_268B37A34();
        v249 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v249))
        {
          v250 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v250);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v251, v252, "ControlsFlowProvider#makeFlow Attempting to make flow from mediaPlayer uso parse");
          OUTLINED_FUNCTION_6();
        }

        v253 = OUTLINED_FUNCTION_61_2();
        (v179)(v253);
        sub_268990BC4(v314);
LABEL_121:
        OUTLINED_FUNCTION_129();

        sub_2689A53D0(v315);
        (*(v62 + 8))(v313, v310);
        goto LABEL_101;
      }

      v254 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD44(v254))
      {
        v255 = OUTLINED_FUNCTION_20_10(&v318);
        v256(v255);
        v257 = sub_268B37A34();
        v258 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v258))
        {
          v259 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v259);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v260, v261, "ControlsFlowProvider#makeFlow Attempting to make flow from settings uso parse");
          OUTLINED_FUNCTION_6();
        }

        v262 = OUTLINED_FUNCTION_61_2();
        (v179)(v262);
        sub_26891DC50(v314);
        goto LABEL_121;
      }

      v271 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CD174(v271))
      {
        v272 = OUTLINED_FUNCTION_20_10(&v316);
        v273(v272);
        v274 = sub_268B37A34();
        v275 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v275))
        {
          v276 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v276);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v277, v278, "ControlsFlowProvider#makeFlow Attempting to make flow from media uso parse");
          OUTLINED_FUNCTION_6();
        }

        v279 = OUTLINED_FUNCTION_61_2();
        (v179)(v279);
        sub_268A02860(v314);
        goto LABEL_121;
      }

      v280 = OUTLINED_FUNCTION_20_10(&v317);
      v281(v280);
      v282 = sub_268B37A34();
      v283 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v283))
      {
        v284 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v284);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v285, v286, "ControlsFlowProvider#makeFlow Unsupported task, returning no flow");
        OUTLINED_FUNCTION_6();
      }

      v287 = OUTLINED_FUNCTION_61_2();
      (v179)(v287);
      sub_2689A53D0(v315);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v163, qword_2802CDA10);
      OUTLINED_FUNCTION_51_1();
      v231 = v290;
      v232(v290);
      v233 = sub_268B37A34();
      v234 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v234))
      {
        v235 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v235);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v236, v237, "ControlsFlowProvider#makeFlow Did not receive a task from uso's UserParse, returning nil");
        OUTLINED_FUNCTION_83_0();
      }

      (*(v165 + 8))(v231, v163);
    }

    (*(v98 + 8))(v313, v310);
    goto LABEL_101;
  }

  (*(v62 + 8))(v313, v76);
  v127 = sub_268A40454();
  v128 = v311;
  if (v127)
  {
    v73 = v306[39];
    __swift_project_boxed_opaque_existential_1(v306 + 36, v73);
    if (sub_268B36F54())
    {
      sub_26899B144(v315);
      v129 = OUTLINED_FUNCTION_70_4();
      if (sub_2689CCD18(v129, v130, v131, v132, v133, v134, v135, v136, v288, v289))
      {
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_82(v312, qword_2802CDA10);
        OUTLINED_FUNCTION_43_4();
        v137 = v292;
        v138(v292);
        v139 = sub_268B37A34();
        v140 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v140))
        {
          v141 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v141);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v142, v143, "ControlsFlowProvider#makeFlow Attempting to make flow from mediaPlayer pommesResponse");
          OUTLINED_FUNCTION_6();
        }

        (*(v128 + 8))(v137, v312);
        sub_268990BC4(v314);
        OUTLINED_FUNCTION_129();

        sub_2689A53D0(v315);
      }

      else
      {
        sub_2689A53D0(v315);
      }

      goto LABEL_101;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v210 = v312;
  OUTLINED_FUNCTION_82(v312, qword_2802CDA10);
  OUTLINED_FUNCTION_43_4();
  v211(v21);
  v212 = sub_268B37A34();
  v213 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_19(v213))
  {
    v214 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v214);
    _os_log_impl(&dword_2688BB000, v212, v21, "ControlsFlowProvider#makeFlow Did not receive a task from PommesResponse's UserParse", v73, 2u);
    OUTLINED_FUNCTION_6();
  }

  (*(v128 + 8))(v21, v210);
LABEL_101:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899B144@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
  sub_2689A563C(v1, v26);
  v8 = swift_allocObject();
  memcpy((v8 + 16), v26, 0x1D8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6888, &qword_268B40A80);
  sub_268B38024();

  v9 = v26[0];
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v7, v10, v4);

  v11 = sub_268B37A34();
  v12 = sub_268B37F04();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = v4;
    v24 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v25 = a1;
    v26[0] = v14;
    if (v9)
    {
      v15 = type metadata accessor for DeviceContext();
      v16 = MEMORY[0x26D625710](v9, v15);
      v18 = v17;
    }

    else
    {
      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = sub_26892CDB8(v16, v18, v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2688BB000, v11, v12, "ControlsFlowProvider#makeRequestContext making RequestContext with deviceContexts: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26D6266E0](v14, -1, -1);
    MEMORY[0x26D6266E0](v13, -1, -1);

    (*(v5 + 8))(v7, v23);
    v2 = v24;
    a1 = v25;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  result = sub_2688E4594(v2 + 288, (a1 + 1));
  *a1 = v20;
  return result;
}

uint64_t ControlsFlowProvider.makeResumeAppFlow(for:with:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
  sub_2689A51F0(a1, a2, v7);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_268B0494C();
  a3();
}

uint64_t ControlsFlowProvider.makeAmbiguousPlayFlow(for:with:)()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_79_2(v1);
  OUTLINED_FUNCTION_35_6();
  sub_268997354("makeFrameForPlayMediaIntent", 27, 2, 1, sub_26890D788, v0, sub_2689A5458, var50, &unk_287955450, &unk_287955478, sub_2689A7210, v3, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
}

uint64_t sub_26899B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_2802A4F30;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "Determining if this is a play, resume or addSpeaker request", v16, 2u);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2689A563C(a3, v19);
  v17 = swift_allocObject();
  memcpy(v17 + 2, v19, 0x1D8uLL);
  v17[61] = sub_26890DF14;
  v17[62] = v11;
  sub_26899BA2C();
}

uint64_t sub_26899B828(void *a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && a1)
  {
    v13 = qword_2802A4F30;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v12, v14, v9);
    v15 = sub_268B37A34();
    v16 = sub_268B37F04();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v20[1] = a5;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_2688BB000, v15, v16, "PlaybackControls will handle ambiguous play request. Pre-warming HomeKit...", v17, 2u);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    sub_268998C0C();
    sub_2689A7CC0(a1, 0);
  }

  return a4(a1, a2 & 1);
}

void sub_26899BA2C()
{
  OUTLINED_FUNCTION_26();
  v209 = v0;
  v220 = v2;
  v221 = v3;
  v5 = v4;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v222 = v7;
  v223 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v218 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v212 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v205 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v216 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v214 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v203 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v202 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v217 = v22;
  OUTLINED_FUNCTION_9();
  v23 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_3();
  v215 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_78();
  v219 = v29;
  v208 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v200 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v200 - v36;
  v38 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_1();
  v207 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_3();
  v210 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_78();
  v204 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_78();
  v211 = v45;
  v206 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_136();
  v48 = v25;
  v51 = *(v25 + 16);
  v50 = (v25 + 16);
  v49 = v51;
  v51(v33, v5, v23);
  v213 = v33;
  sub_26893BA8C(v37);
  v52 = v38;
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_2689A7CD8(v37, &qword_2802A5650, &unk_268B3BAC0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v53 = v223;
    OUTLINED_FUNCTION_82(v223, qword_2802CDA10);
    v54 = v222;
    OUTLINED_FUNCTION_43_4();
    v55 = v218;
    v56(v218);
    v57 = sub_268B37A34();
    v58 = sub_268B37EE4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v59);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v57, v58, "Unable to make MediaPlayerIntent from parse, returning nil flow");
      OUTLINED_FUNCTION_20_2();
    }

    (v54[1])(v55, v53);
    v60 = OUTLINED_FUNCTION_30_5();
    v61(v60);
    goto LABEL_54;
  }

  v218 = v1;
  sub_2688C0464(v37, v1);
  v62 = v219;
  v63 = v5;
  v49(v219, v5, v23);
  v64 = (*(v48 + 88))(v62, v23);
  v65 = *MEMORY[0x277D5C158];
  v66 = v23;
  v201 = v48;
  if (v64 == v65)
  {
    v215 = v49;
    v216 = v50;
    v67 = *(v48 + 96);
    v214 = v23;
    v67(v62, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940);
    v68 = v62;
    v69 = sub_268B35484();
    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    v71 = v223;
    if (v70)
    {
      v72 = [v70 privatePlayMediaIntentData];
      if (v72)
      {
        v73 = v72;
        v74 = [v72 isAmbiguousPlay];
        sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
        v75 = sub_268B38054();
        v76 = v75;
        if (v74)
        {
          v77 = sub_268B38074();

          v79 = v223;
          if (v77)
          {

            sub_268B366C4();
            OUTLINED_FUNCTION_11_13();
            v81 = (*(v80 + 8))(v68);
            v82 = v222;
            v83 = v218;
            v66 = v214;
LABEL_56:
            v149 = v211;
            v148 = v212;
            if (*(v83 + *(v52 + 48)) == 26)
            {
              v214 = v66;
              v150 = sub_268A7528C(0, 0);
              v219 = v150;
              if (qword_2802A4F30 != -1)
              {
                v150 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
              }

              OUTLINED_FUNCTION_13_8(v150, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v151(v148);
              sub_268946C8C(v83, v149);
              v152 = v79;
              v153 = v149;
              v154 = v204;
              sub_268946C8C(v83, v204);
              v155 = sub_268B37A34();
              v156 = sub_268B37F04();
              if (os_log_type_enabled(v155, v156))
              {
                v157 = swift_slowAlloc();
                LODWORD(v205) = v156;
                v158 = v157;
                v159 = OUTLINED_FUNCTION_173_0();
                v217 = v63;
                v160 = v159;
                *&v224 = v159;
                *v158 = 136315394;
                sub_268946C8C(v153, v210);
                sub_268B37C24();
                sub_2688C2F6C(v153);
                v161 = OUTLINED_FUNCTION_230_0();
                v164 = sub_26892CDB8(v161, v162, v163);

                *(v158 + 4) = v164;
                *(v158 + 12) = 1024;
                sub_2689A7B24(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent, &unk_268B3E718);
                LODWORD(v164) = sub_268B37834() & 1;
                sub_2688C2F6C(v154);
                *(v158 + 14) = v164;
                _os_log_impl(&dword_2688BB000, v155, v205, "Checking context for ambiguous play request with intent: %s, hasHomeAutomationNodes: %{BOOL}d", v158, 0x12u);
                __swift_destroy_boxed_opaque_existential_0Tm(v160);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_12();

                (v222[1])(v212, v152);
                v63 = v217;
              }

              else
              {
                sub_2688C2F6C(v154);

                sub_2688C2F6C(v153);
                v168 = OUTLINED_FUNCTION_230_0();
                v169(v168);
              }

              v170 = v209;
              v171 = v209[14];
              v223 = v209[13];
              v217 = v171;
              v222 = __swift_project_boxed_opaque_existential_1(v209 + 10, v223);
              sub_2689A563C(v170, &v224);
              v172 = v210;
              sub_268946C8C(v218, v210);
              v174 = v213;
              v173 = v214;
              v215(v213, v63, v214);
              v175 = (*(v207 + 80) + 488) & ~*(v207 + 80);
              v176 = (v206 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
              v177 = v201;
              v178 = (*(v201 + 80) + v176 + 8) & ~*(v201 + 80);
              v179 = (v208 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
              v180 = swift_allocObject();
              OUTLINED_FUNCTION_80_3(v180);
              sub_2688C0464(v172, v154 + v175);
              *(v154 + v176) = v219;
              (*(v177 + 32))(v154 + v178, v174, v173);
              v181 = (v154 + v179);
              v182 = v221;
              *v181 = v220;
              v181[1] = v182;
              v183 = v217;
              v184 = *(v217 + 8);

              v184(sub_2689A7288, v154, v223, v183);

              v147 = v218;
              goto LABEL_53;
            }

            if (qword_2802A4F30 != -1)
            {
              v81 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
            }

            OUTLINED_FUNCTION_13_8(v81, qword_2802CDA10);
            OUTLINED_FUNCTION_120();
            v137 = v205;
            v165(v205);
            v139 = sub_268B37A34();
            v166 = sub_268B37EE4();
            if (!OUTLINED_FUNCTION_115_0(v166))
            {
LABEL_52:

              (v82[1])(v137, v79);
              v145 = OUTLINED_FUNCTION_30_5();
              v146(v145);
              v147 = v83;
LABEL_53:
              sub_2688C2F6C(v147);
              goto LABEL_54;
            }

            v167 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_10(v167);
            v144 = "ControlsFlowProvider.shouldHandleAmbiguousPlay This is a play + mediaType request. Rejecting since we want don't want to treat those as smartPlay";
LABEL_51:
            OUTLINED_FUNCTION_7(&dword_2688BB000, v142, v143, v144);
            OUTLINED_FUNCTION_6();
            goto LABEL_52;
          }

          goto LABEL_41;
        }

        v71 = v223;
      }
    }

    v79 = v71;
LABEL_41:
    v127 = v222;
    if (qword_2802A4F30 != -1)
    {
      v78 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_13_8(v78, qword_2802CDA10);
    OUTLINED_FUNCTION_51_1();
    v128 = v217;
    v129(v217);
    v130 = sub_268B37A34();
    v131 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v131))
    {
      v132 = OUTLINED_FUNCTION_14();
      *v132 = 0;
      _os_log_impl(&dword_2688BB000, v130, v131, "ControlsFlowProvider.shouldHandleAmbiguousPlay Non ambiguous play request. Returning a nil flow for SiriAudio to handle the play request", v132, 2u);
      OUTLINED_FUNCTION_12();
    }

    (v127[1])(v128, v79);
    v133 = OUTLINED_FUNCTION_30_5();
    v134(v133);

    sub_2688C2F6C(v218);
    sub_268B366C4();
    OUTLINED_FUNCTION_11_13();
    (*(v135 + 8))(v68);
    goto LABEL_54;
  }

  v84 = v64 == *MEMORY[0x277D5C148] || v64 == *MEMORY[0x277D5C160];
  v79 = v223;
  if (v84)
  {
    v215 = v49;
    v216 = v50;
    (*(v48 + 8))(v219, v23);
    v85 = sub_268A40454();
    v82 = v222;
    if (v85)
    {
      sub_2689CD68C(&v228);

      v83 = v218;
      if (*(&v229 + 1))
      {
        v86 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5930, &qword_268B3BEF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6108, &qword_268B3E800);
        if (swift_dynamicCast())
        {
          if (*(&v225 + 1))
          {
            sub_2688E6514(&v224, v231);
            v87 = OUTLINED_FUNCTION_33_5();
            if (sub_268A5D430(v87) & 1) != 0 || (v88 = OUTLINED_FUNCTION_33_5(), v90 = sub_268A5D510(v88, v89), (v90))
            {
              v91 = OUTLINED_FUNCTION_33_5();
              if ((sub_268A5D510(v91, v92) & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v209 + 36, v209[39]), v93 = sub_268B36F54(), (v93 & 1) == 0))
              {
                v81 = __swift_destroy_boxed_opaque_existential_0Tm(v231);
                goto LABEL_56;
              }

              if (qword_2802A4F30 != -1)
              {
                v93 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
              }

              OUTLINED_FUNCTION_13_8(v93, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v94 = v202;
              v95(v202);
              v96 = sub_268B37A34();
              v97 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v97))
              {
                v98 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_279(v98);
                OUTLINED_FUNCTION_75_1(&dword_2688BB000, v96, v52, "This is a Play this in [room] request, handling in playback controls");
                OUTLINED_FUNCTION_20_2();
              }

              (v82[1])(v94, v79);
              v99 = v209;
              v100 = v209[13];
              v101 = v209[14];
              __swift_project_boxed_opaque_existential_1(v209 + 10, v100);
              sub_2689A563C(v99, &v224);
              v102 = v213;
              v215(v213, v86, v66);
              v103 = v201;
              v104 = (*(v201 + 80) + 504) & ~*(v201 + 80);
              v105 = swift_allocObject();
              OUTLINED_FUNCTION_80_3(v105);
              v106 = v221;
              *(v86 + 488) = v220;
              *(v86 + 496) = v106;
              (*(v103 + 32))(v86 + v104, v102, v66);
              v107 = *(v101 + 8);

              v107(sub_2689A7364, v86, v100, v101);

              v108 = v218;
            }

            else
            {
              if (qword_2802A4F30 != -1)
              {
                v90 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
              }

              OUTLINED_FUNCTION_13_8(v90, qword_2802CDA10);
              OUTLINED_FUNCTION_120();
              v185 = v203;
              v186(v203);
              sub_2688E4594(v231, &v224);
              v187 = sub_268B37A34();
              v188 = sub_268B37F04();
              if (OUTLINED_FUNCTION_196(v188))
              {
                v189 = OUTLINED_FUNCTION_172_0();
                v190 = OUTLINED_FUNCTION_173_0();
                v227 = v190;
                *v189 = 136315138;
                sub_2688E4594(&v224, &v228);
                v191 = sub_268B37C24();
                v193 = v192;
                __swift_destroy_boxed_opaque_existential_0Tm(&v224);
                v194 = sub_26892CDB8(v191, v193, &v227);
                v83 = v218;

                *(v189 + 4) = v194;
                _os_log_impl(&dword_2688BB000, v187, v188, "ControlsFlowProvider.shouldHandleAmbiguousPlay Non-ambiguous play: %s, not handling in controls", v189, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v190);
                OUTLINED_FUNCTION_12();
                OUTLINED_FUNCTION_20_2();

                v195 = OUTLINED_FUNCTION_64_3();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0Tm(&v224);
                v197 = v82[1];
                v195 = v185;
                v196 = v79;
              }

              v197(v195, v196);
              v198 = OUTLINED_FUNCTION_30_5();
              v199(v198);
              v108 = v83;
            }

            sub_2688C2F6C(v108);
            __swift_destroy_boxed_opaque_existential_0Tm(v231);
            goto LABEL_54;
          }
        }

        else
        {
          v226 = 0;
          v224 = 0u;
          v225 = 0u;
        }

LABEL_47:
        v136 = sub_2689A7CD8(&v224, &qword_2802A6100, &qword_268B3E7F8);
        if (qword_2802A4F30 != -1)
        {
          v136 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        OUTLINED_FUNCTION_13_8(v136, qword_2802CDA10);
        OUTLINED_FUNCTION_120();
        v137 = v214;
        v138(v214);
        v139 = sub_268B37A34();
        v140 = sub_268B37EE4();
        if (!OUTLINED_FUNCTION_115_0(v140))
        {
          goto LABEL_52;
        }

        v141 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v141);
        v144 = "ControlsFlowProvider.shouldHandleAmbiguousPlay Did not receive a controls mediaPlayer task from uso's UserParse";
        goto LABEL_51;
      }
    }

    else
    {
      v230 = 0;
      v228 = 0u;
      v229 = 0u;
      v83 = v218;
    }

    sub_2689A7CD8(&v228, &qword_2802A5928, &unk_268B41110);
    v224 = 0u;
    v225 = 0u;
    v226 = 0;
    goto LABEL_47;
  }

  if (qword_2802A4F30 != -1)
  {
    v64 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_13_8(v64, qword_2802CDA10);
  v109 = v222;
  v110 = v216;
  (v222[2])(v216);
  v111 = v79;
  v112 = v215;
  v49(v215, v63, v66);
  v113 = v49;
  v114 = sub_268B37A34();
  v115 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v115))
  {
    v116 = OUTLINED_FUNCTION_172_0();
    LODWORD(v217) = v115;
    v117 = v116;
    v214 = OUTLINED_FUNCTION_173_0();
    *&v224 = v214;
    *v117 = 136315138;
    v113(v213, v112, v66);
    v118 = v66;
    v119 = sub_268B37C24();
    v121 = v120;
    v122 = OUTLINED_FUNCTION_63_3();
    v50(v122, v118);
    v123 = sub_26892CDB8(v119, v121, &v224);

    *(v117 + 4) = v123;
    v66 = v118;
    _os_log_impl(&dword_2688BB000, v114, v217, "ControlsFlowProvider.shouldHandleAmbiguousPlay Received unexpected parse: %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v214);
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_12();

    (v109[1])(v216, v223);
  }

  else
  {

    v124 = OUTLINED_FUNCTION_63_3();
    v50(v124, v66);
    (v109[1])(v110, v111);
  }

  v125 = OUTLINED_FUNCTION_30_5();
  v126(v125);
  sub_2688C2F6C(v218);
  v50(v219, v66);
LABEL_54:
  OUTLINED_FUNCTION_23();
}

uint64_t ControlsFlowProvider.makeAmbiguousShuffleMusicFlow(for:with:)()
{
  OUTLINED_FUNCTION_0_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_79_2(v1);
  OUTLINED_FUNCTION_35_6();
  sub_268997354("makeAmbiguousShuffleFlow", 24, 2, 1, sub_26890DF10, v0, sub_2689A5460, var50, &unk_287955450, &unk_287955478, sub_2689A7210, v3, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
}

uint64_t sub_26899CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = sub_268B35494();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28[1] = v9;
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_2802A4F30;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_2802CDA10);
  (*(v11 + 16))(v13, v16, v10);
  v17 = sub_268B37A34();
  v18 = sub_268B37F04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28[0] = a4;
    v20 = a3;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v17, v18, "ControlsFlowProvider#makeAmbiguousShuffleFlow Determining if this is a request to enable shuffle or to start library playback shuffled", v19, 2u);
    v22 = v21;
    a3 = v20;
    a4 = v28[0];
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_2689A563C(a3, v31);
  v24 = v29;
  v23 = v30;
  (*(v8 + 16))(v29, a4, v30);
  v25 = (*(v8 + 80) + 504) & ~*(v8 + 80);
  v26 = swift_allocObject();
  memcpy(v26 + 16, v31, 0x1D8uLL);
  *(v26 + 61) = sub_26890D79C;
  *(v26 + 62) = v14;
  (*(v8 + 32))(&v26[v25], v24, v23);
  sub_26899D0E0();
}

uint64_t sub_26899CFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return (a3)(0, 0, a3, a4, a5);
  }

  sub_268998C0C();
  sub_26899D644();
  (a3)();
}

void sub_26899D0E0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v60 = v8;
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  v58 = v13;
  OUTLINED_FUNCTION_9();
  v14 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v59 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = sub_2689A0A2C(v6);
  if (v24)
  {
    v56 = v4;
    v57 = v2;
    v25 = type metadata accessor for MediaPlayerIntent(0);
    v26 = swift_allocBox();
    v54 = v27;
    v55 = v26;
    v28 = *(v59 + 16);
    v28(&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v14);
    sub_26893BA8C(v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v25) != 1)
    {
      sub_2688C0464(v23, v54);
      v45 = v0[13];
      v46 = v0[14];
      v61 = __swift_project_boxed_opaque_existential_1(v0 + 10, v45);
      sub_2689A563C(v0, v62);
      v28(&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v14);
      v47 = v59;
      v48 = (*(v59 + 80) + 488) & ~*(v59 + 80);
      v49 = &v17[v48 + 7] & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      memcpy((v50 + 16), v62, 0x1D8uLL);
      (*(v47 + 32))(v50 + v48, v19, v14);
      v51 = (v50 + v49);
      v52 = v57;
      *v51 = v56;
      v51[1] = v52;
      *(v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
      v53 = *(v46 + 8);

      v53(sub_2689A5694, v50, v45, v46);

      goto LABEL_15;
    }

    sub_2689A7CD8(v23, &qword_2802A5650, &unk_268B3BAC0);
    swift_deallocBox();
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v29 = v61;
    OUTLINED_FUNCTION_82(v61, qword_2802CDA10);
    v30 = v60;
    OUTLINED_FUNCTION_152();
    v31 = v58;
    v32(v58);
    v33 = sub_268B37A34();
    sub_268B37EE4();
    OUTLINED_FUNCTION_13();
    v35 = os_log_type_enabled(v33, v34);
    v4 = v56;
    if (v35)
    {
      v36 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v36);
      _os_log_impl(&dword_2688BB000, v33, v23, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Unable to make MediaPlayerIntent from parse, not handling", v17, 2u);
      OUTLINED_FUNCTION_6();
    }

    (*(v30 + 8))(v31, v29);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v24 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v37 = v61;
    OUTLINED_FUNCTION_13_8(v24, qword_2802CDA10);
    v38 = v60;
    OUTLINED_FUNCTION_120();
    v39(v11);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v41))
    {
      v42 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v42);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v43, v44, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Invalid ambiguous shuffle parse, not handling");
      OUTLINED_FUNCTION_6();
    }

    (*(v38 + 8))(v11, v37);
  }

  v4(0);
LABEL_15:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899D570(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1((a2 + 368), *(a2 + 392));
  sub_26894A7E4();
  sub_26899D644();
  a3();
}

void sub_26899D644()
{
  OUTLINED_FUNCTION_26();
  v37 = v2;
  v38 = v1;
  v41 = v0;
  v42 = v3;
  v39 = v5;
  v40 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B35494();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  (*(v17 + 16))(v21, v7, v15);
  sub_26893BA8C(v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_2689A7CD8(v25, &qword_2802A5650, &unk_268B3BAC0);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_152();
    v31(v14);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v34);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v32, v33, v37);
      OUTLINED_FUNCTION_20_2();
    }

    (*(v10 + 8))(v14, v8);
  }

  else
  {
    sub_2688C0464(v25, v30);
    v35 = objc_allocWithZone(v38(0));
    v36 = [v35 init];
    v39(v30);
    sub_2689A5248(v40, v36, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v42(v36);

    sub_2688C2F6C(v30);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v23[0] = a5;
  v23[1] = a2;
  v24 = a4;
  v27 = a1;
  v9 = sub_268B35494();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = type metadata accessor for MediaPlayerIntent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689A563C(a2, v28);
  sub_268946C8C(a3, v15);
  (*(v10 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23[0], v9);
  v16 = (*(v13 + 80) + 488) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v10 + 80) + v17 + 8) & ~*(v10 + 80);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v28, 0x1D8uLL);
  sub_2688C0464(v15, v19 + v16);
  *(v19 + v17) = v24;
  (*(v10 + 32))(v19 + v18, v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;

  sub_26899FEC8(v27, sub_2689A7784, v19);
}

uint64_t sub_26899DBC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(void))
{
  v134 = a5;
  v135 = a6;
  v12 = sub_268B35494();
  v131 = *(v12 - 8);
  v132 = v12;
  MEMORY[0x28223BE20](v12);
  v129 = v13;
  v130 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B36C04();
  v126 = *(v14 - 8);
  v127 = v14;
  MEMORY[0x28223BE20](v14);
  v125 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268B37A54();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v120 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v122 = &v120 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v121 = &v120 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v120 - v27;
  v29 = a2[49];
  v137 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 46, v29);
  sub_26894A7E4();
  type metadata accessor for MediaPlayerIntent(0);
  sub_2689A7B24(&qword_2802A58E0, type metadata accessor for MediaPlayerIntent, &unk_268B3E718);
  v124 = a3;
  v30 = sub_268B37834();
  v136 = a7;
  if (v30)
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_39:
      swift_once();
    }

    v31 = __swift_project_value_buffer(v16, qword_2802CDA10);
    v32 = *(v17 + 16);
    v130 = v31;
    v131 = v32;
    v32(v28);
    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v17;
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v33, v34, "Determining if we should handle Ambiguous + WHA request", v36, 2u);
      v37 = v36;
      v17 = v35;
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v38 = *(v17 + 8);
    v123 = v16;
    v132 = v38;
    v133 = v17 + 8;
    v38(v28, v16);
    v39 = sub_2688EFD0C();
    v17 = 0;
    v28 = (a1 & 0xC000000000000001);
    v16 = &unk_279C42000;
    while (v39 != v17)
    {
      if (v28)
      {
        v40 = MEMORY[0x26D625BD0](v17, a1);
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v40 = *(a1 + 8 * v17 + 32);
      }

      v41 = v40;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v42 = [v40 proximity];
      if ((v42 - 1) >= 4)
      {
        if (v42)
        {
          v138[0] = v42;
          result = sub_268B38474();
          __break(1u);
          return result;
        }

        if ([v41 nowPlayingState] == 1)
        {
          v98 = v123;
          (v131)(v121, v130, v123);
          v99 = sub_268B37A34();
          v100 = sub_268B37F04();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_2688BB000, v99, v100, "Request to play in [location] and local device is playing something. This is an addSpeaker request", v101, 2u);
            MEMORY[0x26D6266E0](v101, -1, -1);
          }

          v132(v121, v98);
          sub_26899D644();
          v135();
        }

        break;
      }

      ++v17;
    }

    v102 = v137;
    v103 = __swift_project_boxed_opaque_existential_1(v137 + 46, v137[49]);
    sub_2689A6974(1, *v103, a1);
    v104 = sub_2688EFD0C();

    if (v104)
    {
      v105 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
      sub_2689A5248(a1, v105, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
      sub_2689A8C9C(v124);
      sub_2689A563C(v102, v138);
      v106 = sub_268997824();
      sub_2689A5A38(v138);
      v108 = v125;
      v107 = v126;
      v109 = v127;
      (*(v126 + 104))(v125, *MEMORY[0x277D5F660], v127);
      v110 = v105;
      v111 = [v110 mediaType];
      sub_2689A563C(v102, v138);
      v112 = swift_allocObject();
      v113 = v136;
      v112[2] = v135;
      v112[3] = v113;
      v112[4] = v110;
      memcpy(v112 + 5, v138, 0x1D8uLL);
      v114 = v110;

      sub_2689A5A68(v114, v108, v111, sub_2689A7AC0, v112, v106);

      return (*(v107 + 8))(v108, v109);
    }

    else
    {
      v116 = v122;
      v115 = v123;
      (v131)(v122, v130, v123);
      v117 = sub_268B37A34();
      v118 = sub_268B37EE4();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_2688BB000, v117, v118, "No resumable devices found from context. Returning a nil flow for SiriAudio to handle", v119, 2u);
        MEMORY[0x26D6266E0](v119, -1, -1);
      }

      v132(v116, v115);
      return (v135)(0, 0);
    }
  }

  else
  {
    v43 = a7;
    v44 = a4;
    sub_26890282C();
    v46 = v45;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v16, qword_2802CDA10);
    v48 = *(v17 + 16);
    v126 = v47;
    v127 = (v17 + 16);
    v125 = v48;
    (v48)(v22);

    v49 = sub_268B37A34();
    v50 = v16;
    v51 = sub_268B37F04();

    v52 = os_log_type_enabled(v49, v51);
    v133 = v17;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v123 = v50;
      v54 = v53;
      v124 = swift_slowAlloc();
      v138[0] = v124;
      *v54 = 136315394;
      v55 = NLMediaType.description.getter(v44);
      v57 = sub_26892CDB8(v55, v56, v138);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = type metadata accessor for DeviceContext();
      v59 = MEMORY[0x26D6256F0](v46, v58);
      v61 = sub_26892CDB8(v59, v60, v138);

      *(v54 + 14) = v61;
      v43 = v136;
      _os_log_impl(&dword_2688BB000, v49, v51, "Contexts matching media type %s: %s", v54, 0x16u);
      v62 = v124;
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v62, -1, -1);
      MEMORY[0x26D6266E0](v54, -1, -1);

      v63 = *(v17 + 8);
      v64 = v123;
      v63(v22, v123);
    }

    else
    {

      v63 = *(v17 + 8);
      v63(v22, v50);
      v64 = v50;
    }

    v65 = v137;
    v66 = __swift_project_boxed_opaque_existential_1(v137 + 46, v137[49]);
    v67 = sub_2689A6974(1, *v66, v46);

    if (sub_2688EFD0C())
    {
      v68 = v128;
      (v125)(v128, v126, v64);

      v69 = sub_268B37A34();
      v70 = sub_268B37F04();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v127 = v63;
        v72 = v71;
        v73 = swift_slowAlloc();
        v138[0] = v73;
        *v72 = 136315138;
        v74 = type metadata accessor for DeviceContext();
        v75 = MEMORY[0x26D6256F0](v67, v74);
        v77 = v76;

        v78 = sub_26892CDB8(v75, v77, v138);
        v65 = v137;

        *(v72 + 4) = v78;
        _os_log_impl(&dword_2688BB000, v69, v70, "Resumable device found in context: %s, returning handle response", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        MEMORY[0x26D6266E0](v73, -1, -1);
        MEMORY[0x26D6266E0](v72, -1, -1);

        v127(v128, v64);
      }

      else
      {

        v63(v68, v64);
      }

      v87 = v134;
      v88 = v135;
      v89 = v132;
      sub_2689A563C(v65, v138);
      v90 = v130;
      v91 = v131;
      (*(v131 + 2))(v130, v87, v89);
      v92 = (*(v91 + 80) + 496) & ~*(v91 + 80);
      v93 = (v129 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = swift_allocObject();
      memcpy((v94 + 16), v138, 0x1D8uLL);
      *(v94 + 488) = a1;
      (*(v91 + 4))(v94 + v92, v90, v89);
      v95 = (v94 + v93);
      v96 = v136;
      *v95 = v88;
      v95[1] = v96;

      sub_26899EFEC(sub_2689A78AC, v94);
    }

    else
    {

      sub_2689A563C(v65, v138);
      v80 = v130;
      v79 = v131;
      v81 = v132;
      (*(v131 + 2))(v130, v134, v132);
      v82 = (*(v79 + 80) + 496) & ~*(v79 + 80);
      v83 = (v129 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      memcpy((v84 + 16), v138, 0x1D8uLL);
      *(v84 + 488) = a1;
      (*(v79 + 4))(v84 + v82, v80, v81);
      v85 = (v84 + v83);
      *v85 = v135;
      v85[1] = v43;
      __swift_project_boxed_opaque_existential_1((v65 + 40), *(v65 + 64));
      v86 = swift_allocObject();
      *(v86 + 16) = sub_2689A798C;
      *(v86 + 24) = v84;

      sub_268B36D24();
    }
  }
}

uint64_t sub_26899E978(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v36 = a2;
  v37 = a5;
  v33 = a4;
  v35 = a3;
  v34 = sub_268B35494();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v16, v17, v10);
    v18 = sub_268B37A34();
    v19 = sub_268B37EC4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = a6;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2688BB000, v18, v19, "Found relevant resumable contexts. Checking if local device can be resumed.", v20, 2u);
      v22 = v21;
      a6 = v32;
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    sub_2689A563C(v36, v38);
    v23 = v34;
    (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v34);
    v24 = (*(v8 + 80) + 496) & ~*(v8 + 80);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v38, 0x1D8uLL);
    *(v25 + 488) = v35;
    (*(v8 + 32))(v25 + v24, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v37;
    v26[1] = a6;

    sub_26899EFEC(sub_2689A7FF8, v25);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v14, v28, v10);
    v29 = sub_268B37A34();
    v30 = sub_268B37EC4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2688BB000, v29, v30, "No relevant resumable contexts found to resume and local device play queue is empty or does not match the requested mediaType. Returning nil", v31, 2u);
      MEMORY[0x26D6266E0](v31, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return v37(0, 0);
  }
}

uint64_t sub_26899EDAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B35494();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  sub_26893BA8C(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2689A7CD8(v12, &qword_2802A5650, &unk_268B3BAC0);
    return 0;
  }

  else
  {
    sub_2688C0464(v12, v15);
    v17 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
    sub_2689A5248(a1, v17, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    sub_2689A8C9C(v15);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_268B0494C();
    v16 = v18;

    sub_2688C2F6C(v15);
  }

  return v16;
}

uint64_t sub_26899EFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268B37A34();
  v12 = sub_268B37F04();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2688BB000, v11, v12, "ControlsFlowProvider.validateResumableContent validating resumable content.", v13, 2u);
    MEMORY[0x26D6266E0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_2689A563C(v3, v16);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  memcpy(v14 + 4, v16, 0x1D8uLL);

  sub_268B36DB4();
}

void sub_26899F21C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_136();
  if (v8)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    (*(v11 + 16))(v0);
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v18))
    {
      v19 = OUTLINED_FUNCTION_14();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "Returning a resume flow", v19, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v11 + 8))(v0, v9);
    v20 = sub_26899EDAC(v6, v4);
    v2(v20, 0);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v9, qword_2802CDA10);
    (*(v11 + 16))(v15);
    v21 = sub_268B37A34();
    v22 = sub_268B37F04();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_14();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Returning a nil flow", v23, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v11 + 8))(v15, v9);
    v2(0, 0);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_26899F4C4(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v61 = a6;
  v65 = a3;
  v66 = a4;
  v8 = a2;
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v62 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  if (v8 <= 1)
  {

    v19 = a1;
  }

  v20 = sub_2688EFD0C();
  v67 = v10;
  v68 = a5;
  v63 = v9;
  v64 = v17;
  if (v20)
  {
    v21 = v20;
    v69[0] = v18;
    sub_268B38234();
    if (v21 < 0)
    {
      goto LABEL_39;
    }

    v60 = v13;
    sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
    v22 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D625BD0](v22, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      v25 = sub_268B38054();
      [v24 setIsPreResolved_];

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v21 != v22);

    a5 = v68;
    v19 = v69[0];
    v9 = v63;
    v17 = v64;
    v10 = v67;
    v13 = v60;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  if (sub_2688EFD0C())
  {
    sub_2689A5248(v19, a5, type metadata accessor for Device, &selRef_setDevices_);
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v26 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v59 = *(v10 + 16);
      v60 = v26;
      v59(v17);

      v27 = sub_268B37A34();
      v28 = sub_268B37F04();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v69[0] = v30;
        *v29 = 136315138;
        v31 = type metadata accessor for Device();
        v32 = MEMORY[0x26D6256F0](v19, v31);
        v34 = v33;

        v35 = sub_26892CDB8(v32, v34, v69);
        a5 = v68;

        *(v29 + 4) = v35;
        _os_log_impl(&dword_2688BB000, v27, v28, "Found devices to resume: %s.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x26D6266E0](v30, -1, -1);
        v36 = v29;
        v37 = v67;
        MEMORY[0x26D6266E0](v36, -1, -1);

        v17 = *(v37 + 8);
        (v17)(v64, v9);
      }

      else
      {
        v43 = v17;

        v17 = *(v10 + 8);
        (v17)(v43, v9);
      }

      v44 = sub_268B18100(a5);
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v19 = sub_2688EFD0C();
      v10 = 0;
      a5 = (v45 & 0xC000000000000001);
      v9 = v45 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19 == v10)
        {

          v9 = v63;
          goto LABEL_33;
        }

        if (a5)
        {
          v46 = MEMORY[0x26D625BD0](v10, v45);
        }

        else
        {
          if (v10 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v46 = *(v45 + 8 * v10 + 32);
        }

        v47 = v46;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v48 = sub_268983434(v46);

        ++v10;
        if (v48)
        {

          sub_2689A563C(v61, v69);
          v54 = swift_allocObject();
          memcpy(v54 + 2, v69, 0x1D8uLL);
          v55 = v68;
          v56 = v65;
          v57 = v66;
          v54[61] = v68;
          v54[62] = v56;
          v54[63] = v57;
          v58 = v55;

          sub_26899EFEC(sub_2689A7B14, v54);
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

LABEL_33:
    v49 = v62;
    (v59)(v62, v60, v9);
    v50 = sub_268B37A34();
    v51 = sub_268B37F04();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "Returning a resume flow", v52, 2u);
      v53 = v52;
      v49 = v62;
      MEMORY[0x26D6266E0](v53, -1, -1);
    }

    (v17)(v49, v9);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    sub_268B0494C();
    v65();
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v9, qword_2802CDA10);
    (*(v10 + 16))(v13, v38, v9);
    v39 = sub_268B37A34();
    v40 = sub_268B37F04();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2688BB000, v39, v40, "No resumbale devices found for WHA request, returning nil flow for SiriAudio to handle", v41, 2u);
      MEMORY[0x26D6266E0](v41, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    return (v65)(0, 0);
  }
}

uint64_t sub_26899FBD0(char a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v13, v14, v7);
    v15 = sub_268B37A34();
    v16 = sub_268B37F04();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2688BB000, v15, v16, "Returning a resume flow", v17, 2u);
      MEMORY[0x26D6266E0](v17, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_268B0494C();
    a4();
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_2802CDA10);
    (*(v8 + 16))(v11, v19, v7);
    v20 = sub_268B37A34();
    v21 = sub_268B37F04();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2688BB000, v20, v21, "Returning a nil flow", v22, 2u);
      MEMORY[0x26D6266E0](v22, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return (a4)(0, 0);
  }
}

uint64_t sub_26899FEC8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  __swift_project_boxed_opaque_existential_1((v3 + 248), *(v3 + 272));

  if (sub_268B34CB4())
  {
    v22 = v12;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v13 = v23;
    v14 = __swift_project_value_buffer(v23, qword_2802CDA10);
    (*(v24 + 16))(v11, v14, v13);
    v15 = sub_268B37A34();
    v16 = sub_268B37F04();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2688BB000, v15, v16, "ControlsFlowProvider#augmentPrimaryContext getting local playback state and media type from MediaRemote", v17, 2u);
      MEMORY[0x26D6266E0](v17, -1, -1);
    }

    (*(v24 + 8))(v11, v13);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    sub_2689A563C(v4, v25);
    v18 = swift_allocObject();
    memcpy(v18 + 2, v25, 0x1D8uLL);
    v18[61] = v22;
    v18[62] = a2;
    v18[63] = a3;

    sub_268B36D24();
  }

  else
  {

    a2(v20);
  }
}

uint64_t sub_2689A01C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_268B37A54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if (a2)
  {
    v46 = a1;
    v43 = a5;
    v44 = a3;
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v45 = a4;
    v20 = __swift_project_value_buffer(v10, qword_2802CDA10);
    v42 = *(v11 + 16);
    v42(v17, v20, v10);

    v21 = sub_268B37A34();
    v22 = sub_268B37F04();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v41 = v14;
      v24 = v23;
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_26892CDB8(v46, a2, &v47);
      _os_log_impl(&dword_2688BB000, v21, v22, "ControlsFlowProvider.validateResumableContent found now playing app bundleID: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26D6266E0](v25, -1, -1);
      v26 = v24;
      v14 = v41;
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    v27 = *(v11 + 8);
    v27(v17, v10);
    v28 = v43;
    if (qword_2802A4F38 != -1)
    {
      swift_once();
    }

    if (sub_2689A06A4(v46, a2, qword_2802CDA28))
    {
      __swift_project_boxed_opaque_existential_1(v28 + 5, v28[8]);
      v29 = swift_allocObject();
      *(v29 + 16) = v44;
      *(v29 + 24) = v45;

      sub_268B36D54();
    }

    else
    {
      v42(v14, v20, v10);
      v35 = sub_268B37A34();
      v36 = sub_268B37F04();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v14;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2688BB000, v35, v36, "ControlsFlowProvider.validateResumableContent assuming 3rd app has resumable content.", v38, 2u);
        v39 = v38;
        v14 = v37;
        MEMORY[0x26D6266E0](v39, -1, -1);
      }

      v27(v14, v10);
      return v44(1);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_2802CDA10);
    (*(v11 + 16))(v19, v31, v10);
    v32 = sub_268B37A34();
    v33 = sub_268B37EE4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "ControlsFlowProvider.validateResumableContent Now playing app bundleID is nil.", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    (*(v11 + 8))(v19, v10);
    return a3(0);
  }
}

BOOL sub_2689A06A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268B38514();
  sub_268B37C54();
  v6 = sub_268B38544();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_268B38444();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_2689A0790(char a1, uint64_t (*a2)(void))
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if (a1)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v10, v11, v4);
    v12 = sub_268B37A34();
    v13 = sub_268B37F04();
    if (!os_log_type_enabled(v12, v13))
    {
      v8 = v10;
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "ControlsFlowProvider.validateResumableContent has found resumable content.", v14, 2u);
    v8 = v10;
    goto LABEL_10;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v5 + 16))(v8, v15, v4);
  v12 = sub_268B37A34();
  v16 = sub_268B37F04();
  if (os_log_type_enabled(v12, v16))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v16, "ControlsFlowProvider.validateResumableContent inspecting the queue shows that there's no resumable content.", v14, 2u);
LABEL_10:
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

LABEL_12:

  (*(v5 + 8))(v8, v4);
  return a2(a1 & 1);
}

uint64_t sub_2689A0A2C(uint64_t a1)
{
  v152 = sub_268B37A54();
  v150 = *(v152 - 8);
  v2 = MEMORY[0x28223BE20](v152);
  v141 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v148 = &v136 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v143 = &v136 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v142 = &v136 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v136 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v136 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v144 = &v136 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v147 = (&v136 - v17);
  MEMORY[0x28223BE20](v16);
  v149 = &v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v136 - v20;
  v22 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_268B35494();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v140 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v145 = &v136 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v136 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v136 - v34;
  v36 = *(v26 + 16);
  v36(&v136 - v34, a1, v25);
  v151 = v26;
  v37 = *(v26 + 88);
  v153 = v35;
  v38 = v37(v35, v25);
  if (v38 != *MEMORY[0x277D5C128])
  {
    v149 = (v26 + 16);
    v137 = v33;
    v42 = a1;
    if (v38 == *MEMORY[0x277D5C158])
    {
      (*(v151 + 96))(v153, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5E20, qword_268B3D940);
      v43 = sub_268B35484();
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      v40 = v150;
      if (v44)
      {
        v45 = v44;
        v46 = sub_268B37F14();
        v41 = v152;
        if (v46 != 2 && (v46 & 1) != 0)
        {
          v47 = [v45 mediaSearch];
          if (v47)
          {
            v48 = v47;
            v49 = sub_268A425C8();

            if (v49)
            {
              v50 = [v45 mediaSearch];
              if (v50)
              {
                v51 = v50;
                v52 = [v50 mediaType];

                if (v52 == 18)
                {

                  v53 = sub_268B366C4();
                  (*(*(v53 - 8) + 8))(v153, v53);
                  v39 = v25;
LABEL_32:
                  v56 = v42;
                  v54 = v36;
                  goto LABEL_67;
                }
              }
            }
          }
        }

        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v64 = __swift_project_value_buffer(v41, qword_2802CDA10);
        v65 = v147;
        (*(v40 + 16))(v147, v64, v41);
        v66 = sub_268B37A34();
        v67 = sub_268B37F04();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_2688BB000, v66, v67, "ControlsFlowProvider#shouldHandleAmbiguousShuffle INPlayMediaIntent doesn't have the expected properties set, not an ambiguous shuffle music request", v68, 2u);
          MEMORY[0x26D6266E0](v68, -1, -1);
        }

        (*(v40 + 8))(v65, v41);
      }

      else
      {

        v83 = v152;
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v84 = __swift_project_value_buffer(v83, qword_2802CDA10);
        v85 = v144;
        (*(v40 + 16))(v144, v84, v83);
        v86 = sub_268B37A34();
        v87 = sub_268B37F04();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_2688BB000, v86, v87, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Not an INPlayMediaIntent", v88, 2u);
          MEMORY[0x26D6266E0](v88, -1, -1);
        }

        (*(v40 + 8))(v85, v83);
      }

      v89 = sub_268B366C4();
      (*(*(v89 - 8) + 8))(v153, v89);
      return 0;
    }

    v61 = v38 == *MEMORY[0x277D5C148] || v38 == *MEMORY[0x277D5C160];
    v40 = v150;
    if (!v61)
    {
      v69 = v25;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v70 = v152;
      v71 = __swift_project_value_buffer(v152, qword_2802CDA10);
      (*(v40 + 16))(v148, v71, v70);
      v72 = v145;
      v36(v145, a1, v25);
      v73 = sub_268B37A34();
      v74 = sub_268B37EE4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v146 = v75;
        v147 = swift_slowAlloc();
        v154[0] = v147;
        *v75 = 136315138;
        v36(v137, v72, v25);
        v76 = sub_268B37C24();
        v78 = v77;
        v79 = *(v151 + 8);
        v79(v72, v25);
        v80 = sub_26892CDB8(v76, v78, v154);
        v69 = v25;

        v81 = v146;
        *(v146 + 4) = v80;
        _os_log_impl(&dword_2688BB000, v73, v74, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Received unexpected parse: %s", v81, 0xCu);
        v82 = v147;
        __swift_destroy_boxed_opaque_existential_0Tm(v147);
        MEMORY[0x26D6266E0](v82, -1, -1);
        MEMORY[0x26D6266E0](v81, -1, -1);
      }

      else
      {

        v79 = *(v151 + 8);
        v79(v72, v25);
      }

      (*(v40 + 8))(v148, v152);
      v79(v153, v69);
      return 0;
    }

    v39 = v25;
    (*(v151 + 8))(v153, v25);
    __swift_project_boxed_opaque_existential_1(v146 + 36, v146[39]);
    if ((sub_268B36F54() & 1) == 0)
    {
      v94 = v152;
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v95 = __swift_project_value_buffer(v94, qword_2802CDA10);
      v96 = v143;
      (*(v40 + 16))(v143, v95, v94);
      v97 = sub_268B37A34();
      v98 = sub_268B37EE4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_2688BB000, v97, v98, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Siri X v2 flag is not enabled, not handling ambiguous shuffle music request", v99, 2u);
        MEMORY[0x26D6266E0](v99, -1, -1);
      }

      (*(v40 + 8))(v96, v94);
      return 0;
    }

    v62 = sub_268A40454();
    v41 = v152;
    if (v62)
    {
      sub_268B35DC4();
      if (v154[3])
      {
        sub_268B361E4();
        if (swift_dynamicCast())
        {
          if (sub_2689A848C())
          {
            v63 = sub_2689A8424();
            if (v63 == 26)
            {
LABEL_31:

              goto LABEL_32;
            }

            if (sub_268942D54(v63) == 0x7972617262696CLL && v132 == 0xE700000000000000)
            {
            }

            else
            {
              v134 = sub_268B38444();

              if ((v134 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v135 = __swift_project_value_buffer(v41, qword_2802CDA10);
            v127 = v138;
            (*(v40 + 16))(v138, v135, v41);
            v128 = sub_268B37A34();
            v129 = sub_268B37ED4();
            if (!os_log_type_enabled(v128, v129))
            {
              goto LABEL_104;
            }

            v130 = swift_slowAlloc();
            *v130 = 0;
            v131 = "ControlsFlowProvider#shouldHandleAmbiguousShuffle user mentioned library, this is not ambiguous";
          }

          else
          {
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v126 = __swift_project_value_buffer(v41, qword_2802CDA10);
            v127 = v139;
            (*(v40 + 16))(v139, v126, v41);
            v128 = sub_268B37A34();
            v129 = sub_268B37ED4();
            if (!os_log_type_enabled(v128, v129))
            {
              goto LABEL_104;
            }

            v130 = swift_slowAlloc();
            *v130 = 0;
            v131 = "ControlsFlowProvider#shouldHandleAmbiguousShuffle Task is not a supported shuffle type for controls";
          }

          _os_log_impl(&dword_2688BB000, v128, v129, v131, v130, 2u);
          MEMORY[0x26D6266E0](v130, -1, -1);
LABEL_104:

          v124 = *(v40 + 8);
          v125 = v127;
LABEL_85:
          v124(v125, v41);
          return 0;
        }
      }

      else
      {

        sub_2689A7CD8(v154, &byte_2802A6450, &byte_268B3BE10);
      }
    }

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v119 = __swift_project_value_buffer(v41, qword_2802CDA10);
    v120 = v142;
    (*(v40 + 16))(v142, v119, v41);
    v121 = sub_268B37A34();
    v122 = sub_268B37EE4();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_2688BB000, v121, v122, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Did not receive a task from parse", v123, 2u);
      MEMORY[0x26D6266E0](v123, -1, -1);
    }

    v124 = *(v40 + 8);
    v125 = v120;
    goto LABEL_85;
  }

  v36(v33, a1, v25);
  sub_26893BA8C(v21);
  v39 = v25;
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_2689A7CD8(v21, &qword_2802A5650, &unk_268B3BAC0);
    v40 = v150;
    v41 = v152;
LABEL_72:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v113 = __swift_project_value_buffer(v41, qword_2802CDA10);
    v114 = v149;
    (*(v40 + 16))(v149, v113, v41);
    v115 = sub_268B37A34();
    v116 = sub_268B37EE4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_2688BB000, v115, v116, "ControlsFlowProvider#shouldHandleAmbiguousShuffle NLv3 intent is not ambiguous shuffle", v117, 2u);
      MEMORY[0x26D6266E0](v117, -1, -1);
    }

    (*(v40 + 8))(v114, v41);
    (*(v151 + 8))(v153, v39);
    return 0;
  }

  v54 = v36;
  v55 = v22;
  v56 = a1;
  sub_2688C0464(v21, v24);
  v57 = *v24;
  v41 = v152;
  if (v57 == 24)
  {
    goto LABEL_71;
  }

  if (sub_26893E3F8(v57) == 0x656C6666756873 && v58 == 0xE700000000000000)
  {
  }

  else
  {
    v60 = sub_268B38444();

    if ((v60 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v90 = v24[*(v55 + 48)];
  if (v90 == 26)
  {
    goto LABEL_71;
  }

  if (sub_268942D54(v90) == 0x636973756DLL && v91 == 0xE500000000000000)
  {

    goto LABEL_64;
  }

  v93 = sub_268B38444();

  if ((v93 & 1) == 0)
  {
LABEL_71:
    sub_2688C2F6C(v24);
    v40 = v150;
    goto LABEL_72;
  }

LABEL_64:
  if (v24[*(v55 + 32)] != 2)
  {
    goto LABEL_71;
  }

  v100 = v24[1];
  sub_2688C2F6C(v24);
  v40 = v150;
  if (v100 != 4)
  {
    goto LABEL_72;
  }

  v137 = v33;
  (*(v151 + 8))(v153, v39);
LABEL_67:
  v102 = v140;
  v101 = v141;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v103 = __swift_project_value_buffer(v41, qword_2802CDA10);
  (*(v40 + 16))(v101, v103, v41);
  v54(v102, v56, v39);
  v104 = v54;
  v105 = sub_268B37A34();
  v106 = sub_268B37ED4();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v154[0] = v108;
    *v107 = 136315138;
    v104(v137, v102, v39);
    v109 = sub_268B37C24();
    v111 = v110;
    (*(v151 + 8))(v102, v39);
    v112 = sub_26892CDB8(v109, v111, v154);

    *(v107 + 4) = v112;
    _os_log_impl(&dword_2688BB000, v105, v106, "ControlsFlowProvider#shouldHandleAmbiguousShuffle Received valid ambiguous shuffle parse: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x26D6266E0](v108, -1, -1);
    MEMORY[0x26D6266E0](v107, -1, -1);

    (*(v40 + 8))(v141, v41);
  }

  else
  {

    (*(v151 + 8))(v102, v39);
    (*(v40 + 8))(v101, v41);
  }

  return 1;
}

uint64_t sub_2689A1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a2;
  v20 = a4;
  v21 = a1;
  v10 = sub_268B35494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2689A563C(a2, v22);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 488) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  memcpy((v16 + 16), v22, 0x1D8uLL);
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = (v16 + v15);
  *v17 = v20;
  v17[1] = a5;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a6;

  sub_26899FEC8(v21, sub_2689A5798, v16);
}

void sub_2689A1EBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v57 = a5;
  v50 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v50);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_268B37A54();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = sub_268B35494();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  __swift_project_boxed_opaque_existential_1((a2 + 368), *(a2 + 392));
  v55 = a1;
  sub_26894A7E4();
  (*(v16 + 16))(v18, a3, v15);
  v20 = (*(v16 + 88))(v18, v15);
  LODWORD(a1) = *MEMORY[0x277D5C160];
  (*(v16 + 8))(v18, v15);
  if (v20 != a1 || sub_268A40454() && (v21 = sub_2689CD5F0(), , (v21 & 1) != 0))
  {
    sub_2688E4594(a2 + 40, v61);
    sub_2689A563C(a2, v60);
    sub_268997824();
    sub_2689A5A38(v60);
    sub_2688E4594(a2 + 248, v60);
    sub_2688E4594(a2 + 368, v59);
    sub_2688E4594(a2 + 424, &v58);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
    MEMORY[0x28223BE20](v22);
    (*(v24 + 16))(&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
    MEMORY[0x28223BE20](v25);
    (*(v27 + 16))(&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2689F7CDC();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v30 = [objc_allocWithZone(type metadata accessor for SetShuffleStateIntent()) init];
    v31 = v55;
    sub_2689A5248(v55, v30, type metadata accessor for DeviceContext, &selRef_setDeviceContext_);
    swift_beginAccess();
    *(v19 + *(v50 + 48)) = 0;
    swift_beginAccess();
    v32 = v51;
    sub_268946C8C(v19, v51);
    sub_2689CA4AC(v32);
    sub_2688C2F6C(v32);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v33 = v54;
    v34 = __swift_project_value_buffer(v54, qword_2802CDA10);
    v36 = v52;
    v35 = v53;
    (*(v53 + 16))(v52, v34, v33);
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2688BB000, v37, v38, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Resolving potential devices", v39, 2u);
      MEMORY[0x26D6266E0](v39, -1, -1);
    }

    (*(v35 + 8))(v36, v33);
    v40 = v57;

    sub_2689F525C(v30, v29, v56, v40, v31);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = v54;
    v42 = __swift_project_value_buffer(v54, qword_2802CDA10);
    v43 = v53;
    (*(v53 + 16))(v14, v42, v41);
    v44 = sub_268B37A34();
    v45 = sub_268B37F04();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v55;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2688BB000, v44, v45, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Task is not an ambiguous shuffle music request. Handling as explicit shuffle.", v48, 2u);
      MEMORY[0x26D6266E0](v48, -1, -1);
    }

    (*(v43 + 8))(v14, v41);
    v56(v47);
  }
}

void sub_2689A25C4()
{
  OUTLINED_FUNCTION_26();
  v89 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v93 = v9;
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v92 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v90 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v88 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v91 = v16;
  OUTLINED_FUNCTION_8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v83 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_68_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = sub_2688EFD0C();
  if (v24)
  {
    v25 = v24;
    v26 = (v7 & 0xC000000000000001);
    sub_2688EFD10();
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_73;
    }

    for (i = *(v7 + 32); ; i = MEMORY[0x26D625BD0](0, v7))
    {
      v28 = i;
      v29 = [i resolutionResultCode];

      v30 = MEMORY[0x277D84F90];
      if (v29 == 2)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_23;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v84 = v3;
      v85 = v5;
      OUTLINED_FUNCTION_82(v94, qword_2802CDA10);
      v5 = v93;
      v86 = *(v93 + 16);
      v86(v23);
      v31 = sub_268B37A34();
      v32 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v32))
      {
        v33 = OUTLINED_FUNCTION_14();
        *v33 = 0;
        _os_log_impl(&dword_2688BB000, v31, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Adding resolved device(s)", v33, 2u);
        v5 = v93;
        OUTLINED_FUNCTION_12();
      }

      v87 = *(v5 + 8);
      v87(v23, v94);
      v20 = 0;
      v97 = v30;
      v3 = &selRef_groupLeader;
      while (1)
      {
        if (v25 == v20)
        {
          v3 = v84;
          v5 = v85;
          v42 = v93;
          v23 = v94;
          goto LABEL_39;
        }

        if (v26)
        {
          v34 = OUTLINED_FUNCTION_190();
          v35 = MEMORY[0x26D625BD0](v34);
        }

        else
        {
          if (v20 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v35 = *(v7 + 8 * v20 + 32);
        }

        v0 = v35;
        v5 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = [v35 resolvedValue];
        sub_268B380E4();
        swift_unknownObjectRelease();

        type metadata accessor for Device();
        if ((swift_dynamicCast() & 1) != 0 && (v0 = v96) != 0)
        {
          MEMORY[0x26D6256C0]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268B37D14();
          }

          sub_268B37D44();
          v30 = v97;
          ++v20;
        }

        else
        {
          ++v20;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v94, qword_2802CDA10);
    v42 = v93;
    OUTLINED_FUNCTION_152();
    v86 = v43;
    v43(v0);
    v44 = sub_268B37A34();
    v45 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      *v46 = 0;
      _os_log_impl(&dword_2688BB000, v44, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Adding disambiguated devices", v46, 2u);
      OUTLINED_FUNCTION_12();
    }

    v87 = *(v42 + 8);
    v87(v0, v94);
    if (v26)
    {
      v47 = MEMORY[0x26D625BD0](0, v7);
    }

    else
    {
      v47 = *(v7 + 32);
    }

    v48 = v47;
    v49 = [v47 disambiguationItems];

    v50 = sub_268B37CF4();
    sub_2689976AC(v50);
    OUTLINED_FUNCTION_129();

    if (v49)
    {
      v30 = v49;
    }

    v23 = v94;
LABEL_39:
    if (sub_2688EFD0C())
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v84 = v3;
      v85 = v5;
      OUTLINED_FUNCTION_82(v23, qword_2802CDA10);
      v51 = v91;
      v83 = v52;
      v92 = v42 + 16;
      v86(v91);
      v53 = sub_268B37A34();
      v54 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v54))
      {
        v7 = OUTLINED_FUNCTION_14();
        *v7 = 0;
        _os_log_impl(&dword_2688BB000, v53, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Checking resolved devices for playing music", v7, 2u);
        OUTLINED_FUNCTION_12();
      }

      v93 = v42 + 8;
      v87(v51, v23);
      v20 = sub_2688EFD0C();
      v3 = (v30 & 0xC000000000000001);
      v5 = v30 & 0xFFFFFFFFFFFFFF8;

      v0 = 0;
      v26 = &selRef_groupLeader;
      v25 = &unk_279C42000;
      while (v20 != v0)
      {
        if (v3)
        {
          v55 = MEMORY[0x26D625BD0](v0, v30);
        }

        else
        {
          if (v0 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v55 = *(v30 + 8 * v0 + 32);
        }

        v7 = v55;
        if (__OFADD__(v0, 1))
        {
          goto LABEL_70;
        }

        v56 = [v55 context];
        if (v56)
        {
          v23 = v56;
          v57 = [v56 nowPlayingState];

          if (v57 == 1)
          {

            v70 = v88;
            OUTLINED_FUNCTION_66_2();
            v71();
            v72 = sub_268B37A34();
            sub_268B37F04();
            OUTLINED_FUNCTION_13();
            if (os_log_type_enabled(v72, v73))
            {
              v75 = OUTLINED_FUNCTION_172_0();
              v76 = OUTLINED_FUNCTION_173_0();
              v95 = v76;
              *v75 = 136315138;
              v77 = type metadata accessor for Device();

              v79 = MEMORY[0x26D6256F0](v78, v77);
              v81 = v80;

              v82 = sub_26892CDB8(v79, v81, &v95);

              *(v75 + 4) = v82;
              _os_log_impl(&dword_2688BB000, v72, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Mentioned devices are playing music: %s, returning handle response", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v76);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();
            }

            v87(v70, (v30 & 0xFFFFFFFFFFFFFF8));
            v85(v89);
            goto LABEL_67;
          }
        }

        else
        {
        }

        ++v0;
      }

      v58 = v90;
      OUTLINED_FUNCTION_66_2();
      v59();
      v60 = sub_268B37A34();
      v61 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v61))
      {
        v62 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v62);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v63, v64, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest No playing music found to shuffle, not handling this as a set shuffle state request");
        OUTLINED_FUNCTION_83_0();
      }

      v87(v58, (v30 & 0xFFFFFFFFFFFFFF8));
      v85(0);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v23, qword_2802CDA10);
      v86(v92);
      v65 = sub_268B37A34();
      v66 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v66))
      {
        v67 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v67);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v68, v69, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest No resolved devices, not handling");
        OUTLINED_FUNCTION_83_0();
      }

      v87(v92, v23);
      (v5)(0);
    }

LABEL_67:
  }

  else
  {
LABEL_23:
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_82(v94, qword_2802CDA10);
    OUTLINED_FUNCTION_51_1();
    v36(v20);
    v37 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_13();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v39);
      OUTLINED_FUNCTION_75_1(&dword_2688BB000, v37, v0, "ControlsFlowProvider#shouldHandleAmbiguousShuffleMusicRequest Device resolution result was not success or disambiguation, not handling");
      OUTLINED_FUNCTION_20_2();
    }

    v40 = OUTLINED_FUNCTION_190();
    v41(v40);
    (v5)(0);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689A2F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268B36FD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D5F708], v7);
  sub_2689A7B24(&qword_2802A5C98, MEMORY[0x277D5F710], MEMORY[0x277D5F718]);
  v11 = sub_268B37BB4();
  (*(v8 + 8))(v10, v7);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    v16 = v11 ^ 1;
    *(v15 + 4) = v16 & 1;
    _os_log_impl(&dword_2688BB000, v13, v14, "Local device has resumable content: %{BOOL}d", v15, 8u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  else
  {

    v16 = v11 ^ 1;
  }

  (*(v4 + 8))(v6, v3);
  return a2(v16 & 1);
}

uint64_t sub_2689A3274(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_2802A4F30;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_268B37A34();
  v14 = sub_268B37F04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "ControlsFlowProvider#makeRequestContext Fetching device contexts", v15, 2u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = a3[13];
  v17 = a3[14];
  __swift_project_boxed_opaque_existential_1(a3 + 10, v16);
  (*(v17 + 8))(sub_2688E19F8, v10, v16, v17);
}

uint64_t sub_2689A3488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v9 = sub_268B36FD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[8];
  v19[2] = a2[9];
  v19[1] = __swift_project_boxed_opaque_existential_1(a2 + 5, v13);
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v12, v9);
  *(v16 + v15) = a3;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v20;
  v17[1] = a5;

  sub_268B36DD4();
}

uint64_t sub_2689A3630(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v61[1] = a6;
  v62 = a5;
  v9 = sub_268B37A54();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v61[0] = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = v61 - v12;
  v13 = sub_268B36FD4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x277D5F700], v13);
  v17 = sub_268B36FC4();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = sub_2689CC500(a1, a2);
  swift_beginAccess();
  v20 = *(a4 + 16);
  v21 = sub_2688EFD0C();

  for (i = 0; ; ++i)
  {
    if (v21 == i)
    {

      type metadata accessor for DeviceContext();
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = sub_26893A824(0, 0, 0, 0xE000000000000000);
      [v27 setNowPlayingState_];
      [v27 setNowPlayingMediaType_];
      swift_beginAccess();
      v21 = v27;
      MEMORY[0x26D6256C0]();
      sub_268A7A1A8(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_268B37D44();
      swift_endAccess();
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x26D625BD0](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v23 = *(v20 + 8 * i + 32);
    }

    v24 = v23;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      swift_once();
LABEL_14:
      v28 = v64;
      v29 = __swift_project_value_buffer(v64, qword_2802CDA10);
      v30 = v63;
      v31 = v65;
      (*(v63 + 16))(v65, v29, v28);
      v32 = v21;
      v33 = sub_268B37A34();
      v34 = sub_268B37F04();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v66[0] = v36;
        *v35 = 136315394;
        v37 = NowPlayingState.description.getter([v32 nowPlayingState]);
        v39 = sub_26892CDB8(v37, v38, v66);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v40 = NowPlayingMediaType.description.getter([v32 nowPlayingMediaType]);
        v42 = sub_26892CDB8(v40, v41, v66);

        *(v35 + 14) = v42;
        _os_log_impl(&dword_2688BB000, v33, v34, "ControlsFlowProvider#augmentPrimaryContext added primary context with nowPlayingState: %s and nowPlayingMediaType: %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6266E0](v36, -1, -1);
        MEMORY[0x26D6266E0](v35, -1, -1);

        (*(v30 + 8))(v65, v28);
      }

      else
      {

        (*(v30 + 8))(v31, v28);
      }

LABEL_17:
      v43 = v62;
      swift_beginAccess();

      v43(v44);
    }

    v25 = [v23 proximity];
    if ((v25 - 1) >= 4)
    {
      break;
    }
  }

  if (!v25)
  {

    [v24 setNowPlayingState_];
    [v24 setNowPlayingMediaType_];
    v46 = v63;
    v47 = v64;
    v48 = v61[0];
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v47, qword_2802CDA10);
    (*(v46 + 16))(v48, v49, v47);
    v50 = v24;
    v51 = sub_268B37A34();
    v52 = sub_268B37F04();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66[0] = v54;
      *v53 = 136315394;
      v55 = NowPlayingState.description.getter([v50 nowPlayingState]);
      v57 = sub_26892CDB8(v55, v56, v66);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = NowPlayingMediaType.description.getter([v50 nowPlayingMediaType]);
      v60 = sub_26892CDB8(v58, v59, v66);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_2688BB000, v51, v52, "ControlsFlowProvider#augmentPrimaryContext augmented primary context with nowPlayingState: %s and nowPlayingMediaType: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v54, -1, -1);
      MEMORY[0x26D6266E0](v53, -1, -1);

      (*(v46 + 8))(v61[0], v47);
    }

    else
    {

      (*(v46 + 8))(v48, v47);
    }

    goto LABEL_17;
  }

  v66[0] = v25;
  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_2689A3D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  OUTLINED_FUNCTION_15_10();
  sub_268B379F4();
  return a7(a1);
}

uint64_t sub_2689A3E7C()
{
  OUTLINED_FUNCTION_44_4();
  v11[8] = v1;
  v11[9] = v2 & 1;
  v3 = sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5(v3, &dword_2688BB000, v4, v5, v6, v7, v8, v9);
  return v0(v11);
}

uint64_t sub_2689A3F44()
{
  OUTLINED_FUNCTION_44_4();
  v10[8] = v1 & 1;
  v2 = sub_268B37FF4();
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5(v2, &dword_2688BB000, v3, v4, v5, v6, v7, v8);
  return v0(v10);
}

uint64_t sub_2689A4004(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_50_3(a1);
  if (qword_2802A5028 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_2802A5028);
  }

  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_36_5(v2, &dword_2688BB000, v3, v4, v5, v6, v7, v8);
  return v1(v10);
}

uint64_t sub_2689A40E0(uint64_t a1, __int16 a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 0x1FF;
  return a3(&v4);
}

uint64_t sub_2689A4124(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_2689A4164(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2689A41E0(v6);
  return sub_268B38224();
}

void sub_2689A41E0(unint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CCA8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2689A44FC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2689A42C0(0, v3, 1, a1);
  }
}

void sub_2689A42C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_268B34614();
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 nowPlayingTimestamp];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_268B345D4();

        v23 = [v20 nowPlayingTimestamp];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_268B345D4();

        v40 = sub_268B345A4();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2689A44FC(void ***a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v124 = a1;
  v137 = sub_268B34614();
  v6 = MEMORY[0x28223BE20](v137);
  v134 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v122 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v129 = &v122 - v12;
  MEMORY[0x28223BE20](v11);
  v130 = &v122 - v14;
  v131 = a3;
  v15 = a3[1];
  if (v15 >= 1)
  {
    v16 = 0;
    v136 = (v13 + 8);
    v17 = MEMORY[0x277D84F90];
    v18 = &unk_279C42000;
    v123 = a4;
    v138 = v10;
    while (1)
    {
      v19 = v16++;
      v125 = v19;
      if (v16 < v15)
      {
        v122 = v17;
        v20 = *v131;
        v21 = *(*v131 + 8 * v19);
        v22 = *(*v131 + 8 * v16);
        v23 = v21;
        v24 = v133;
        LODWORD(v132) = sub_268AD67D0(v22, v23);
        v133 = v24;
        if (v24)
        {

          return;
        }

        v127 = 8 * v19;
        v128 = v15;
        v25 = &v20[v19 + 2];
        v26 = (v19 + 2);
        while (1)
        {
          v27 = v26;
          if (v16 + 1 >= v15)
          {
            break;
          }

          v135 = v26;
          v28 = *(v25 - 1);
          v29 = *v25;
          v30 = v28;
          v31 = [v29 v18[497]];
          if (!v31)
          {
            goto LABEL_143;
          }

          v32 = v31;
          v33 = v18;
          v34 = v16;
          v35 = v130;
          sub_268B345D4();

          v36 = [v30 v33 + 888];
          if (!v36)
          {
            goto LABEL_144;
          }

          v37 = v36;
          v38 = v129;
          sub_268B345D4();

          LODWORD(v37) = sub_268B345A4() & 1;
          v39 = *v136;
          v40 = v38;
          v41 = v35;
          v42 = v137;
          (*v136)(v40, v137);
          v39(v41, v42);

          ++v25;
          v16 = v34 + 1;
          v27 = v135;
          v26 = (v135 + 1);
          v10 = v138;
          v18 = &unk_279C42000;
          v15 = v128;
          if ((v132 & 1) != v37)
          {
            goto LABEL_12;
          }
        }

        v16 = v15;
LABEL_12:
        if (v132)
        {
          v43 = v125;
          a4 = v123;
          if (v16 < v125)
          {
            goto LABEL_138;
          }

          v17 = v122;
          if (v125 < v16)
          {
            if (v15 >= v27)
            {
              v44 = v27;
            }

            else
            {
              v44 = v15;
            }

            v45 = 8 * v44 - 8;
            v46 = v16;
            v47 = v127;
            do
            {
              if (v43 != --v46)
              {
                v48 = *v131;
                if (!*v131)
                {
                  goto LABEL_147;
                }

                v49 = *(v48 + v47);
                *(v48 + v47) = *(v48 + v45);
                *(v48 + v45) = v49;
              }

              ++v43;
              v45 -= 8;
              v47 += 8;
            }

            while (v43 < v46);
          }
        }

        else
        {
          v17 = v122;
          a4 = v123;
        }
      }

      v50 = v131[1];
      if (v16 >= v50)
      {
        goto LABEL_46;
      }

      if (__OFSUB__(v16, v125))
      {
        goto LABEL_135;
      }

      if (v16 - v125 >= a4)
      {
LABEL_46:
        v52 = v125;
      }

      else
      {
        if (__OFADD__(v125, a4))
        {
          goto LABEL_136;
        }

        if (v125 + a4 >= v50)
        {
          v51 = v131[1];
        }

        else
        {
          v51 = (v125 + a4);
        }

        if (v51 < v125)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v52 = v125;
        if (v16 != v51)
        {
          v122 = v17;
          v135 = *v131;
          v53 = &v135[v16 - 1];
          v54 = v125 - v16;
          v126 = v51;
LABEL_35:
          v132 = v16;
          v55 = v135[v16];
          v127 = v54;
          v128 = v53;
          while (1)
          {
            v56 = *v53;
            a4 = v55;
            v57 = v56;
            v58 = [a4 v18[497]];
            if (!v58)
            {
              goto LABEL_141;
            }

            v59 = v58;
            sub_268B345D4();

            v60 = [v57 v18[497]];
            if (!v60)
            {
              break;
            }

            v61 = v60;
            v62 = v134;
            sub_268B345D4();

            LOBYTE(v61) = sub_268B345A4();
            v63 = v10;
            v64 = *v136;
            v65 = v62;
            v66 = v137;
            (*v136)(v65, v137);
            v64(v63, v66);

            if ((v61 & 1) == 0)
            {
              v10 = v138;
              v18 = &unk_279C42000;
LABEL_44:
              v16 = v132 + 1;
              v53 = (v128 + 8);
              v54 = v127 - 1;
              if (v132 + 1 == v126)
              {
                v16 = v126;
                v17 = v122;
                goto LABEL_46;
              }

              goto LABEL_35;
            }

            if (!v135)
            {
              goto LABEL_142;
            }

            v67 = *v53;
            v55 = v53[1];
            *v53 = v55;
            v53[1] = v67;
            --v53;
            v68 = __CFADD__(v54++, 1);
            v10 = v138;
            v18 = &unk_279C42000;
            if (v68)
            {
              goto LABEL_44;
            }
          }

          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }
      }

      if (v16 < v52)
      {
        goto LABEL_134;
      }

      v69 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v17 = v69;
      }

      else
      {
        sub_268987C84();
        v17 = v111;
      }

      v70 = v17[2];
      a4 = v70 + 1;
      if (v70 >= v17[3] >> 1)
      {
        sub_268987C84();
        v17 = v112;
      }

      v17[2] = a4;
      v71 = v17 + 4;
      v72 = &v17[2 * v70 + 4];
      *v72 = v125;
      v72[1] = v16;
      v135 = *v124;
      if (!v135)
      {
        goto LABEL_148;
      }

      if (v70)
      {
        v132 = v16;
        while (1)
        {
          v73 = a4 - 1;
          v74 = &v71[2 * a4 - 2];
          v75 = &v17[2 * a4];
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v76 = v17[4];
            v77 = v17[5];
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_68:
            if (v79)
            {
              goto LABEL_121;
            }

            v91 = *v75;
            v90 = v75[1];
            v92 = __OFSUB__(v90, v91);
            v93 = v90 - v91;
            v94 = v92;
            if (v92)
            {
              goto LABEL_124;
            }

            v95 = v74[1];
            v96 = v95 - *v74;
            if (__OFSUB__(v95, *v74))
            {
              goto LABEL_127;
            }

            if (__OFADD__(v93, v96))
            {
              goto LABEL_129;
            }

            if (v93 + v96 >= v78)
            {
              if (v78 < v96)
              {
                v73 = a4 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          if (a4 < 2)
          {
            goto LABEL_123;
          }

          v98 = *v75;
          v97 = v75[1];
          v86 = __OFSUB__(v97, v98);
          v93 = v97 - v98;
          v94 = v86;
LABEL_83:
          if (v94)
          {
            goto LABEL_126;
          }

          v100 = *v74;
          v99 = v74[1];
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_128;
          }

          if (v101 < v93)
          {
            goto LABEL_97;
          }

LABEL_90:
          if (v73 - 1 >= a4)
          {
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
            goto LABEL_137;
          }

          if (!*v131)
          {
            goto LABEL_145;
          }

          v16 = v17;
          a4 = &v71[2 * v73 - 2];
          v105 = *a4;
          v106 = v73;
          v107 = &v71[2 * v73];
          v108 = *(v107 + 1);
          v109 = v133;
          sub_2689A4D98((*v131 + 8 * *a4), (*v131 + 8 * *v107), (*v131 + 8 * v108), v135);
          v133 = v109;
          if (v109)
          {
            goto LABEL_113;
          }

          if (v108 < v105)
          {
            goto LABEL_116;
          }

          v110 = *(v16 + 16);
          if (v106 > v110)
          {
            goto LABEL_117;
          }

          *a4 = v105;
          *(a4 + 8) = v108;
          if (v106 >= v110)
          {
            goto LABEL_118;
          }

          a4 = v110 - 1;
          sub_268AE0F78(v107 + 16, v110 - 1 - v106, v107);
          v17 = v16;
          *(v16 + 16) = v110 - 1;
          v10 = v138;
          v16 = v132;
          if (v110 <= 2)
          {
            goto LABEL_97;
          }
        }

        v80 = &v71[2 * a4];
        v81 = *(v80 - 8);
        v82 = *(v80 - 7);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_119;
        }

        v85 = *(v80 - 6);
        v84 = *(v80 - 5);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_120;
        }

        v87 = v75[1];
        v88 = v87 - *v75;
        if (__OFSUB__(v87, *v75))
        {
          goto LABEL_122;
        }

        v86 = __OFADD__(v78, v88);
        v89 = v78 + v88;
        if (v86)
        {
          goto LABEL_125;
        }

        if (v89 >= v83)
        {
          v103 = *v74;
          v102 = v74[1];
          v86 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v86)
          {
            goto LABEL_133;
          }

          if (v78 < v104)
          {
            v73 = a4 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_68;
      }

LABEL_97:
      v15 = v131[1];
      a4 = v123;
      if (v16 >= v15)
      {
        goto LABEL_102;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_102:
  a4 = *v124;
  if (!*v124)
  {
LABEL_149:
    __break(1u);
    return;
  }

  v16 = v17;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v113 = v16;
  }

  else
  {
LABEL_139:
    v113 = sub_268AE0F64(v16);
  }

  v16 = (v113 + 16);
  v114 = *(v113 + 2);
  while (v114 >= 2)
  {
    if (!*v131)
    {
      goto LABEL_146;
    }

    v115 = v113;
    v116 = &v113[16 * v114];
    v117 = *v116;
    v118 = v16 + 16 * v114;
    v119 = *(v118 + 8);
    v120 = v133;
    sub_2689A4D98((*v131 + 8 * *v116), (*v131 + 8 * *v118), (*v131 + 8 * v119), a4);
    v133 = v120;
    if (v120)
    {
      break;
    }

    if (v119 < v117)
    {
      goto LABEL_130;
    }

    if (v114 - 2 >= *v16)
    {
      goto LABEL_131;
    }

    *v116 = v117;
    *(v116 + 1) = v119;
    v121 = *v16 - v114;
    if (*v16 < v114)
    {
      goto LABEL_132;
    }

    v114 = *v16 - 1;
    sub_268AE0F78((v118 + 16), v121, v118);
    *v16 = v114;
    v113 = v115;
  }

LABEL_113:
}

uint64_t sub_2689A4D98(void **a1, void **a2, void **a3, void **a4)
{
  v63 = sub_268B34614();
  v8 = MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  i = (&v56 - v15);
  v16 = a2 - a1;
  v62 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 < v18)
  {
    sub_268988A70(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = &unk_279C42000;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[497]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_268B345D4();

      result = [v26 v20[497]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_268B345D4();

      LOBYTE(v31) = sub_268B345A4();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 1;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 1;
      v19 = v64;
      a3 = v65;
      v20 = &unk_279C42000;
    }

    v36 = a4++;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_268988A70(a2, a3 - a2, a4);
  v19 = &a4[v18];
  v38 = &unk_279C42000;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = a2 - 1;
  v40 = a3 - 1;
  v66 = a2;
  for (i = a2 - 1; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 1;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[497]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_268B345D4();

    result = [v45 v38[497]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_268B345D4();

    LOBYTE(v47) = sub_268B345A4();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v12, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &unk_279C42000;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 1)
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &unk_279C42000;
  }

LABEL_31:
  v54 = v19 - a4;
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}