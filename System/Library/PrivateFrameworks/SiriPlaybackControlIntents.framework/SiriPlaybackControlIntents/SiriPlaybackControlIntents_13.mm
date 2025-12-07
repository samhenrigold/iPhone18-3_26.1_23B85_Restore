void sub_2689F64CC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      (*(v10 + 16))(v0);

      v20 = sub_268B37A34();
      v21 = sub_268B37F04();
      sub_268958D4C(v7, 1u);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_172_0();
        v71 = OUTLINED_FUNCTION_173_0();
        *v22 = 136315138;
        v23 = type metadata accessor for Device();
        v24 = MEMORY[0x26D6256F0](v7, v23);
        OUTLINED_FUNCTION_30_3(v24, v25);
        v69 = v3;
        OUTLINED_FUNCTION_16_7();
        *(v22 + 4) = v10;
        _os_log_impl(&dword_2688BB000, v20, v21, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v22, 0xCu);
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_12();

        v26 = OUTLINED_FUNCTION_138();
        v27(v26);
        v3 = v69;
      }

      else
      {

        v53 = OUTLINED_FUNCTION_138();
        v54(v53);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v50, xmmword_268B3BBA0);
      v52 = sub_268B2CCFC(v7);
    }

    else
    {
      v69 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
      v67 = *(v10 + 16);
      v68 = v36;
      v67(v19);
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_172_0();
        v66 = v10;
        v40 = v39;
        v65 = OUTLINED_FUNCTION_173_0();
        v71 = v65;
        *v40 = 136315138;
        v70 = v7 & 1;
        sub_26890C84C();
        v41 = sub_268B384A4();
        v43 = sub_26892CDB8(v41, v42, &v71);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_2688BB000, v37, v38, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
        OUTLINED_FUNCTION_12();
        v10 = v66;
        OUTLINED_FUNCTION_12();
      }

      v44 = *(v10 + 8);
      v44(v19, v8);
      v3 = v69;
      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v62 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v62, xmmword_268B3BBA0);
        v62[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v67)(v14, v68, v8);
      v45 = sub_268B37A34();
      v46 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v46))
      {
        v47 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v47);
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v48, v49, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v44(v14, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v50, xmmword_268B3BBA0);
      v51 = OUTLINED_FUNCTION_33_9();
      v52 = sub_268B17B04(v51);
    }

    v50[2].n128_u64[0] = v52;
LABEL_32:
    v63 = sub_268B37CE4();
    (v3)[2](v3, v63);

    _Block_release(v3);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  (*(v10 + 16))(v1);

  v28 = sub_268B37A34();
  v29 = sub_268B37F04();
  sub_268958D4C(v7, 0);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_172_0();
    v71 = OUTLINED_FUNCTION_173_0();
    *v30 = 136315138;
    v31 = type metadata accessor for Device();
    v32 = MEMORY[0x26D6256F0](v7, v31);
    OUTLINED_FUNCTION_30_3(v32, v33);
    v69 = v3;
    OUTLINED_FUNCTION_16_7();
    *(v30 + 4) = v10;
    _os_log_impl(&dword_2688BB000, v28, v29, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v30, 0xCu);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_12();

    v34 = OUTLINED_FUNCTION_192();
    v35(v34);
    v3 = v69;
  }

  else
  {

    v55 = OUTLINED_FUNCTION_192();
    v56(v55);
  }

  v57 = sub_2688EFD0C();
  if (!v57)
  {
LABEL_30:
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    goto LABEL_32;
  }

  v58 = v57;
  v71 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v58 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v59 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x26D625BD0](v59, v7);
      }

      else
      {
        v60 = *(v7 + 8 * v59 + 32);
      }

      v61 = v60;
      ++v59;
      sub_268B2CC98(v60);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v58 != v59);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_2689F6B80()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v64 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_17_6();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  if (v7)
  {
    if (v7 == OS_LOG_TYPE_INFO)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v10, qword_2802CDA10);
      OUTLINED_FUNCTION_1_13();
      v21(v0);

      v22 = sub_268B37A34();
      v23 = sub_268B37F04();
      sub_268958D4C(v9, 1u);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_172_0();
        v25 = OUTLINED_FUNCTION_173_0();
        OUTLINED_FUNCTION_28_10(v25);
        *v24 = 136315138;
        v26 = type metadata accessor for Device();
        v27 = MEMORY[0x26D6256F0](v9, v26);
        OUTLINED_FUNCTION_30_3(v27, v28);
        v63 = v10;
        OUTLINED_FUNCTION_16_7();
        *(v24 + 4) = v4;
        _os_log_impl(&dword_2688BB000, v22, v23, "SetShuffleStateIntentHandler#resolveDevices Disambiguating between devices: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v1);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v12 + 8))(v0, v63);
      }

      else
      {

        (*(v12 + 8))(v0, v10);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_16_18(v51, xmmword_268B3BBA0);
      v53 = sub_268B2CCFC(v9);
    }

    else
    {
      v63 = v4;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      OUTLINED_FUNCTION_82(v10, qword_2802CDA10);
      v61 = *(v12 + 16);
      v62 = v37;
      v61(v20);
      v38 = sub_268B37A34();
      sub_268B37EE4();
      OUTLINED_FUNCTION_27_7();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_172_0();
        v60 = v12;
        v41 = v40;
        v59 = OUTLINED_FUNCTION_173_0();
        v66 = v59;
        *v41 = 136315138;
        v65 = v9 & 1;
        sub_26890C84C();
        v42 = sub_268B384A4();
        v44 = sub_26892CDB8(v42, v43, &v66);

        *(v41 + 4) = v44;
        _os_log_impl(&dword_2688BB000, v38, v7, "SetShuffleStateIntentHandler#resolveDevices Error resolving devices: %s", v41, 0xCu);
        OUTLINED_FUNCTION_48_0();
        v12 = v60;
        OUTLINED_FUNCTION_12();
      }

      v45 = *(v12 + 8);
      v45(v20, v10);
      if (v9)
      {
        (v61)(v2, v62, v10);
        v46 = sub_268B37A34();
        v47 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_19(v47))
        {
          v48 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v48);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v49, v50, "SetShuffleStateIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v45(v2, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v51 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v51, xmmword_268B3BBA0);
        v52 = OUTLINED_FUNCTION_33_9();
        v53 = sub_268B17B04(v52);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v51 = swift_allocObject();
        OUTLINED_FUNCTION_16_18(v51, xmmword_268B3BBA0);
        v53 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v51[2].n128_u64[0] = v53;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v10, qword_2802CDA10);
  OUTLINED_FUNCTION_1_13();
  v29(v17);

  v30 = sub_268B37A34();
  v31 = sub_268B37F04();
  sub_268958D4C(v9, 0);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_172_0();
    v33 = OUTLINED_FUNCTION_173_0();
    OUTLINED_FUNCTION_28_10(v33);
    *v32 = 136315138;
    v34 = type metadata accessor for Device();
    v35 = MEMORY[0x26D6256F0](v9, v34);
    OUTLINED_FUNCTION_30_3(v35, v36);
    v63 = v10;
    OUTLINED_FUNCTION_16_7();
    *(v32 + 4) = v4;
    _os_log_impl(&dword_2688BB000, v30, v31, "SetShuffleStateIntentHandler#resolveDevices Success resolving devices: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v1);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v12 + 8))(v17, v63);
  }

  else
  {

    (*(v12 + 8))(v17, v10);
  }

  v54 = sub_2688EFD0C();
  v51 = MEMORY[0x277D84F90];
  if (!v54)
  {
    goto LABEL_32;
  }

  v55 = v54;
  v66 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v55 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SetShuffleStateDevicesResolutionResult();
    v56 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26D625BD0](v56, v9);
      }

      else
      {
        v57 = *(v9 + 8 * v56 + 32);
      }

      v58 = v57;
      ++v56;
      sub_268B2CC98(v57);

      sub_268B38214();
      OUTLINED_FUNCTION_25_8();
      sub_268B38254();
      sub_268B38224();
    }

    while (v55 != v56);
    v51 = v66;
LABEL_32:
    v64(v51);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_2689F721C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetShuffleStateDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_2689F7288(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v5 = SetShuffleStateIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_2689F72F4(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetShuffleStateIntentResponse());
  v4 = OUTLINED_FUNCTION_33_9();
  v5 = SetShuffleStateIntentResponse.init(code:userActivity:)(v4, 0);
  a2();
}

void sub_2689F737C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_2689F7408()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_0();
  v34 = (v5 - v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_82(v16, qword_2802CDA10);
  (*(v18 + 16))(v22);
  v23 = sub_268B37A34();
  v24 = sub_268B37ED4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_14();
    v31 = v12;
    OUTLINED_FUNCTION_81(v25);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v23, v24, "responseCodeFromResult for SetShuffleStateIntentHandler");
    OUTLINED_FUNCTION_12();
  }

  (*(v18 + 8))(v22, v16);
  sub_26893B66C(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v33;
    v27 = *(v33 + 32);
    v27(v11, v15, v2);
    v28 = v32;
    sub_268B36EC4();
    v29 = *(v26 + 8);
    v29(v11, v2);
    v30 = v34;
    v27(v34, v28, v2);
    if ((*(v26 + 88))(v30, v2) != *MEMORY[0x277D5F6B0])
    {
      v29(v30, v2);
    }
  }

  OUTLINED_FUNCTION_23();
}

id SetShuffleStateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetShuffleStateIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2689F77EC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

id sub_2689F7824(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
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
  v20 = sub_2689F7AB4(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_2689F7A7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2689F7AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v27[3] = sub_268B36C54();
  v27[4] = MEMORY[0x277D5F680];
  v27[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  v11 = type metadata accessor for SetShuffleStateIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_2879539D0;
  v25[0] = v17;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector] = a2;
  sub_26890C900(v25, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService]);
  sub_26890C900(a3, v24);
  sub_26890C900(a5, v23);
  type metadata accessor for AceServiceHelper();
  v18 = swift_allocObject();
  sub_2688E6514(v24, v18 + 16);
  sub_2688E6514(v23, v18 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_aceServiceHelper] = v18;
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState]);
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

void sub_2689F7CDC()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29[3] = v0;
  v29[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(v1 - 8) + 32))(boxed_opaque_existential_1, v11, v1);
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v28[3] = v14;
  v28[4] = &off_2879539D0;
  v28[0] = v5;
  v15 = type metadata accessor for SetShuffleStateIntentHandler();
  v16 = objc_allocWithZone(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v14);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  v27[3] = v14;
  v27[4] = &off_2879539D0;
  v27[0] = v22;
  sub_26890C900(v29, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_playbackController]);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceSelector] = v9;
  sub_26890C900(v27, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_analyticsService]);
  sub_26890C900(v7, v26);
  sub_26890C900(v3, v25);
  type metadata accessor for AceServiceHelper();
  v23 = swift_allocObject();
  sub_2688E6514(v26, v23 + 16);
  sub_2688E6514(v25, v23 + 56);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_aceServiceHelper] = v23;
  sub_26890C900(v7, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents28SetShuffleStateIntentHandler_deviceState]);
  v24.receiver = v16;
  v24.super_class = v15;
  objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689F7F10()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_2689F807C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2689F80B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2689F80EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2689F8198;

  return sub_2689F488C();
}

uint64_t sub_2689F8198()
{

  OUTLINED_FUNCTION_222();

  return v0();
}

uint64_t sub_2689F8288()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_16_18(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for SetShuffleStateDevicesResolutionResult();
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_26_7()
{
}

uint64_t sub_2689F8358()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_268B35564();
  if (v11)
  {
    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
    (*(v3 + 16))(v10);
    v12 = sub_268B37A34();
    v13 = sub_268B37ED4();
    if (!os_log_type_enabled(v12, v13))
    {
      v15 = 0;
LABEL_21:

      (*(v3 + 8))(v10, v0);
      return v15;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v14, v13, "UserDialogAct is UserAccepted");
    v15 = 0;
LABEL_17:
    OUTLINED_FUNCTION_12();
    goto LABEL_21;
  }

  v16 = sub_268B35574();
  if (v16)
  {
    if (qword_2802A4F30 != -1)
    {
      v16 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v16, qword_2802CDA10);
    (*(v3 + 16))(v1);
    v12 = sub_268B37A34();
    v17 = sub_268B37ED4();
    if (!OUTLINED_FUNCTION_115_0(v17))
    {
      v15 = 1;
      v10 = v1;
      goto LABEL_21;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v18, v10, "UserDialogAct is UserRejected");
    v15 = 1;
    v10 = v1;
    goto LABEL_17;
  }

  v19 = sub_268B35584();
  if (v19)
  {
    if (qword_2802A4F30 != -1)
    {
      v19 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v19, qword_2802CDA10);
    (*(v3 + 16))(v7);
    v12 = sub_268B37A34();
    v20 = sub_268B37ED4();
    v15 = 2;
    if (!OUTLINED_FUNCTION_115_0(v20))
    {
      v10 = v7;
      goto LABEL_21;
    }

    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_5_11(&dword_2688BB000, v21, v10, "UserDialogAct is UserCancelled");
    v10 = v7;
    goto LABEL_17;
  }

  return 3;
}

uint64_t SIRINLUUserDialogAct.getUsoTask()()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = sub_268B35C24();
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D625BD0](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    if (qword_2802A4F30 != -1)
    {
      v11 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
    (*(v3 + 16))(v8);

    v12 = sub_268B37A34();
    v13 = sub_268B37F04();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_268B36684();
      v17 = sub_26892CDB8(v15, v16, v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = sub_268B36674();
      v20 = sub_26892CDB8(v18, v19, v27);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_2688BB000, v12, v13, "getUsoTask() returning task with entity=%{public}s verb=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v3 + 8))(v8, v0);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      v22 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_61(v22, qword_2802CDA10);
    (*(v3 + 16))(v1);
    v23 = sub_268B37A34();
    v24 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v24))
    {
      v25 = OUTLINED_FUNCTION_14();
      *v25 = 0;
      _os_log_impl(&dword_2688BB000, v23, OS_LOG_TYPE_DEFAULT, "No tasks found in input", v25, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v3 + 8))(v1, v0);
    return 0;
  }

  return v10;
}

void OUTLINED_FUNCTION_5_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_2689F8B1C()
{
  v0 = sub_268B36BC4();
  v1 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {
LABEL_10:

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D625BD0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_268B36BD4();
    if (swift_dynamicCastClass())
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_2689F8CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v170 = v32;
  v171 = v31;
  v178 = v33;
  v164 = v34;
  v165 = v35;
  v184 = v36;
  v188 = a28;
  v185 = a25;
  v174 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v172 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_3();
  v169 = v39;
  v163 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_78();
  v187 = v42;
  OUTLINED_FUNCTION_9();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v175 = v43;
  v176 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v162 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_18();
  v48 = MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15_15(v48, v49, v50, v51, v52, v53, v54, v55, v160);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  v173 = v57;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v58);
  v60 = &v160 - v59;
  v61 = swift_allocObject();
  v167 = a22;
  v168 = v30;
  *(v61 + 2) = v30;
  *(v61 + 3) = a21;
  *(v61 + 4) = a22;
  *(v61 + 5) = a23;
  v62 = v185;
  *(v61 + 6) = a24;
  *(v61 + 7) = v62;
  *(v61 + 8) = a26;
  *(v61 + 9) = a27;
  v166 = a27;
  *(v61 + 10) = v188;
  *(v61 + 11) = a29;
  v180 = v61;
  v63 = qword_2802A4F30;
  v182 = a21;

  v186 = a23;

  v181 = a24;
  v179 = v62;
  v185 = a26;

  v183 = a29;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v64 = v175;
  v65 = __swift_project_value_buffer(v175, qword_2802CDA10);
  v66 = v176;
  v67 = (v176 + 16);
  v177 = *(v176 + 16);
  v177(v60, v65, v64);
  v68 = v60;
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    *v71 = 0;
    _os_log_impl(&dword_2688BB000, v69, v70, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v71, 2u);
    OUTLINED_FUNCTION_12();
  }

  v72 = *(v66 + 8);
  v72(v68, v64);
  v73 = v178;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v73, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    OUTLINED_FUNCTION_37_8();
    v105();
    v106 = sub_268B37A34();
    v107 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v107))
    {
      v108 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v108);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v109, v73, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v72(v173, v64);
    v110 = sub_2688C2ECC();
    v111 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v110);
    v113 = OUTLINED_FUNCTION_3_29(v111, v112, 16);
    OUTLINED_FUNCTION_31_9(v113, v114, v115, v116, v117, v118, v119, v120, v160, v161, v162);
    sub_2688C058C(v190, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v76 = v75;
  v178 = v73;
  sub_268A82B50(v184, v187);
  v77 = swift_getObjectType();
  v78 = (*(v76 + 16))(v77, v76);
  if (!v78)
  {
    v121 = v161;
    OUTLINED_FUNCTION_37_8();
    v122();
    v123 = sub_268B37A34();
    v124 = sub_268B37F04();
    if (OUTLINED_FUNCTION_47_4(v124))
    {
      v125 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v125);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v126, v73, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v72(v121, v64);
    v127 = v170;
    sub_26890C900(v170 + 16, v190);
    OUTLINED_FUNCTION_87_1();
    LODWORD(v177) = sub_268ABE424(v189);
    __swift_destroy_boxed_opaque_existential_0Tm(v190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v129 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v129, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    v130 = sub_268B37B84();
    v131 = *(v127 + 56);
    v175 = v130;
    v176 = v131;
    v132 = v172;
    v133 = v174;
    (*(v172 + 16))(v169, v187, v174);
    v134 = (*(v132 + 80) + 64) & ~*(v132 + 80);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_83_2();
    v135 = swift_allocObject();
    v136 = v165;
    *(v135 + 16) = v164;
    *(v135 + 24) = v136;
    v137 = v184;
    v138 = v178;
    *(v135 + 32) = v184;
    *(v135 + 40) = v138;
    v139 = v171;
    *(v135 + 48) = v127;
    *(v135 + 56) = v139;
    (*(v132 + 32))(v135 + v134, v169, v133);
    v140 = (v72 + v135);
    v141 = v180;
    *v140 = sub_2689FF334;
    v140[1] = v141;
    v142 = v138;

    v143 = v137;

    OUTLINED_FUNCTION_101_0();
    sub_268AC0070();

    (*(v132 + 8))(v187, v133);

    goto LABEL_17;
  }

  if (v78 != 1)
  {
    v69 = v162;
    OUTLINED_FUNCTION_37_8();
    v144();
    v145 = sub_268B37A34();
    v146 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v146))
    {
      v147 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v147);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v148, v73, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_12();
    }

    v72(v69, v64);
    v149 = sub_2688C2ECC();
    v150 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v149);
    v152 = OUTLINED_FUNCTION_3_29(v150, v151, 17);
    OUTLINED_FUNCTION_31_9(v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);

    sub_2688C058C(v190, &unk_2802A57C0, &qword_268B3BE00);
    (*(v172 + 8))(v187, v174);
LABEL_21:

    goto LABEL_22;
  }

  v79 = v160;
  OUTLINED_FUNCTION_37_8();
  v80();
  v81 = sub_268B37A34();
  v82 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_47_4(v82))
  {
    v83 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v83);
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v84, v73, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v72(v79, v64);
  v85.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_45_6(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v86, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v87, MEMORY[0x277D837D0], v88);
  v89 = sub_268B37B84();
  v90 = v169;
  v91 = *(v170 + 56);
  v92 = v170;
  v176 = v89;
  v177 = v91;
  v93 = v172;
  (*(v172 + 16))(v169, v187, v174);
  v94 = (*(v93 + 80) + 64) & ~*(v93 + 80);
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_58_5();
  v95 = swift_allocObject();
  v96 = v165;
  *(v95 + 2) = v164;
  *(v95 + 3) = v96;
  v97 = v184;
  v98 = v178;
  *(v95 + 4) = v184;
  *(v95 + 5) = v98;
  *(v95 + 6) = v92;
  *(v95 + 7) = v171;
  v99 = v90;
  v100 = v174;
  (*(v93 + 32))(&v95[v94], v99, v174);
  v101 = (v190 + v95);
  v102 = v180;
  *v101 = sub_2689FF334;
  v101[1] = v102;
  v103 = v98;

  v104 = v97;

  OUTLINED_FUNCTION_91_2();
  sub_268AB2B1C();

  sub_26891864C(v190);

  (*(v93 + 8))(v187, v100);

LABEL_17:

  v67 = v181;
  v69 = v179;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689F9694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v155 = v31;
  v157 = v32;
  v150 = v33;
  v151 = v34;
  v161 = v35;
  v152 = v36;
  v162 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v153 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_3();
  v149 = v39;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_78();
  v163 = v41;
  OUTLINED_FUNCTION_9();
  v42 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v156 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v147 = v45;
  OUTLINED_FUNCTION_8();
  v47 = MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_15(v47, v48, v49, v50, v51, v52, v53, v54, v145);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  v148 = v56;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  v154 = v58;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v60 = swift_allocObject();
  *(v60 + 2) = v30;
  *(v60 + 3) = a21;
  *(v60 + 4) = a22;
  *(v60 + 5) = a23;
  *(v60 + 6) = a24;
  *(v60 + 7) = a25;
  *(v60 + 8) = a26;
  *(v60 + 9) = a27;
  v160 = v60;
  *(v60 + 10) = a28;
  v61 = qword_2802A4F30;

  a22;

  v159 = a26;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v62 = __swift_project_value_buffer(v42, qword_2802CDA10);
  v63 = *(v156 + 16);
  v64 = OUTLINED_FUNCTION_230_0();
  v63(v64);
  v65 = sub_268B37A34();
  v66 = sub_268B37ED4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = OUTLINED_FUNCTION_14();
    *v67 = 0;
    _os_log_impl(&dword_2688BB000, v65, v66, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v67, 2u);
    OUTLINED_FUNCTION_12();
  }

  v68 = *(v156 + 8);
  (v68)(v28, v42);
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v157, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    v89 = OUTLINED_FUNCTION_230_0();
    v63(v89);
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v91))
    {
      v92 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v92);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v93, v157, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    (v68)(v154, v42);
    v94 = sub_2688C2ECC();
    v95 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v94);
    OUTLINED_FUNCTION_3_29(v95, v96, 16);
    OUTLINED_FUNCTION_102_2();
    OUTLINED_FUNCTION_103_2();
    v97 = v159;
    if (v42)
    {
      v98 = OUTLINED_FUNCTION_78_4();
      v99 = a23 == v42 && a24 == 0xE700000000000000;
      if (v99 || (OUTLINED_FUNCTION_68_4(v42) & 1) != 0)
      {
        OUTLINED_FUNCTION_66_3();
      }

      else
      {
        v131 = OUTLINED_FUNCTION_50_4();
        v133 = v99 && a24 == v132;
        if (!v133 && (OUTLINED_FUNCTION_68_4(v131) & 1) == 0)
        {
          v137 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v94);
          v139 = OUTLINED_FUNCTION_46_6(v137, v138);
          v140(v139);

          sub_2688C058C(v164, &unk_2802A57C0, &qword_268B3BE00);
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_64_4();
      }
    }

    else
    {
      v127 = OUTLINED_FUNCTION_90_2();
      v128(v127);
      OUTLINED_FUNCTION_77_4();
    }

LABEL_36:
    sub_2688C058C(v165, &unk_2802A57C0, &qword_268B3BE00);
LABEL_39:

    goto LABEL_40;
  }

  v71 = v70;
  v158 = v157;
  sub_268A82B50(v161, v163);
  v72 = swift_getObjectType();
  v73 = (*(v71 + 16))(v72, v71);
  if (!v73)
  {
    (v63)(v146, v62, v42);
    v100 = sub_268B37A34();
    v101 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v101))
    {
      v102 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v102);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v103, v104, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_6();
    }

    (v68)(v146, v42);
    sub_26890C900(v155 + 16, v165);
    sub_26890C900(v165, v164);
    sub_268ABE424(v164);
    __swift_destroy_boxed_opaque_existential_0Tm(v165);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v106 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v106, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    OUTLINED_FUNCTION_120();
    v107(v149, v163, v162);
    OUTLINED_FUNCTION_73_3();
    v110 = v109 & ~v108;
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_83_2();
    v111 = swift_allocObject();
    *(v111 + 16) = v150;
    *(v111 + 24) = v151;
    *(v111 + 32) = v161;
    *(v111 + 40) = v158;
    *(v111 + 48) = v155;
    *(v111 + 56) = v152;
    OUTLINED_FUNCTION_60_2();
    v113(v112 + v110, v149, v162);
    v114 = (v68 + v111);
    v68 = v160;
    *v114 = sub_2689FF1FC;
    v114[1] = v160;
    v115 = v158;

    v116 = v161;

    OUTLINED_FUNCTION_101_0();
    sub_268AC0070();

    (*(v153 + 8))(v163, v162);

    goto LABEL_24;
  }

  if (v73 != 1)
  {
    (v63)(v147, v62, v42);
    v117 = sub_268B37A34();
    v118 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v118))
    {
      v119 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v119);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v120, v121, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    (v68)(v147, v42);
    v122 = sub_2688C2ECC();
    v123 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v122);
    OUTLINED_FUNCTION_3_29(v123, v124, 17);
    OUTLINED_FUNCTION_102_2();
    OUTLINED_FUNCTION_103_2();
    v97 = v159;
    if (v42)
    {
      v125 = OUTLINED_FUNCTION_78_4();
      v126 = a23 == v42 && a24 == 0xE700000000000000;
      if (v126 || (OUTLINED_FUNCTION_68_4(v42) & 1) != 0)
      {
        OUTLINED_FUNCTION_66_3();
      }

      else
      {
        v134 = OUTLINED_FUNCTION_50_4();
        v136 = v99 && a24 == v135;
        if (!v136 && (OUTLINED_FUNCTION_68_4(v134) & 1) == 0)
        {
          v141 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v122);
          v143 = OUTLINED_FUNCTION_46_6(v141, v142);
          v144(v143);

          sub_2688C058C(v164, &unk_2802A57C0, &qword_268B3BE00);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_64_4();
      }
    }

    else
    {
      v129 = OUTLINED_FUNCTION_90_2();
      v130(v129);

      OUTLINED_FUNCTION_77_4();
    }

LABEL_38:
    sub_2688C058C(v165, &unk_2802A57C0, &qword_268B3BE00);
    (*(v153 + 8))(v163, v162);
    goto LABEL_39;
  }

  v74 = OUTLINED_FUNCTION_230_0();
  v63(v74);
  v75 = sub_268B37A34();
  v76 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_115_0(v76))
  {
    v77 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v77);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v78, v79, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  (v68)(v148, v42);
  v80.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_45_6(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v81, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v82, MEMORY[0x277D837D0], v83);
  sub_268B37B84();
  (*(v153 + 16))(v149, v163, v162);
  v84 = (*(v153 + 80) + 64) & ~*(v153 + 80);
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_58_5();
  v85 = swift_allocObject();
  v68 = v151;
  *(v85 + 2) = v150;
  *(v85 + 3) = v151;
  *(v85 + 4) = v161;
  *(v85 + 5) = v158;
  *(v85 + 6) = v155;
  *(v85 + 7) = v152;
  (*(v153 + 32))(&v85[v84], v149, v162);
  v86 = (v165 + v85);
  *v86 = sub_2689FF1FC;
  v86[1] = v160;
  v87 = v158;

  v88 = v161;

  OUTLINED_FUNCTION_91_2();
  sub_268AB2B1C();

  sub_26891864C(v165);

  (*(v153 + 8))(v163, v162);

LABEL_24:

  OUTLINED_FUNCTION_77_4();
  v97 = v159;
LABEL_40:

  OUTLINED_FUNCTION_23();
}

void sub_2689FA258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_26();
  v30 = v29;
  v149 = v32;
  v150 = v31;
  v155 = v33;
  v146 = v34;
  v147 = v35;
  v160 = v36;
  v153 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v151 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_3();
  v148 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_78();
  v161 = v41;
  OUTLINED_FUNCTION_9();
  v42 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v154 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v145 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18();
  v152 = v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v51 = swift_allocObject();
  *(v51 + 2) = v30;
  *(v51 + 3) = a21;
  *(v51 + 4) = a22;
  *(v51 + 5) = a23;
  *(v51 + 6) = a24;
  *(v51 + 7) = a25;
  *(v51 + 8) = a26;
  *(v51 + 9) = a27;
  v158 = v51;
  *(v51 + 10) = a28;
  v52 = qword_2802A4F30;

  v159 = a24;
  v157 = a25;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v42, qword_2802CDA10);
  v53 = (v154 + 16);
  v54 = OUTLINED_FUNCTION_230_0();
  v55(v54);
  v56 = sub_268B37A34();
  v57 = sub_268B37ED4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_14();
    *v58 = 0;
    _os_log_impl(&dword_2688BB000, v56, v57, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v58, 2u);
    OUTLINED_FUNCTION_12();
  }

  v59 = *(v154 + 8);
  v59(v28, v42);
  v60 = v155;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v155, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    OUTLINED_FUNCTION_38_3();
    v89();
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v91))
    {
      v92 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v92);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v93, v155, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v59(v152, v42);
    v94 = sub_2688C2ECC();
    v95 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v94);
    v97 = OUTLINED_FUNCTION_3_29(v95, v96, 16);
    OUTLINED_FUNCTION_33_10(v97, v98, v99, v100, v101, v102, v103, v104, v142, v143);
    sub_2688C058C(v163, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_20;
  }

  v63 = v62;
  v156 = v155;
  sub_268A82B50(v160, v161);
  v64 = swift_getObjectType();
  v65 = (*(v63 + 16))(v64, v63);
  if (v65)
  {
    if (v65 == 1)
    {
      OUTLINED_FUNCTION_38_3();
      v66();
      v67 = sub_268B37A34();
      v68 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v68))
      {
        v69 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v69);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v70, v71, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
        OUTLINED_FUNCTION_6();
      }

      v72 = OUTLINED_FUNCTION_115();
      (v59)(v72);
      *&v73 = OUTLINED_FUNCTION_9_14();
      v164 = v73;
      v165 = v73;
      v166[0] = v73;
      *(v166 + 11) = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268B3BBC0;
      OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_17_14(v75, MEMORY[0x277D837D0], v76);
      sub_268B37B84();
      OUTLINED_FUNCTION_120();
      v77(v148, v161, v153);
      OUTLINED_FUNCTION_73_3();
      v80 = v79 & ~v78;
      OUTLINED_FUNCTION_42_5();
      OUTLINED_FUNCTION_58_5();
      v81 = swift_allocObject();
      *(v81 + 16) = v146;
      *(v81 + 24) = v147;
      *(v81 + 32) = v160;
      *(v81 + 40) = v156;
      *(v81 + 48) = v149;
      *(v81 + 56) = v150;
      OUTLINED_FUNCTION_60_2();
      v83(v82 + v80, v148, v153);
      v84 = (v59 + v81);
      *v84 = sub_2689FED2C;
      v84[1] = v158;
      v85 = v156;

      v86 = v160;

      OUTLINED_FUNCTION_91_2();
      sub_268AB2B1C();

      sub_26891864C(v163);

      v87 = OUTLINED_FUNCTION_99_2();
      v88(v87, v153);

      v60 = v159;
      v53 = v157;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_38_3();
    v125();
    v126 = sub_268B37A34();
    v127 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v127))
    {
      v128 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v128);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v129, v130, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v59(v145, v42);
    v131 = sub_2688C2ECC();
    v132 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v131);
    v134 = OUTLINED_FUNCTION_3_29(v132, v133, 17);
    OUTLINED_FUNCTION_33_10(v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);

    sub_2688C058C(v163, &unk_2802A57C0, &qword_268B3BE00);
    (*(v151 + 8))(v161, v153);
LABEL_20:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_38_3();
  v105();
  v106 = sub_268B37A34();
  v107 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v107))
  {
    v108 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v108);
    OUTLINED_FUNCTION_7(&dword_2688BB000, v109, v110, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
    OUTLINED_FUNCTION_6();
  }

  v59(v144, v42);
  sub_26890C900(v149 + 16, v163);
  OUTLINED_FUNCTION_87_1();
  sub_268ABE424(v162);
  __swift_destroy_boxed_opaque_existential_0Tm(v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_268B3BBC0;
  v112 = OUTLINED_FUNCTION_1_27(v111, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_5_12(v112, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
  sub_268B37B84();
  OUTLINED_FUNCTION_120();
  v113(v148, v161, v153);
  OUTLINED_FUNCTION_73_3();
  v116 = v115 & ~v114;
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_83_2();
  v117 = swift_allocObject();
  v117[2] = v146;
  v117[3] = v147;
  v117[4] = v160;
  v117[5] = v156;
  v117[6] = v149;
  v117[7] = v150;
  OUTLINED_FUNCTION_60_2();
  v119(v118 + v116, v148, v153);
  v120 = (v117 + v154 + 8);
  *v120 = sub_2689FED2C;
  v120[1] = v158;
  v121 = v156;

  v122 = v160;

  OUTLINED_FUNCTION_101_0();
  sub_268AC0070();

  v123 = OUTLINED_FUNCTION_99_2();
  v124(v123, v153);

  v60 = v159;
  v53 = v157;
LABEL_21:

  OUTLINED_FUNCTION_23();
}

void sub_2689FAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_26();
  v35 = v34;
  v142 = v36;
  v144 = v37;
  v138 = v38;
  v139 = v39;
  v149 = v40;
  v140 = v41;
  v150 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v141 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_3();
  v136 = v45;
  v137 = v44;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  v151 = v47;
  OUTLINED_FUNCTION_9();
  v48 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v143 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v133 = v51;
  OUTLINED_FUNCTION_8();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_15(v53, v54, v55, v56, v57, v58, v59, v60, v131);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_19();
  v64 = swift_allocObject();
  v64[2] = v35;
  v64[3] = a21;
  v64[4] = a22;
  v64[5] = a23;
  v64[6] = a24;
  v64[7] = a25;
  v64[8] = a26;
  v64[9] = a27;
  v146 = v64;
  v64[10] = a28;
  v65 = qword_2802A4F30;

  v148 = a24;

  v147 = a28;
  if (v65 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v66 = __swift_project_value_buffer(v48, qword_2802CDA10);
  v67 = *(v143 + 16);
  v68 = OUTLINED_FUNCTION_230_0();
  v67(v68);
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v71);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v69, v70, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called");
    OUTLINED_FUNCTION_12();
  }

  v73 = (v143 + 8);
  v72 = *(v143 + 8);
  v72(v33, v48);
  v74 = v144;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v144, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    v91 = OUTLINED_FUNCTION_92_2();
    v67(v91);
    v92 = sub_268B37A34();
    v93 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v93))
    {
      v94 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v94);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v95, v96, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_6();
    }

    v72(v134, v144);
    v97 = sub_2688C2ECC();
    v98 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v97);
    OUTLINED_FUNCTION_3_29(v98, v99, 16);
    v100 = OUTLINED_FUNCTION_26_8();
    v101(v100);
    sub_2688C058C(v153, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v74 = a31;
  v145 = v144;
  sub_268A82B50(v149, v151);
  swift_getObjectType();
  OUTLINED_FUNCTION_120();
  v77 = v76();
  if (!v77)
  {
    (v67)(v132, v66, v48);
    v102 = sub_268B37A34();
    v103 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v103))
    {
      v104 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v104);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v105, v103, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v72(v132, v48);
    sub_26890C900(v142 + 16, v153);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v152);
    __swift_destroy_boxed_opaque_existential_0Tm(v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v107 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v107, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    OUTLINED_FUNCTION_120();
    v108(v137, v151, v150);
    OUTLINED_FUNCTION_73_3();
    v111 = v110 & ~v109;
    v112 = swift_allocObject();
    v112[2] = v138;
    v112[3] = v139;
    v112[4] = v149;
    v112[5] = v145;
    v112[6] = v142;
    v112[7] = v140;
    OUTLINED_FUNCTION_60_2();
    v114(v113 + v111, v137, v150);
    v115 = (v112 + ((v136 + v111 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v115 = a31;
    v115[1] = v146;
    v116 = v145;

    v117 = v149;

    sub_268AC0070();

    v118 = OUTLINED_FUNCTION_99_2();
    v119(v118, v150);

    goto LABEL_17;
  }

  if (v77 != 1)
  {
    v120 = OUTLINED_FUNCTION_92_2();
    v67(v120);
    v121 = sub_268B37A34();
    v122 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v122))
    {
      v123 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v123);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v124, v125, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v72(v133, a31);
    v126 = sub_2688C2ECC();
    v127 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v126);
    OUTLINED_FUNCTION_3_29(v127, v128, 17);
    v129 = OUTLINED_FUNCTION_26_8();
    v130(v129);

    sub_2688C058C(v153, &unk_2802A57C0, &qword_268B3BE00);
    (*(v141 + 8))(v151, v150);
LABEL_21:

    goto LABEL_22;
  }

  v78 = OUTLINED_FUNCTION_230_0();
  v67(v78);
  v79 = sub_268B37A34();
  v80 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v80))
  {
    v81 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v81);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v79, v80, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v72(v135, v48);
  v82.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_93_3(v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v83, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v84, MEMORY[0x277D837D0], v85);
  sub_268B37B84();
  (*(v141 + 16))(v137, v151, v150);
  v86 = (*(v141 + 80) + 64) & ~*(v141 + 80);
  OUTLINED_FUNCTION_41_2();
  v87 = swift_allocObject();
  *(v87 + 2) = v138;
  *(v87 + 3) = v139;
  *(v87 + 4) = v149;
  *(v87 + 5) = v145;
  *(v87 + 6) = v142;
  *(v87 + 7) = v140;
  (*(v141 + 32))(&v87[v86], v137, v150);
  v88 = &v87[v80];
  *v88 = a31;
  *(v88 + 1) = v146;
  v89 = v145;

  v90 = v149;

  sub_268AB2B1C();

  sub_26891864C(v153);

  (*(v141 + 8))(v151, v150);

LABEL_17:

  v74 = v147;
  v73 = v148;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_26();
  v32 = v31;
  v141 = v34;
  v142 = v33;
  v137 = v35;
  v138 = v36;
  v145 = v37;
  v139 = v38;
  v146 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v140 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_3();
  v135 = v42;
  v136 = v41;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v147 = v44;
  OUTLINED_FUNCTION_9();
  v45 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  v134 = v49;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_18();
  v53 = MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_15_15(v53, v54, v55, v56, v57, v58, v59, v60, v130);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15();
  v62 = swift_allocObject();
  v62[2] = v32;
  v62[3] = a21;
  v62[4] = a22;
  v62[5] = a23;
  v62[6] = a24;
  v62[7] = a25;
  v143 = v62;
  v63 = qword_2802A4F30;

  v144 = a22;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v64 = __swift_project_value_buffer(v45, qword_2802CDA10);
  v65 = *(v47 + 16);
  v66 = OUTLINED_FUNCTION_40_5();
  v65(v66);
  v67 = sub_268B37A34();
  v68 = sub_268B37ED4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v69);
    _os_log_impl(&dword_2688BB000, v67, v68, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v47, 2u);
    OUTLINED_FUNCTION_12();
  }

  v70 = (v47 + 8);
  v71 = *(v47 + 8);
  v71(v30, v45);
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v142, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    (v65)(v131, v64, v45);
    v92 = sub_268B37A34();
    v93 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v93))
    {
      v94 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_279(v94);
      OUTLINED_FUNCTION_35_3(&dword_2688BB000, v95, v67, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v96 = OUTLINED_FUNCTION_115();
    (v71)(v96);
    v97 = sub_2688C2ECC();
    v98 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v97);
    OUTLINED_FUNCTION_3_29(v98, v99, 16);
    v100 = OUTLINED_FUNCTION_36_8();
    v101(v100);
    sub_2688C058C(v149, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v74 = v73;
  v75 = v142;
  sub_268A82B50(v145, v147);
  v76 = swift_getObjectType();
  v77 = (*(v74 + 16))(v76, v74);
  if (!v77)
  {
    v102 = OUTLINED_FUNCTION_40_5();
    v65(v102);
    v103 = sub_268B37A34();
    v104 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v104))
    {
      v105 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v105);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v106, v104, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v71(v133, v45);
    sub_26890C900(v141 + 16, v149);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v148);
    __swift_destroy_boxed_opaque_existential_0Tm(v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v108 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v108, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    OUTLINED_FUNCTION_120();
    v109(v136, v147, v146);
    OUTLINED_FUNCTION_73_3();
    v112 = v111 & ~v110;
    OUTLINED_FUNCTION_83_2();
    v113 = swift_allocObject();
    v113[2] = v137;
    v113[3] = v138;
    v113[4] = v145;
    v113[5] = v75;
    v113[6] = v141;
    v113[7] = v139;
    OUTLINED_FUNCTION_60_2();
    v115(v114 + v112, v136, v146);
    v116 = (v113 + ((v135 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v116 = a28;
    v116[1] = v143;
    v117 = v75;

    v118 = v145;

    sub_268AC0070();

    (*(v140 + 8))(v147, v146);
    goto LABEL_17;
  }

  if (v77 != 1)
  {
    v119 = OUTLINED_FUNCTION_40_5();
    v65(v119);
    v120 = sub_268B37A34();
    v121 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v121))
    {
      v122 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v122);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v123, v124, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_6();
    }

    v71(v134, v45);
    v125 = sub_2688C2ECC();
    v126 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v125);
    OUTLINED_FUNCTION_3_29(v126, v127, 17);
    v128 = OUTLINED_FUNCTION_36_8();
    v129(v128);

    sub_2688C058C(v149, &unk_2802A57C0, &qword_268B3BE00);
    (*(v140 + 8))(v147, v146);
LABEL_21:

    goto LABEL_22;
  }

  v78 = OUTLINED_FUNCTION_40_5();
  v65(v78);
  v79 = sub_268B37A34();
  v80 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v80))
  {
    v81 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v81);
    OUTLINED_FUNCTION_35_3(&dword_2688BB000, v82, v80, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    OUTLINED_FUNCTION_12();
  }

  v71(v132, v45);
  v83.n128_f64[0] = OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_93_3(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v84, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v85, MEMORY[0x277D837D0], v86);
  sub_268B37B84();
  (*(v140 + 16))(v136, v147, v146);
  v87 = (*(v140 + 80) + 64) & ~*(v140 + 80);
  OUTLINED_FUNCTION_41_2();
  v88 = swift_allocObject();
  *(v88 + 2) = v137;
  *(v88 + 3) = v138;
  *(v88 + 4) = v145;
  *(v88 + 5) = v75;
  *(v88 + 6) = v141;
  *(v88 + 7) = v139;
  (*(v140 + 32))(&v88[v87], v136, v146);
  v89 = &v88[v80];
  *v89 = a28;
  *(v89 + 1) = v143;
  v90 = v75;

  v91 = v145;

  sub_268AB2B1C();

  sub_26891864C(v149);

  (*(v140 + 8))(v147, v146);
LABEL_17:

  v70 = v144;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_26();
  v34 = v33;
  v131 = v35;
  v134 = v36;
  v127 = v37;
  v128 = v38;
  v138 = v39;
  v129 = v40;
  v139 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v130 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_3();
  v125 = v44;
  v126 = v43;
  OUTLINED_FUNCTION_98_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v140 = v46;
  OUTLINED_FUNCTION_9();
  v47 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v132 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  v122 = v50;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18();
  v124 = v54;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_15();
  v56 = swift_allocObject();
  v56[2] = v34;
  v56[3] = a21;
  v56[4] = a22;
  v56[5] = a23;
  v56[6] = a24;
  v56[7] = a25;
  v56[8] = a26;
  v56[9] = a27;
  v136 = v56;
  v57 = qword_2802A4F30;

  v137 = a24;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v58 = __swift_project_value_buffer(v47, qword_2802CDA10);
  v59 = *(v132 + 16);
  v59(v32, v58, v47);
  v60 = sub_268B37A34();
  v61 = sub_268B37ED4();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v62);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v60, v61, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called");
    OUTLINED_FUNCTION_12();
  }

  v63 = *(v132 + 8);
  v63(v32, v47);
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v134, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    v59(v124, v58, v47);
    v90 = sub_268B37A34();
    v91 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v91))
    {
      v92 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v92);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v93, v94, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_12();
    }

    v63(v124, v47);
    v95 = sub_2688C2ECC();
    v96 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v95);
    OUTLINED_FUNCTION_3_29(v96, v97, 16);
    v98 = OUTLINED_FUNCTION_32_6();
    v99(v98);
    sub_2688C058C(v142, &unk_2802A57C0, &qword_268B3BE00);
    goto LABEL_21;
  }

  v66 = v65;
  v133 = v63;
  v67 = v134;
  sub_268A82B50(v138, v140);
  v68 = swift_getObjectType();
  v69 = (*(v66 + 16))(v68, v66);
  if (!v69)
  {
    (v59)(v121, v58);
    v100 = sub_268B37A34();
    v101 = sub_268B37F04();
    if (OUTLINED_FUNCTION_196(v101))
    {
      v102 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_89_1(v102);
      OUTLINED_FUNCTION_2_13(&dword_2688BB000, v103, v101, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
      OUTLINED_FUNCTION_12();
    }

    v63(v121, v47);
    sub_26890C900(v131 + 16, v142);
    OUTLINED_FUNCTION_87_1();
    sub_268ABE424(v141);
    __swift_destroy_boxed_opaque_existential_0Tm(v142);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBC0;
    v105 = OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
    OUTLINED_FUNCTION_5_12(v105, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
    sub_268B37B84();
    (*(v130 + 16))(v126, v140, v139);
    v106 = (*(v130 + 80) + 64) & ~*(v130 + 80);
    v107 = swift_allocObject();
    *(v107 + 2) = v127;
    *(v107 + 3) = v128;
    *(v107 + 4) = v138;
    *(v107 + 5) = v67;
    *(v107 + 6) = v131;
    *(v107 + 7) = v129;
    (*(v130 + 32))(&v107[v106], v126, v139);
    v108 = &v107[(v125 + v106 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v108 = a30;
    *(v108 + 1) = v136;
    v109 = v67;

    v110 = v138;

    sub_268AC0070();

    (*(v130 + 8))(v140, v139);

    goto LABEL_17;
  }

  if (v69 != 1)
  {
    v63 = v122;
    v59(v122, v58, v47);
    v111 = sub_268B37A34();
    v112 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v113);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v114, v115, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
      OUTLINED_FUNCTION_12();
    }

    v133(v122, v47);
    v116 = sub_2688C2ECC();
    v117 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v116);
    OUTLINED_FUNCTION_3_29(v117, v118, 17);
    v119 = OUTLINED_FUNCTION_32_6();
    v120(v119);

    sub_2688C058C(v142, &unk_2802A57C0, &qword_268B3BE00);
    (*(v130 + 8))(v140, v139);
LABEL_21:

    goto LABEL_22;
  }

  v135 = v67;
  v70 = v123;
  (v59)(v123, v58);
  v71 = sub_268B37A34();
  v72 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v72))
  {
    v73 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_81(v73);
    OUTLINED_FUNCTION_21_6(&dword_2688BB000, v71, v72, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
    v70 = v123;
    OUTLINED_FUNCTION_12();
  }

  v133(v70, v47);
  *&v74 = OUTLINED_FUNCTION_9_14();
  v143 = v74;
  v144 = v74;
  v145[0] = v74;
  *(v145 + 11) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_268B3BBC0;
  OUTLINED_FUNCTION_1_27(v75, "TTRErrorCodeInfo");
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_17_14(v76, MEMORY[0x277D837D0], v77);
  sub_268B37B84();
  OUTLINED_FUNCTION_120();
  v78(v126, v140, v139);
  OUTLINED_FUNCTION_73_3();
  v81 = v80 & ~v79;
  OUTLINED_FUNCTION_41_2();
  v82 = swift_allocObject();
  v82[2] = v127;
  v82[3] = v128;
  v82[4] = v138;
  v82[5] = v135;
  v82[6] = v131;
  v82[7] = v129;
  OUTLINED_FUNCTION_60_2();
  v84(v83 + v81, v126, v139);
  v85 = (v82 + v72);
  *v85 = a30;
  v85[1] = v136;
  v86 = v135;

  v87 = v138;

  OUTLINED_FUNCTION_101_0();
  sub_268AB2B1C();

  sub_26891864C(v142);

  v88 = OUTLINED_FUNCTION_99_2();
  v89(v88, v139);

LABEL_17:

  v63 = v137;
LABEL_22:

  OUTLINED_FUNCTION_23();
}

void sub_2689FCA88()
{
  OUTLINED_FUNCTION_26();
  v97 = v1;
  v98 = v2;
  v95 = v0;
  v96 = v3;
  v91 = v4;
  v92 = v5;
  v99 = v6;
  v93 = v7;
  v100 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v94 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_3();
  v90 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_78();
  v101 = v12;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v88 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v89 = v19;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_18();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v23 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v24 = *(v15 + 16);
  v25 = v13;
  (v24)(v0, v23, v13);
  v26 = sub_268B37A34();
  v27 = sub_268B37ED4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    *v28 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "CommonUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v28, 2u);
    OUTLINED_FUNCTION_12();
  }

  v29 = *(v15 + 8);
  v30 = v25;
  v29(v0, v25);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v96, ObjectType, &protocol descriptor for CommonIntentResolutionResult))
  {
    v33 = v32;
    v34 = v96;
    sub_268A82B50(v99, v101);
    v35 = swift_getObjectType();
    v36 = (*(v33 + 16))(v35, v33);
    if (v36)
    {
      if (v36 == 1)
      {
        OUTLINED_FUNCTION_85_2();
        v24();
        v37 = sub_268B37A34();
        v38 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_115_0(v38))
        {
          v39 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_279(v39);
          OUTLINED_FUNCTION_35_3(&dword_2688BB000, v40, v33, "PauseMediaUnsupportedValueStrategy.makeUnsupportedValueOutput() for .noMatchingDevicesFound");
          OUTLINED_FUNCTION_12();
        }

        v41 = OUTLINED_FUNCTION_275();
        (v29)(v41);
        v42.n128_f64[0] = OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_45_6(v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBC0;
        OUTLINED_FUNCTION_1_27(inited, "TTRErrorCodeInfo");
        OUTLINED_FUNCTION_3_10();
        OUTLINED_FUNCTION_17_14(v44, MEMORY[0x277D837D0], v45);
        sub_268B37B84();
        (*(v94 + 16))(v90, v101, v100);
        v46 = (*(v94 + 80) + 88) & ~*(v94 + 80);
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_58_5();
        v47 = swift_allocObject();
        v48 = OUTLINED_FUNCTION_82_0(v47);
        *(v49 + 4) = v50;
        *(v49 + 5) = v91;
        *(v49 + 6) = v92;
        *(v49 + 7) = v99;
        *(v49 + 8) = v34;
        *(v49 + 9) = v95;
        *(v49 + 10) = v93;
        (*(v94 + 32))(&v49[v46], v90, v100, v48);
        v51 = (v103 + v33);
        *v51 = v97;
        v51[1] = v98;
        v52 = v34;

        v53 = v99;

        OUTLINED_FUNCTION_91_2();
        sub_268AB2B1C();

        sub_26891864C(v103);

        (*(v94 + 8))(v101, v100);
      }

      else
      {
        OUTLINED_FUNCTION_85_2();
        v24();
        v80 = sub_268B37A34();
        v81 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v81))
        {
          v82 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v82);
          OUTLINED_FUNCTION_7(&dword_2688BB000, v83, v84, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput Unexpected unsupportedReason");
          OUTLINED_FUNCTION_6();
        }

        v29(v89, v25);
        v85 = sub_2688C2ECC();
        v86 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v85);
        OUTLINED_FUNCTION_3_29(v86, v87, 17);
        v97(v103);

        sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
        (*(v94 + 8))(v101, v100);
      }
    }

    else
    {
      OUTLINED_FUNCTION_85_2();
      v24();
      v62 = sub_268B37A34();
      v63 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v63))
      {
        v64 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v64);
        OUTLINED_FUNCTION_7(&dword_2688BB000, v65, v66, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput for .unsupportedOnPlatform");
        OUTLINED_FUNCTION_6();
      }

      v67 = OUTLINED_FUNCTION_275();
      (v29)(v67);
      sub_26890C900(v95 + 16, v103);
      OUTLINED_FUNCTION_87_1();
      sub_268ABE424(v102);
      __swift_destroy_boxed_opaque_existential_0Tm(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      v68 = swift_initStackObject();
      *(v68 + 16) = xmmword_268B3BBC0;
      v69 = OUTLINED_FUNCTION_1_27(v68, "TTRErrorCodeInfo");
      OUTLINED_FUNCTION_5_12(v69, MEMORY[0x277D837D0], "6@?<v@?@NSArray>24");
      sub_268B37B84();
      OUTLINED_FUNCTION_120();
      v70(v90, v101, v100);
      v71 = (*(v94 + 80) + 88) & ~*(v94 + 80);
      OUTLINED_FUNCTION_44_6();
      OUTLINED_FUNCTION_83_2();
      v72 = swift_allocObject();
      OUTLINED_FUNCTION_82_0(v72);
      v73[4] = v74;
      v73[5] = v91;
      v73[6] = v92;
      v73[7] = v99;
      v73[8] = v34;
      v73[9] = v95;
      v73[10] = v93;
      OUTLINED_FUNCTION_60_2();
      v76(v75 + v71, v90, v100);
      v77 = (v33 + v30);
      *v77 = v97;
      v77[1] = v98;
      v78 = v34;

      v79 = v99;

      sub_268AC0070();

      (*(v94 + 8))(v101, v100);
    }
  }

  else
  {
    OUTLINED_FUNCTION_85_2();
    v24();
    v54 = sub_268B37A34();
    v55 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v55))
    {
      v56 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v56);
      OUTLINED_FUNCTION_7(&dword_2688BB000, v57, v58, "Cannot cast intent resolution result as CommonIntentResolutionResult");
      OUTLINED_FUNCTION_6();
    }

    v29(v88, v25);
    v59 = sub_2688C2ECC();
    v60 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v59);
    OUTLINED_FUNCTION_3_29(v60, v61, 16);
    v97(v103);
    sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
  }

  OUTLINED_FUNCTION_23();
}

void *sub_2689FD340()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  return v0;
}

void sub_2689FD380()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_11(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v104 = v13;
  OUTLINED_FUNCTION_9();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v108 = v15;
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v102 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v100 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v99 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  v98 = v25;
  OUTLINED_FUNCTION_9();
  sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v106 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v101 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - v36;
  v38 = OUTLINED_FUNCTION_275();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_69_4(v41, v97);
  OUTLINED_FUNCTION_115();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_2688C058C(v2, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v42 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_11_20(v42, qword_2802CDA10);
    v43(v0);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v46);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v47, v48, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v49 = OUTLINED_FUNCTION_74_3();
    v50(v49);
    v51 = sub_2688C2ECC();
    v52 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v51);
    v54 = OUTLINED_FUNCTION_16_19(v52, v53);
    v55(v54);
    sub_2688C058C(&v110, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v56 = OUTLINED_FUNCTION_59_2();
    v57 = v0(v56);
    OUTLINED_FUNCTION_95_2(v57);
    v58 = OUTLINED_FUNCTION_52_6();
    v59(v58);
    sub_2688F1FA4(v37, v1, &unk_2802A56E0, &unk_268B3CDF0);
    v105 = v31;

    v60 = sub_268B350F4();
    v61 = *(v60 - 8);
    v62 = v98;
    (*(v61 + 32))(v98, v1, v60);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
    v66 = sub_268B34B94();
    OUTLINED_FUNCTION_104_2(v66);
    v67 = v99;
    sub_2688F1FA4(v62, v99, &unk_2802A57B0, &unk_268B3CE00);
    v68 = v37;
    if (__swift_getEnumTagSinglePayload(v67, 1, v60) == 1)
    {
      sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v61 + 8))(v67, v60);
    }

    v99 = v61;
    v69 = OUTLINED_FUNCTION_27_8();
    v70(v69);

    sub_2688C058C(v30, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    v71 = OUTLINED_FUNCTION_84_2();
    v73 = v72(v71);
    if (qword_2802A4F30 != -1)
    {
      v73 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_11_20(v73, qword_2802CDA10);
    v74 = v102;
    v75(v102);
    v76 = sub_268B37A34();
    v77 = sub_268B37ED4();
    v78 = OUTLINED_FUNCTION_19(v77);
    v79 = v107;
    v80 = v105;
    if (v78)
    {
      v81 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v81);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v82, v83, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_6();
    }

    (*(v61 + 8))(v74, v62);
    v84 = __swift_project_boxed_opaque_existential_1((v79 + 144), *(v79 + 168));
    OUTLINED_FUNCTION_88_2(v84, v85, &unk_2802A56E0);
    v86 = *&v68[*(v80 + 48)];
    v87 = sub_268B35044();
    OUTLINED_FUNCTION_4();
    v89 = v104;
    (*(v88 + 16))(v104, v103, v87);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
    v93 = OUTLINED_FUNCTION_51_3();
    v94(v93);

    sub_2688C058C(v89, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v76, &unk_2802A56E0, &unk_268B3CDF0);
    v95 = OUTLINED_FUNCTION_94_2();
    v96(v95);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689FDA7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_11(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v104 = v13;
  OUTLINED_FUNCTION_9();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v108 = v15;
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v102 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74();
  v100 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v99 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  v98 = v25;
  OUTLINED_FUNCTION_9();
  sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v106 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v101 = v33;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - v36;
  v38 = OUTLINED_FUNCTION_275();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_69_4(v41, v97);
  OUTLINED_FUNCTION_115();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_2688C058C(v2, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v42 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_11_20(v42, qword_2802CDA10);
    v43(v0);
    v44 = sub_268B37A34();
    v45 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v45))
    {
      v46 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v46);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v47, v48, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v49 = OUTLINED_FUNCTION_74_3();
    v50(v49);
    v51 = sub_2688C2ECC();
    v52 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v51);
    v54 = OUTLINED_FUNCTION_16_19(v52, v53);
    v55(v54);
    sub_2688C058C(&v110, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    OUTLINED_FUNCTION_79_3();
    v56 = OUTLINED_FUNCTION_59_2();
    v57 = v0(v56);
    OUTLINED_FUNCTION_95_2(v57);
    v58 = OUTLINED_FUNCTION_52_6();
    v59(v58);
    sub_2688F1FA4(v37, v1, &unk_2802A56E0, &unk_268B3CDF0);
    v105 = v31;

    v60 = sub_268B350F4();
    v61 = *(v60 - 8);
    v62 = v98;
    (*(v61 + 32))(v98, v1, v60);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
    v66 = sub_268B34B94();
    OUTLINED_FUNCTION_104_2(v66);
    v67 = v99;
    sub_2688F1FA4(v62, v99, &unk_2802A57B0, &unk_268B3CE00);
    v68 = v37;
    if (__swift_getEnumTagSinglePayload(v67, 1, v60) == 1)
    {
      sub_2688C058C(v67, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v61 + 8))(v67, v60);
    }

    v99 = v61;
    v69 = OUTLINED_FUNCTION_27_8();
    v70(v69);

    sub_2688C058C(v30, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    v71 = OUTLINED_FUNCTION_84_2();
    v73 = v72(v71);
    if (qword_2802A4F30 != -1)
    {
      v73 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_11_20(v73, qword_2802CDA10);
    v74 = v102;
    v75(v102);
    v76 = sub_268B37A34();
    v77 = sub_268B37ED4();
    v78 = OUTLINED_FUNCTION_19(v77);
    v79 = v107;
    v80 = v105;
    if (v78)
    {
      v81 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v81);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v82, v83, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_6();
    }

    (*(v62 + 8))(v74, v61);
    v84 = __swift_project_boxed_opaque_existential_1((v79 + 144), *(v79 + 168));
    OUTLINED_FUNCTION_88_2(v84, v85, &unk_2802A56E0);
    v86 = *&v68[*(v80 + 48)];
    v87 = sub_268B35044();
    OUTLINED_FUNCTION_4();
    v89 = v104;
    (*(v88 + 16))(v104, v103, v87);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v87);
    v93 = OUTLINED_FUNCTION_51_3();
    v94(v93);

    sub_2688C058C(v89, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v76, &unk_2802A56E0, &unk_268B3CDF0);
    v95 = OUTLINED_FUNCTION_94_2();
    v96(v95);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2689FE170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_26();
  v121 = v24;
  v117 = v25;
  v118 = v26;
  v28 = v27;
  v115 = v29;
  v113 = v30;
  v112 = v31;
  v122 = v32;
  v126 = a21;
  v127 = a22;
  v110 = *v27;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  v120 = v35;
  OUTLINED_FUNCTION_9();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v124 = v37;
  v125 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_75_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_78();
  v119 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_74();
  v116 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v44);
  v46 = &v107 - v45;
  v123 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v114 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_0();
  v111 = v50 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_20_0();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v107 - v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v59);
  v61 = &v107 - v60;
  sub_2688F1FA4(v122, &v107 - v60, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = sub_2688C058C(v61, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      v62 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_11_20(v62, qword_2802CDA10);
    v63(v23);
    v64 = sub_268B37A34();
    v65 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v65))
    {
      v66 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v66);
      OUTLINED_FUNCTION_23_4(&dword_2688BB000, v67, v68, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput unable to execute dialog");
      OUTLINED_FUNCTION_6();
    }

    v69 = OUTLINED_FUNCTION_74_3();
    v70(v69);
    v71 = sub_2688C2ECC();
    v72 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v71);
    v74 = OUTLINED_FUNCTION_16_19(v72, v73);
    v75(v74);
    sub_2688C058C(&v128, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v61, v58);
    v108 = *(v110 + 80);
    v76 = *(v110 + 96);
    v77 = v117;
    v109 = sub_26894CE44(7, 3, v112, v113, v117, a23, v115, v108, v76);
    v79 = v78;
    v80 = v28[16];
    v122 = v28;
    v107 = __swift_project_boxed_opaque_existential_1(v28 + 13, v80);
    v81 = v114;
    v82 = v111;
    (*(v114 + 104))(v111, *MEMORY[0x277D5BBE0], v123);
    v115 = v58;
    sub_2688F1FA4(v58, v55, &unk_2802A56E0, &unk_268B3CDF0);
    v113 = v51;

    v83 = sub_268B350F4();
    v110 = *(v83 - 8);
    (*(v110 + 32))(v46, v55, v83);
    OUTLINED_FUNCTION_84();
    v112 = v83;
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
    v87 = sub_268B34B94();
    v88 = v116;
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v87);
    sub_26894D438(v118, v82, v77, v46, v109, v79, v88, *v107, v108, v76, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);

    sub_2688C058C(v88, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v46, &unk_2802A57B0, &unk_268B3CE00);
    (*(v81 + 8))(v82, v123);
    v89 = v55;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v90 = v125;
    v91 = __swift_project_value_buffer(v125, qword_2802CDA10);
    v92 = v124;
    v93 = v119;
    (*(v124 + 16))(v119, v91, v90);
    v94 = sub_268B37A34();
    v95 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_19(v95))
    {
      v96 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v96);
      OUTLINED_FUNCTION_21_6(&dword_2688BB000, v94, v93, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput returning output");
      OUTLINED_FUNCTION_12();
    }

    (*(v92 + 8))(v93, v90);
    v97 = v122[21];
    v98 = v122[22];
    __swift_project_boxed_opaque_existential_1(v122 + 18, v97);
    v99 = v115;
    sub_2688F1FA4(v115, v55, &unk_2802A56E0, &unk_268B3CDF0);
    v100 = *(v55 + *(v113 + 48));
    v101 = sub_268B35044();
    OUTLINED_FUNCTION_4();
    v103 = v120;
    (*(v102 + 16))(v120, v121, v101);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v101);
    (*(v98 + 40))(v89, v100, v103, v126, v127, v97, v98);

    sub_2688C058C(v103, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v99, &unk_2802A56E0, &unk_268B3CDF0);
    (*(v110 + 8))(v89, v112);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2689FE93C()
{
  sub_2689FD340();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2689FEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  type metadata accessor for CommonMediaUnsupportedValueStrategy(0, a9[10], a9[11], a9[12]);
  v11 = OUTLINED_FUNCTION_115();

  return a11(v11);
}

uint64_t sub_2689FECD0()
{

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_8Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t objectdestroy_17Tm()
{

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689FF1A0()
{

  OUTLINED_FUNCTION_1_19();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2689FF2CC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_2689FF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_268B35044();
  OUTLINED_FUNCTION_65_4();
  return a4(a1);
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 176) = result;
  *(v3 - 136) = 1;
  return result;
}

void *OUTLINED_FUNCTION_5_12@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = v3 | 5;
  result[7] = a3 | 0x8000000000000000;
  return result;
}

double OUTLINED_FUNCTION_9_14()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 1;
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, _BYTE *a2)
{
  *a2 = -94;
  *(v2 - 136) = a1;
  *(v2 - 96) = 1;
  return v2 - 136;
}

void *OUTLINED_FUNCTION_17_14@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = v3 | 6;
  result[7] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 216) = a8;
  *(v8 - 240) = a7;
  *(v8 - 176) = a6;
  *(v8 - 264) = a5;
  *(v8 - 184) = a4;
  *(v8 - 272) = a3;
  *(v8 - 280) = a2;
  *(v8 - 200) = result;
  v9 = *(v8 + 24);
  *(v8 - 152) = *(v8 + 16);
  *(v8 - 144) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = v11[7];
  v14 = v11[8];
  v16 = v11[22];
  v18 = v11[25];
  v17 = v11[26];
  v19 = v11[21];
  v20 = v11[19];

  return sub_268981A40(v12 - 176, v14, v16, v15, v17, v19, v20, v18, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_33_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = v10[8];
  v14 = v10[9];
  v16 = v10[22];
  v17 = v10[25];
  v18 = v10[21];
  v19 = v10[19];

  return sub_268A50E58(v12 - 176, v14, v16, v15, v17, v18, v19, v11);
}

void OUTLINED_FUNCTION_45_6(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 67) = a1;
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 105;
  *(v2 - 224) = a1;
  *(v2 - 184) = 1;
  return v2 - 224;
}

BOOL OUTLINED_FUNCTION_47_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_6()
{
  *(v2 - 272) = v0;
  result = v0;
  *(v2 - 264) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_4()
{
  v4 = v0[2];
  v5 = v0[20];
  v6 = v0[10];
  v7 = v0[19];

  return sub_26898A7BC(v1, v2, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_66_3()
{
  v3 = v0[2];
  v4 = v0[20];
  v5 = v0[10];
  v6 = v0[19];

  return sub_26898A618(v1, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_68_4(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_69_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = *(v4 - 200);

  return sub_2688F1FA4(v6, &a2 - a1, v3, v2);
}

void *OUTLINED_FUNCTION_78_4()
{

  return sub_2689B8400();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
  *(v2 - 296) = *(v2 + 40);

  return sub_2689186C8(v1, v0);
}

__n128 OUTLINED_FUNCTION_82_0(__n128 *a1)
{
  result = *(*(v1 + 48) + 80);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_26890C900(v0 - 176, v0 - 216);
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v5 - 232);

  return sub_2688F1FA4(v4, v7, a3, v3);
}

void OUTLINED_FUNCTION_93_3(__n128 a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 67) = a1;
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_2688F1FA4(v2 - 176, v2 - 224, v0, v1);
}

uint64_t OUTLINED_FUNCTION_103_2()
{

  return sub_2688C058C(v2 - 224, v0, v1);
}

uint64_t sub_2689FFE30(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v49);
  v50 = (&v48 - v6);
  v7 = sub_268B37A54();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  inited = &v48 - v13;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v15 = __swift_project_value_buffer(v7, qword_2802CDA10);
    v16 = *(v8 + 16);
    v16(inited, v15, v7);
    v17 = sub_268B37A34();
    v18 = sub_268B37ED4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "SetAudioLanguageConfirmIntentStrategy.makeDialogForDisambiguation()", v19, 2u);
      OUTLINED_FUNCTION_12();
    }

    v20 = *(v8 + 8);
    v20(inited, v7);
    v21 = [a2 device];
    if (!v21)
    {
      break;
    }

    a2 = v21;
    v16(v53, v15, v7);
    v22 = a2;
    v23 = sub_268B37A34();
    v24 = sub_268B37EC4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = a2;
      v27 = v22;
      _os_log_impl(&dword_2688BB000, v23, v24, "Confirming device: %@", v25, 0xCu);
      sub_2688EF38C(v26, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v20(v53, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268B3BBA0;
    *(inited + 32) = v22;
    v8 = inited & 0xFFFFFFFFFFFFFF8;
    v7 = v22;
    v28 = MEMORY[0x277D84F90];
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x26D625BD0](0, inited);
LABEL_10:
      v30 = v29;
      v31 = sub_268988580(v29);
      if (v32)
      {
        v33 = v31;
        v34 = v32;

        goto LABEL_13;
      }

      v33 = sub_268988568(v30);
      v34 = v35;

      if (v34)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2689876A4();
          v28 = v38;
        }

        v36 = *(v28 + 16);
        if (v36 >= *(v28 + 24) >> 1)
        {
          sub_2689876A4();
          v28 = v39;
        }

        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
      }

      swift_setDeallocating();
      sub_268ACE718();
      sub_268A36DE8(v28, v51, v52);
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(inited + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v41 = v48;
  v16(v48, v15, v7);
  v42 = sub_268B37A34();
  v43 = sub_268B37EE4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2688BB000, v42, v43, "Could not find any devices in the intent for confirmation", v44, 2u);
    OUTLINED_FUNCTION_12();
  }

  v20(v41, v7);
  sub_2688C2ECC();
  v45 = swift_allocError();
  *v46 = 60;
  v47 = v50;
  *v50 = v45;
  swift_storeEnumTagMultiPayload();
  v51(v47);
  return sub_2688EF38C(v47, &qword_2802A6300, &unk_268B3BD80);
}

void *sub_268A003C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  sub_26895F84C((v0 + 18));
  return v0;
}

uint64_t sub_268A00404()
{
  sub_268A003C4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

void sub_268A00488()
{
  type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  JUMPOUT(0x26D6221E0);
}

uint64_t sub_268A00504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  return MEMORY[0x2821B9D30](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268A005C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for SetAudioLanguageConfirmIntentStrategy();

  return MEMORY[0x2821B9D20](a1, a2, a3, a4, a5, a6, v15, a8);
}

unint64_t sub_268A0067C(uint64_t a1)
{
  result = sub_268A006A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268A006A4()
{
  result = qword_2802A6F78;
  if (!qword_2802A6F78)
  {
    type metadata accessor for SetAudioLanguageConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6F78);
  }

  return result;
}

uint64_t sub_268A006FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v60 = a7;
  v62 = a4;
  v63 = a8;
  v55 = a6;
  v56 = a2;
  v58 = a3;
  v59 = a5;
  v57 = a1;
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v53 = v9;
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2802CDA10);
  v20 = *(v13 + 16);
  v20(v18, v19, v11);
  v21 = sub_268B37A34();
  v22 = sub_268B37ED4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2688BB000, v21, v22, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput() called", v23, 2u);
    MEMORY[0x26D6266E0](v23, -1, -1);
  }

  v24 = *(v13 + 8);
  v24(v18, v11);
  sub_268B36754();
  v25 = sub_268B36734();
  if (!v25)
  {
    v25 = sub_268B36744();
  }

  v26 = v25;
  v27 = v64;
  v20(v64, v19, v11);

  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v51 = v24;
    v31 = v30;
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    sub_268B36714();
    v33 = v52;
    sub_268B36B14();

    v34 = sub_268B36784();
    v36 = v35;
    (*(v53 + 8))(v33, v54);
    v37 = sub_26892CDB8(v34, v36, &v65);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v28, v29, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput cached responseMode = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);

    v51(v64, v11);
  }

  else
  {

    v24(v27, v11);
  }

  v38 = swift_allocObject();
  v40 = v57;
  v39 = v58;
  v38[2] = v26;
  v38[3] = v39;
  v41 = v61;
  v42 = v55;
  v43 = v56;
  v38[4] = v62;
  v38[5] = v43;
  v38[6] = v42;
  v38[7] = v41;
  v44 = v60;
  v38[8] = v40;
  v38[9] = v44;
  v38[10] = v63;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v45 = v42;
  swift_retain_n();
  v46 = v45;

  v47 = v46;

  v48 = v43;

  sub_2689FB5E4();
}

uint64_t sub_268A00C8C(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v101 = a8;
  v88 = a7;
  v96 = a6;
  v86 = a5;
  v97 = a4;
  v85 = a3;
  v83 = a2;
  v92 = a1;
  v100 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v79 - v10;
  v11 = sub_268B37A54();
  v98 = *(v11 - 8);
  v99 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v95 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v79 - v20;
  v21 = sub_268B34E24();
  v93 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v25 = MEMORY[0x28223BE20](v24);
  v89 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  MEMORY[0x28223BE20](v32);
  v34 = &v79 - v33;
  sub_268935590(v92, &v79 - v33, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688EF38C(v34, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v35 = v99;
    v36 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v37 = v98;
    (*(v98 + 16))(v95, v36, v35);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput unable to execute dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v37 + 8))(v95, v35);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -69;
    v102[0] = v41;
    v103 = 1;
    v101(v102);
    return sub_2688EF38C(v102, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v34, v31);
    v44 = v97;
    v81 = sub_2688E1B9C(13, 3, v83, v85, v97, 0x6E776F6E6B6E75, 0xE700000000000000, v86);
    v82 = v45;
    v46 = __swift_project_boxed_opaque_existential_1(v96 + 13, v96[16]);
    v47 = *MEMORY[0x277D5BBE0];
    v48 = *(v93 + 104);
    v85 = v23;
    v86 = v21;
    v48(v23, v47, v21);
    sub_268935590(v31, v29, &unk_2802A56E0, &unk_268B3CDF0);
    v95 = v24;

    v49 = sub_268B350F4();
    v50 = *(v49 - 8);
    v51 = v84;
    (*(v50 + 32))(v84, v29, v49);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v49);
    v52 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v52);
    v53 = *v46;
    v54 = v87;
    sub_268935590(v51, v87, &unk_2802A57B0, &unk_268B3CE00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v49);
    v83 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_2688EF38C(v54, &unk_2802A57B0, &unk_268B3CE00);
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v58 = v54;
      v56 = sub_268B350B4();
      v57 = v59;
      (*(v50 + 8))(v58, v49);
    }

    v80 = v50;
    v92 = v49;
    v78 = v53;
    v60 = v85;
    v61 = v94;
    sub_2688E3F08(v88, v85, v44, v56, v57, v81, v82, v94, v78);

    sub_2688EF38C(v61, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688EF38C(v51, &unk_2802A57B0, &unk_268B3CE00);
    (*(v93 + 8))(v60, v86);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v62 = v99;
    v63 = __swift_project_value_buffer(v99, qword_2802CDA10);
    v64 = v98;
    v65 = v90;
    (*(v98 + 16))(v90, v63, v62);
    v66 = sub_268B37A34();
    v67 = sub_268B37ED4();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v96;
    if (v68)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2688BB000, v66, v67, "GetVolumeLevelUnsupportedValueStrategy.makeUnsupportedValueOutput returning output", v70, 2u);
      MEMORY[0x26D6266E0](v70, -1, -1);
    }

    (*(v64 + 8))(v65, v62);
    v71 = v69[21];
    v72 = v69[22];
    __swift_project_boxed_opaque_existential_1(v69 + 18, v71);
    v73 = v83;
    v74 = v89;
    sub_268935590(v83, v89, &unk_2802A56E0, &unk_268B3CDF0);
    v75 = *(v74 + *(v95 + 12));
    v76 = v91;
    sub_268A82B50(v97, v91);
    v77 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
    (*(v72 + 40))(v74, v75, v76, v101, v100, v71, v72);

    sub_2688EF38C(v76, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688EF38C(v73, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v80 + 8))(v74, v92);
  }
}

uint64_t sub_268A01650(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_268935590(a1, v34, &unk_2802A57C0, &qword_268B3BE00);
  v15 = v35;
  sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
  if (v15 != 1)
  {
    return a2(a1);
  }

  v16 = a4 == 0x656369766564 && a5 == 0xE600000000000000;
  if (!v16 && (sub_268B38444() & 1) == 0)
  {
    sub_2688C2ECC();
    v19 = swift_allocError();
    v21 = 27;
    goto LABEL_13;
  }

  v17 = GetVolumeLevelDeviceUnsupportedReason.init(rawValue:)([a6 unsupportedReason]);
  if (v18)
  {
LABEL_8:
    sub_2688C2ECC();
    v19 = swift_allocError();
    v21 = 26;
LABEL_13:
    *v20 = v21;
    v34[0] = v19;
    v35 = 1;
    a2(v34);
    return sub_2688EF38C(v34, &unk_2802A57C0, &qword_268B3BE00);
  }

  v23 = v17;
  a2 = a9;
  switch(v17)
  {
    case 1:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268B3BBC0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000268B572E0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 48) = v23;
      v25 = sub_268B37B84();
      v26 = a7[26];
      v27 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v26);
      sub_2689CE860(0xD000000000000022, 0x8000000268B5A3F0, v25, a8, a9, v26, v27);

    case 2:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v32 = "VolumeControls#VolumeLevelUnsupportedOnAppleTV";
      goto LABEL_17;
    case 3:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v32 = "VolumeControls#VolumeLevelUnsupportedOnCarPlay";
LABEL_17:
      v31 = (v32 - 32) | 0x8000000000000000;
      v30 = 0xD00000000000002ELL;
      break;
    case 5:
      v28 = a7[26];
      v29 = a7[27];
      __swift_project_boxed_opaque_existential_1(a7 + 23, v28);
      v30 = 0xD000000000000039;
      v31 = 0x8000000268B5A420;
      break;
    default:
      goto LABEL_8;
  }

  return sub_2689CE88C(v30, v31, a8, a9, v28, v29);
}

uint64_t type metadata accessor for GetVolumeLevelUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_2802A6F80;
  if (!qword_2802A6F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268A01A04()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

Swift::String_optional __swiftcall UsoTask_resume_common_MediaItem.verb()()
{
  v0 = 0x656D75736572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_resume_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268A01C04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A01C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A01CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A01D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A01D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A01DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A01DFC(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A01E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A01EB4(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A01F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A01F6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A01FD0(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A02034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A02098(uint64_t a1)
{
  result = sub_268A02144(&qword_2802A6F90, &protocol conformance descriptor for UsoTask_resume_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A02144(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36144();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_restart_common_MediaItem.verb()()
{
  v0 = 0x74726174736572;
  v1 = 0xE700000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_restart_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268A022CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268A02320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268A02374(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268A023C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268A0241C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268A02470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268A024C4(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268A02518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268A0257C(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268A025D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268A02634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268A02698(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268A026FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268A02760(uint64_t a1)
{
  result = sub_268A0280C(&qword_2802A6FA8, &protocol conformance descriptor for UsoTask_restart_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A0280C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B361C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268A02860(uint64_t a1)
{
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v60 = v2;
  v61 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v59 = type metadata accessor for MediaIntent(0);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v53 = *(v15 + 16);
  v54 = v21;
  v53(v20);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = a1;
    v25 = v8;
    v26 = v13;
    v27 = v6;
    v28 = v15;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "MediaFlowProvider#makeflow making flow from parse", v24, 2u);
    v30 = v29;
    v15 = v28;
    v6 = v27;
    v13 = v26;
    v8 = v25;
    a1 = v57;
    MEMORY[0x26D6266E0](v30, -1, -1);
  }

  v31 = *(v15 + 8);
  v57 = v15 + 8;
  v31(v20, v13);
  v32 = v60;
  v33 = *(v61 + 16);
  v33(v8, a1, v60);
  sub_26892E840(v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v59) == 1)
  {
    v59 = v8;
    sub_268A03080(v11);
    v34 = v58;
    (v53)(v58, v54, v13);
    v33(v6, a1, v32);
    v35 = v32;
    v36 = sub_268B37A34();
    v37 = sub_268B37EE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v38 = 136315138;
      v33(v59, v6, v35);
      v39 = sub_268B37C24();
      v41 = v40;
      v42 = OUTLINED_FUNCTION_0_11();
      v43(v42);
      v44 = sub_26892CDB8(v39, v41, &v62);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_2688BB000, v36, v37, "MediaFlowProvider#makeflow failed to create MediaIntent from parse: %s", v38, 0xCu);
      v45 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x26D6266E0](v45, -1, -1);
      MEMORY[0x26D6266E0](v38, -1, -1);

      v46 = v58;
    }

    else
    {

      v50 = OUTLINED_FUNCTION_0_11();
      v51(v50);
      v46 = v34;
    }

    v31(v46, v13);
    return 0;
  }

  else
  {
    v47 = v55;
    sub_26893207C(v11, v55);
    sub_268A02D6C(v47);
    v49 = v48;
    sub_26895F7A8(v47);
  }

  return v49;
}

void sub_268A02D6C(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(*a1)
  {
    case 2u:

      goto LABEL_5;
    case 3u:
      goto LABEL_6;
    default:
      v4 = sub_268B38444();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if ((a1[1] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B0605C();
        return;
      }

LABEL_6:
      v5 = a1[2];
      if (v5 == 5)
      {
        goto LABEL_7;
      }

      if (sub_268932314(a1[2]) == 0x656C746974627573 && v6 == 0xE900000000000073)
      {
        goto LABEL_32;
      }

      v8 = sub_268B38444();

      if (v8)
      {
        goto LABEL_33;
      }

      if (sub_268932314(v5) == 25443 && v9 == 0xE200000000000000)
      {
        goto LABEL_32;
      }

      v11 = sub_268B38444();

      if (v11)
      {
        goto LABEL_33;
      }

      if (sub_268932314(v5) == 6841459 && v12 == 0xE300000000000000)
      {
LABEL_32:

        goto LABEL_33;
      }

      v14 = sub_268B38444();

      if (v14)
      {
LABEL_33:
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B0638C();
        return;
      }

      if (sub_268932314(v5) == 0x6F69647561 && v15 == 0xE500000000000000)
      {
LABEL_9:

LABEL_35:
        __swift_project_boxed_opaque_existential_1(v1, v1[3]);
        sub_268B066BC();
        return;
      }

      v17 = sub_268B38444();

      if (v17)
      {
        goto LABEL_35;
      }

LABEL_7:
      if (*(a1 + 2))
      {
        switch(v2)
        {
          case 1:
          case 2:
            v18 = sub_268B38444();

            if (v18)
            {
              goto LABEL_35;
            }

            break;
          case 3:
            return;
          default:
            goto LABEL_9;
        }
      }

      return;
  }
}

uint64_t sub_268A03080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A59A0, &unk_268B3F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_268A030E8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v27 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 context];
    if (v7)
    {
      v8 = sub_268AE10A4(v7);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = sub_268A759D0(v8);
    v13 = v2[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_268ADEF34(v15, 1);
      v2 = v27;
      v17 = sub_268A759D0(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_27;
      }

      v12 = v17;
    }

    if (v16)
    {

      v20 = (v2[7] + 8 * v12);
      MEMORY[0x26D6256C0](v19);
      if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_268B3BBA0;
      *(v21 + 32) = v6;
      v2[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v2[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v10;
      *(v2[7] + 8 * v12) = v21;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      v2[2] = v25;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

void *sub_268A03350(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_2689CC3AC(v5);
    v9 = v8;
    v11 = sub_268A759D0(v7);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_268ADF134(v14, 1);
      v2 = v26;
      v16 = sub_268A759D0(v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_268A0358C(uint64_t a1, uint64_t a2)
{
  v16 = MEMORY[0x277D84F98];
  v5 = sub_2688EFD0C();
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v2 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    v15 = v7;
    sub_268986C68(&v16, &v15);
  }

  v2 = 0;
  v8 = v16;
  v9 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v10 = *(a2 + 16);
  while (v10 != v2)
  {
    if (v2 >= v10)
    {
      goto LABEL_20;
    }

    v11 = *(sub_268B378C4() - 8);
    v12 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    sub_2689870EC(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v2++, v8, &v15);
    if (v15)
    {
      MEMORY[0x26D6256C0]();
      v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v13);
        sub_268B37D14();
      }

      sub_268B37D44();
      v9 = v16;
      v2 = v12;
    }
  }

  return v9;
}

uint64_t sub_268A0383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v103 = v6;
  v7 = sub_268B37B14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v102 = v9;
  v98 = sub_268B37594();
  v10 = OUTLINED_FUNCTION_19_0(v98);
  v104 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_79(v12);
  v90 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v15);
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v94 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = sub_268B37AC4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v28 = v27 - v26;
  v86 = dispatch_group_create();
  sub_2688C2FC8();
  (*(v24 + 104))(v28, *MEMORY[0x277D851C8], v22);
  v101 = sub_268B37F84();
  (*(v24 + 8))(v28, v22);
  OUTLINED_FUNCTION_168_0();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v105 = v29;
  *(v29 + 16) = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  v32 = a1 + 32;
  v33 = v30;
  v107 = v7;
  for (i = v21; v31; --v31)
  {
    sub_26890C900(v32, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v111);
    if (sub_268B375B4())
    {
      sub_2688E6514(&aBlock, &v114);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_39_4();
        v33 = v117;
      }

      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_23_11(v36);
        sub_26894472C();
      }

      v38 = v115;
      v39 = v116;
      __swift_mutable_project_boxed_opaque_existential_1(&v114, v115);
      OUTLINED_FUNCTION_31_10();
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_1_0();
      v43 = v42 - v41;
      (*(v44 + 16))(v42 - v41);
      sub_26892D904(v37, v43, &v117, v38, v39);
      __swift_destroy_boxed_opaque_existential_0Tm(&v114);
      v33 = v117;
      v7 = v107;
      v21 = i;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    }

    v32 += 40;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v45 = __swift_project_value_buffer(v16, qword_2802CDA10);
  (*(v94 + 16))(v21, v45, v16);

  v46 = sub_268B37A34();
  v47 = sub_268B37ED4();

  v48 = os_log_type_enabled(v46, v47);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&aBlock = v51;
    *v50 = 136315138;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
    v53 = MEMORY[0x26D6256F0](v33, v52);
    v55 = sub_26892CDB8(v53, v54, &aBlock);
    v7 = v107;

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2688BB000, v46, v47, "FromEntity homeAutomationEntities: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    v49 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  (*(v94 + 8))(v21, v16);
  v56 = v105;
  v57 = sub_268B37504();

  v58 = *(v57 + 16);
  v59 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  v60 = v102;
  v61 = v106;
  if (v58)
  {
    v95 = *(v104 + 16);
    v62 = *(v104 + 80);
    v63 = v57 + ((v62 + 32) & ~v62);
    v93 = *(v104 + 72);
    v92 = (v104 + 32);
    v91 = (v62 + 16) & ~v62;
    OUTLINED_FUNCTION_17_15((v90 + v91 + 7) & 0xFFFFFFFFFFFFFFF8);
    OUTLINED_FUNCTION_17_15(v64);
    OUTLINED_FUNCTION_17_15(v65);
    v87 = v66;
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_43_2();
    do
    {
      v95(v96, v63, v98);
      dispatch_group_enter(v86);
      v67 = *v92;
      (*v92)(v97, v96, v98);
      v68 = swift_allocObject();
      v67(v68 + v91, v97, v98);
      *(v68 + v90) = v100;
      *(v68 + v89) = a2;
      *(v68 + v88) = v105;
      *(v68 + v87) = v86;
      v112 = sub_268A09D5C;
      v113 = v68;
      OUTLINED_FUNCTION_1_35();
      *(&aBlock + 1) = 1107296256;
      OUTLINED_FUNCTION_15_16();
      v110 = v69;
      v111 = &block_descriptor_31;
      v70 = _Block_copy(&aBlock);
      v71 = v86;

      sub_268B37AE4();
      v114 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_23();
      sub_268A09C2C(&unk_2802A7010, v72, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
      sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
      v60 = v102;
      sub_268B38124();
      MEMORY[0x26D625950](v86, v102, v103, v70);
      v73 = v70;
      v7 = v107;
      _Block_release(v73);

      OUTLINED_FUNCTION_146();
      v74(v103, v106);
      OUTLINED_FUNCTION_146();
      v75(v102, v107);

      v63 += v93;
      --v58;
    }

    while (v58);

    v56 = v105;
    v61 = v106;
    v49 = MEMORY[0x277D84F90];
    v59 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  }

  else
  {
  }

  v108 = sub_268B37F54();
  OUTLINED_FUNCTION_220();
  v76 = swift_allocObject();
  v76[2] = v56;
  v76[3] = a3;
  v76[4] = a4;
  v112 = sub_268A09E2C;
  v113 = v76;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_14_14(*&v59[287]);
  v110 = v77;
  v111 = &block_descriptor_37;
  v78 = _Block_copy(&aBlock);

  sub_268B37AE4();
  v114 = v49;
  OUTLINED_FUNCTION_2_23();
  sub_268A09C2C(v79, v80, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  sub_268B37F24();

  _Block_release(v78);
  OUTLINED_FUNCTION_153();
  v81(v103, v61);
  OUTLINED_FUNCTION_153();
  v82(v60, v7);
}

uint64_t sub_268A04350(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v7 = sub_268B37594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B37A54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_2802CDA10);
  (*(v12 + 16))(v14, v15, v11);
  v40 = *(v8 + 16);
  v41 = a1;
  v40(v10, a1, v7);
  v16 = sub_268B37A34();
  v39 = v11;
  v17 = v16;
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v12;
    v20 = v7;
    v21 = v19;
    v36 = swift_slowAlloc();
    v45 = v36;
    *v21 = 136315138;
    sub_268A09C2C(&qword_2802A5BE8, MEMORY[0x277D5F918], MEMORY[0x277D5F920]);
    v22 = sub_268B38404();
    v38 = a2;
    v24 = v23;
    (*(v8 + 8))(v10, v20);
    v25 = sub_26892CDB8(v22, v24, &v45);
    a2 = v38;

    *(v21 + 4) = v25;
    v26 = v18;
    v27 = v20;
    _os_log_impl(&dword_2688BB000, v17, v26, "Selecting devices based on predicate: %s", v21, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x26D6266E0](v28, -1, -1);
    MEMORY[0x26D6266E0](v21, -1, -1);

    (*(v37 + 8))(v14, v39);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v39);
    v27 = v7;
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A28, qword_268B43980);
  v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_268B3BBC0;
  v40((v30 + v29), v41, v27);
  v31 = swift_allocObject();
  v32 = v43;
  v31[2] = v42;
  v31[3] = a2;
  v33 = v44;
  v31[4] = v32;
  v31[5] = v33;

  v34 = v33;
  sub_268B37424();
}

void sub_268A047A4(uint64_t a1, char **a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802A4F30 != -1)
  {
LABEL_19:
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();

  v16 = os_log_type_enabled(v14, v15);
  v29[1] = a4;
  v30 = a5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v29[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315138;
    v20 = sub_268B378C4();
    v21 = MEMORY[0x26D6256F0](a1, v20);
    a5 = v22;
    v23 = sub_26892CDB8(v21, v22, v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2688BB000, v14, v15, "Device selector returned devices: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x26D6266E0](v19, -1, -1);
    v24 = v18;
    a2 = v29[0];
    MEMORY[0x26D6266E0](v24, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  a1 = sub_268A0358C(a2, a1);
  v31[0] = MEMORY[0x277D84F90];
  v10 = sub_2688EFD0C();
  v9 = 0;
  a4 = a1 & 0xC000000000000001;
  a2 = &selRef_groupLeader;
  while (v10 != v9)
  {
    if (a4)
    {
      v25 = MEMORY[0x26D625BD0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v25 = *(a1 + 8 * v9 + 32);
    }

    v26 = v25;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v27 = [v25 context];
    if (v27 && (v12 = v27, a5 = [v27 nowPlayingState], v12, a5 == 1))
    {
      v12 = v31;
      sub_268B38214();
      a5 = *(v31[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v9;
  }

  v28 = sub_268A08F04();

  swift_beginAccess();
  sub_268984A98(v28);
  swift_endAccess();
  dispatch_group_leave(v30);
}

uint64_t sub_268A04B14(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v21 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = a3;
    v15 = v14;
    *v13 = 138412290;
    swift_beginAccess();
    type metadata accessor for MediaStream();

    v16 = sub_268B37CE4();

    *(v13 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_2688BB000, v10, v11, "Returning sourceStreams: %@", v13, 0xCu);
    sub_2688C058C(v15, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v15, -1, -1);
    v17 = v13;
    a2 = v21;
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();

  a2(v18);
}

uint64_t sub_268A04D9C(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v211 = a5;
  v210 = a4;
  LODWORD(v217) = a3;
  v238 = a2;
  v246 = a1;
  v220 = sub_268B37924();
  OUTLINED_FUNCTION_1();
  v204 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v7);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA0, &qword_268B3CE28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_79(v200 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v13);
  v242 = sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  v214 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v16);
  v250 = sub_268B37564();
  OUTLINED_FUNCTION_1();
  v201 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v20);
  v251 = sub_268B37594();
  OUTLINED_FUNCTION_1();
  v248 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v27);
  v203 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v30);
  v215 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v216 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v36);
  v37 = sub_268B37464();
  OUTLINED_FUNCTION_1();
  v227 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v40);
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  v43 = (v200 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  MEMORY[0x28223BE20](v44 - 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v47);
  v245 = sub_268B37F44();
  OUTLINED_FUNCTION_1();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v51);
  v239 = sub_268B37F34();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38(v53);
  v247 = sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v213 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v58 = v57 - v56;
  v59 = sub_268B37AC4();
  OUTLINED_FUNCTION_1();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  v65 = v64 - v63;
  v249 = dispatch_group_create();
  v66 = sub_2688C2FC8();
  (*(v61 + 104))(v65, *MEMORY[0x277D851C8], v59);
  v252 = sub_268B37F84();
  (*(v61 + 8))(v65, v59);
  sub_268B37AE4();
  *&aBlock = MEMORY[0x277D84F90];
  sub_268A09C2C(&unk_2802A5890, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  v240 = v58;
  sub_268B38124();
  (*(v49 + 104))(v243, *MEMORY[0x277D85260], v245);
  v209 = v66;
  v239 = sub_268B37F74();
  OUTLINED_FUNCTION_168_0();
  v68 = swift_allocObject();
  v69 = "ambiguousGroupsSync";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6FC0, &unk_268B43970);
  swift_allocObject();
  v243 = v68;
  *(v68 + 16) = sub_268B37094();
  v70 = (v68 + 16);
  v200[1] = v70;
  if (v217)
  {
    v71 = v246;

    v72 = v252;
  }

  else
  {
    v88 = *(v246 + 16);
    v67 = (v246 + 32);
    v71 = MEMORY[0x277D84F90];
    while (1)
    {
      v72 = v252;
      if (!v88)
      {
        break;
      }

      sub_26890C900(v67, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v255);
      if (sub_268B375B4())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      }

      else
      {
        sub_2688E6514(&aBlock, &v258);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v261 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_39_4();
          v71 = v261;
        }

        v91 = *(v71 + 16);
        v90 = *(v71 + 24);
        if (v91 >= v90 >> 1)
        {
          OUTLINED_FUNCTION_23_11(v90);
          sub_26894472C();
        }

        v92 = v259;
        v93 = v260;
        __swift_mutable_project_boxed_opaque_existential_1(&v258, v259);
        v69 = v200;
        OUTLINED_FUNCTION_31_10();
        MEMORY[0x28223BE20](v94);
        OUTLINED_FUNCTION_1_0();
        v70 = (v96 - v95);
        (*(v97 + 16))(v96 - v95);
        sub_26892D904(v91, v70, &v261, v92, v93);
        __swift_destroy_boxed_opaque_existential_0Tm(&v258);
        v71 = v261;
      }

      v67 += 5;
      --v88;
    }
  }

  v73 = *(v71 + 16);
  v246 = v71;
  v245 = v73;
  if (!v73)
  {
    LODWORD(v70) = 0;
    goto LABEL_31;
  }

  v74 = 0;
  v75 = v71 + 32;
  v229 = v227 + 104;
  LODWORD(v228) = *MEMORY[0x277D5F868];
  v222 = v227 + 32;
  v225 = (v227 + 8);
  v67 = &qword_2802A5BA8;
  v72 = &qword_268B3C690;
  v227 = v43;
  while (1)
  {
    if (v74 >= *(v71 + 16))
    {
      goto LABEL_89;
    }

    sub_26890C900(v75, &aBlock);
    LODWORD(v70) = v255;
    __swift_project_boxed_opaque_existential_1(&aBlock, v255);
    v76 = v231;
    sub_268B37604();
    OUTLINED_FUNCTION_146();
    v77 = OUTLINED_FUNCTION_33_11();
    v78(v77, v228, v37);
    OUTLINED_FUNCTION_40_6();
    v79 = *(i + 48);
    sub_2688F1FA4(v76, v43, &qword_2802A5BA8, &qword_268B3C690);
    sub_2688F1FA4(v69, v43 + v79, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_11_21(v43);
    if (v80)
    {
      break;
    }

    v70 = v226;
    sub_2688F1FA4(v43, v226, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_11_21(v43 + v79);
    if (v80)
    {
      OUTLINED_FUNCTION_29_8(v69);
      OUTLINED_FUNCTION_29_8(v76);
      OUTLINED_FUNCTION_146();
      v81(v70, v37);
      v71 = v246;
LABEL_14:
      sub_2688C058C(v43, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_146();
    v82 = v43 + v79;
    v83 = v37;
    v84 = v70;
    v85 = v223;
    v86(v223, v82, v83);
    sub_268A09C2C(&qword_2802A5BB0, MEMORY[0x277D5F880], MEMORY[0x277D5F890]);
    LODWORD(v224) = sub_268B37BB4();
    v69 = v225;
    v70 = *v225;
    (*v225)(v85, v83);
    OUTLINED_FUNCTION_29_8(v234);
    OUTLINED_FUNCTION_29_8(v231);
    v87 = v84;
    v37 = v83;
    (v70)(v87, v83);
    OUTLINED_FUNCTION_29_8(v43);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v71 = v246;
    if (v224)
    {
      goto LABEL_29;
    }

LABEL_16:
    ++v74;
    v75 += 40;
    v43 = v227;
    if (v245 == v74)
    {
      LODWORD(v70) = 0;
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_29_8(v69);
  OUTLINED_FUNCTION_29_8(v76);
  OUTLINED_FUNCTION_11_21(v43 + v79);
  v71 = v246;
  if (!v80)
  {
    goto LABEL_14;
  }

  sub_2688C058C(v43, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
LABEL_29:
  LODWORD(v70) = 1;
LABEL_30:
  v72 = v252;
LABEL_31:
  v37 = v247;
  v74 = v215;
  v75 = v216;
  v43 = v212;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v98 = __swift_project_value_buffer(v74, qword_2802CDA10);
    v99 = *(v75 + 16);
    v206 = v98;
    v207 = v75 + 16;
    v205 = v99;
    v99(v43);

    v100 = sub_268B37A34();
    v101 = sub_268B37EC4();

    v102 = os_log_type_enabled(v100, v101);
    LODWORD(v234) = v70;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&aBlock = v104;
      *v103 = 136315394;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
      v106 = MEMORY[0x26D6256F0](v71, v105);
      v67 = sub_26892CDB8(v106, v107, &aBlock);

      *(v103 + 4) = v67;
      *(v103 + 12) = 1024;
      *(v103 + 14) = v217 & 1;
      _os_log_impl(&dword_2688BB000, v100, v101, "Getting ambiguous groups for homeAutomationEntities: %s, includeFromEntities: %{BOOL}d", v103, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v108 = *(v75 + 8);
      v109 = v212;
    }

    else
    {

      v108 = *(v75 + 8);
      v109 = v43;
    }

    v212 = v108;
    (v108)(v109, v74);
    v43 = v249;
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_27_9();
    v110 = sub_268B37504();
    v70 = v110;
    v71 = *(v110 + 16);
    if (v71 < 2)
    {
      break;
    }

    v71 = v200[4];
    OUTLINED_FUNCTION_18_10();
    v111();
    v112 = sub_268B37A34();
    v101 = sub_268B37ED4();
    if (os_log_type_enabled(v112, v101))
    {
      v113 = OUTLINED_FUNCTION_14();
      *v113 = 0;
      _os_log_impl(&dword_2688BB000, v112, v101, "Multiple predicates found, filtering out .allDevices", v113, 2u);
      v43 = v249;
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_43_2();
    (v212)(v71, v74);
    v74 = 0;
    v231 = v70[2];
    v229 = v248 + 16;
    LODWORD(v228) = *MEMORY[0x277D5F8C0];
    v227 = v201 + 104;
    v226 = (v201 + 8);
    v223 = (v248 + 32);
    v224 = v248 + 8;
    v217 = MEMORY[0x277D84F90];
    v114 = v251;
    v37 = v202;
    for (i = v70; ; v70 = i)
    {
      if (v231 == v74)
      {

        v71 = *(v217 + 16);
        v37 = v247;
        v72 = v252;
        OUTLINED_FUNCTION_27_9();
        goto LABEL_52;
      }

      if (v74 >= v70[2])
      {
        break;
      }

      v225 = ((*(v248 + 80) + 32) & ~*(v248 + 80));
      v75 = *(v248 + 72);
      (*(v248 + 16))(v37, v225 + v70 + v75 * v74, v114);
      v72 = v232;
      v71 = v114;
      sub_268B37574();
      OUTLINED_FUNCTION_146();
      v115 = OUTLINED_FUNCTION_33_11();
      v116 = v250;
      v117(v115, v228, v250);
      sub_268A09C2C(&qword_2802A6FC8, MEMORY[0x277D5F900], MEMORY[0x277D5F910]);
      v118 = sub_268B37BB4();
      v67 = v226;
      v119 = *v226;
      (*v226)(v101, v116);
      v119(v72, v116);
      if (v118)
      {
        OUTLINED_FUNCTION_146();
        v120(v37, v71);
        ++v74;
        v43 = v249;
        OUTLINED_FUNCTION_28_12();
        v114 = v71;
      }

      else
      {
        v121 = v75;
        v75 = v225;
        v67 = *v223;
        (*v223)(v208, v37, v71);
        v122 = v217;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v122;
        *&aBlock = v122;
        if (v123)
        {
          v114 = v71;
        }

        else
        {
          sub_2689447CC(0, *(v122 + 16) + 1, 1);
          v114 = v251;
          v124 = aBlock;
        }

        v43 = v249;
        v71 = *(v124 + 16);
        v125 = *(v124 + 24);
        v72 = (v71 + 1);
        if (v71 >= v125 >> 1)
        {
          v126 = OUTLINED_FUNCTION_23_11(v125);
          sub_2689447CC(v126, v71 + 1, 1);
          v114 = v251;
          v124 = aBlock;
        }

        ++v74;
        *(v124 + 16) = v72;
        v217 = v124;
        (v67)(v124 + v75 + v71 * v121, v208, v114);
        OUTLINED_FUNCTION_28_12();
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v114 = v251;
LABEL_52:
  if (v71)
  {
    v127 = v248 + 16;
    v233 = *(v248 + 16);
    v128 = *(v248 + 80);
    v217 = v110;
    v129 = v110 + ((v128 + 4) & ~v128);
    v231 = *(v248 + 72);
    i = v248 + 32;
    v232 = v128;
    v229 = (v128 + 3) & ~v128;
    v130 = (v203 + v229 + 7) & 0xFFFFFFFFFFFFFFF8;
    v227 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
    v228 = v130;
    OUTLINED_FUNCTION_17_15((v130 + 31) & 0xFFFFFFFFFFFFFFF8);
    v225 = v131;
    v224 = &v254;
    OUTLINED_FUNCTION_43_2();
    v223 = v132;
    OUTLINED_FUNCTION_43_2();
    v222 = v133;
    v135 = *(v134 + 2296);
    v248 = v127;
    do
    {
      v136 = v235;
      v233(v235, v129, v114);
      dispatch_group_enter(v43);
      v137 = *i;
      v138 = v236;
      (*i)(v236, v136, v114);
      v139 = v225;
      v140 = swift_allocObject();
      *(v140 + 16) = v237;
      v137(v140 + v229, v138, v251);
      v141 = v239;
      *(v140 + v228) = v239;
      v142 = v140 + v227;
      v101 = v238;
      *v142 = v238;
      *(v142 + 8) = v234;
      *(v226 + v140) = v243;
      *(v139 + v140) = v43;
      v256 = sub_268A09870;
      v257 = v140;
      OUTLINED_FUNCTION_1_35();
      *(&aBlock + 1) = v135;
      OUTLINED_FUNCTION_15_16();
      v254 = v143;
      v255 = &block_descriptor_4;
      v144 = _Block_copy(&aBlock);
      v250 = v43;

      v145 = v141;

      v146 = v240;
      sub_268B37AE4();
      v258 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_23();
      sub_268A09C2C(&unk_2802A7010, v147, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
      sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
      v148 = v241;
      v67 = v242;
      v43 = v249;
      sub_268B38124();
      MEMORY[0x26D625950](v43, v146, v148, v144);
      v114 = v251;
      v149 = v144;
      v37 = v247;
      _Block_release(v149);

      OUTLINED_FUNCTION_146();
      v150(v148, v67);
      OUTLINED_FUNCTION_146();
      v151(v146, v37);

      v129 += v231;
      --v71;
    }

    while (v71);

    v72 = v252;
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_27_9();
  }

  else
  {
  }

  if (v245)
  {
    v75 = 0;
    v74 = v246 + 32;
    v251 = v204 + 104;
    LODWORD(v250) = *MEMORY[0x277D5FA08];
    v237 = v204 + 32;
    v248 = v204 + 8;
    v70 = &qword_2802A5CA8;
    v43 = &unk_268B3CE30;
    while (1)
    {
      if (v75 >= *(v246 + 16))
      {
        goto LABEL_90;
      }

      sub_26890C900(v74, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v255);
      sub_268B37644();
      v71 = v101;
      v152 = OUTLINED_FUNCTION_33_11();
      v153 = v220;
      v154(v152, v250, v220);
      OUTLINED_FUNCTION_40_6();
      v155 = *(v219 + 48);
      v156 = v218;
      sub_2688F1FA4(v101, v218, &qword_2802A5CA8, &unk_268B3CE30);
      sub_2688F1FA4(v101, v156 + v155, &qword_2802A5CA8, &unk_268B3CE30);
      OUTLINED_FUNCTION_11_21(v156);
      if (v80)
      {
        break;
      }

      sub_2688F1FA4(v156, v67, &qword_2802A5CA8, &unk_268B3CE30);
      OUTLINED_FUNCTION_11_21(v156 + v155);
      if (v158)
      {
        OUTLINED_FUNCTION_30_9(v221);
        OUTLINED_FUNCTION_27_9();
        OUTLINED_FUNCTION_30_9(v101);
        (*v248)(v67, v153);
        v37 = v247;
        v157 = v156;
        v72 = v252;
LABEL_68:
        sub_2688C058C(v157, &qword_2802A5CA0, &qword_268B3CE28);
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_146();
      v159 = OUTLINED_FUNCTION_33_11();
      v160(v159);
      sub_268A09C2C(&qword_2802A5CB0, MEMORY[0x277D5FA18], MEMORY[0x277D5FA28]);
      v161 = sub_268B37BB4();
      v67 = v156;
      v71 = v248;
      v162 = *v248;
      (*v248)(v101, v153);
      OUTLINED_FUNCTION_30_9(v221);
      OUTLINED_FUNCTION_27_9();
      OUTLINED_FUNCTION_30_9(v101);
      v162(v244, v153);
      OUTLINED_FUNCTION_28_12();
      OUTLINED_FUNCTION_30_9(v163);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v37 = v247;
      v72 = v252;
      if (v161)
      {
        goto LABEL_73;
      }

LABEL_70:
      ++v75;
      v74 += 40;
      if (v245 == v75)
      {
        goto LABEL_71;
      }
    }

    OUTLINED_FUNCTION_30_9(v101);
    OUTLINED_FUNCTION_30_9(v101);
    OUTLINED_FUNCTION_11_21(v156 + v155);
    v37 = v247;
    v157 = v156;
    v72 = v252;
    if (v80)
    {
      sub_2688C058C(v157, &qword_2802A5CA8, &unk_268B3CE30);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
LABEL_73:

      OUTLINED_FUNCTION_18_10();
      v178();
      v179 = sub_268B37A34();
      v180 = sub_268B37ED4();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = OUTLINED_FUNCTION_14();
        *v181 = 0;
        _os_log_impl(&dword_2688BB000, v179, v180, "HomeAutomation entity contains reference for 'this'.", v181, 2u);
        OUTLINED_FUNCTION_12();
      }

      v71 = v216 + 8;
      OUTLINED_FUNCTION_38_4();
      v182();
      v75 = v238;
      v74 = sub_2688EFD0C();
      v183 = 0;
      v70 = (v75 & 0xC000000000000001);
      v43 = (v75 & 0xFFFFFFFFFFFFFF8);
      v67 = &unk_279C42000;
      while (v74 != v183)
      {
        if (v70)
        {
          v184 = MEMORY[0x26D625BD0](v183, v75);
        }

        else
        {
          if (v183 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_92;
          }

          v184 = *(v75 + 8 * v183 + 32);
        }

        v185 = v184;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_91;
        }

        v186 = [v184 proximity];
        if ((v186 - 1) >= 4)
        {
          if (v186)
          {
            *&aBlock = v186;
            result = sub_268B38474();
            __break(1u);
            return result;
          }

          type metadata accessor for GroupingUtil();
          v187 = v185;
          v188 = sub_268A03764(v185);

          OUTLINED_FUNCTION_18_10();
          v189();
          v190 = sub_268B37A34();
          v191 = sub_268B37ED4();
          if (os_log_type_enabled(v190, v191))
          {
            v192 = OUTLINED_FUNCTION_14();
            *v192 = 0;
            _os_log_impl(&dword_2688BB000, v190, v191, "Found primary context and creating a 'this' DeviceGroup for the local device.", v192, 2u);
            OUTLINED_FUNCTION_12();
          }

          OUTLINED_FUNCTION_38_4();
          v193();
          swift_beginAccess();
          type metadata accessor for DeviceGroup();
          sub_268B36C54();

          v194 = sub_268B36C24();
          v196 = v195;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
          OUTLINED_FUNCTION_220();
          v197 = swift_allocObject();
          *(v197 + 16) = xmmword_268B3BBA0;
          *(v197 + 32) = v188;
          v198 = v188;
          v199 = sub_2689CBA40(v194, v196, 5, 0, v197);
          *&aBlock = v199;
          sub_268B370A4();

          goto LABEL_72;
        }

        ++v183;
      }

      goto LABEL_72;
    }

    goto LABEL_68;
  }

LABEL_71:

LABEL_72:
  v164 = sub_268B37F54();
  OUTLINED_FUNCTION_220();
  v165 = swift_allocObject();
  v166 = v210;
  v165[2] = v243;
  v165[3] = v166;
  v165[4] = v211;
  v256 = sub_268A09924;
  v257 = v165;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_14_14(COERCE_DOUBLE(1107296256));
  v254 = v167;
  v255 = &block_descriptor_10;
  v168 = _Block_copy(&aBlock);

  v169 = v240;
  sub_268B37AE4();
  v261 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_23();
  sub_268A09C2C(v170, v171, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  v172 = v241;
  v173 = v242;
  sub_268B38124();
  v174 = v249;
  sub_268B37F24();

  _Block_release(v168);
  OUTLINED_FUNCTION_153();
  v175(v172, v173);
  OUTLINED_FUNCTION_153();
  v176(v169, v37);
}

uint64_t sub_268A06BB4(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  v33 = a6;
  v34 = a7;
  v32 = a5;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v8 = sub_268B37594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[6];
  v31 = a1[5];
  v35 = v11;
  v30 = __swift_project_boxed_opaque_existential_1(a1 + 2, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A28, qword_268B43980);
  v12 = *(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_268B3BBC0;
  v14 = *(v9 + 16);
  v15 = v27;
  v14(v13 + ((v12 + 32) & ~v12), v27, v8);
  v14(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v8);
  v16 = (v12 + 24) & ~v12;
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v28;
  (*(v9 + 32))(v19 + v16, v26, v8);
  *(v19 + v17) = v29;
  v21 = v19 + v27;
  *v21 = a1;
  *(v21 + 8) = v32;
  v22 = v34;
  *(v19 + v18) = v33;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v23 = v20;

  v24 = v22;
  sub_268B37424();
}

uint64_t sub_268A06E1C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, NSObject *a8)
{
  v24 = a8;
  v28 = a6;
  v26 = a4;
  v27 = a5;
  v29 = a2;
  v11 = sub_268B37594();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a7 + 16;
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  *(v18 + v16) = a1;
  v19 = v27;
  *(v18 + v17) = v26;
  v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v19;
  *(v20 + 8) = v28;
  *(v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268A09B74;
  *(v21 + 24) = v18;
  aBlock[4] = sub_268A09C24;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268A0BE18;
  aBlock[3] = &block_descriptor_22;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v29, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    dispatch_group_leave(v24);
  }

  return result;
}

uint64_t sub_268A070B8(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v112 = a6;
  v110 = a5;
  v116 = a3;
  v8 = sub_268B37564();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_268B371E4();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v107 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v105 - v14;
  v15 = sub_268B37594();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_268B37A54();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v115 = &v105 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v114 = &v105 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v105 - v27;
  if (qword_2802A4F30 != -1)
  {
LABEL_51:
    swift_once();
  }

  v29 = __swift_project_value_buffer(v19, qword_2802CDA10);
  v30 = *(v20 + 16);
  v121 = v29;
  v122 = v20 + 16;
  v120 = v30;
  (v30)(v28);
  v31 = *(v16 + 16);
  v113 = a1;
  v31(v18, a1, v15);

  v32 = a2;
  v33 = sub_268B37A34();
  v34 = sub_268B37ED4();
  v118 = v20;
  v35 = v34;

  v119 = v33;
  v36 = os_log_type_enabled(v33, v35);
  v111 = v10;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v105 = v19;
    v39 = v38;
    v124[0] = v38;
    *v37 = 136315394;
    sub_268A09C2C(&qword_2802A5BE8, MEMORY[0x277D5F918], MEMORY[0x277D5F920]);
    v40 = sub_268B38404();
    v42 = v41;
    (*(v16 + 8))(v18, v15);
    v43 = sub_26892CDB8(v40, v42, v124);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v44 = sub_268B378C4();
    v45 = MEMORY[0x26D6256F0](v32, v44);
    v18 = sub_26892CDB8(v45, v46, v124);
    a2 = v32;

    *(v37 + 14) = v18;
    v47 = v119;
    _os_log_impl(&dword_2688BB000, v119, v35, "Selecting devices based on predicate: %s, devices: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v39, -1, -1);
    MEMORY[0x26D6266E0](v37, -1, -1);

    v48 = *(v118 + 8);
    v49 = v28;
    v20 = v105;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
    v48 = *(v118 + 8);
    v49 = v28;
    v20 = v19;
  }

  v119 = v48;
  (v48)(v49);
  v10 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  v16 = sub_268A0358C(v116, a2);
  v124[0] = v10;
  v15 = sub_2688EFD0C();
  a1 = 0;
  v19 = v16 & 0xC000000000000001;
  v28 = (v16 & 0xFFFFFFFFFFFFFF8);
  while (v15 != a1)
  {
    if (v19)
    {
      v50 = MEMORY[0x26D625BD0](a1, v16);
    }

    else
    {
      if (a1 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v50 = *(v16 + 8 * a1 + 32);
    }

    v18 = v50;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    a2 = v50;
    Device.isPlayingOrHasPausedContentOnScreen.getter();
    if (v51)
    {
      a2 = v124;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++a1;
  }

  a1 = 0;
  v18 = v124[0];
  v124[0] = v10;
  while (v15 != a1)
  {
    if (v19)
    {
      v52 = MEMORY[0x26D625BD0](a1, v16);
    }

    else
    {
      if (a1 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v52 = *(v16 + 8 * a1 + 32);
    }

    v10 = v52;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_49;
    }

    a2 = v52;
    Device.isPlayingOrHasPausedContentOnScreen.getter();
    if (v53)
    {
    }

    else
    {
      a2 = v124;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++a1;
  }

  v54 = v124[0];
  v55 = sub_268A08F04();

  v56 = v114;
  v57 = v20;
  v120(v114, v121, v20);

  v58 = sub_268B37A34();
  v59 = sub_268B37ED4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v124[0] = v61;
    *v60 = 136315138;
    v62 = type metadata accessor for MediaStream();
    v63 = MEMORY[0x26D6256F0](v55, v62);
    v65 = sub_26892CDB8(v63, v64, v124);

    *(v60 + 4) = v65;
    v57 = v20;
    _os_log_impl(&dword_2688BB000, v58, v59, "Playing streams: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x26D6266E0](v61, -1, -1);
    MEMORY[0x26D6266E0](v60, -1, -1);
  }

  (v119)(v56, v57);
  v66 = v117;
  v67 = v115;
  sub_268984A98(v55);
  if (sub_2688EFD0C())
  {
    sub_2688EFD10();
    if ((v54 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x26D625BD0](0, v54);
    }

    else
    {
      v68 = *(v54 + 32);
    }

    v69 = v68;
    type metadata accessor for MediaStream();
    v70 = v69;
    v71 = sub_2688F34B0(v54, v70);
    v120(v67, v121, v57);
    v72 = v71;
    v73 = sub_268B37A34();
    v74 = sub_268B37ED4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      *(v75 + 4) = v72;
      *v76 = v72;
      v77 = v72;
      _os_log_impl(&dword_2688BB000, v73, v74, "Adding a stream for paused devices: %@", v75, 0xCu);
      sub_2688C058C(v76, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v76, -1, -1);
      MEMORY[0x26D6266E0](v75, -1, -1);
    }

    v78 = (v119)(v67, v57);
    MEMORY[0x26D6256C0](v78);
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    sub_268B37D44();
  }

  else
  {
  }

  v79 = v125;
  if (!sub_2688EFD0C())
  {
  }

  if (v110)
  {
    v80 = 1;
  }

  else
  {
    v82 = v106;
    sub_268B371A4();
    v83 = v107;
    sub_268B374E4();
    sub_268A09C2C(&qword_2802A5BE0, MEMORY[0x277D5F7E0], MEMORY[0x277D5F800]);
    v84 = v109;
    v80 = sub_268B380F4();
    v85 = *(v108 + 8);
    v85(v83, v84);
    v85(v82, v84);
  }

  v120(v66, v121, v57);
  v86 = sub_268B37A34();
  v87 = sub_268B37ED4();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v124[0] = v89;
    *v88 = 67109378;
    *(v88 + 4) = v80 & 1;
    *(v88 + 8) = 2080;
    v90 = type metadata accessor for MediaStream();

    v92 = MEMORY[0x26D6256F0](v91, v90);
    v93 = v57;
    v95 = v94;

    v96 = sub_26892CDB8(v92, v95, v124);

    *(v88 + 10) = v96;
    _os_log_impl(&dword_2688BB000, v86, v87, "Adding a group includingTVs: %{BOOL}d for streams: %s", v88, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v89);
    MEMORY[0x26D6266E0](v89, -1, -1);
    MEMORY[0x26D6266E0](v88, -1, -1);

    v97 = v117;
    v98 = v93;
  }

  else
  {

    v97 = v66;
    v98 = v57;
  }

  (v119)(v97, v98);
  v99 = v111;
  type metadata accessor for DeviceGroup();
  v100 = sub_268B37524();
  v102 = v101;
  sub_268B37574();
  v103 = sub_268A57AEC(v99);

  v104 = sub_2689CBA40(v100, v102, v103, v80 & 1, v79);
  swift_beginAccess();
  v123 = v104;

  sub_268B370A4();
}

void sub_268A07D28(NSObject *a1, void (*a2)(NSObject *), uint64_t a3)
{
  v141 = a3;
  v142 = a2;
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v154 = &v133 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v133 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v143 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v133 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v133 - v18);
  if (qword_2802A4F30 != -1)
  {
LABEL_97:
    swift_once();
  }

  v20 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v21 = *(v4 + 16);
  v156 = v20;
  v157 = v4 + 16;
  v155 = v21;
  (v21)(v19);

  v22 = sub_268B37A34();
  v23 = sub_268B37F04();

  v24 = os_log_type_enabled(v22, v23);
  v145 = v3;
  v136 = v12;
  v144 = v17;
  v140 = v7;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v164[0] = v26;
    *v25 = 136315138;
    swift_beginAccess();

    v27 = v4;
    v28 = sub_268B370B4();

    v29 = type metadata accessor for DeviceGroup();
    v30 = MEMORY[0x26D6256F0](v28, v29);
    v3 = v31;
    v32 = v27;

    v33 = sub_26892CDB8(v30, v3, v164);
    v17 = v145;

    *(v25 + 4) = v33;
    v34 = v23;
    v35 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
    _os_log_impl(&dword_2688BB000, v22, v34, "GroupingUtil#ambiguousGroups found groups: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x26D6266E0](v26, -1, -1);
    MEMORY[0x26D6266E0](v25, -1, -1);

    v36 = *(v32 + 8);
    v4 = v32 + 8;
    v158 = v36;
    v36(v19, v17);
  }

  else
  {

    v37 = *(v4 + 8);
    v4 += 8;
    v158 = v37;
    v37(v19, v3);
    v17 = v3;
    v35 = &OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0;
  }

  swift_beginAccess();

  v38 = sub_268B370B4();

  v39 = sub_268A03350(v38);
  v19 = v39;
  v40 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  v41 = v39 + 8;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v7 = v43 & v39[8];
  v44 = (v42 + 63) >> 6;

  v12 = 0;
  *&v46 = v35[259];
  v147 = v46;
  *&v46 = 136315394;
  v139 = v46;
  v146 = v40;
  v148 = v4;
  v150 = v45;
  v149 = v41;
  v153 = v44;
LABEL_8:
  v47 = v12;
  while (1)
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v12 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v12 >= v44)
          {

            v123 = v140;
            (v155)(v140, v156, v17);
            v124 = v146;

            v125 = sub_268B37A34();
            v126 = sub_268B37F04();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v160 = v128;
              *v127 = v147;
              v129 = type metadata accessor for DeviceGroup();
              v130 = MEMORY[0x26D625710](v124, v129);
              v132 = sub_26892CDB8(v130, v131, &v160);

              *(v127 + 4) = v132;
              v124 = v146;

              _os_log_impl(&dword_2688BB000, v125, v126, "Returning ambiguousGroups: %s", v127, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v128);
              MEMORY[0x26D6266E0](v128, -1, -1);
              MEMORY[0x26D6266E0](v127, -1, -1);

              v158(v123, v17);
            }

            else
            {

              v158(v123, v17);
            }

            v142(v124);

            return;
          }

          v7 = v41[v12];
          ++v47;
          if (v7)
          {
            v48 = v17;
            v3 = v4;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v48 = v17;
      v3 = v4;
      v12 = v47;
LABEL_15:
      v49 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v50 = (v19[6] + ((v12 << 10) | (16 * v49)));
      v51 = v50[1];
      v159 = *v50;
      v52 = v19[2];

      if (v52)
      {
        v53 = sub_268A759D0(v159);
        if (v54)
        {
          v152 = v51;
          v17 = *(v19[7] + 8 * v53);
          v55 = v17 >> 62 ? sub_268B382A4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = v152;
          if (v55)
          {
            break;
          }
        }
      }

      v17 = v48;
      v59 = v154;
      v155();

      v60 = sub_268B37A34();
      v61 = sub_268B37EE4();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v161 = v51;
        v162 = v63;
        *v62 = v147;
        v160 = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
        v64 = sub_268B37C24();
        v66 = sub_26892CDB8(v64, v65, &v162);
        v4 = v148;

        *(v62 + 4) = v66;
        v59 = v154;
        _os_log_impl(&dword_2688BB000, v60, v61, "Could not find any groups for %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        v67 = v63;
        v19 = v150;
        MEMORY[0x26D6266E0](v67, -1, -1);
        v68 = v62;
        v41 = v149;
        MEMORY[0x26D6266E0](v68, -1, -1);
      }

      else
      {

        v4 = v3;
      }

      v158(v59, v17);
      v47 = v12;
      v44 = v153;
    }

    v19 = (v17 & 0xC000000000000001);
    if ((v17 & 0xC000000000000001) == 0)
    {
      break;
    }

    v57 = MEMORY[0x26D625BD0](0, v17);
    v4 = v3;
LABEL_23:
    if (v17 >> 62)
    {
      v58 = sub_268B382A4();
    }

    else
    {
      v58 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v58 == 1)
    {

      v122 = v57;
      MEMORY[0x26D6256C0]();
      if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();

      v146 = v163;
      v19 = v150;
      v41 = v149;
      v44 = v153;
      v17 = v48;
      goto LABEL_8;
    }

    v138 = v57;
    v151 = v58;
    v69 = v48;
    (v155)(v144, v156, v48);
    v70 = v152;

    v71 = sub_268B37A34();
    v72 = sub_268B37ED4();

    v137 = v72;
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v161 = v70;
      v162 = v135;
      *v73 = v139;
      v160 = v159;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v74 = sub_268B37C24();
      v76 = sub_26892CDB8(v74, v75, &v162);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2112;
      type metadata accessor for DeviceGroup();
      v77 = sub_268B37CE4();
      *(v73 + 14) = v77;
      v78 = v134;
      *v134 = v77;
      _os_log_impl(&dword_2688BB000, v71, v137, "Groups for %s: %@", v73, 0x16u);
      sub_2688C058C(v78, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v78, -1, -1);
      v79 = v135;
      __swift_destroy_boxed_opaque_existential_0Tm(v135);
      MEMORY[0x26D6266E0](v79, -1, -1);
      MEMORY[0x26D6266E0](v73, -1, -1);

      v158(v144, v145);
    }

    else
    {

      v158(v144, v69);
    }

    v80 = 0;
    v4 = v17 & 0xFFFFFFFFFFFFFF8;
    v81 = &selRef_groupLeader;
    v3 = v151;
    while (v55 != v80)
    {
      if (v19)
      {
        v82 = MEMORY[0x26D625BD0](v80, v17);
      }

      else
      {
        if (v80 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v82 = *(v17 + 8 * v80 + 32);
      }

      v83 = v82;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_91;
      }

      if ([v82 type] == 2)
      {
LABEL_77:

        v109 = v143;
        v110 = v145;
        (v155)(v143, v156, v145);
        v111 = v152;

        v112 = v83;
        v113 = sub_268B37A34();
        v114 = sub_268B37ED4();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v161 = v111;
          v162 = v116;
          *v115 = v139;
          v160 = v159;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
          v117 = sub_268B37C24();
          v119 = sub_26892CDB8(v117, v118, &v162);

          *(v115 + 4) = v119;
          *(v115 + 12) = 2112;
          *(v115 + 14) = v112;
          *v3 = v112;
          v120 = v112;
          _os_log_impl(&dword_2688BB000, v113, v114, "Adding deduplicated group for %s: %@", v115, 0x16u);
          sub_2688C058C(v3, &qword_2802A6420, &unk_268B3C680);
          v17 = v145;
          MEMORY[0x26D6266E0](v3, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v116);
          MEMORY[0x26D6266E0](v116, -1, -1);
          MEMORY[0x26D6266E0](v115, -1, -1);

          v4 = v148;
          v121 = (v158)(v143, v17);
        }

        else
        {

          v4 = v148;
          v121 = (v158)(v109, v110);
          v17 = v110;
        }

        MEMORY[0x26D6256C0](v121);
        v19 = v150;
        if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v146 = v163;

        v41 = v149;
        v44 = v153;
        goto LABEL_8;
      }

      ++v80;
    }

    for (i = 0; v55 != i; ++i)
    {
      if (v19)
      {
        v85 = MEMORY[0x26D625BD0](i, v17);
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v85 = *(v17 + 8 * i + 32);
      }

      v83 = v85;
      if (__OFADD__(i, 1))
      {
        goto LABEL_92;
      }

      if ([v85 type] == 1)
      {
        goto LABEL_77;
      }
    }

    for (j = 0; v55 != j; ++j)
    {
      if (v19)
      {
        v87 = MEMORY[0x26D625BD0](j, v17);
      }

      else
      {
        if (j >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_96;
        }

        v87 = *(v17 + 8 * j + 32);
      }

      v83 = v87;
      if (__OFADD__(j, 1))
      {
        goto LABEL_94;
      }

      if ([v87 type] == 3)
      {
        goto LABEL_77;
      }
    }

    if (v3)
    {
      v160 = MEMORY[0x277D84F90];
      sub_26894484C(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        goto LABEL_99;
      }

      v88 = 0;
      v89 = v160;
      do
      {
        if (v19)
        {
          v90 = MEMORY[0x26D625BD0](v88, v17);
        }

        else
        {
          v90 = *(v17 + 8 * v88 + 32);
        }

        v91 = v90;
        v92 = [v90 v81[11]];

        v160 = v89;
        v94 = *(v89 + 16);
        v93 = *(v89 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_26894484C(v93 > 1, v94 + 1, 1);
          v89 = v160;
        }

        ++v88;
        *(v89 + 16) = v94 + 1;
        *(v89 + 8 * v94 + 32) = v92;
        v81 = &selRef_groupLeader;
      }

      while (v151 != v88);
    }

    else
    {

      v89 = MEMORY[0x277D84F90];
    }

    v95 = v136;
    v3 = v145;
    (v155)(v136, v156, v145);
    v96 = v152;

    v97 = sub_268B37A34();
    v98 = sub_268B37EE4();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v161 = v96;
      v162 = v3;
      *v99 = v139;
      v160 = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
      v100 = sub_268B37C24();
      v102 = sub_26892CDB8(v100, v101, &v162);

      *(v99 + 4) = v102;
      *(v99 + 12) = 2080;
      v103 = MEMORY[0x26D6256F0](v89, &type metadata for GroupType);
      v105 = v104;

      v106 = sub_26892CDB8(v103, v105, &v162);

      *(v99 + 14) = v106;
      _os_log_impl(&dword_2688BB000, v97, v98, "%s has multiple groups but none are zone/room/accessory. GroupTypes: %s", v99, 0x16u);
      swift_arrayDestroy();
      v107 = v145;
      MEMORY[0x26D6266E0](v3, -1, -1);
      MEMORY[0x26D6266E0](v99, -1, -1);

      v108 = v95;
      v17 = v107;
      v4 = v148;
      v158(v108, v107);
      v47 = v12;
      v19 = v150;
      v41 = v149;
      v44 = v153;
    }

    else
    {

      v4 = v148;
      v158(v95, v3);
      v47 = v12;
      v19 = v150;
      v41 = v149;
      v44 = v153;
      v17 = v3;
    }
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = v3;
    v56 = *(v17 + 32);

    v57 = v56;
    goto LABEL_23;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

NSObject *sub_268A08F04()
{
  v0 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v66 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = (&v66 - v10);
  v86[0] = MEMORY[0x277D84F90];

  v84 = sub_268A030E8(v12);
  v71 = 0;
  if (qword_2802A4F30 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v73 = v9;
  v13 = __swift_project_value_buffer(v0, qword_2802CDA10);
  v14 = v2[2];
  v80 = (v2 + 2);
  v81 = v13;
  v79 = v14;
  (v14)(v11);
  v15 = sub_268B37A34();
  v16 = sub_268B37ED4();
  v17 = os_log_type_enabled(v15, v16);
  v77 = v0;
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_14();
    *v18 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "Grouping devices into streams", v18, 2u);
    v0 = v77;
    OUTLINED_FUNCTION_12();
  }

  v19 = v2[1];
  ++v2;
  v78 = v19;
  v19(v11, v0);
  v20 = v84 + 8;
  v21 = 1 << *(v84 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v84[8];
  v24 = (v21 + 63) >> 6;

  v9 = 0;
  v75 = MEMORY[0x277D84F90];
  *&v25 = 136315138;
  v76 = v25;
  *&v25 = 136315394;
  v72 = v25;
  v74 = xmmword_268B3BBA0;
  v82 = v2;
  v83 = v6;
  while (1)
  {
    while (1)
    {
      v26 = v9;
      if (!v23)
      {
        while (1)
        {
          v9 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v9 >= v24)
          {

            return v75;
          }

          v23 = v20[v9];
          ++v26;
          if (v23)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_11:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (v84[6] + ((v9 << 10) | (16 * v27)));
      v30 = *v28;
      v29 = v28[1];
      v31 = v84[2];

      if (!v31)
      {
        goto LABEL_15;
      }

      v32 = sub_268A759D0(v30);
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

      v6 = *(v84[7] + 8 * v32);
      if (!(v6 >> 62))
      {
        break;
      }

      result = sub_268B382A4();
      if (result)
      {
        goto LABEL_25;
      }

LABEL_15:
      v6 = v83;
      v79(v83, v81, v0);

      v11 = sub_268B37A34();
      v35 = sub_268B37EE4();

      if (os_log_type_enabled(v11, v35))
      {
        v36 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v85[0] = v6;
        *v36 = v76;
        if (v29)
        {
          v37 = v30;
        }

        else
        {
          v37 = 0x3E6C696E3CLL;
        }

        if (!v29)
        {
          v29 = 0xE500000000000000;
        }

        v38 = sub_26892CDB8(v37, v29, v85);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_2688BB000, v11, v35, "No devices found in group: %s. Skipping this group.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
        OUTLINED_FUNCTION_12();
        v0 = v77;
        OUTLINED_FUNCTION_12();

        v39 = v83;
      }

      else
      {

        v39 = v6;
      }

      v2 = v82;
      v78(v39, v0);
    }

    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_15;
    }

LABEL_25:
    v70 = v6 & 0xC000000000000001;
    v75 = result;
    if ((v6 & 0xC000000000000001) != 0)
    {

      v41 = MEMORY[0x26D625BD0](0, v6);
      goto LABEL_28;
    }

    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v40 = *(v6 + 32);

    v41 = v40;
LABEL_28:
    v68 = v41;
    v79(v73, v81, v0);

    v42 = sub_268B37A34();
    v2 = sub_268B37ED4();

    v67 = v2;
    v69 = v42;
    if (os_log_type_enabled(v42, v2))
    {
      v2 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v85[0] = v66;
      *v2 = v72;
      if (v29)
      {
        v43 = v30;
      }

      else
      {
        v43 = 0x3E6C696E3CLL;
      }

      if (v29)
      {
        v44 = v29;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      v45 = sub_26892CDB8(v43, v44, v85);

      *(v2 + 4) = v45;
      *(v2 + 6) = 2080;
      v46 = type metadata accessor for Device();
      v47 = MEMORY[0x26D6256F0](v6, v46);
      v49 = sub_26892CDB8(v47, v48, v85);

      *(v2 + 14) = v49;
      v50 = v69;
      _os_log_impl(&dword_2688BB000, v69, v67, "Creating stream for groupId: %s from devicesInGroup: %s", v2, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v51 = v73;
      v52 = v77;
    }

    else
    {

      v51 = v73;
      v52 = v0;
    }

    v78(v51, v52);
    if (v29)
    {
      v53 = v30 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = 0;
    }

    if (v29)
    {
      v54 = v29;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    if ((v54 & 0x2000000000000000) != 0)
    {
      v55 = HIBYTE(v54) & 0xF;
    }

    else
    {
      v55 = v53;
    }

    result = type metadata accessor for MediaStream();
    if (v55)
    {
      v56 = v68;
      v57 = sub_2688F34B0(v6, v56);
      v11 = v86;
      MEMORY[0x26D6256C0](v57);
      OUTLINED_FUNCTION_32_7();
      if (v59)
      {
        OUTLINED_FUNCTION_23_11(v58);
        sub_268B37D14();
      }

      sub_268B37D44();

      v75 = v86[0];
      v0 = v77;
    }

    else
    {
      v69 = result;
      if (v75 < 1)
      {
        goto LABEL_64;
      }

      v60 = 0;
      do
      {
        if (v70)
        {
          v61 = MEMORY[0x26D625BD0](v60, v6);
        }

        else
        {
          v61 = *(v6 + 8 * v60 + 32);
        }

        v62 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v63 = swift_allocObject();
        *(v63 + 16) = v74;
        *(v63 + 32) = v62;
        v2 = v62;
        v64 = sub_2688F34B0(v63, v2);
        v11 = v86;
        MEMORY[0x26D6256C0](v64);
        OUTLINED_FUNCTION_32_7();
        if (v59)
        {
          OUTLINED_FUNCTION_23_11(v65);
          sub_268B37D14();
        }

        ++v60;
        sub_268B37D44();

        v0 = v77;
      }

      while (v75 != v60);
      v75 = v86[0];
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_268A09750()
{

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268A09784()
{
  v3 = sub_268B37594();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);
  OUTLINED_FUNCTION_19_12();

  (*(v5 + 8))(v0 + ((v6 + 24) & ~v6), v3);

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_268A09870()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v3 = *(v0 + 16);
  v5 = *(v0 + v4);
  v7 = *(v0 + v6);
  v8 = *(v0 + v6 + 8);
  v10 = *(v0 + v9);
  v12 = *(v0 + v11);

  return sub_268A06BB4(v3, v0 + v2, v5, v7, v8, v10, v12);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A09930()
{
  v2 = sub_268B37594();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = *(v3 + 80);
  OUTLINED_FUNCTION_19_12();

  (*(v4 + 8))(v0 + ((v5 + 24) & ~v5), v2);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_268A09A1C(uint64_t a1)
{
  v3 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v5 = *(v1 + 16);
  v7 = *(v1 + v6);
  v9 = *(v1 + v8);
  v10 = *(v1 + v8 + 8);
  v12 = *(v1 + v11);
  v14 = *(v1 + v13);

  return sub_268A06E1C(a1, v5, v1 + v4, v7, v9, v10, v12, v14);
}

uint64_t sub_268A09AC8()
{
  sub_268B37594();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_21_10();
  v5(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, ((v1 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_268A09B74()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_226_0();
  v4 = *(v0 + v3);
  v6 = *(v0 + v5);
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + v7);

  return sub_268A070B8(v0 + v2, v4, v6, v9, v10, v11);
}

uint64_t sub_268A09C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268A09C74()
{

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268A09CA8()
{
  sub_268B37594();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_21_10();
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v3 | 7);
}

uint64_t sub_268A09D5C()
{
  v1 = sub_268B37594();
  OUTLINED_FUNCTION_19_0(v1);
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_25_9();
  v4 = *(v0 + v3);
  v6 = *(v0 + v5);
  v8 = *(v0 + v7);
  v10 = *(v0 + v9);

  return sub_268A04350(v0 + v2, v4, v6, v8, v10);
}

uint64_t objectdestroy_6Tm_1()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268A09E38()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

void OUTLINED_FUNCTION_39_4()
{

  sub_26894472C();
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_268A0A098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6828, &qword_268B40A38);
  MEMORY[0x28223BE20](v0 - 8);
  v45 = &v40 - v1;
  v2 = sub_268B37A54();
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - v6;
  v7 = sub_268B35894();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268B358D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268B36124();
  swift_allocObject();
  v15 = sub_268B36114();
  sub_268B360F4();
  v47 = v15;
  if (sub_268B360E4())
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D5F638], v7);
    sub_268B35884();
    v43 = v11;
    (*(v8 + 8))(v10, v7);
    sub_268B358A4();
    sub_268B357B4();

    (*(v12 + 8))(v14, v43);
  }

  v16 = v47;
  if (MEMORY[0x26D6237C0](v47))
  {
    v17 = sub_268B35BD4();
    v18 = v46;
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v17);
    v19 = MEMORY[0x26D623510](v16, v18);
    sub_268A0A78C(v18);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v2, qword_2802CDA10);
    v21 = v44;
    (*(v44 + 16))(v4, v20, v2);

    v46 = v19;
    v22 = sub_268B37A34();
    v23 = v46;
    v43 = v4;
    v24 = v22;
    v25 = sub_268B37ED4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = v7;
      v27 = v26;
      v28 = swift_slowAlloc();
      v41 = v8;
      v29 = v28;
      v48 = v23;
      v49 = v28;
      *v27 = 136315138;
      sub_268B36624();
      v30 = v21;
      sub_268A0A7F4();
      v31 = sub_268B38404();
      v33 = sub_26892CDB8(v31, v32, &v49);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_2688BB000, v24, v25, "RREntityProvidingIntent#getVolumeRREntities UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v34 = v29;
      v8 = v41;
      MEMORY[0x26D6266E0](v34, -1, -1);
      v35 = v27;
      v7 = v42;
      MEMORY[0x26D6266E0](v35, -1, -1);

      (*(v30 + 8))(v43, v2);
    }

    else
    {

      (*(v21 + 8))(v43, v2);
    }

    v37 = MEMORY[0x277D5F638];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6820, &qword_268B40A30);
    sub_268B37A94();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268B3BBC0;
    (*(v8 + 104))(v10, *v37, v7);
    sub_268B35884();
    (*(v8 + 8))(v10, v7);
    v38 = sub_268B37A74();
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v38);

    sub_268B37A84();
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  return v36;
}

uint64_t sub_268A0A78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268A0A7F4()
{
  result = qword_2802A6830;
  if (!qword_2802A6830)
  {
    sub_268B36624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A6830);
  }

  return result;
}

uint64_t sub_268A0A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SetRepeatStateDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v15 = sub_268B35244();
  sub_268AE2278(v15);
  v17 = v16;

  v18 = sub_268B35244();
  sub_268AE23DC(v18);
  v20 = v19;

  sub_268AB4F68(v17, v20 & 1, a4, a5);
}

void sub_268A0AA98()
{
  type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268A0AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A0AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268A0ACE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A0AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268A0AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268A0AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_268A0AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  v17 = type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_268A0B190(uint64_t a1, uint64_t a2)
{
  result = sub_268A0B1E8(&qword_2802A6FD8, a2, type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy, &unk_268B43AD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268A0B1E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ErrorFilingHelper.generateABCSnapshot(errorToReport:errorDomain:errorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_268B367E4();
  swift_allocObject();
  sub_268B367D4();
  sub_268B367C4();
}

uint64_t sub_268A0B300(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void static ErrorFilingHelper.setupAdditionalTTRInfo(intentResponse:params:)()
{
  OUTLINED_FUNCTION_26();
  sub_268B36F14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  sub_268B36EB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7008, &qword_268B43BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B43BA0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000268B59760;
  v2 = sub_268B36EF4();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 64) = 0xD00000000000001BLL;
  *(inited + 72) = 0x8000000268B59740;
  v6 = sub_268B36EE4();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 80) = v8;
  *(inited + 88) = v9;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x8000000268B597A0;
  v10 = sub_268B36F04();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  *(inited + 112) = v12;
  *(inited + 120) = v13;
  v14 = sub_268B37B84();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
  *&v19 = v14;
  sub_2688EF2B0(&v19, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_268A0E268(v18, 0xD000000000000011, 0x8000000268B59720, isUniquelyReferenced_nonNull_native);
  v16 = OUTLINED_FUNCTION_153_0();
  v17(v16);
  OUTLINED_FUNCTION_23();
}

void static ErrorFilingHelper.setupTrialClient()()
{
  OUTLINED_FUNCTION_26();
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2 - v1;
  v4 = sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_268B37AC4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  if (AFIsInternalInstall())
  {
    sub_2688C2FC8();
    (*(v13 + 104))(v17, *MEMORY[0x277D851C0], v11);
    v24 = sub_268B37F84();
    (*(v13 + 8))(v17, v11);
    v25[4] = sub_268A0DC28;
    v25[5] = 0;
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
    v25[2] = v18;
    v25[3] = &block_descriptor_5;
    v19 = _Block_copy(v25);
    sub_268B37AE4();
    OUTLINED_FUNCTION_5_13();
    sub_268A0E800(v20, v21, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
    sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
    sub_268B38124();
    MEMORY[0x26D625950](0, v10, v3, v19);
    _Block_release(v19);

    v22 = OUTLINED_FUNCTION_153_0();
    v23(v22);
    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_23();
}

void static ErrorFilingHelper.fileTTR(errorToReport:errorDomain:extraInfo:extraDescInfo:duc:attachmentURLs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_26();
  v79 = v23;
  v80 = v24;
  v81 = v25;
  v82 = v26;
  v28 = v27;
  v30 = v29;
  v89 = v31;
  v32 = a23;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7028, &qword_268B43BC8);
  MEMORY[0x28223BE20](v33 - 8);
  v88 = v76 - v34;
  v90 = sub_268B36B54();
  OUTLINED_FUNCTION_1();
  v87 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v85 = v38 - v37;
  v86 = sub_268B36B34();
  OUTLINED_FUNCTION_1();
  v84 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v83 = v42 - v41;
  v43 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v49 = v48 - v47;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v91 = a21;
  v50 = __swift_project_value_buffer(v43, qword_2802CDA10);
  (*(v45 + 16))(v49, v50, v43);
  v51 = sub_268B37A34();
  v52 = sub_268B37F04();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2688BB000, v51, v52, "ErrorFilingHelper#fileTTR called to capture some error condition", v53, 2u);
    v54 = v53;
    v32 = a23;
    MEMORY[0x26D6266E0](v54, -1, -1);
  }

  v55 = OUTLINED_FUNCTION_189();
  v56(v55);
  if (v28)
  {
    v57 = v30;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v28)
  {
    v59 = v28;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v60 = static ErrorFilingHelper.getTrialPolicy()();
  if (v61 >> 60 == 15)
  {
    v62 = 0;
  }

  else
  {
    v62 = v60;
  }

  if (v61 >> 60 == 15)
  {
    v63 = 0xC000000000000000;
  }

  else
  {
    v63 = v61;
  }

  v77 = v63;
  v78 = v62;
  sub_268B36B94();
  swift_allocObject();
  sub_268A0E3C8(v62, v63);
  v76[3] = sub_268B36B84();
  v64 = sub_268A0E030(v91, a22);
  v79 = a22;
  v65 = v64;
  v67 = v66;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_268B381C4();
  MEMORY[0x26D625650](0xD00000000000003BLL, 0x8000000268B5A540);
  MEMORY[0x26D625650](v57, v59);

  MEMORY[0x26D625650](v65, v67);

  MEMORY[0x26D625650](v80, v89);
  v76[1] = v93;
  v76[2] = v92;
  v92 = 0x203A726F727245;
  v93 = 0xE700000000000000;
  v68 = OUTLINED_FUNCTION_153_0();
  MEMORY[0x26D625650](v68);
  if (v82)
  {
    v69 = v81;
  }

  else
  {
    v69 = 0;
  }

  if (v82)
  {
    v58 = v82;
  }

  MEMORY[0x26D625650](v69, v58);

  v82 = v92;
  v70 = v83;
  MEMORY[0x26D624510](0xD000000000000011, 0x8000000268B5A580, 0xD000000000000011, 0x8000000268B5A5A0, 1071828);
  if (v32)
  {
    v71 = v32;
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v72 = v85;
  MEMORY[0x26D624530](v71, &unk_287950218, 0, 0xD000000000000014, 0x8000000268B5A5C0);
  v73 = v87;
  v74 = v88;
  v75 = v90;
  (*(v87 + 16))(v88, v72, v90);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
  OUTLINED_FUNCTION_153_0();
  sub_268B36B74();

  sub_268910B4C(v78, v77);
  sub_268A0E420(v74);
  (*(v73 + 8))(v72, v75);
  (*(v84 + 8))(v70, v86);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A0BED0()
{
  v7 = sub_268B37F44();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37F34();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268B37B14();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2688C2FC8();
  sub_268B37B04();
  v8 = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A5890, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7040, &unk_268B43C50);
  sub_2688C3054(&unk_2802A58A0, &unk_2802A7040, &unk_268B43C50);
  sub_268B38124();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268B37F74();
  qword_2802A6FE0 = result;
  return result;
}

void *sub_268A0C120()
{
  type metadata accessor for ErrorFilingHelper.TrialClientManager();
  swift_allocObject();
  result = sub_268A0C1A0();
  qword_2802A6FF8 = result;
  return result;
}

id sub_268A0C160()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_2802A7000 = result;
  return result;
}

void *sub_268A0C1A0()
{
  v1 = v0;
  v32 = *v0;
  v2 = sub_268B37AB4();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_268B37B14();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_268B37A34();
  v14 = sub_268B37ED4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2688BB000, v13, v14, "ErrorFilingHelper#TrialClientManager#init", v15, 2u);
    MEMORY[0x26D6266E0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_2802A4E30 != -1)
  {
    swift_once();
  }

  v16 = qword_2802A6FE0;
  v38 = sub_268A0E848;
  v39 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v28 = &v36;
  v36 = sub_268A0B300;
  v37 = &block_descriptor_22_0;
  v17 = _Block_copy(&aBlock);

  sub_268B37AE4();
  v33 = MEMORY[0x277D84F90];
  sub_268A0E800(&unk_2802A7010, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  MEMORY[0x26D625950](0, v7, v4, v17);
  _Block_release(v17);
  (*(v31 + 8))(v4, v2);
  (*(v29 + 8))(v7, v30);

  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  v18 = qword_2802A7000;
  v19 = sub_268B37BC4();
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 16) = v1;
  *(v20 + 24) = v21;
  v38 = sub_268A0E884;
  v39 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_268A0CA60;
  v37 = &block_descriptor_28;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 addUpdateHandlerForNamespaceName:v19 queue:v16 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();

  v24 = sub_268B37CE4();
  v25 = sub_268B37BC4();
  v38 = sub_268A0CAC0;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_268A0CFAC;
  v37 = &block_descriptor_32;
  v26 = _Block_copy(&aBlock);
  [v18 downloadLevelsForFactors:v24 withNamespace:v25 queue:v16 options:0 progress:0 completion:v26];
  _Block_release(v26);

  return v1;
}

uint64_t sub_268A0C7E4(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  swift_unknownObjectRetain();
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B0, &qword_268B43C60);
    v11 = sub_268B37C24();
    v13 = sub_26892CDB8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2688BB000, v7, v8, "ErrorFilingHelper#TrialClientManager update handler called with %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x26D6266E0](v10, -1, -1);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  [qword_2802A7000 refresh];
  return sub_268A0D024();
}

uint64_t sub_268A0CA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_268A0CAC0(uint64_t a1, void *a2)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v42 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v13 = *(v4 + 16);
  v13(v11, v12, v3);
  v14 = sub_268B37A34();
  v15 = sub_268B37ED4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v3;
    v17 = v4;
    v18 = v9;
    v19 = a2;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2688BB000, v14, v15, "ErrorFilingHelper#TrialClientManager downloadLevels", v16, 2u);
    v21 = v20;
    a2 = v19;
    v9 = v18;
    v4 = v17;
    v3 = v41;
    MEMORY[0x26D6266E0](v21, -1, -1);
  }

  v22 = *(v4 + 8);
  v22(v11, v3);
  if (a2)
  {
    v13(v9, v12, v3);
    v23 = a2;
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v22;
      v28 = v27;
      v43 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_26892CDB8(0xD00000000000001DLL, 0x8000000268B56B30, &v43);
      v29 = a2;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_26892CDB8(0xD00000000000002FLL, 0x8000000268B5A710, &v43);
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v30 = sub_268B384A4();
      v32 = sub_26892CDB8(v30, v31, &v43);

      *(v26 + 24) = v32;
      _os_log_impl(&dword_2688BB000, v24, v25, "Error downloading levels for factor: %s in namespace: %s. Error: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v28, -1, -1);
      MEMORY[0x26D6266E0](v26, -1, -1);

      return v42(v9, v3);
    }

    v39 = v9;
  }

  else
  {
    v34 = v42;
    v13(v42, v12, v3);
    v35 = sub_268B37A34();
    v36 = sub_268B37EC4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_26892CDB8(0xD00000000000001DLL, 0x8000000268B56B30, &v43);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_26892CDB8(0xD00000000000002FLL, 0x8000000268B5A710, &v43);
      _os_log_impl(&dword_2688BB000, v35, v36, "Successfully downloaded levels for factor: %s in namespace: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v38, -1, -1);
      MEMORY[0x26D6266E0](v37, -1, -1);
    }

    v39 = v34;
  }

  return (v22)(v39, v3);
}

void sub_268A0CFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_268A0D024()
{
  v0 = sub_268B34534();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_2802CDA10);
  v45 = *(v4 + 16);
  v46 = v11;
  v45(v10);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "ErrorFilingHelper#TrialClientManager#loadLatest...", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  v41 = v2;

  v15 = *(v4 + 8);
  v15(v10, v3);
  if (qword_2802A4E40 != -1)
  {
    swift_once();
  }

  v16 = qword_2802A7000;
  v17 = sub_268B37BC4();
  v18 = sub_268B37BC4();
  v19 = [v16 levelForFactor:v17 withNamespaceName:v18];

  v40 = v19;
  v20 = sub_268A0DA38(v19);
  v22 = v21;
  v23 = v44;
  (v45)(v44, v46, v3);

  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v15;
    v28 = v27;
    v47 = v27;
    *v26 = 136446210;

    v29 = sub_26892CDB8(v20, v22, &v47);

    *(v26 + 4) = v29;
    _os_log_impl(&dword_2688BB000, v24, v25, "ErrorFilingHelper#TrialClientManager#loadLatest level path: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v30 = v28;
    v31 = v38;
    MEMORY[0x26D6266E0](v30, -1, -1);
    MEMORY[0x26D6266E0](v26, -1, -1);

    v31(v44, v3);
  }

  else
  {

    v15(v23, v3);
  }

  v32 = v41;
  sub_268B34524();

  v33 = sub_268B34544();
  v35 = v34;
  type metadata accessor for ErrorFilingHelper();
  sub_268A0E3C8(v33, v35);
  static ErrorFilingHelper.setTrialPolicy(dataPolicy:)();
  sub_268910B4C(v33, v35);

  sub_268910B4C(v33, v35);
  return (*(v42 + 8))(v32, v43);
}

void static ErrorFilingHelper.setTrialPolicy(dataPolicy:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_268B37AB4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  sub_268B37B14();
  OUTLINED_FUNCTION_1();
  v46 = v11;
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v22 = __swift_project_value_buffer(v15, qword_2802CDA10);
    (*(v17 + 16))(v21, v22, v15);
    v23 = OUTLINED_FUNCTION_10_17();
    sub_268A0E488(v23, v24);
    v25 = sub_268B37A34();
    v26 = sub_268B37ED4();
    if (!os_log_type_enabled(v25, v26))
    {
      v31 = OUTLINED_FUNCTION_10_17();
      sub_268A0E49C(v31, v32);
      goto LABEL_7;
    }

    v45 = v1;
    v27 = swift_slowAlloc();
    v1 = v27;
    *v27 = 134217984;
    if (v3 >> 60 == 15)
    {
      break;
    }

    v28 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        LODWORD(v28) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          __break(1u);
          JUMPOUT(0x268A0DA28);
        }

        v28 = v28;
        goto LABEL_5;
      case 2uLL:
        v43 = *(v5 + 16);
        v42 = *(v5 + 24);
        v44 = __OFSUB__(v42, v43);
        v28 = v42 - v43;
        if (!v44)
        {
          goto LABEL_5;
        }

        __break(1u);
        break;
      case 3uLL:
        goto LABEL_5;
      default:
        v28 = BYTE6(v3);
        goto LABEL_5;
    }

LABEL_17:
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = 0;
LABEL_5:
  *(v27 + 4) = v28;
  v29 = OUTLINED_FUNCTION_10_17();
  sub_268A0E49C(v29, v30);
  _os_log_impl(&dword_2688BB000, v25, v26, "ErrorFilingHelper#setTrialPolicy... policy is %ld bytes", v1, 0xCu);
  MEMORY[0x26D6266E0](v1, -1, -1);
  v1 = v45;
LABEL_7:

  (*(v17 + 8))(v21, v15);
  if (qword_2802A4E30 != -1)
  {
    OUTLINED_FUNCTION_7_19(&qword_2802A4E30);
  }

  v33 = swift_allocObject();
  v33[2] = v5;
  v33[3] = v3;
  v33[4] = v1;
  v48[4] = sub_268A0E4F8;
  v48[5] = v33;
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3_30(COERCE_DOUBLE(1107296256));
  v48[2] = v34;
  v48[3] = &block_descriptor_3;
  v35 = _Block_copy(v48);
  v36 = OUTLINED_FUNCTION_10_17();
  sub_268A0E488(v36, v37);
  sub_268B37AE4();
  OUTLINED_FUNCTION_5_13();
  sub_268A0E800(v38, v39, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A58B0, &unk_268B3BEA0);
  sub_2688C3054(&qword_2802A7020, &unk_2802A58B0, &unk_268B3BEA0);
  sub_268B38124();
  MEMORY[0x26D625950](0, v14, v9, v35);
  _Block_release(v35);
  v40 = OUTLINED_FUNCTION_153_0();
  v41(v40);
  (*(v46 + 8))(v14, v47);

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268A0DA38(void *a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_8;
  }

  result = [a1 fileValue];
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = sub_268A0E790(result);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

LABEL_8:
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_268B37A34();
    v11 = sub_268B37ED4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2688BB000, v10, v11, "ErrorFilingHelper#TrialClientManager#getPathForFactor using default local file system path", v12, 2u);
      MEMORY[0x26D6266E0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0xD000000000000074;
  }

  return result;
}

uint64_t sub_268A0DC28()
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
  v6 = sub_268B37ED4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2688BB000, v5, v6, "ErrorFilingHelper#setupTrialClient...", v7, 2u);
    MEMORY[0x26D6266E0](v7, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  if (qword_2802A4E38 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_268A0DDE4(uint64_t a1, unint64_t a2)
{
  v2 = qword_2802A6FE8;
  v3 = unk_2802A6FF0;
  qword_2802A6FE8 = a1;
  unk_2802A6FF0 = a2;
  sub_268A0E488(a1, a2);
  sub_268A0E49C(v2, v3);
  sub_268B372E4();
  return sub_268B372C4();
}

uint64_t static ErrorFilingHelper.getTrialPolicy()()
{
  v11 = xmmword_268B43BB0;
  if (qword_2802A4E30 != -1)
  {
    OUTLINED_FUNCTION_7_19(&qword_2802A4E30);
  }

  v1 = qword_2802A6FE0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v11;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_268A0E514;
  *(v3 + 24) = v2;
  v10[4] = sub_268A0E51C;
  v10[5] = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_268A0BE18;
  v10[3] = &block_descriptor_12;
  v4 = _Block_copy(v10);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_189();
    sub_268A0E488(v6, v7);
    v8 = OUTLINED_FUNCTION_189();
    sub_268A0E49C(v8, v9);

    return OUTLINED_FUNCTION_189();
  }

  return result;
}

uint64_t sub_268A0DFE0(uint64_t *a1)
{
  v2 = qword_2802A6FE8;
  v1 = unk_2802A6FF0;
  v3 = *a1;
  v4 = a1[1];
  *a1 = qword_2802A6FE8;
  a1[1] = v1;
  sub_268A0E488(v2, v1);

  return sub_268A0E49C(v3, v4);
}

uint64_t sub_268A0E030(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MEMORY[0x26D625650](8236, 0xE200000000000000);
  return a1;
}

uint64_t sub_268A0E09C(char a1, const char *a2, ...)
{
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v11 = __swift_project_value_buffer(v4, qword_2802CDA10);
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_2688BB000, v12, v13, a2, v14, 8u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_268A0E238@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_OWORD *sub_268A0E268(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268A75754(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A70B8, &qword_268B43C68);
  if ((sub_268B38264() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_268A75754(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268B38494();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    return sub_2688EF2B0(a1, v17);
  }

  else
  {
    sub_268A0E6DC(v12, a2, a3, a1, v16);
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268A0E3C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_268A0E420(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7028, &qword_268B43BC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268A0E488(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268A0E3C8(a1, a2);
  }

  return a1;
}

uint64_t sub_268A0E49C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268910B4C(a1, a2);
  }

  return a1;
}

uint64_t sub_268A0E4B0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_268910B4C(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_268A0E5A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268A75754(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7030, &qword_268B43C48);
  if ((sub_268B38264() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = OUTLINED_FUNCTION_153_0();
  v15 = sub_268A75754(v14);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_268B38494();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v5;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = a1;
  }

  else
  {
    sub_268A0E748(v12, a2, a3, a1, v17);
  }
}

_OWORD *sub_268A0E6DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2688EF2B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_268A0E748(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_268A0E790(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_268A0E800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268A0E84C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1)
{

  return swift_once();
}

id sub_268A0E93C()
{
  if (qword_2802A4D20 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD8D0;
  qword_2802CD978 = qword_2802CD8D0;

  return v1;
}

void sub_268A0E9A0()
{
  OUTLINED_FUNCTION_26();
  v188 = v0;
  v189 = v1;
  v190 = v2;
  v186 = v4;
  v187 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3();
  v193 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v182 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_78();
  v176 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_3();
  v183 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v192 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v179 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  v181 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v170 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_78();
  v175 = v24;
  OUTLINED_FUNCTION_9();
  v184 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v194 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v191 = v27;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v180 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_78();
  v174 = v31;
  OUTLINED_FUNCTION_9();
  sub_268B367A4();
  OUTLINED_FUNCTION_1();
  v172 = v33;
  v173 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v171 = v35 - v34;
  OUTLINED_FUNCTION_9();
  v36 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18();
  v178 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  v177 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  v48 = &v168 - v47;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v49 = __swift_project_value_buffer(v36, qword_2802CDA10);
  v185 = *(v38 + 16);
  v185(v48, v49, v36);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  v52 = os_log_type_enabled(v50, v51);
  v195 = v6;
  if (v52)
  {
    v6 = OUTLINED_FUNCTION_14();
    *v6 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SkipTimeHandleIntentStrategy.makeIntentHandledResponse()", v6, 2u);
    OUTLINED_FUNCTION_19_13();
  }

  v53 = *(v38 + 8);
  v53(v48, v36);
  v54 = sub_268B18100(v6);
  if (!v54)
  {
    goto LABEL_13;
  }

  v55 = v54;
  if (!sub_2688EFD0C())
  {

LABEL_13:
    OUTLINED_FUNCTION_25_10();
    v66();
    v67 = sub_268B37A34();
    v68 = sub_268B37EE4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_14();
      *v69 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "No device found in intent", v69, 2u);
      OUTLINED_FUNCTION_19_13();
    }

    v53(v42, v36);
    v70 = sub_268B36E84();
    v71 = v184;
    if (!v72)
    {
      sub_268947F08();
    }

    v186 = v70;
    OUTLINED_FUNCTION_21_11();
    (*(v194 + 104))(v191, *MEMORY[0x277D5BC00], v71);
    v73 = sub_268B350F4();
    v74 = v192;
    v75 = OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v75, v76, 1, v73);
    v77 = *MEMORY[0x277D5B908];
    v78 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v79 + 104))(v193, v77, v78);
    OUTLINED_FUNCTION_40_7();
    v80 = v74;
    v81 = v183;
    sub_2688F1FA4(v80, v183, &unk_2802A57B0, &unk_268B3CE00);
    v82 = OUTLINED_FUNCTION_34_6();
    if (__swift_getEnumTagSinglePayload(v82, v83, v73) == 1)
    {
      sub_2688C058C(v81, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v73 - 8) + 8))(v81, v73);
    }

    v84 = v193;
    sub_2688E2D50();

    sub_2688C058C(v84, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v192, &unk_2802A57B0, &unk_268B3CE00);
    v85 = OUTLINED_FUNCTION_30_10();
    v86(v85);
    OUTLINED_FUNCTION_21_11();
    sub_2688C2ECC();
    v88 = OUTLINED_FUNCTION_26_1();
    v89 = -123;
    goto LABEL_21;
  }

  v193 = v38 + 8;
  v56 = [(uint8_t *)v6 duration];
  if (!v56)
  {

    v93 = v178;
    OUTLINED_FUNCTION_25_10();
    v94();
    v95 = sub_268B37A34();
    v96 = sub_268B37EE4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_14();
      *v97 = 0;
      _os_log_impl(&dword_2688BB000, v95, v96, "Did not receive valid duration", v97, 2u);
      OUTLINED_FUNCTION_12();
    }

    v53(v93, v36);
    v98 = sub_268B36E84();
    v99 = v184;
    if (!v100)
    {
      sub_268947F08();
    }

    v193 = v98;
    OUTLINED_FUNCTION_21_11();
    (*(v194 + 104))(v180, *MEMORY[0x277D5BC00], v99);
    v106 = sub_268B350F4();
    v107 = v181;
    __swift_storeEnumTagSinglePayload(v181, 1, 1, v106);
    v108 = *MEMORY[0x277D5B908];
    v109 = sub_268B34B94();
    OUTLINED_FUNCTION_4();
    (*(v110 + 104))(v182, v108, v109);
    OUTLINED_FUNCTION_40_7();
    v111 = v107;
    v112 = v179;
    sub_2688F1FA4(v111, v179, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v112, 1, v106) == 1)
    {
      sub_2688C058C(v112, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v106 - 8) + 8))(v112, v106);
    }

    v113 = v182;
    sub_2688E2D50();

    sub_2688C058C(v113, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v181, &unk_2802A57B0, &unk_268B3CE00);
    v114 = OUTLINED_FUNCTION_30_10();
    v115(v114);
    OUTLINED_FUNCTION_21_11();
    sub_2688C2ECC();
    v88 = OUTLINED_FUNCTION_26_1();
    v89 = -122;
LABEL_21:
    *v87 = v89;
    OUTLINED_FUNCTION_6_26();
    sub_26894B450();

    v90 = OUTLINED_FUNCTION_26_1();
    *v91 = v89;
    v92 = OUTLINED_FUNCTION_8_16(v90);
    v189(v92);
    goto LABEL_22;
  }

  v57 = v56;
  v58 = [v56 duration];
  if (!v58)
  {
LABEL_11:

    v62 = sub_2688C2ECC();
    v63 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v62);
    *v64 = -121;
    v65 = OUTLINED_FUNCTION_8_16(v63);
    v189(v65);

    goto LABEL_22;
  }

  v59 = v58;
  v60 = sub_268B37E64();
  if (v61)
  {

    goto LABEL_11;
  }

  v181 = v60;
  v192 = v59;
  v199 = 0;
  v101 = v188;
  v183 = sub_268AAC34C(v188 + 2, v55, &v199);
  v102 = *__swift_project_boxed_opaque_existential_1(v101 + 8, v101[11]);
  if (v102 && (v103 = OUTLINED_FUNCTION_28_1(), v104 = [v102 BOOLForKey_], v103, (v104 & 1) != 0))
  {
    v105 = 1;
  }

  else
  {
    v105 = v199;
  }

  LODWORD(v182) = v105;
  sub_268B36754();
  v116 = sub_268B36734();
  if (!v116)
  {
    v116 = sub_268B36744();
  }

  v117 = v116;
  v191 = v55;
  v118 = v177;
  OUTLINED_FUNCTION_25_10();
  v119();

  v120 = v117;
  v121 = sub_268B37A34();
  v122 = sub_268B37ED4();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v169 = v57;
    v124 = v123;
    v6 = swift_slowAlloc();
    v200[0] = v6;
    *v124 = 136315138;
    sub_268B36714();
    LODWORD(v185) = v122;
    v125 = v171;
    sub_268B36B14();

    v126 = sub_268B36784();
    v128 = v127;
    (*(v172 + 8))(v125, v173);
    v129 = sub_26892CDB8(v126, v128, v200);

    *(v124 + 4) = v129;
    v120 = v117;
    _os_log_impl(&dword_2688BB000, v121, v185, "SkipTimeHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_19_13();
    v57 = v169;
    OUTLINED_FUNCTION_12();

    v130 = v177;
  }

  else
  {

    v130 = v118;
  }

  v53(v130, v36);
  v131 = v188;
  v132 = v189;
  v133 = swift_allocObject();
  *(v133 + 16) = v120;
  *(v133 + 24) = v131;
  v135 = v186;
  v134 = v187;
  *(v133 + 32) = v6;
  *(v133 + 40) = v135;
  v136 = v183;
  *(v133 + 48) = v134;
  *(v133 + 56) = v136;
  v137 = v120;
  v138 = v6;
  v139 = v190;
  *(v133 + 64) = v132;
  *(v133 + 72) = v139;
  *(v133 + 80) = v182;

  v195 = v138;
  v140 = v135;

  v141 = [v57 direction];
  if (v141 == 2)
  {
    sub_268AC65D8(v181);
    memcpy(v197, &v196[8], 0x51uLL);
    sub_2688C058C(v197, &qword_2802A5C88, qword_268B418C0);
    v144 = OUTLINED_FUNCTION_16_20();
    sub_268AE38FC(v144);

    OUTLINED_FUNCTION_42_6();
    v145 = OUTLINED_FUNCTION_12_16();
    sub_268ABBD20(v145);

    memcpy(v198, v196, 0x68uLL);
    sub_268A14558(v198);
    goto LABEL_23;
  }

  if (v141 == 1)
  {
    sub_268AC65D8(v181);
    memcpy(v197, &v196[8], 0x51uLL);
    sub_2688C058C(v197, &qword_2802A5C88, qword_268B418C0);
    v142 = OUTLINED_FUNCTION_16_20();
    sub_268AE38D4(v142);

    OUTLINED_FUNCTION_42_6();
    v143 = OUTLINED_FUNCTION_12_16();
    sub_268AB6F1C(v143);

    memcpy(v198, v196, 0x68uLL);
    sub_268A145AC(v198);
    goto LABEL_23;
  }

  v146 = sub_268B36E84();
  v169 = v57;
  v180 = v137;
  if (!v147)
  {
    sub_268947F08();
  }

  v193 = v146;
  __swift_project_boxed_opaque_existential_1(v131 + 18, v131[21]);
  (*(v194 + 104))(v174, *MEMORY[0x277D5BC00], v184);
  v148 = sub_268B350F4();
  v149 = v175;
  v150 = OUTLINED_FUNCTION_34_6();
  __swift_storeEnumTagSinglePayload(v150, v151, 1, v148);
  v152 = *MEMORY[0x277D5B908];
  v153 = sub_268B34B94();
  OUTLINED_FUNCTION_4();
  v155 = v176;
  (*(v154 + 104))(v176, v152, v153);
  __swift_storeEnumTagSinglePayload(v155, 0, 1, v153);
  v156 = v149;
  v157 = v170;
  sub_2688F1FA4(v156, v170, &unk_2802A57B0, &unk_268B3CE00);
  v158 = OUTLINED_FUNCTION_34_6();
  if (__swift_getEnumTagSinglePayload(v158, v159, v148) == 1)
  {
    sub_2688C058C(v157, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(*(v148 - 8) + 8))(v157, v148);
  }

  v160 = v174;
  v161 = v176;
  sub_2688E2D50();

  sub_2688C058C(v161, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v175, &unk_2802A57B0, &unk_268B3CE00);
  (*(v194 + 8))(v160, v184);
  __swift_project_boxed_opaque_existential_1(v188 + 18, v188[21]);
  v162 = sub_2688C2ECC();
  v163 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v162);
  *v164 = -118;
  OUTLINED_FUNCTION_6_26();
  sub_26894B450();

  v165 = OUTLINED_FUNCTION_28_5(&type metadata for ControlsError, v162);
  *v166 = -118;
  v167 = OUTLINED_FUNCTION_8_16(v165);
  v132(v167);

LABEL_22:
  sub_2688C058C(v200, &unk_2802A57C0, &qword_268B3BE00);
LABEL_23:
  OUTLINED_FUNCTION_23();
}