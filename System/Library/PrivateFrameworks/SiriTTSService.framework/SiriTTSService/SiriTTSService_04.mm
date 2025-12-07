uint64_t type metadata accessor for SynthesisCacheWritingAction(uint64_t a1)
{
  result = qword_1EB7610C0;
  if (!qword_1EB7610C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1ADD9B0()
{
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762178, &qword_1B1C37338);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762180, &unk_1B1C37340);
  v9 = OUTLINED_FUNCTION_38_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_5_2(v9, v10, v11, v12, v13, v14, v15, v16, v49, v51, v53);
  OUTLINED_FUNCTION_36_1();
  v17 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v17, v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v20 = sub_1B1A8E474(0, &qword_1EB761048, 0x1E696AE30);
  v25 = OUTLINED_FUNCTION_6_5(v20, v21, v22, v23, v24);
  if (v25)
  {

    return v56;
  }

  else
  {
    OUTLINED_FUNCTION_14_6(v25, v26, v27, v28);
    OUTLINED_FUNCTION_37_3();
    v30 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v30, v31, v32);
    OUTLINED_FUNCTION_17_5();
    if (v0)
    {
      OUTLINED_FUNCTION_21_2();
      v33 = v0();
      v34 = OUTLINED_FUNCTION_10_6(v33);
      if (v34)
      {
        OUTLINED_FUNCTION_13_6(v34);
        v35 = v52;
        OUTLINED_FUNCTION_12_3(v35, v36, v37, v38, v39, v40, v41, v42, v50, v52, v54, v55, v56, v57);
        swift_endAccess();
        OUTLINED_FUNCTION_35_4();
        return v35;
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        v46 = sub_1B1A9EC9C();
        v47 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v46);
        OUTLINED_FUNCTION_7_4(v47, v48);
        return OUTLINED_FUNCTION_35_4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      v43 = sub_1B1A9EC9C();
      v44 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v43);
      return OUTLINED_FUNCTION_7_4(v44, v45);
    }
  }
}

uint64_t sub_1B1ADDB80()
{
  OUTLINED_FUNCTION_18_2();
  v2 = v1;
  v57[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762148, &qword_1B1C37308);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762150, &qword_1B1C37310);
  v11 = OUTLINED_FUNCTION_38_0(v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_5_2(v11, v12, v13, v14, v15, v16, v17, v18, v48, v50, v52);
  OUTLINED_FUNCTION_36_1();
  v19 = OUTLINED_FUNCTION_8_3();
  sub_1B1A93AEC(v19, v20, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  v22 = swift_dynamicCast();
  if (v22)
  {

    *v2 = v55 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_14_6(v22, v23, v24, v25);
    OUTLINED_FUNCTION_37_3();
    v27 = OUTLINED_FUNCTION_8_3();
    sub_1B1A9EC94(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_45_3();
    if (v0)
    {
      v0(v57, v30);
      v31 = swift_dynamicCast();
      if (v31)
      {
        *v2 = v51 & 1;
        v57[3] = &type metadata for Entitlements;
        LOBYTE(v57[0]) = v51 & 1;
        v32 = OUTLINED_FUNCTION_13_6(v31);
        OUTLINED_FUNCTION_12_3(v32, v33, v34, v35, v36, v37, v38, v39, v49, v51, v53, v54, v55, v56);
        swift_endAccess();
      }

      else
      {
        OUTLINED_FUNCTION_9_3();
        sub_1B1C2D538();

        OUTLINED_FUNCTION_0_3();

        v43 = sub_1B1A9EC9C();
        v44 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v43);
        OUTLINED_FUNCTION_7_4(v44, v45);
      }

      v46 = OUTLINED_FUNCTION_13_2();
      return sub_1B1A949B4(v46, v47);
    }

    else
    {
      OUTLINED_FUNCTION_9_3();
      sub_1B1C2D538();

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_3();

      v40 = sub_1B1A9EC9C();
      v41 = OUTLINED_FUNCTION_34(&type metadata for TTSError, v40);
      return OUTLINED_FUNCTION_7_4(v41, v42);
    }
  }

  return result;
}

void *sub_1B1ADDD74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18[4] = a5;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B1AADEBC;
  v18[3] = a6;
  v13 = _Block_copy(v18);
  v14 = a1;

  v15 = [v6 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  v16 = OUTLINED_FUNCTION_24();
  _Block_release(v16);
  return v6;
}

uint64_t sub_1B1ADDE70(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_65(a2 + 16, v6);
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1B1ADDEDC(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1B1ADDF50(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_17_1(a2 + 16, a2);
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

void sub_1B1ADE08C(void *a1, uint64_t *a2)
{
  v4 = *(v2 + 72);
  v5 = *a2;
  OUTLINED_FUNCTION_19_2(v4 + *a2, a2);
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;
  v7 = a1;
}

void sub_1B1ADE118()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = sub_1B1C2C838();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_voiceSelectionInternal))
  {
    v29 = v14;

    v15 = v3;
    v16 = sub_1B1C2C818();
    sub_1B1C2C848();
    v17 = sub_1B1C2D178();

    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      if ((*(v6 + 88))(v10, v4) == *MEMORY[0x1E69E93E8])
      {
        v18 = 0;
        v19 = 0;
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v4);
        v28 = "voice=%s";
        v19 = 2;
        v18 = 1;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = v19;
      *(v20 + 1) = v18;
      *(v20 + 2) = 2080;
      v22 = [v15 description];
      v23 = sub_1B1C2CB58();
      v25 = v24;

      v26 = sub_1B1A930E4(v23, v25, &v30);

      *(v20 + 4) = v26;
      v27 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v16, v17, v27, "TTSVoiceSelect", v28, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    (*(v12 + 8))(v1, v29);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1ADE418()
{
  OUTLINED_FUNCTION_59_5();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  v9 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_40_8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = mach_absolute_time();
  v17 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp);
  v18 = 0.0;
  v19 = v16 >= v17;
  v20 = v16 - v17;
  if (v20 != 0 && v19)
  {
    v21 = v20;
    if (qword_1ED9A5270 != -1)
    {
      OUTLINED_FUNCTION_73(&qword_1ED9A5270);
    }

    v18 = *&qword_1ED9AA500 * v21;
  }

  *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = v18;
  v22 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
  *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = v4;
  v23 = v4;

  v24 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v82);
  sub_1B1AADD60(v2 + v24, v8);
  OUTLINED_FUNCTION_13(v8);
  if (v25)
  {
    sub_1B1AABFB0(v8);
    goto LABEL_45;
  }

  (*(v11 + 32))(v15, v8, v9);
  if (!sub_1B1ADEBA8(v2, v23))
  {
LABEL_44:
    (*(v11 + 8))(v15, v9);
    goto LABEL_45;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69CF7F8]) init];
  if (!v26)
  {
LABEL_34:
    v62 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v62)
    {
      v63 = v62;
      [v62 setVoiceFallbackOccurred_];
      sub_1B1AABABC();
      v65 = v64;
      OUTLINED_FUNCTION_67_4(v64, sel_setEventMetadata_);

      v66 = [v63 eventMetadata];
      if (v66)
      {
        v67 = v66;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        (*(v11 + 16))(v1, v15, v9);
        v68 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_36_10(v68, sel_setTtsId_);
      }

      v69 = [v63 eventMetadata];
      if (v69)
      {
        v70 = v69;
        if (*(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
        {

          v71 = sub_1B1C2CB28();
        }

        else
        {
          v71 = 0;
        }

        [v70 setClientId_];
      }

      sub_1B1AABE04(v63);

      goto LABEL_44;
    }

    (*(v11 + 8))(v15, v9);

LABEL_45:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  v27 = objc_allocWithZone(MEMORY[0x1E69CF658]);
  v74 = v26;
  v28 = v26;
  v29 = [v27 &selRef_NewAssetNotification];
  [v28 setVoiceSettings_];

  v30 = [v28 voiceSettings];
  if (v30)
  {
    v31 = v30;
    v32 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_gender], &v81);
    [v31 setVoiceGender_];
  }

  v33 = [v28 voiceSettings];
  if (v33)
  {
    v34 = v33;
    v35 = &v23[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_name], &v80);
    if (*(v35 + 1))
    {

      v36 = sub_1B1C2CB28();
    }

    else
    {
      v36 = 0;
    }

    [v34 setVoiceName_];
  }

  v37 = [v28 voiceSettings];
  if (v37)
  {
    v38 = v37;
    v73 = objc_opt_self();
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_language], &v79);

    v39 = sub_1B1C2CB28();

    v40 = [v73 convertLanguageCodeToSchemaLocale_];

    [v38 setVoiceAccent_];
  }

  v41 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
  v42 = v28;
  v43 = [v41 init];
  [v42 setContext_];

  v44 = OUTLINED_FUNCTION_66_6();
  if (v44)
  {
    v45 = v44;
    v46 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_type], &v78);
    [v45 setVoiceType_];
  }

  v47 = OUTLINED_FUNCTION_66_6();
  if (v47)
  {
    v48 = v47;
    v49 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0]], &v77);
    [v48 setVoiceFootprint_];
  }

  v50 = OUTLINED_FUNCTION_66_6();
  if (v50)
  {
    v51 = v50;
    v52 = &v23[OBJC_IVAR___SiriTTSSynthesisVoice_name];
    OUTLINED_FUNCTION_65(&v23[OBJC_IVAR___SiriTTSSynthesisVoice_name], &v76);
    v53 = v52[1];
    if (v53)
    {
      v54 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v52, v53);
    }

    else
    {
      v54 = 0;
    }

    [v51 setVoiceName_];
  }

  v55 = OUTLINED_FUNCTION_66_6();
  if (!v55)
  {
LABEL_33:
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_47_8();
    v59(v1);
    v60 = v42;
    v61 = sub_1B1AABA20(v1);
    [v60 setContextId_];

    v26 = v74;
    goto LABEL_34;
  }

  v56 = v55;
  v57 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_version + v23, &v75);
  v58 = *(v57 + v23);
  if ((v58 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v58))
  {
    [v56 setVoiceVersion_];

    goto LABEL_33;
  }

  __break(1u);
}

BOOL sub_1B1ADEBA8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice;
  v5 = *(a1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice);
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (a2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  swift_beginAccess();
  if (!v7)
  {
    return 1;
  }

  if (v8 == *v9 && v7 == v9[1])
  {
  }

  else
  {
    v11 = sub_1B1C2D7A8();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v12 = *(a1 + v4);
  if (!v12 || (v13 = (v12 + OBJC_IVAR___SiriTTSSynthesisVoice_name), swift_beginAccess(), (v14 = v13[1]) == 0) || (v15 = *v13, v16 = (a2 + OBJC_IVAR___SiriTTSSynthesisVoice_name), swift_beginAccess(), (v17 = v16[1]) != 0) && (v15 == *v16 ? (v18 = v14 == v17) : (v18 = 0), v18 || (sub_1B1C2D7A8() & 1) != 0))
  {
    v19 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    swift_beginAccess();
    return *(a2 + v19) == 1;
  }

  return 1;
}

uint64_t sub_1B1ADED40(double a1)
{
  v1 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v1, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1ADED9C(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v27 = v25[0];
    a3(&v27);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0x656C62756F44, 0xE600000000000000, v25);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, v25);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1B1ADF100(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1ADF168(v2);
  }

  return result;
}

uint64_t sub_1B1ADF168(double a1)
{
  v3 = *(v1 + 72);
  v4 = mach_absolute_time();
  v5 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime, v9);
  *(v3 + v5) = v4;
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  result = OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration, &v8);
  *(v3 + v6) = a1;
  return result;
}

uint64_t sub_1B1ADF1EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1ADF244();
  }

  return result;
}

void sub_1B1ADF244()
{
  OUTLINED_FUNCTION_25();
  sub_1B1C2C838();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval))
  {

    v3 = sub_1B1C2C818();
    sub_1B1C2C848();
    sub_1B1C2D178();
    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      v4 = OUTLINED_FUNCTION_15_8();
      if (v5(v4) != *MEMORY[0x1E69E93E8])
      {
        v6 = OUTLINED_FUNCTION_15_8();
        v7(v6);
      }

      *OUTLINED_FUNCTION_20_0() = 0;
      v8 = sub_1B1C2C7D8();
      OUTLINED_FUNCTION_12_5(&dword_1B1A8A000, v9, v10, v8, "TTSSynthesis");
      OUTLINED_FUNCTION_11();
    }

    v11 = OUTLINED_FUNCTION_9_5();
    v12(v11);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1ADF440()
{
  OUTLINED_FUNCTION_59_5();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_28();
  v14 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v15 = mach_absolute_time();
  v16 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_66_0(v14 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime, &v61);
  *(v14 + v16) = v15;
  v17 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_66_0(v14 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration, &v60);
  *(v14 + v17) = v6;
  if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) != 1)
  {
    goto LABEL_26;
  }

  v18 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v59);
  sub_1B1AADD60(v4 + v18, v2);
  OUTLINED_FUNCTION_48_0(v2, 1, v9);
  if (v19)
  {
    sub_1B1AABFB0(v2);
LABEL_26:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  (*(v11 + 32))(v1, v2, v9);
  v20 = [objc_allocWithZone(MEMORY[0x1E69CF7D8]) init];
  v21 = v20;
  v55 = v20;
  if (!v20)
  {
LABEL_14:
    v36 = [objc_allocWithZone(MEMORY[0x1E69CF798]) init];
    if (v36)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v37(v3);
      v38 = v36;
      v39 = sub_1B1AABA20(v3);
      OUTLINED_FUNCTION_65_4(v39, sel_setContextId_);
    }

    v40 = v3;
    [v36 setEnded_];
    v41 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v41)
    {
      v42 = v41;
      [v41 setSynthesisContext_];
      sub_1B1AABABC();
      v44 = v43;
      OUTLINED_FUNCTION_36_10(v43, sel_setEventMetadata_);

      v45 = OUTLINED_FUNCTION_50_6();
      if (v45)
      {
        v21 = v45;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_43_9();
        v46(v40, v1, v9);
        v47 = sub_1B1AABA20(v40);
        OUTLINED_FUNCTION_35_11(v47, sel_setTtsId_);
      }

      v48 = OUTLINED_FUNCTION_50_6();
      if (v48)
      {
        v49 = v48;
        v50 = v11;
        OUTLINED_FUNCTION_54_4();
        if (v21)
        {

          v52 = sub_1B1C2CB28();
        }

        else
        {
          v52 = 0;
        }

        OUTLINED_FUNCTION_70_3(v51, sel_setClientId_);

        v11 = v50;
      }

      OUTLINED_FUNCTION_68_4();

      (*(v11 + 8))(v1, v9);
    }

    else
    {
      (*(v11 + 8))(v1, v9);
    }

    goto LABEL_26;
  }

  v22 = *(v14 + v17);
  *&v22 = v22;
  [v20 setSynthesizedAudioDurationInSecond_];
  v23 = v21;
  InstrumentationMetrics.synthesisLatency.getter();
  *&v24 = v24;
  [v23 setSynthesisLatencyInSecond_];

  v25 = v23;
  InstrumentationMetrics.realTimeFactor.getter();
  *&v26 = v26;
  [v25 setSynthesisRealTimeFactor_];

  v27 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  OUTLINED_FUNCTION_65(v14 + OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount, &v58);
  v28 = *(v14 + v27);
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v54 = v3;
    if (!HIDWORD(v28))
    {
      [v25 setPromptCount_];
      v29 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
      OUTLINED_FUNCTION_65(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues, &v57);
      v30 = *(v4 + v29);
      v31 = *(v30 + 16);
      if (v31)
      {
        v53 = v1;
        v56 = MEMORY[0x1E69E7CC0];
        v32 = v25;

        sub_1B1C2D5B8();
        v33 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          sub_1B1C2D588();
          sub_1B1C2D5C8();
          sub_1B1C2D5D8();
          sub_1B1C2D598();
          v33 += 24;
          --v31;
        }

        while (v31);

        v34 = v56;
        v1 = v53;
      }

      else
      {
        v35 = v25;
        v34 = MEMORY[0x1E69E7CC0];
      }

      sub_1B1AAB8A8(v34, v25);

      v3 = v54;
      v21 = v55;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_1B1ADF9EC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B1B04C5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C10, &qword_1B1C35D88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1ADFB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F0, &qword_1B1C37478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1ADFBB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v1 = sub_1B1C2D6A8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1B1ADFC58(v2, 1, &v4);

  return v4;
}

void sub_1B1ADFC58(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B1C2D818();
      __break(1u);
      goto LABEL_22;
    }

    sub_1B1B50850(i, &v30, &qword_1EB761C10, &qword_1B1C35D88);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_1B1A9EEE0(&v32, v27);
    v9 = *a3;
    v11 = sub_1B1A8EB10();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
      sub_1B1C2D638();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_1B1A9EEE0(v27, (v18[7] + 32 * v11));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_1B1AC891C(v14, a2 & 1);
  v16 = sub_1B1A8EB10();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v27);

    return;
  }

LABEL_22:
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C52DB0);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  sub_1B1C2D658();
  __break(1u);
}

uint64_t sub_1B1ADFF70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B1C40E20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_1B1ADFFD8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_authorizedBundle] = 0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B1AE0130(5);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  v7 = &v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_cookie];
  *v7 = v5;
  v7[1] = v6;
  v8 = sub_1B1AE0130(6);
  v9 = &v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_bundlePath];
  *v9 = v8;
  v9[1] = v10;
  v11 = sub_1B1AE026C(4, ObjectType);
  if (!v11)
  {
    v11 = sub_1B1C2CAB8();
  }

  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr] = v11;
  sub_1B1AE0130(8);
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_assetQuality] = sub_1B1ABAA54();
  v14.receiver = v1;
  v14.super_class = type metadata accessor for TTSAssetProxyAsset();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1B1AE0130(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  string = xpc_dictionary_get_string(v1, (v2 + 32));

  if (string)
  {
    return MEMORY[0x1B27380E0](string);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AE019C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  sub_1B1AE53F8(a1);
  v9 = sub_1B1C2CBF8();

  v10 = a3(v5, v9 + 32);

  if (!v10)
  {
    return 0;
  }

  sub_1B1AE5508(v13);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1AE0294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

xpc_object_t sub_1B1AE03A8(char a1)
{
  sub_1B1AE53F8(a1);
  v2 = sub_1B1C2CBF8();

  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  return v3;
}

uint64_t sub_1B1AE0450()
{
  result = sub_1B1C00910();
  qword_1ED9AA5B0 = result;
  return result;
}

id sub_1B1AE0470()
{
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  OUTLINED_FUNCTION_1_15();
  result = sub_1B1BFFEC8();
  qword_1ED9A9638 = result;
  return result;
}

id sub_1B1AE04CC()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  OUTLINED_FUNCTION_1_15();
  result = sub_1B1ABAA54();
  qword_1ED9A90A8 = result;
  return result;
}

id sub_1B1AE0520()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  OUTLINED_FUNCTION_1_15();
  result = sub_1B1ABAA54();
  qword_1ED9A9598 = result;
  return result;
}

id sub_1B1AE057C()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54();
  qword_1ED9A8D98 = result;
  return result;
}

uint64_t sub_1B1AE05D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624B0, &unk_1B1C35DA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1B1AA8B84((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AE06E4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1AE05D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AE0704()
{
  v1 = v0;
  type metadata accessor for TTSAssetUAFAsset(0);
  OUTLINED_FUNCTION_107();
  v2 = swift_dynamicCastClass();
  if (v2 || (type metadata accessor for TTSAssetTrialAsset(), (v2 = swift_dynamicCastClass()) != 0))
  {
    OUTLINED_FUNCTION_52_1(v2, v3);

    v4 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(isUniquelyReferenced_nonNull_native, 0x65696B6F6F63, v6, isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v50, v4, v58);
    sub_1B1A9EEF0();
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    OUTLINED_FUNCTION_24_2();
    v12 = (*(v11 + 120))();
    if (qword_1ED9A9960 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED9A9968;
    v14 = sub_1B1C2D248();

    if (v14)
    {
      OUTLINED_FUNCTION_24_2();
      (*(v15 + 272))();
    }

    else
    {
      sub_1B1B19C90();
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    OUTLINED_FUNCTION_52_1(v16, v17);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(v18, 0x7475626972747461, v19, v18, v20, v21, v22, v23, v51, v54, v59);
    sub_1B1A9EEF0();
    OUTLINED_FUNCTION_24_2();
    v25 = (*(v24 + 144))();
    v26 = [v25 string];

    sub_1B1C2CB58();
    OUTLINED_FUNCTION_52_1(v27, v28);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_10(v29, 0x7974696C617571, v30, v29, v31, v32, v33, v34, v52, v55, v60);
    sub_1B1A9EEF0();
    v35 = v56;
    v36 = sub_1B1AE5B90();
    if (v37)
    {
      OUTLINED_FUNCTION_52_1(v36, v37);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_16_10(v38, 0x656C646E7562, v39, v38, v40, v41, v42, v43, v53, v56, v61);
      sub_1B1A9EEF0();
      return v57;
    }
  }

  else
  {
    v44 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v45 = qword_1ED9AA668;
    if (os_log_type_enabled(qword_1ED9AA668, v44))
    {
      v46 = OUTLINED_FUNCTION_21_0();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v1;
      *v47 = v1;
      v48 = v1;
      _os_log_impl(&dword_1B1A8A000, v45, v44, "Unexpected non UAF/Trial asset %{public}@", v46, 0xCu);
      sub_1B1A90C78(v47, &qword_1EB7625C0, &qword_1B1C37990);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    return MEMORY[0x1E69E7CC8];
  }

  return v35;
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_69_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B1AE0B30()
{
  OUTLINED_FUNCTION_39_0();
  v0 = sub_1B1B42CD8();

  v1 = sub_1B1AE0B90(v0);

  return v1;
}

uint64_t sub_1B1AE0B90(uint64_t a1)
{
  v3 = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v6 = v5();
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
  }

  v7 = qword_1ED9A9968;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v8 = v7;
  OUTLINED_FUNCTION_16_7();
  v9 = sub_1B1C2D248();

  if (v9)
  {

    return sub_1B1C2CAB8();
  }

  v11 = [v3 primaryLanguage];
  v12 = sub_1B1C2CB58();
  v14 = v13;

  v280.n128_u64[0] = v12;
  v280.n128_u64[1] = v14;
  *&v279[0] = 45;
  *(&v279[0] + 1) = 0xE100000000000000;
  v275 = 95;
  v276 = 0xE100000000000000;
  v15 = sub_1B1A8EDAC();
  v16 = MEMORY[0x1E69E6158];
  v256 = v15;
  v257 = v15;
  v254 = MEMORY[0x1E69E6158];
  v255 = v15;
  OUTLINED_FUNCTION_4();
  v266 = sub_1B1C2D398();
  v267 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621E0, &qword_1B1C37470);
  v18 = swift_allocObject();
  v18[1] = xmmword_1B1C373B0;
  *(v18 + 32) = 2;
  v19 = sub_1B1AE25E8();
  *(v18 + 8) = v16;
  *(v18 + 5) = v19;
  *(v18 + 6) = v20;
  *(v18 + 72) = 4;
  OUTLINED_FUNCTION_8_4();
  v260 = v21 + 152;
  v261 = *(v21 + 152);
  v22 = v261();
  *(v18 + 13) = v16;
  *(v18 + 10) = v22;
  *(v18 + 11) = v23;
  *(v18 + 112) = 5;
  OUTLINED_FUNCTION_8_4();
  v25 = (*(v24 + 160))();
  *(v18 + 18) = v16;
  *(v18 + 15) = v25;
  *(v18 + 16) = v26;
  *(v18 + 152) = 6;
  OUTLINED_FUNCTION_8_4();
  v28 = (*(v27 + 200))();
  v29 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
  *(v18 + 23) = v29;
  if (!v28)
  {
    v28 = sub_1B1C2D228();
  }

  v269 = a1;
  v262 = v5;
  *(v18 + 20) = v28;
  *(v18 + 192) = 9;
  OUTLINED_FUNCTION_8_4();
  v31 = (*(v30 + 184))();
  v32 = *(v31 + 16);
  v265 = v29;
  if (v32)
  {
    v273 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v33 = v273;
    v34 = (v31 + 40);
    do
    {
      v35 = *v34;
      v280.n128_u64[0] = *(v34 - 1);
      v280.n128_u64[1] = v35;
      *&v279[0] = 45;
      *(&v279[0] + 1) = 0xE100000000000000;
      v275 = 95;
      v276 = 0xE100000000000000;
      OUTLINED_FUNCTION_17_6();
      v254 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      v36 = sub_1B1C2D398();
      v38 = v37;
      v273 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_19_1(v39);
        sub_1B1AC9FA8();
        v33 = v273;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v34 += 2;
      --v32;
    }

    while (v32);

    v29 = v265;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  *(v18 + 28) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  *(v18 + 25) = v33;
  *(v18 + 232) = 10;
  v42 = MEMORY[0x1E69E6158];
  *(v18 + 33) = MEMORY[0x1E69E6158];
  *(v18 + 30) = v266;
  *(v18 + 31) = v267;
  *(v18 + 272) = 11;
  v43 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);

  v45 = v43(v44);
  *(v18 + 38) = MEMORY[0x1E69E6530];
  *(v18 + 35) = v45;
  *(v18 + 312) = 14;
  OUTLINED_FUNCTION_3_6();
  v263 = v46 + 136;
  v264 = *(v46 + 136);
  v47 = v264();
  v48 = [v47 string];

  v49 = sub_1B1C2CB58();
  v51 = v50;

  *(v18 + 43) = v42;
  *(v18 + 40) = v49;
  *(v18 + 41) = v51;
  *(v18 + 352) = 20;
  v52 = [v3 description];
  v53 = sub_1B1C2CB58();
  v55 = v54;

  *(v18 + 48) = v42;
  *(v18 + 45) = v53;
  *(v18 + 46) = v55;
  sub_1B1AE309C();
  v283 = sub_1B1C2CAB8();
  OUTLINED_FUNCTION_9_4();
  sub_1B1A93AEC(v56 | 8, v57 | 0x8000000000000000, v269);
  if (v281[0].n128_u64[1])
  {
    OUTLINED_FUNCTION_7_5();
    v58 = swift_dynamicCast();
    if (v58)
    {
      v281[0].n128_u64[1] = v29;
      v280.n128_u64[0] = *&v279[0];
      goto LABEL_27;
    }
  }

  else
  {
    v58 = sub_1B1A9937C(&v280);
  }

  v18 = (v262)(v58);
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v59 = qword_1ED9A9980;
  OUTLINED_FUNCTION_16_7();
  v60 = sub_1B1C2D248();

  if ((v60 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1B1AE3480();
  if ((v61 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_25:
    sub_1B1AE3480();
    if ((v61 & 0x100000000) != 0)
    {
      __break(1u);
      JUMPOUT(0x1B1AE25C8);
    }
  }

  v281[0].n128_u64[1] = MEMORY[0x1E69E7668];
  v280.n128_u32[0] = v61;
LABEL_27:
  v62 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v62, 0);
  sub_1B1A93AEC(0x6D754E6563696F56, 0xEE00444963697265, v269);
  if (v281[0].n128_u64[1])
  {
    OUTLINED_FUNCTION_7_5();
    if (swift_dynamicCast())
    {
      v281[0].n128_u64[1] = v29;
      v280.n128_u64[0] = *&v279[0];
      sub_1B1AE3710(&v280, 1);
      v259 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    sub_1B1A9937C(&v280);
  }

  v63 = [v3 primaryLanguage];
  v64 = sub_1B1C2CB58();
  v66 = v65;

  v67 = v261();
  v69 = v68;
  v280.n128_u64[0] = v64;
  v280.n128_u64[1] = v66;

  MEMORY[0x1B27381B0](v67, v69);

  LODWORD(v66) = sub_1B1AE406C(5381, v280.n128_u64[0], v280.n128_u64[1]);
  v259 = 0;

  v70 = v66 & 0x7FFFFFF;
  OUTLINED_FUNCTION_3_6();
  v72 = (*(v71 + 144))();
  v73 = qword_1ED9A9628;
  v18 = v72;
  if (v73 != -1)
  {
    OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
  }

  v74 = qword_1ED9A9598;
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v75 = v74;
  v76 = sub_1B1C2D248();

  if (v76)
  {

    v77 = 900;
  }

  else
  {
    v78 = qword_1ED9A9100;
    v18 = v18;
    if (v78 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
    }

    v79 = qword_1ED9A90A8;
    v80 = sub_1B1C2D248();

    if (v80)
    {

      v77 = 800;
    }

    else
    {
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v81 = qword_1ED9A9830;
      v82 = sub_1B1C2D248();

      v77 = 800;
      if (v82)
      {
        v77 = 700;
      }
    }
  }

  v281[0].n128_u64[1] = MEMORY[0x1E69E6530];
  v280.n128_u64[0] = v77 + v70 % 0x64 + 1000 * (v70 / 0x64);
  v83 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v83, 1);
LABEL_44:
  v84 = v264();
  OUTLINED_FUNCTION_3_6();
  v86 = *(v85 + 144);
  v87 = v86();
  if (qword_1ED9A9890 != -1)
  {
    swift_once();
  }

  v88 = qword_1ED9A9818;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v89 = v88;
  v90 = sub_1B1C2D248();

  if (v90)
  {
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v91 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v18 = v91;
    v92 = sub_1B1C2D248();

    if (v92)
    {
      v93 = "VoiceGroupCustomCompact";
      v94 = 0xD000000000000011;
LABEL_58:

LABEL_65:
      v281[0].n128_u64[1] = MEMORY[0x1E69E6158];
      v280.n128_u64[0] = v94;
      v280.n128_u64[1] = v93 | 0x8000000000000000;
      v104 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v104, 13);
      goto LABEL_66;
    }
  }

  if (qword_1ED9A97B8 != -1)
  {
    OUTLINED_FUNCTION_8_0(&qword_1ED9A97B8);
  }

  v95 = OUTLINED_FUNCTION_11_4(qword_1ED9A97C0);

  if (v95)
  {
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v96 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v18 = v96;
    v97 = sub_1B1C2D248();

    if (v97)
    {
      v93 = "VoiceGroupCustom";
      OUTLINED_FUNCTION_20_3();
      v94 = v98 + 6;
      goto LABEL_58;
    }
  }

  if (qword_1ED9A5280 != -1)
  {
    OUTLINED_FUNCTION_13_7(&qword_1ED9A5280);
  }

  v99 = OUTLINED_FUNCTION_11_4(qword_1ED9A5288);

  if (v99)
  {

    goto LABEL_66;
  }

  v100 = v89;
  v101 = v84;
  v102 = sub_1B1C2D248();

  if ((v102 & 1) == 0)
  {
    v93 = "tructed wrong object type ";
    OUTLINED_FUNCTION_20_3();
    v94 = v103 - 1;
    goto LABEL_65;
  }

LABEL_66:
  OUTLINED_FUNCTION_9_4();
  sub_1B1A93AEC(v105 + 8, v106 | 0x8000000000000000, v269);
  if (!v281[0].n128_u64[1])
  {
    v107 = sub_1B1A9937C(&v280);
LABEL_70:
    v110 = (v264)(v107);
    v111 = v86();
    if (qword_1ED9A5280 != -1)
    {
      OUTLINED_FUNCTION_13_7(&qword_1ED9A5280);
    }

    v112 = qword_1ED9A5288;
    v113 = sub_1B1C2D248();

    if ((v113 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v114 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v115 = v114;
    v116 = sub_1B1C2D248();

    if (v116)
    {

      v117 = 3100;
    }

    else
    {
LABEL_77:
      v89 = v89;
      v118 = sub_1B1C2D248();

      if ((v118 & 1) == 0)
      {
        goto LABEL_82;
      }

      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
      }

      v119 = qword_1ED9A9830;
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v120 = v119;
      v121 = sub_1B1C2D248();

      if (v121)
      {

        v117 = 3400;
      }

      else
      {
LABEL_82:
        if (qword_1ED9A97B8 != -1)
        {
          OUTLINED_FUNCTION_8_0(&qword_1ED9A97B8);
        }

        v264 = v111;
        v122 = qword_1ED9A97C0;
        v123 = sub_1B1C2D248();

        if ((v123 & 1) == 0)
        {
          goto LABEL_93;
        }

        if (qword_1ED9A97D8 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
        }

        v124 = qword_1ED9A9830;
        sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
        v125 = v124;
        v133 = OUTLINED_FUNCTION_21_3(v125, v126, v127, v128, v129, v130, v131, v132, v254, v255, v256, v257, v258, 0, v260, v261, v262, v263, v111);

        if ((v133 & 1) == 0)
        {
LABEL_93:
          v140 = v112;
          v141 = sub_1B1C2D248();

          v109 = v265;
          if ((v141 & 1) == 0)
          {
            goto LABEL_98;
          }

          if (qword_1ED9A9100 != -1)
          {
            OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
          }

          v142 = qword_1ED9A90A8;
          sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
          v143 = v142;
          v151 = OUTLINED_FUNCTION_21_3(v143, v144, v145, v146, v147, v148, v149, v150, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);

          if (v151)
          {

            v117 = 5100;
          }

          else
          {
LABEL_98:
            v152 = OUTLINED_FUNCTION_11_4(v89);

            if ((v152 & 1) == 0)
            {
              goto LABEL_164;
            }

            if (qword_1ED9A9100 != -1)
            {
              OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
            }

            v153 = qword_1ED9A90A8;
            sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
            v154 = v153;
            v162 = OUTLINED_FUNCTION_21_3(v154, v155, v156, v157, v158, v159, v160, v161, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);

            if (v162)
            {

              v117 = 13400;
            }

            else
            {
LABEL_164:
              v234 = OUTLINED_FUNCTION_11_4(v122);

              if ((v234 & 1) == 0)
              {
                goto LABEL_169;
              }

              if (qword_1ED9A9100 != -1)
              {
                OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
              }

              v235 = qword_1ED9A90A8;
              sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
              v236 = v235;
              v244 = OUTLINED_FUNCTION_21_3(v236, v237, v238, v239, v240, v241, v242, v243, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);

              if (v244)
              {

                v117 = 13800;
              }

              else
              {
LABEL_169:
                if (qword_1ED9A9628 != -1)
                {
                  OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
                }

                v245 = qword_1ED9A9598;
                sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
                v246 = v245;
                v247 = sub_1B1C2D248();

                if (v247)
                {

                  v117 = 18000;
                }

                else
                {
                  if (qword_1ED9A97A8 != -1)
                  {
                    swift_once();
                  }

                  v248 = OUTLINED_FUNCTION_11_4(qword_1ED9A9898);

                  if (v248)
                  {

                    v117 = 22800;
                  }

                  else
                  {
                    if (qword_1ED9A9698 != -1)
                    {
                      swift_once();
                    }

                    v249 = OUTLINED_FUNCTION_11_4(qword_1ED9A9710);

                    if (v249)
                    {

                      v117 = 23700;
                    }

                    else
                    {
                      if (qword_1ED9A9820 != -1)
                      {
                        swift_once();
                      }

                      v250 = OUTLINED_FUNCTION_11_4(qword_1ED9A9828);

                      if ((v250 & 1) == 0)
                      {
                        goto LABEL_195;
                      }

                      v117 = 23800;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_90;
        }

        v117 = 3800;
      }
    }

    v109 = v265;
    goto LABEL_90;
  }

  v107 = swift_dynamicCast();
  if ((v107 & 1) == 0)
  {
    goto LABEL_70;
  }

  v281[0].n128_u64[1] = v265;
  v280.n128_u64[0] = *&v279[0];
  v108 = OUTLINED_FUNCTION_10_7();
  sub_1B1AE3710(v108, 15);
  v109 = v265;
  while (1)
  {
    OUTLINED_FUNCTION_3_6();
    v136 = (*(v135 + 192))();
    v137 = 0xEF656C614D726564;
    v138 = 0x6E65476563696F56;
    switch(v136)
    {
      case 1:
        break;
      case 2:
        v139 = "";
        goto LABEL_104;
      case 3:
        v137 = 0x80000001B1C42240;
        v138 = 0xD000000000000012;
        break;
      default:
        v139 = "VoiceGenderNeutral";
LABEL_104:
        v137 = v139 | 0x8000000000000000;
        v138 = 0xD000000000000011;
        break;
    }

    v281[0].n128_u64[1] = MEMORY[0x1E69E6158];
    v280.n128_u64[0] = v138;
    v280.n128_u64[1] = v137;
    v163 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v163, 7);
    sub_1B1A93AEC(0x6D65446563696F56, 0xED0000747865546FLL, v269);
    if (!v281[0].n128_u64[1])
    {
      v165 = sub_1B1A9937C(&v280);
LABEL_110:
      v166 = (v262)(v165);
      if (qword_1ED9A9978 != -1)
      {
        OUTLINED_FUNCTION_6(&qword_1ED9A9978);
      }

      v167 = qword_1ED9A9980;
      OUTLINED_FUNCTION_16_7();
      v168 = sub_1B1C2D248();

      if ((v168 & 1) == 0)
      {
        goto LABEL_116;
      }

      if (qword_1EB7614D0 != -1)
      {
        swift_once();
      }

      v169 = qword_1EB772D40;
      v170 = [v3 primaryLanguage];
      v171 = sub_1B1C2CB58();
      v173 = v172;

      v174 = sub_1B1A945F4(v171, v173, v169);
      v176 = v175;

      if (!v176)
      {
LABEL_116:
        if (qword_1EB7614C8 != -1)
        {
          swift_once();
        }

        v178 = qword_1EB772D38;
        v179 = [v3 primaryLanguage];
        sub_1B1C2CB58();

        if (*(v178 + 16))
        {
          v180 = sub_1B1A8EB10();
          v182 = v181;

          if (v182)
          {
            v183 = (*(v178 + 56) + 16 * v180);
            v174 = *v183;
            v176 = v183[1];

            goto LABEL_123;
          }
        }

        else
        {
        }

        v176 = 0xE200000000000000;
        v174 = 32123;
      }

LABEL_123:
      v280.n128_u64[0] = v174;
      v280.n128_u64[1] = v176;
      *&v279[0] = 32123;
      *(&v279[0] + 1) = 0xE200000000000000;
      v275 = (v261)(v177);
      v276 = v184;
      OUTLINED_FUNCTION_17_6();
      v185 = MEMORY[0x1E69E6158];
      v254 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      v186 = sub_1B1C2D398();
      v188 = v187;

      v281[0].n128_u64[1] = v185;
      v280.n128_u64[0] = v186;
      v280.n128_u64[1] = v188;
      goto LABEL_124;
    }

    v164 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_7_5();
    v165 = swift_dynamicCast();
    if ((v165 & 1) == 0)
    {
      goto LABEL_110;
    }

    v281[0].n128_u64[1] = v164;
    v280 = v279[0];
LABEL_124:
    v189 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v189, 8);
    OUTLINED_FUNCTION_3_6();
    v191 = (*(v190 + 280))();
    if (!v191 || (v192 = sub_1B1AE4424(v191)) == 0)
    {
      v280 = 0u;
      v281[0] = 0u;
      goto LABEL_134;
    }

    sub_1B1A93AEC(0x7474416563696F56, 0xEF73657475626972, v192);

    if (!v281[0].n128_u64[1])
    {
      goto LABEL_134;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
    OUTLINED_FUNCTION_7_5();
    if (swift_dynamicCast())
    {
      v193 = *&v279[0];
      OUTLINED_FUNCTION_9_4();
      sub_1B1A93AEC(v194 + 7, v195 | 0x8000000000000000, v193);
      if (v281[0].n128_u64[1])
      {
        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F8, &unk_1B1C37480);
        OUTLINED_FUNCTION_7_5();
        if (swift_dynamicCast())
        {

          v197 = *&v279[0];
          v281[0].n128_u64[1] = v196;
          v280.n128_u64[0] = *&v279[0];

          v198 = OUTLINED_FUNCTION_10_7();
          sub_1B1AE3710(v198, 16);
          OUTLINED_FUNCTION_9_4();
          sub_1B1A93AEC(v199 + 16, v200 | 0x8000000000000000, v193);

          if (v281[0].n128_u64[1])
          {
            OUTLINED_FUNCTION_7_5();
            if (swift_dynamicCast())
            {
              v201 = *&v279[0];

              v197 = v201;
            }
          }

          else
          {
            sub_1B1A9937C(&v280);
          }

          v281[0].n128_u64[1] = v196;
          v280.n128_u64[0] = v197;
          goto LABEL_137;
        }

        goto LABEL_135;
      }

LABEL_134:
      sub_1B1A9937C(&v280);
    }

LABEL_135:
    type metadata accessor for TTSAsset();
    v202 = sub_1B1AE449C(v266, v267);

    if (!v202)
    {
      goto LABEL_138;
    }

    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7621F8, &unk_1B1C37480);
    v281[0].n128_u64[1] = v203;
    v280.n128_u64[0] = v202;

    v204 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v204, 16);
    v281[0].n128_u64[1] = v203;
    v280.n128_u64[0] = v202;
LABEL_137:
    sub_1B1AE3710(&v280, 17);
LABEL_138:
    OUTLINED_FUNCTION_3_6();
    v206 = (*(v205 + 224))();
    if (v206)
    {
      v281[0].n128_u64[1] = v109;
      v280.n128_u64[0] = v206;
      v207 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v207, 18);
    }

    OUTLINED_FUNCTION_3_6();
    v209 = (*(v208 + 248))();
    if (v209)
    {
      v281[0].n128_u64[1] = v109;
      v280.n128_u64[0] = v209;
      v210 = OUTLINED_FUNCTION_10_7();
      sub_1B1AE3710(v210, 19);
    }

    v211 = v283;
    v212 = *(v283 + 16);
    if (!v212)
    {
      break;
    }

    v282 = MEMORY[0x1E69E7CC0];
    sub_1B1AE5B70(0, v212, 0);
    v213 = v282;
    v214 = sub_1B1B60118(v211);
    v216 = v215;
    v110 = v217;
    v3 = 0;
    v269 = v212;
    v270 = v211 + 64;
    v268 = v215;
    v218 = 1;
    while ((v214 & 0x8000000000000000) == 0 && v214 < v218 << *(v211 + 32))
    {
      v109 = v214 >> 6;
      v219 = v218 << v214;
      if ((*(v270 + 8 * (v214 >> 6)) & (v218 << v214)) == 0)
      {
        goto LABEL_190;
      }

      if (*(v211 + 36) != v216)
      {
        goto LABEL_191;
      }

      v220 = *(*(v211 + 48) + v214);
      sub_1B1A93378(*(v211 + 56) + 32 * v214, v279 + 8);
      LOBYTE(v275) = v220;
      sub_1B1A9EEE0((v279 + 8), &v276);
      sub_1B1ADFB44(&v275, &v273);
      v280.n128_u64[0] = sub_1B1AE3168(v273);
      v280.n128_u64[1] = v221;
      *(&v271[0] + 1) = v276;
      v271[1] = v277;
      v272 = v278;
      sub_1B1A9EEE0((v271 + 8), v281);
      __swift_destroy_boxed_opaque_existential_0(v274);
      v282 = v213;
      v223 = *(v213 + 16);
      v222 = *(v213 + 24);
      if (v223 >= v222 >> 1)
      {
        v233 = OUTLINED_FUNCTION_19_1(v222);
        sub_1B1AE5B70(v233, v223 + 1, 1);
        v213 = v282;
      }

      *(v213 + 16) = v223 + 1;
      OUTLINED_FUNCTION_18_3((v213 + 48 * v223), v280, v281[0], v281[1]);
      v225 = v218 << v224;
      if (v214 >= v218 << v224)
      {
        goto LABEL_192;
      }

      v226 = *(v270 + 8 * v109);
      if ((v226 & v219) == 0)
      {
        goto LABEL_193;
      }

      if (*(v211 + 36) != v216)
      {
        goto LABEL_194;
      }

      v227 = v226 & (-2 << (v214 & 0x3F));
      if (v227)
      {
        v225 = __clz(__rbit64(v227)) | v214 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v228 = v109 << 6;
        v229 = v109 + 1;
        v230 = (v211 + 72 + 8 * v109);
        while (v229 < (v225 + 63) >> 6)
        {
          v232 = *v230++;
          v231 = v232;
          v228 += 64;
          ++v229;
          if (v232)
          {
            sub_1B1B1A544(v214, v216, v110 & 1);
            v218 = 1;
            v225 = __clz(__rbit64(v231)) + v228;
            goto LABEL_160;
          }
        }

        sub_1B1B1A544(v214, v216, v110 & 1);
        v218 = 1;
      }

LABEL_160:
      v110 = 0;
      v3 = (v3 + 1);
      v214 = v225;
      v216 = v268;
      if (v3 == v269)
      {

        return sub_1B1ADFBB4(v213);
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    v251 = qword_1ED9A8D90;
    v89 = v110;
    if (v251 != -1)
    {
      swift_once();
    }

    v252 = qword_1ED9A8D98;
    v253 = sub_1B1C2D248();

    v117 = 23900;
    if ((v253 & 1) == 0)
    {
      v117 = 0;
    }

LABEL_90:
    v281[0].n128_u64[1] = MEMORY[0x1E69E6530];
    v280.n128_u64[0] = v117;
    v134 = OUTLINED_FUNCTION_10_7();
    sub_1B1AE3710(v134, 15);
  }

  v213 = MEMORY[0x1E69E7CC0];
  return sub_1B1ADFBB4(v213);
}

uint64_t sub_1B1AE25E8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v3;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v7 = (*((*v2 & *v0) + 0x90))();
    if (qword_1ED9A97D8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A9830;
    v9 = sub_1B1C2D248();

    if (v9)
    {
      v10 = (*((*v2 & *v1) + 0x78))();
      if (qword_1ED9A98A8 != -1)
      {
        swift_once();
      }

      v11 = qword_1ED9A98B0;
      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      v12 = v11;
      v13 = sub_1B1C2D248();

      if ((v13 & 1) == 0)
      {
        v20 = v6;

        v17 = 0x746361706D6F4320;
        v18 = 0xE800000000000000;
        goto LABEL_16;
      }
    }

    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v14 = (*((*v2 & *v1) + 0x78))();
    if (qword_1ED9A9978 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED9A9980;
    v16 = sub_1B1C2D248();

    if (v16)
    {
      v20 = v6;

      v17 = 0x6972695320;
      v18 = 0xE500000000000000;
LABEL_16:
      MEMORY[0x1B27381B0](v17, v18);

      return v20;
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_1B1AE28F8()
{
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  result = sub_1B1ABAA54();
  qword_1ED9A9830 = result;
  return result;
}

unint64_t sub_1B1AE2950()
{
  v1 = sub_1B1ABA5F0();
  v2 = qword_1ED9A9978;
  v3 = v1;
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

  v4 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v5 = v4;
  v6 = sub_1B1C2D248();

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = qword_1ED9A98D0;
  v8 = v3;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
  }

  v9 = qword_1ED9A98D8;
  v10 = sub_1B1C2D248();

  if (v10)
  {
LABEL_7:

    v11 = 0x80000001B1C4B5A0;
    v12 = type metadata accessor for TTSAsset();
    sub_1B1AB888C();
    v13 = sub_1B1C2CBE8();

    sub_1B1B19BF8(v13);
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v14 = sub_1B1AB8A9C();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v15 = OUTLINED_FUNCTION_74_0(qword_1ED9A9830);

    if (v15)
    {
      v16 = 0x746361706D6F632ELL;
    }

    else
    {
      v16 = 0x6D75696D6572702ELL;
    }

    v17 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v20 = qword_1ED9A9850;
  v21 = v8;
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1ED9A9850);
  }

  v12 = qword_1ED9A97E0;
  v13 = sub_1B1C2D248();

  if (v13)
  {

    v11 = 0x80000001B1C4B570;
    sub_1B1AB888C();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    v22 = sub_1B1AB8A9C();
    v23 = qword_1ED9A97D8;
    v24 = v22;
    if (v23 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v17 = 0xD000000000000021;
    v25 = qword_1ED9A9830;
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v26 = v25;
    v27 = sub_1B1C2D248();

    if (v27)
    {
      v16 = 0x746361706D6F632ELL;
LABEL_34:

LABEL_13:
      v18 = 0xE800000000000000;
      goto LABEL_14;
    }

    v34 = qword_1ED9A9100;
    v24 = v24;
    if (v34 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
    }

    v16 = 0x6D75696D6572702ELL;
    v35 = qword_1ED9A90A8;
    v36 = sub_1B1C2D248();

    if (v36)
    {
      goto LABEL_34;
    }

    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
    }

    v41 = qword_1ED9A9598;
    v42 = sub_1B1C2D248();

    v31 = (v42 & 1) == 0;
    v32 = 0xE800000000000000;
    v33 = 0xEC00000068676968;
  }

  else
  {
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
    }

    v12 = qword_1ED9A98B0;
    v28 = sub_1B1C2D248();

    if ((v28 & 1) == 0)
    {
      v37 = sub_1B1ABA5F0();
      v38 = [v37 string];

      v39 = sub_1B1C2CB58();
      v12 = v40;

      v43 = v39;
      v44 = v12;

      MEMORY[0x1B27381B0](46, 0xE100000000000000);

      v17 = v39;
      v11 = v12;
      sub_1B1AB888C();
      OUTLINED_FUNCTION_58();

      sub_1B1AB9288();

      if (v45)
      {
        OUTLINED_FUNCTION_16_12();
        if (swift_dynamicCast())
        {
          MEMORY[0x1B27381B0]();

          v16 = 46;
          v18 = 0xE100000000000000;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B1A90C20(&v43, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v16 = 0;
      v18 = 0xE000000000000000;
      goto LABEL_14;
    }

    v11 = 0x80000001B1C4B570;
    sub_1B1AB888C();
    sub_1B1C2CBE8();
    OUTLINED_FUNCTION_58();

    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v29 = sub_1B1AB8A9C();
    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v17 = 0xD000000000000021;
    v30 = OUTLINED_FUNCTION_74_0(qword_1ED9A9830);

    v31 = (v30 & 1) == 0;
    if (v30)
    {
      v16 = 0x746361706D6F632ELL;
    }

    else
    {
      v16 = 0;
    }

    v32 = 0xE000000000000000;
    v33 = 0xE800000000000000;
  }

  if (v31)
  {
    v18 = v32;
  }

  else
  {
    v18 = v33;
  }

LABEL_14:
  v43 = v17;
  v44 = v11;

  MEMORY[0x1B27381B0](v13, v12);

  MEMORY[0x1B27381B0](v16, v18);

  return v43;
}

void *sub_1B1AE2FB0()
{
  result = sub_1B1C2CAB8();
  off_1EB7621D0 = result;
  return result;
}

uint64_t sub_1B1AE2FEC()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (v3)
  {
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    OUTLINED_FUNCTION_16_12();
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B1A90C20(v2, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }
}

unint64_t sub_1B1AE309C()
{
  result = qword_1EB7621E8;
  if (!qword_1EB7621E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7621E8);
  }

  return result;
}

unint64_t sub_1B1AE30F4()
{
  result = qword_1EB7621D8;
  if (!qword_1EB7621D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7621D8);
  }

  return result;
}

unint64_t sub_1B1AE3168(char a1)
{
  result = 0x6D754E6563696F56;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D614E6563696F56;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D614E6563696F56;
      break;
    case 5:
      result = 0x6564496563696F56;
      break;
    case 6:
      result = 0x6567416563696F56;
      break;
    case 7:
      result = 0x6E65476563696F56;
      break;
    case 8:
      result = 0x6D65446563696F56;
      break;
    case 9:
      result = 0x6E614C6563696F56;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7265566563696F56;
      break;
    case 12:
      result = 0x7263536563696F56;
      break;
    case 13:
      result = 0x6F72476563696F56;
      break;
    case 14:
      result = 0x7079546563696F56;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x7369446563696F56;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

void sub_1B1AE3480()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_1B1C2C338();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = sub_1B1C2CBC8();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  sub_1B1C2CBA8();
  sub_1B1C2CB68();
  v15 = v14;

  (*(v9 + 8))(v13, v7);
  if (v15 >> 60 != 15)
  {
    v16 = OUTLINED_FUNCTION_33();
    if (MEMORY[0x1B27377C0](v16) == 4)
    {
      v19 = OUTLINED_FUNCTION_33();
      sub_1B1AA64DC(v19, v20);
      OUTLINED_FUNCTION_33();
      sub_1B1C2C348();
      sub_1B1AE36B8();
      for (i = 0; ; i = v24 | (i << 8))
      {
        sub_1B1C2D358();
        if (v25)
        {
          break;
        }
      }

      v22 = OUTLINED_FUNCTION_33();
      sub_1B1AA9670(v22, v23);
      (*(v2 + 8))(v6, v0);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_33();
      sub_1B1AA9670(v17, v18);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

unint64_t sub_1B1AE36B8()
{
  result = qword_1ED9A94D0;
  if (!qword_1ED9A94D0)
  {
    sub_1B1C2C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A94D0);
  }

  return result;
}

void sub_1B1AE3710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1B1A9EEE0(a1, v23);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_8();
    sub_1B1AE3834(v5, a2, v6, v7, v8, v9, v10, v11, v20, v21);
    *v2 = v22;
  }

  else
  {
    sub_1B1A90C78(a1, &qword_1EB761DE0, &qword_1B1C352C0);
    v12 = *v2;
    OUTLINED_FUNCTION_3_12();
    sub_1B1AC9E94(a2, v13, sub_1B1AE398C);
    if (v14)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
      v16 = OUTLINED_FUNCTION_48_5(v15);
      OUTLINED_FUNCTION_46_3(v16, v17, v18, v19);
      sub_1B1AE309C();
      OUTLINED_FUNCTION_36();
      sub_1B1C2D648();
      *v3 = v12;
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    sub_1B1A90C78(v23, &qword_1EB761DE0, &qword_1B1C352C0);
  }
}

void sub_1B1AE3834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  v12 = v11;
  OUTLINED_FUNCTION_3_12();
  sub_1B1AC9E94(v12, v13, sub_1B1AE398C);
  OUTLINED_FUNCTION_1_14();
  if (v16)
  {
    __break(1u);
LABEL_14:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762500, &unk_1B1C380A8);
  if (OUTLINED_FUNCTION_17_8(v19))
  {
    OUTLINED_FUNCTION_3_12();
    sub_1B1AC9E94(v12, v20, sub_1B1AE398C);
    OUTLINED_FUNCTION_23_7();
    if (!v22)
    {
      goto LABEL_14;
    }

    v17 = v21;
  }

  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v10 + 56) + 32 * v17));
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_34_3();

    sub_1B1A9EEE0(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_34_3();

    sub_1B1AE4024(v26, v27, v28, v29);
  }
}

unint64_t sub_1B1AE398C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00444963697265;
      v8 = 0x6D754E6563696F56;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0x6D614E6563696F56;
          goto LABEL_12;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x80000001B1C41E30;
          break;
        case 4:
          v8 = 0x6D614E6563696F56;
          v9 = 1869566565;
          goto LABEL_24;
        case 5:
          v8 = 0x6564496563696F56;
          v7 = 0xEF7265696669746ELL;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x6567416563696F56;
          break;
        case 7:
          v8 = 0x6E65476563696F56;
          v7 = 0xEB00000000726564;
          break;
        case 8:
          v8 = 0x6D65446563696F56;
          v9 = 2019906671;
LABEL_24:
          v11 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          goto LABEL_27;
        case 9:
          v8 = 0x6E614C6563696F56;
          v10 = 1734440295;
          goto LABEL_26;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B1C41EA0;
          break;
        case 0xB:
          v8 = 0x7265566563696F56;
          v7 = 0xEC0000006E6F6973;
          break;
        case 0xC:
          v8 = 0x7263536563696F56;
          v7 = 0xEF65646F43747069;
          break;
        case 0xD:
          v8 = 0x6F72476563696F56;
          v7 = 0xEA00000000007075;
          break;
        case 0xE:
          v8 = 0x7079546563696F56;
LABEL_12:
          v7 = 0xE900000000000065;
          break;
        case 0xF:
          v8 = 0xD000000000000019;
          v7 = 0x80000001B1C41EF0;
          break;
        case 0x10:
          v8 = 0xD000000000000018;
          v7 = 0x80000001B1C41F10;
          break;
        case 0x11:
          v8 = 0xD000000000000021;
          v7 = 0x80000001B1C41F30;
          break;
        case 0x12:
          v8 = 0xD000000000000011;
          v7 = 0x80000001B1C41F60;
          break;
        case 0x13:
          v8 = 0x7369446563696F56;
          v10 = 2053722987;
LABEL_26:
          v11 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_27:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x14:
          v8 = 0xD000000000000015;
          v7 = 0x80000001B1C41F80;
          break;
        default:
          v8 = 0xD000000000000019;
          v7 = 0x80000001B1C41DF0;
          break;
      }

      v12 = 0x6D754E6563696F56;
      v13 = 0xEE00444963697265;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v12 = 0x6D614E6563696F56;
          goto LABEL_37;
        case 3:
          v12 = 0xD000000000000013;
          v13 = 0x80000001B1C41E30;
          break;
        case 4:
          v12 = 0x6D614E6563696F56;
          v14 = 1869566565;
          goto LABEL_49;
        case 5:
          v12 = 0x6564496563696F56;
          v13 = 0xEF7265696669746ELL;
          break;
        case 6:
          v13 = 0xE800000000000000;
          v12 = 0x6567416563696F56;
          break;
        case 7:
          v12 = 0x6E65476563696F56;
          v13 = 0xEB00000000726564;
          break;
        case 8:
          v12 = 0x6D65446563696F56;
          v14 = 2019906671;
LABEL_49:
          v16 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          goto LABEL_52;
        case 9:
          v12 = 0x6E614C6563696F56;
          v15 = 1734440295;
          goto LABEL_51;
        case 10:
          v12 = 0xD000000000000015;
          v13 = 0x80000001B1C41EA0;
          break;
        case 11:
          v12 = 0x7265566563696F56;
          v13 = 0xEC0000006E6F6973;
          break;
        case 12:
          v12 = 0x7263536563696F56;
          v13 = 0xEF65646F43747069;
          break;
        case 13:
          v12 = 0x6F72476563696F56;
          v13 = 0xEA00000000007075;
          break;
        case 14:
          v12 = 0x7079546563696F56;
LABEL_37:
          v13 = 0xE900000000000065;
          break;
        case 15:
          v12 = 0xD000000000000019;
          v13 = 0x80000001B1C41EF0;
          break;
        case 16:
          v12 = 0xD000000000000018;
          v13 = 0x80000001B1C41F10;
          break;
        case 17:
          v12 = 0xD000000000000021;
          v13 = 0x80000001B1C41F30;
          break;
        case 18:
          v12 = 0xD000000000000011;
          v13 = 0x80000001B1C41F60;
          break;
        case 19:
          v12 = 0x7369446563696F56;
          v15 = 2053722987;
LABEL_51:
          v16 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_52:
          v13 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 20:
          v12 = 0xD000000000000015;
          v13 = 0x80000001B1C41F80;
          break;
        default:
          v12 = 0xD000000000000019;
          v13 = 0x80000001B1C41DF0;
          break;
      }

      if (v8 == v12 && v7 == v13)
      {
        break;
      }

      v18 = sub_1B1C2D7A8();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1B1AE4024(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4);
  *(v7 + v5) = v6;
  sub_1B1A9EEE0(v9, (*(v8 + 56) + 32 * v5));
  OUTLINED_FUNCTION_38_2();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

unint64_t sub_1B1AE406C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = sub_1B1B276E0(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2CD58();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = sub_1B1C2D578();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = sub_1B1B276E0(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = sub_1B1C2CD28();
LABEL_24:
    a1 = 33 * a1 + v12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_1B1AE41F0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54();
  qword_1ED9A9818 = result;
  return result;
}

id sub_1B1AE424C()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54();
  qword_1ED9A97C0 = result;
  return result;
}

id sub_1B1AE42A0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54();
  qword_1ED9A5288 = result;
  return result;
}

id sub_1B1AE42FC()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  result = sub_1B1ABAA54();
  qword_1ED9A9898 = result;
  return result;
}

id sub_1B1AE4354()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  OUTLINED_FUNCTION_2_18();
  result = sub_1B1ABAA54();
  qword_1ED9A9710 = result;
  return result;
}

id sub_1B1AE43A0()
{
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  OUTLINED_FUNCTION_2_18();
  result = sub_1B1ABAA54();
  qword_1ED9A9828 = result;
  return result;
}

uint64_t sub_1B1AE43E8()
{
  result = sub_1B1C2CAB8();
  qword_1EB772D40 = result;
  return result;
}

uint64_t sub_1B1AE4424(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1AE449C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1C2C1C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  if (qword_1ED9A9588 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1AE46F4(a1, a2, 0x7473696C70, 0xE500000000000000, 0xD000000000000013, 0x80000001B1C4A5D0, qword_1ED9AA640);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  sub_1B1C2C168();

  v13 = (*(v5 + 32))(v10, v8, v4);
  if (qword_1EB7614C0 != -1)
  {
    v13 = swift_once();
  }

  v14 = qword_1EB7621C8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  *(&v20 - 2) = v10;
  MEMORY[0x1EEE9AC00](v15);
  *(&v20 - 2) = sub_1B1B1A550;
  *(&v20 - 1) = v16;
  os_unfair_lock_lock(v14 + 4);
  sub_1B1B1A56C(&v21, v17);
  os_unfair_lock_unlock(v14 + 4);
  v18 = v21;
  (*(v5 + 8))(v10, v4);
  return v18;
}

id sub_1B1AE46F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1B1C2CB28();
  v9 = sub_1B1C2CB28();

  v10 = sub_1B1C2CB28();

  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

uint64_t sub_1B1AE47A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762200, &unk_1B1C41080);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB7621C8 = result;
  return result;
}

xpc_object_t sub_1B1AE4830(uint64_t a1)
{
  sub_1B1A93378(a1, v111);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
  if (OUTLINED_FUNCTION_0_28(v2, v3, v4, v2, v5, v6, v7, v8, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1)))
  {
    empty = value[0];
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v111);
    return empty;
  }

  v12 = OUTLINED_FUNCTION_1_31(&v105, v9, v10, MEMORY[0x1E69E6530]);
  if (v12)
  {
    v19 = v105;
    sub_1B1A93378(a1, value);
    sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v20 = v102;
      v21 = sub_1B1C2D218();

      if (v20 == v21 || (v22 = v20, v23 = sub_1B1C2D218(), v23, v22, v22 == v23))
      {
        empty = xpc_BOOL_create(v19 != 0);

        goto LABEL_18;
      }
    }

    v24 = v19;
    goto LABEL_16;
  }

  v25 = OUTLINED_FUNCTION_0_28(v12, v13, v14, MEMORY[0x1E69E72F0], v15, v16, v17, v18, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v25)
  {
    v24 = SLODWORD(value[0]);
LABEL_16:
    v46 = xpc_int64_create(v24);
LABEL_17:
    empty = v46;
    goto LABEL_18;
  }

  v32 = OUTLINED_FUNCTION_0_28(v25, v26, v27, MEMORY[0x1E69E7290], v28, v29, v30, v31, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v32)
  {
    v24 = SLOWORD(value[0]);
    goto LABEL_16;
  }

  v39 = OUTLINED_FUNCTION_0_28(v32, v33, v34, MEMORY[0x1E69E7230], v35, v36, v37, v38, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v39)
  {
    v24 = SLOBYTE(value[0]);
    goto LABEL_16;
  }

  v48 = OUTLINED_FUNCTION_0_28(v39, v40, v41, MEMORY[0x1E69E7668], v42, v43, v44, v45, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v48)
  {
    v46 = xpc_uint64_create(LODWORD(value[0]));
    goto LABEL_17;
  }

  v55 = OUTLINED_FUNCTION_0_28(v48, v49, v50, MEMORY[0x1E69E63B0], v51, v52, v53, v54, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v55)
  {
    v62 = *value;
LABEL_25:
    v46 = xpc_double_create(v62);
    goto LABEL_17;
  }

  v63 = OUTLINED_FUNCTION_0_28(v55, v56, v57, MEMORY[0x1E69E6448], v58, v59, v60, v61, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v63)
  {
    v62 = *value;
    goto LABEL_25;
  }

  v70 = OUTLINED_FUNCTION_0_28(v63, v64, v65, MEMORY[0x1E69E6370], v66, v67, v68, v69, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1));
  if (v70)
  {
    v46 = xpc_BOOL_create(value[0]);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_28(v70, v71, v72, MEMORY[0x1E69E6158], v73, v74, v75, v76, v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1)))
  {
    v77 = sub_1B1C2CBF8();

    empty = xpc_string_create((v77 + 32));
LABEL_30:

    goto LABEL_18;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762970, &qword_1B1C39E88);
  if (OUTLINED_FUNCTION_1_31(&v105, v79, v80, v78))
  {
    v81 = v105;
    empty = xpc_array_create_empty();
    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = v81 + 32;
      do
      {
        sub_1B1A93378(v83, value);
        v84 = sub_1B1AE4830(value);
        __swift_destroy_boxed_opaque_existential_0(value);
        xpc_array_append_value(empty, v84);
        swift_unknownObjectRelease();
        v83 += 32;
        --v82;
      }

      while (v82);
    }

    goto LABEL_18;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if (!OUTLINED_FUNCTION_1_31(&v110, v86, v87, v85))
  {
    v46 = xpc_null_create();
    goto LABEL_17;
  }

  v88 = v110;
  result = xpc_dictionary_create_empty();
  empty = result;
  v89 = 0;
  v90 = 1 << *(v88 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v88 + 64);
  for (i = (v90 + 63) >> 6; v92; result = )
  {
    v94 = v89;
LABEL_45:
    v95 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v96 = v95 | (v94 << 6);
    v97 = (*(v88 + 48) + 16 * v96);
    v99 = *v97;
    v98 = v97[1];
    sub_1B1A93378(*(v88 + 56) + 32 * v96, &v102);
    *&v105 = v99;
    *(&v105 + 1) = v98;
    sub_1B1A9EEE0(&v102, &v106);

LABEL_46:
    *value = v105;
    v109[0] = v106;
    v109[1] = v107;
    if (!*(&v105 + 1))
    {
      goto LABEL_30;
    }

    sub_1B1A9EEE0(v109, &v105);
    v100 = sub_1B1AE4830(&v105);
    v101 = sub_1B1C2CBF8();

    xpc_dictionary_set_value(empty, (v101 + 32), v100);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v105);
  }

  while (1)
  {
    v94 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v94 >= i)
    {
      v92 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      goto LABEL_46;
    }

    v92 = *(v88 + 64 + 8 * v94);
    ++v89;
    if (v92)
    {
      v89 = v94;
      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AE4C84(uint64_t a1, void *a2)
{
  sub_1B1AE53F8(a1);
  v4 = sub_1B1C2CBF8();

  xpc_dictionary_set_value(v2, (v4 + 32), a2);
}

uint64_t static TTSAsset.handleProxy(event:reply:connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = sub_1B1B77444();
  v5 = v4;
  if (v4 == 2)
  {
    return v5 != 2;
  }

  if (v4)
  {
    v68 = 0u;
    v69 = 0u;
    xpc_connection_get_audit_token();
    sub_1B1B35F60(0, 0, 0, 0);
    v7 = v6;
    swift_getObjectType();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *&v64 = v7;
    v8 = sub_1B1AE4830(&v64);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    sub_1B1AE4C84(7, v8);
    swift_unknownObjectRelease();
    return v5 != 2;
  }

  v61 = v4;
  v9 = sub_1B1B77470(1, ObjectType);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v10 = v9;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B1A93378(v12, &v68);
      sub_1B1A9EEE0(&v68, &v64);
      if (swift_dynamicCast())
      {
        v14 = v67;
        if (v67)
        {
          v15 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B1A9ED54();
            v13 = v19;
          }

          v17 = v13[2];
          v16 = v13[3];
          if (v17 >= v16 >> 1)
          {
            OUTLINED_FUNCTION_19_1(v16);
            sub_1B1A9ED54();
            v13 = v20;
          }

          v13[2] = v17 + 1;
          v18 = &v13[2 * v17];
          v18[4] = v15;
          v18[5] = v14;
        }
      }

      v12 += 32;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v21 = v13[2];
  if (v21)
  {
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v22 = v13 + 5;
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      sub_1B1AAFB2C(v23, v24);
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
      v22 += 2;
      --v21;
    }

    while (v21);

    value = v68;
  }

  else
  {

    value = MEMORY[0x1E69E7CC0];
  }

  *&v64 = MEMORY[0x1E69E7CC8];
  v26 = sub_1B1AE03A8(2);
  if (!v26)
  {
LABEL_44:
    if (qword_1EB761310 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  v27 = v26;
  count = xpc_array_get_count(v26);
  if (count < 1)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v29 = count;
  v60 = value;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC8];
  v62 = count;
  v63 = v27;
  while (1)
  {
    v32 = v30;
    if (__OFADD__(v30, 2))
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 += 2;
    }

    v33 = xpc_array_get_value(v27, v32);
    xpc_array_get_value(v27, v32 + 1);
    v34 = MEMORY[0x1B273A270](v33);
    if (v34 != sub_1B1C2C8E8())
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    value = xpc_int64_get_value(v33);
    swift_getObjectType();
    sub_1B1AE5508(&v68);
    swift_isUniquelyReferenced_nonNull_native();
    v66 = v31;
    v35 = sub_1B1AB2878(value);
    if (__OFADD__(v31[2], (v36 & 1) == 0))
    {
      break;
    }

    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
    if (sub_1B1C2D628())
    {
      sub_1B1AB2878(value);
      OUTLINED_FUNCTION_6_10();
      if (!v40)
      {
        *&v64 = v31;
        type metadata accessor for TTSAssetProperty(0);
        result = sub_1B1C2D818();
        __break(1u);
        return result;
      }

      v37 = v39;
    }

    v31 = v66;
    if (v38)
    {
      v41 = (v66[7] + 32 * v37);
      __swift_destroy_boxed_opaque_existential_0(v41);
      sub_1B1A9EEE0(&v68, v41);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v66[(v37 >> 6) + 8] |= 1 << v37;
      *(v31[6] + 8 * v37) = value;
      sub_1B1A9EEE0(&v68, (v31[7] + 32 * v37));
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v42 = v31[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_59;
      }

      v31[2] = v44;
    }

    v29 = v62;
    v27 = v63;
LABEL_41:
    if (v30 >= v29)
    {
      *&v64 = v31;
      value = v60;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_45:
  v45 = qword_1EB761318;
  *(&v69 + 1) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *&v68 = v45;
  v46 = v45;
  sub_1B1AB51D0(&v68, 7);
  type metadata accessor for TTSAsset();
  v47 = static TTSAsset.listAssets(ofTypes:matching:)(value, v64);

  v48 = sub_1B1A9547C();
  if (v48)
  {
    v49 = v48;
    *&v68 = MEMORY[0x1E69E7CC0];
    sub_1B1AE06E4(0, v48 & ~(v48 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
    }

    v50 = 0;
    v51 = v68;
    do
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1B2738A20](v50, v47);
      }

      else
      {
        v52 = *(v47 + 8 * v50 + 32);
      }

      v53 = v52;
      v54 = sub_1B1AE0704();

      *&v68 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        v57 = OUTLINED_FUNCTION_19_1(v55);
        sub_1B1AE06E4(v57, v56 + 1, 1);
        v51 = v68;
      }

      ++v50;
      *(v51 + 16) = v56 + 1;
      *(v51 + 8 * v56 + 32) = v54;
    }

    while (v49 != v50);
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  swift_getObjectType();
  *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F0, &qword_1B1C38030);
  *&v68 = v51;
  v58 = sub_1B1AE4830(&v68);
  __swift_destroy_boxed_opaque_existential_0(&v68);
  sub_1B1AE4C84(3, v58);
  swift_unknownObjectRelease();
  v5 = v61;
  return v5 != 2;
}

uint64_t sub_1B1AE53F8(char a1)
{
  result = 6779757;
  switch(a1)
  {
    case 1:
      result = 0x7365707974;
      break;
    case 2:
      result = 0x7265746C6966;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      result = 0x65696B6F6F63;
      break;
    case 6:
      result = 0x656C646E7562;
      break;
    case 7:
      result = 0x656B6F5468747561;
      break;
    case 8:
      result = 0x7974696C617571;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1B1AE5508(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1B273A270](v1);
  if (sub_1B1C2C8B8() == v3)
  {
    value = xpc_BOOL_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E6370];
    *a1 = value;
    return;
  }

  if (sub_1B1C2C8E8() == v3)
  {
    v6 = xpc_int64_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E6530];
    *a1 = v6;
    return;
  }

  if (sub_1B1C2C918() == v3)
  {
    v7 = xpc_uint64_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E7668];
    if (!HIDWORD(v7))
    {
      *a1 = v7;
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (sub_1B1C2C8F8() == v3)
  {
    v8 = xpc_double_get_value(v1);
    *(a1 + 24) = MEMORY[0x1E69E63B0];
    *a1 = v8;
    return;
  }

  if (sub_1B1C2C908() != v3)
  {
    if (sub_1B1C2C8C8() != v3)
    {
      if (sub_1B1C2C928() != v3)
      {
        v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        *(a1 + 24) = sub_1B1A8E474(0, &qword_1EB762968, 0x1E695DFB0);
        *a1 = v4;
        return;
      }

      v28 = MEMORY[0x1E69E7CC8];
      v18 = swift_allocObject();
      *(v18 + 16) = &v28;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1B1AE5F24;
      *(v19 + 24) = v18;
      v26 = sub_1B1AE5F2C;
      v27 = v19;
      OUTLINED_FUNCTION_2_28();
      v23 = 1107296256;
      v24 = sub_1B1AE0294;
      v25 = &block_descriptor_20;
      v20 = _Block_copy(aBlock);

      xpc_dictionary_apply(v1, v20);
      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v15 = v28;
        v16 = &qword_1EB761C30;
        v17 = &unk_1B1C38180;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    v28 = MEMORY[0x1E69E7CC0];
    v11 = swift_allocObject();
    *(v11 + 16) = &v28;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1B1AE5A34;
    *(v12 + 24) = v11;
    v26 = sub_1B1AE598C;
    v27 = v12;
    OUTLINED_FUNCTION_2_28();
    v23 = 1107296256;
    v24 = sub_1B1AE5908;
    v25 = &block_descriptor_12_1;
    v13 = _Block_copy(aBlock);

    xpc_array_apply(v1, v13);
    _Block_release(v13);
    v14 = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v15 = v28;
      v16 = &unk_1EB762970;
      v17 = &unk_1B1C39E88;
LABEL_21:
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);

      *a1 = v15;
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (xpc_string_get_string_ptr(v1))
  {
    v9 = MEMORY[0x1B27380E0]();
    *(a1 + 24) = MEMORY[0x1E69E6158];
    if (v10)
    {
      *a1 = v9;
      *(a1 + 8) = v10;
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E6158];
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
}

uint64_t sub_1B1AE5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_1B1AE59C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B1AE5508(v7);
  sub_1B1AE5A3C();
  v4 = *(*a3 + 16);
  sub_1B1AE5B24(v4);
  v5 = *a3;
  *(v5 + 16) = v4 + 1;
  sub_1B1A9EEE0(v7, (v5 + 32 * v4 + 32));
  return 1;
}

void sub_1B1AE5A54()
{
  OUTLINED_FUNCTION_21_1();
  if (v4)
  {
    OUTLINED_FUNCTION_3_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_20();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7642A0, &qword_1B1C35DF0);
    v7 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_13_3(v7);
    OUTLINED_FUNCTION_9(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_1B1C2CB28();
}

void *sub_1B1AE5B70(void *a1, int64_t a2, char a3)
{
  result = sub_1B1ADF9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AE5B90()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (!v1)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    OUTLINED_FUNCTION_107();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v0;
      v8 = sub_1B1C2D0A8();
      if (qword_1ED9A99B8 != -1)
      {
        OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
      }

      v9 = qword_1ED9AA668;
      if (!os_log_type_enabled(qword_1ED9AA668, v8))
      {
        goto LABEL_15;
      }

      v10 = OUTLINED_FUNCTION_21_0();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v12 = v6 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
      v13 = *(v6 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
      v14 = *(v12 + 8);

      v15 = sub_1B1A930E4(v13, v14, v23);

      *(v10 + 4) = v15;
      v16 = "Unable to get bundle path for factor identifier %s";
    }

    else
    {
      type metadata accessor for TTSAssetTrialAsset();
      OUTLINED_FUNCTION_107();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
        return OUTLINED_FUNCTION_92();
      }

      v7 = v0;
      v8 = sub_1B1C2D0A8();
      if (qword_1ED9A99B8 != -1)
      {
        OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
      }

      v9 = qword_1ED9AA668;
      if (!os_log_type_enabled(qword_1ED9AA668, v8))
      {
        goto LABEL_15;
      }

      v10 = OUTLINED_FUNCTION_21_0();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v18 = v17 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName;
      v19 = *(v17 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName);
      v20 = *(v18 + 8);

      v21 = sub_1B1A930E4(v19, v20, v23);

      *(v10 + 4) = v21;
      v16 = "Unable to get bundle path for factor name %s";
    }

    _os_log_impl(&dword_1B1A8A000, v9, v8, v16, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
LABEL_15:

    return OUTLINED_FUNCTION_92();
  }

  v2 = v1;
  v3 = [v1 bundlePath];

  sub_1B1C2CB58();
  if (sub_1B1C2CDA8())
  {
    v23[0] = 0x657461766972702FLL;
    v23[1] = 0xE800000000000000;
    v4 = OUTLINED_FUNCTION_92();
    MEMORY[0x1B27381B0](v4);
  }

  return OUTLINED_FUNCTION_92();
}

uint64_t sub_1B1AE5E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(type metadata accessor for TTSAssetProxyAsset());
  v5 = swift_unknownObjectRetain();
  sub_1B1ADFFD8(v5);
  MEMORY[0x1B2738320]();
  sub_1B1B3E0D4(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  return 1;
}

uint64_t sub_1B1AE5F58()
{
  v0 = MEMORY[0x1B27380E0]();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  sub_1B1AE5508(v5);
  sub_1B1A9EE20(v5, v2, v3);
  return 1;
}

unint64_t sub_1B1AE5FC0()
{
  result = qword_1ED9A4F20;
  if (!qword_1ED9A4F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A4F20);
  }

  return result;
}

id sub_1B1AE6004(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1C2CB28();

  v3 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingAtPath_];

  return v3;
}

uint64_t sub_1B1AE6068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTSStringEnum.hash.getter()
{
  v1 = [v0 string];
  sub_1B1C2CB58();

  sub_1B1A8EDAC();
  v2 = sub_1B1C2D3B8();

  return v2;
}

uint64_t sub_1B1AE615C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED9A92A8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v3 = qword_1ED9AA608;
    v32 = sub_1B1AE4CEC;
    v33 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_4_11();
    aBlock[2] = v4;
    v31 = &block_descriptor_10;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v3, v5);
    _Block_release(v5);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      break;
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    v7 = sub_1B1A9547C();
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = 0;
      v28 = v8;
      v29 = MEMORY[0x1E69E7CC0];
      v27 = *(&unk_1F28BA5A8 + v9 + 32);
      if (v27)
      {
        v11 = 0x656372756F736572;
      }

      else
      {
        v11 = 0x6563696F76;
      }

      if (*(&unk_1F28BA5A8 + v9 + 32))
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      while (v7 != v10)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B2738A20](v10, a1);
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v13 = *(a1 + 8 * v10 + 32);
        }

        v14 = v13;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          sub_1B1A9937C(aBlock);
          return a1;
        }

        sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
        if (qword_1ED9A9960 != -1)
        {
          swift_once();
        }

        v15 = qword_1ED9A9968;
        v16 = sub_1B1C2D248();

        if (v16)
        {
          v17 = 0x656372756F736572;
        }

        else
        {
          v17 = 0x6563696F76;
        }

        if (v16)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        if (v17 == v11 && v18 == v12)
        {
        }

        else
        {
          v20 = sub_1B1C2D7A8();

          if ((v20 & 1) == 0)
          {

            goto LABEL_31;
          }
        }

        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
LABEL_31:
        ++v10;
      }

      if (sub_1B1A9547C())
      {
        v21 = sub_1B1AE6688(v27, v29, a2);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      sub_1B1AB4AD0(v21);
      v8 = 1;
      v9 = 1u;
    }

    while ((v28 & 1) == 0);
    a1 = aBlock[0];
    sub_1B1AA0AEC(5, a2);
    if (!v31)
    {
      goto LABEL_52;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return a1;
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    v22 = sub_1B1A9547C();
    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {

        return aBlock[0];
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B2738A20](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v24 = *(a1 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v29 == [v24 locallyAvailable])
      {
        sub_1B1C2D588();
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_5_14(&qword_1ED9A92A8);
  }

  __break(1u);
  return result;
}

void sub_1B1AE65E4()
{
  if (byte_1EB772D30 == 1)
  {
    v0 = sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    sub_1B1C2C7C8(v0, &dword_1B1A8A000, qword_1ED9AA668, "Refreshing stale trial client", 29, 2, MEMORY[0x1E69E7CC0]);
    type metadata accessor for TTSAssetTrialStrategy();
    sub_1B1B3BD20();
    byte_1EB772D30 = 0;
  }
}

uint64_t sub_1B1AE6688(char a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  LOBYTE(v4) = a1;
  if (qword_1ED9A92B0 != -1)
  {
LABEL_57:
    OUTLINED_FUNCTION_1_1(&qword_1ED9A92B0);
  }

  v5 = qword_1ED9AA610;
  v6 = OUTLINED_FUNCTION_11_6();
  v7 = [v5 rolloutIdentifiersWithNamespaceName_];

  v8 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  v9 = qword_1ED9AA670;
  v10 = os_log_type_enabled(qword_1ED9AA670, v8);
  v47 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v11 = 136315650;
    if (v4)
    {
      v12 = 0x656372756F736572;
    }

    else
    {
      v12 = 0x6563696F76;
    }

    if (v4)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_1B1A930E4(v12, v13, v53);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v16 = MEMORY[0x1B2738350](v49, v15);
    v18 = sub_1B1A930E4(v16, v17, v53);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2082;
    v19 = sub_1B1AB5454(a3);
    v21 = sub_1B1A930E4(v19, v20, v53);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1B1A8A000, v9, v8, "#Trial listing assets for class '%s', types: '%{public}s', filter: '%{public}s'", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    v7 = v47;
    OUTLINED_FUNCTION_11();
  }

  if (!v7)
  {
    sub_1B1AA0AEC(5, a3);
    if (v53[3])
    {
      if (swift_dynamicCast() & 1) != 0 && (v52)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B1A9937C(v53);
    }

    if (byte_1EB761498 == 1)
    {
      sub_1B1B3C0BC();
    }
  }

LABEL_20:
  if (qword_1ED9A9298 != -1)
  {
    OUTLINED_FUNCTION_6_12(&qword_1ED9A9298);
  }

  v22 = qword_1ED9AA620;
  v23 = *(a3 + 16);

  if (v23)
  {
    sub_1B1AEFDC8(a3, v4 & 1, v22);
  }

  else
  {
    sub_1B1B3C9E0(v4 & 1, v22);
  }

  v25 = v24;

  v26 = v25 & 0xC000000000000001;
  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  if ((v4 & 1) == 0)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v53[0] = MEMORY[0x1E69E7CC0];
    v34 = sub_1B1A9547C();
    v50 = v25;
    v51 = v34;
    v35 = 0;
    a3 = 0;
    while (1)
    {
      if (v51 == v35)
      {
        goto LABEL_52;
      }

      if (v26)
      {
        v36 = MEMORY[0x1B2738A20](v35, v25);
      }

      else
      {
        if (v35 >= *(v27 + 16))
        {
          goto LABEL_56;
        }

        v36 = *(v25 + 8 * v35 + 32);
      }

      v4 = v36;
      if (__OFADD__(v35, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v37 = v27;
      v38 = v26;
      v39 = objc_allocWithZone(type metadata accessor for TTSAssetTrialVoiceAsset());
      v40 = v4;
      LOBYTE(v4) = v39;
      v41 = sub_1B1AEBBA0(v40);
      if (!v41)
      {
        goto LABEL_46;
      }

      v42 = v41;
      sub_1B1AE7964();
      v4 = v43;
      v52 = v43;
      MEMORY[0x1EEE9AC00](v43);
      v46[2] = &v52;
      v44 = sub_1B1ABAB9C(sub_1B1ABACC4, v46, v49);

      if ((v44 & 1) == 0)
      {
        break;
      }

      v4 = v53;
      MEMORY[0x1B2738320]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v48 = v53[0];
      ++v35;
LABEL_47:
      v26 = v38;
      v27 = v37;
      v25 = v50;
    }

    v40 = v42;
LABEL_46:

    ++v35;
    goto LABEL_47;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v53[0] = MEMORY[0x1E69E7CC0];
  a3 = sub_1B1A9547C();
  v28 = 0;
  while (a3 != v28)
  {
    if (v26)
    {
      v29 = MEMORY[0x1B2738A20](v28, v25);
    }

    else
    {
      if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v29 = *(v25 + 8 * v28 + 32);
    }

    v4 = v29;
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    v31 = objc_allocWithZone(type metadata accessor for TTSAssetTrialResourceAsset());
    v32 = v31;
    v33 = v4;
    LOBYTE(v4) = v32;
    ++v28;
    if (sub_1B1B2E9AC(v33))
    {
      v4 = v53;
      MEMORY[0x1B2738320]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      sub_1B1C2CEC8();
      v48 = v53[0];
      v28 = v30;
    }
  }

LABEL_52:

  return v48;
}

unint64_t sub_1B1AE6BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1B1C2D248();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B1AE6CC8()
{
  result = qword_1EB761098;
  if (!qword_1EB761098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761098);
  }

  return result;
}

BOOL sub_1B1AE6D1C()
{
  v4 = v0;
  v6 = *v0;
  v5 = v0[1];
  v21[0] = *v0;
  v21[1] = v5;
  sub_1B1A8EDAC();
  v7 = sub_1B1C2D368();

  v4[2] = v7;
  if (v7[2] < 5uLL)
  {
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
LABEL_10:
    v11 = *(v2 + 206);
    if (os_log_type_enabled(v11, v7))
    {

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136315394;
      v14 = sub_1B1A930E4(v6, v5, v21);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v1;
      _os_log_impl(&dword_1B1A8A000, v11, v7, "Factor %s does not have %ld components as expected.", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    return v3 == v1;
  }

  v8 = v7[12];
  v9 = v7[13];
  v10 = v8 == 0x6563696F76 && v9 == 0xE500000000000000;
  v2 = &unk_1ED9AA000;
  if (v10 || (sub_1B1C2D7A8() & 1) != 0)
  {
    v1 = 9;
  }

  else
  {
    v16 = v8 == 0x656372756F736572 && v9 == 0xE800000000000000;
    if (v16 || (sub_1B1C2D7A8() & 1) != 0)
    {
      v1 = 6;
    }

    else
    {
      v17 = sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
      }

      v18 = qword_1ED9AA670;
      if (os_log_type_enabled(qword_1ED9AA670, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1B1A930E4(v6, v5, v21);
        _os_log_impl(&dword_1B1A8A000, v18, v17, "Encountered entirely unexpected factor %s.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      v1 = 5;
    }
  }

  v3 = v7[2];
  if (v3 != v1)
  {
    LOBYTE(v7) = sub_1B1C2D0B8();
    if (qword_1ED9A99C0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  return v3 == v1;
}

void sub_1B1AE6FEC(void *a1)
{
  v3 = v1;
  v5 = [a1 metadata];
  if (v5)
  {
    v6 = v5;
    *&v56 = 0;
    sub_1B1C2CA88();
  }

  v7 = OUTLINED_FUNCTION_55_1();
  if (!v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  v8 = v7;
  v9 = [v7 hasAsset];

  if (v9)
  {

    v10 = OUTLINED_FUNCTION_55_1();
    if (!v10)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = v10;
    v12 = [v10 asset];

    if (!v12)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = [v12 size];

    *(&v57 + 1) = MEMORY[0x1E69E76D8];
    *&v56 = v13;
    sub_1B1AC965C(&v56, 0x64616F6C6E776F44, 0xEC000000657A6953);
  }

  v14 = OUTLINED_FUNCTION_55_1();
  if (!v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v15 = v14;
  v16 = [v14 hasPath];

  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v2 = &unk_1ED9AA000;
  if (!v16)
  {
    goto LABEL_32;
  }

  v18 = sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v19 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v18))
  {
    v2 = a1;
    v20 = swift_slowAlloc();
    *&v56 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = v3;
    *(v20 + 4) = sub_1B1A930E4(*(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), &v56);
    *(v20 + 12) = 2080;
    v22 = [v2 directoryValue];
    if (!v22)
    {
LABEL_45:

      __break(1u);
      goto LABEL_46;
    }

    v23 = sub_1B1AEA2D8(v22, &selRef_path);
    v25 = v24;

    if (!v25)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v26 = sub_1B1A930E4(v23, v25, &v56);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1B1A8A000, v19, v18, "Asset %s path %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
    v3 = v21;
    v2 = &unk_1ED9AA000;
  }

  v27 = OUTLINED_FUNCTION_55_1();
  if (!v27)
  {
    goto LABEL_42;
  }

  sub_1B1AEA2D8(v27, &selRef_path);
  if (!v28)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v29 = sub_1B1AE7720();
  if (!v29)
  {
    v39 = sub_1B1C2D0B8();
    if (!os_log_type_enabled(v19, v39))
    {
      return;
    }

    v2 = a1;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v56 = v41;
    *v40 = 136446210;
    v42 = [v2 directoryValue];
    if (v42)
    {
      v43 = sub_1B1AEA2D8(v42, &selRef_path);
      v45 = v44;

      if (v45)
      {
        v46 = sub_1B1A930E4(v43, v45, &v56);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_1B1A8A000, v19, v39, "Unable to initialize asset bundle from path: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_11();
LABEL_36:
        OUTLINED_FUNCTION_11();
        return;
      }

LABEL_48:
      __break(1u);
      return;
    }

LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  v30 = v29;
  v31 = OUTLINED_FUNCTION_55_1();
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = sub_1B1AEA2D8(v31, &selRef_path);
  v33 = (v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path);
  *v33 = v32;
  v33[1] = v34;

  v35 = sub_1B1AB5B4C(v30);
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  if (!v35)
  {

    v56 = 0u;
    v57 = 0u;
LABEL_31:
    sub_1B1A90C20(&v56, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_32;
  }

  sub_1B1A93AEC(0xD000000000000015, 0x80000001B1C4B680, v35);

  if (!*(&v57 + 1))
  {

    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C30, &unk_1B1C38180);
  if (swift_dynamicCast())
  {
    v36 = *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr);

    os_unfair_lock_lock((v36 + 16));

    OUTLINED_FUNCTION_5_8();
    sub_1B1B3016C(v37, v38, 0, (v36 + 24));
    os_unfair_lock_unlock((v36 + 16));

    p_cache = (&OBJC_METACLASS___SiriTTSSynthesisResource + 16);
  }

LABEL_32:
  v47 = sub_1B1C2D0A8();
  if (p_cache[311] != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  v48 = qword_1ED9AA668;
  if (os_log_type_enabled(qword_1ED9AA668, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v56 = swift_slowAlloc();
    *v49 = 136315650;
    *(v49 + 4) = sub_1B1A930E4(*(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName), *(v3 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8), &v56);
    *(v49 + 12) = 2080;

    v51 = sub_1B1B42D14();
    v53 = v52;

    v54 = sub_1B1A930E4(v51, v53, &v56);

    *(v49 + 14) = v54;
    *(v49 + 22) = 2112;
    *(v49 + 24) = a1;
    *v50 = a1;
    v55 = a1;
    _os_log_impl(&dword_1B1A8A000, v48, v47, "Asset %s attributes %s level %@", v49, 0x20u);
    sub_1B1A90C20(v50, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    goto LABEL_36;
  }
}

id sub_1B1AE7720()
{
  OUTLINED_FUNCTION_62();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_1B1AE778C()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (!v12[3])
  {
    sub_1B1A90C20(v12, &qword_1EB761DE0, &qword_1B1C352C0);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_51_1() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v0 = *(v10 + 16);
  if (!v0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v11 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  v1 = v11;
  sub_1B1A8EDAC();
  v2 = (v10 + 40);
  do
  {
    v3 = *v2;
    v12[0] = *(v2 - 1);
    v12[1] = v3;
    OUTLINED_FUNCTION_4();
    v4 = sub_1B1C2D398();
    v6 = v5;
    v7 = *(v11 + 16);
    if (v7 >= *(v11 + 24) >> 1)
    {
      sub_1B1AC9FA8();
    }

    *(v11 + 16) = v7 + 1;
    v8 = v11 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;
    v2 += 2;
    --v0;
  }

  while (v0);

  return v1;
}

void sub_1B1AE7964()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_75_1();

  if (!v42)
  {
    sub_1B1A90C20(v41, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_29;
  }

  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_9_7(v1, v2, v3, v4, v5, v6, v7, v8, v38);
  if (!swift_dynamicCast())
  {
LABEL_29:
    v21 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    sub_1B1C2C7C8(v21, &dword_1B1A8A000, qword_1ED9AA668, "Missing asset type for voice", 28, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_32;
  }

  v10 = OUTLINED_FUNCTION_63();
  v11 = v39 == v10 && v40 == 0xE700000000000000;
  if (!v11 && (OUTLINED_FUNCTION_8_6(v10, 0xE700000000000000) & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_25_3();
    v13 = v39 == v12 && v40 == 0xE600000000000000;
    if (!v13 && (OUTLINED_FUNCTION_8_6(v12, 0xE600000000000000) & 1) == 0)
    {
      v14 = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000;
      v15 = v39 == v14 && v40 == 0xE800000000000000;
      if (!v15 && (OUTLINED_FUNCTION_8_6(v14, 0xE800000000000000) & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_49_1();
        v17 = v11 && v40 == 0xE700000000000000;
        if (!v17 && (OUTLINED_FUNCTION_8_6(v16, 0xE700000000000000) & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_61_2();
          v25 = v11 && v40 == 0xE600000000000000;
          if (v25 || (OUTLINED_FUNCTION_8_6(v24, 0xE600000000000000) & 1) != 0)
          {

            if (qword_1ED9A98D0 != -1)
            {
              OUTLINED_FUNCTION_23_0(&qword_1ED9A98D0);
            }

            goto LABEL_25;
          }

          v26 = OUTLINED_FUNCTION_36_2();
          v27 = v0 + 7;
          v28 = v39 == v26 && v40 == v27;
          if (v28 || (OUTLINED_FUNCTION_8_6(v26, v27) & 1) != 0)
          {

            if (qword_1ED9A9850 != -1)
            {
              OUTLINED_FUNCTION_22(&qword_1ED9A9850);
            }

            goto LABEL_25;
          }

          v29 = v39 == 0x64656E69626D6F63 && v40 == 0xE800000000000000;
          if (v29 || (OUTLINED_FUNCTION_8_6(0x64656E69626D6F63, 0xE800000000000000) & 1) != 0)
          {

            if (qword_1ED9A98B8 != -1)
            {
              swift_once();
            }

            goto LABEL_25;
          }

          v30 = OUTLINED_FUNCTION_48_4();
          v31 = v11 && v40 == v0;
          if (v31 || (OUTLINED_FUNCTION_8_6(v30, 0xE90000000000006BLL) & 1) != 0)
          {

            if (qword_1ED9A98A8 != -1)
            {
              OUTLINED_FUNCTION_21(&qword_1ED9A98A8);
            }

            goto LABEL_25;
          }

          sub_1B1C2D0B8();
          if (qword_1ED9A99B8 != -1)
          {
            OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
          }

          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v33 = OUTLINED_FUNCTION_54_0(v32);
          *(v33 + 16) = xmmword_1B1C361C0;
          *(v33 + 56) = v9;
          *(v33 + 64) = sub_1B1AC9204();
          *(v33 + 32) = v39;
          *(v33 + 40) = v40;
          v34 = OUTLINED_FUNCTION_46_2();
          OUTLINED_FUNCTION_53_2(v34, v35, v36, v37, 32);

LABEL_32:
          sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
          v22 = OUTLINED_FUNCTION_11_1();
          sub_1B1AAFB2C(v22, v23);
          OUTLINED_FUNCTION_76_2();
          return;
        }
      }
    }
  }

  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6(&qword_1ED9A9978);
  }

LABEL_25:
  OUTLINED_FUNCTION_76_2();

  v20 = v18;
}

uint64_t sub_1B1AE7D84(uint64_t a1, unint64_t a2)
{
  result = sub_1B1A9547C();
  v5 = result;
  v6 = 0;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v28 = a1;
  v29 = result;
  v32 = a1 + 32;
  v30 = a2;
  while (1)
  {
    if (v6 == v5)
    {
      return v7;
    }

    if (v34)
    {
      result = MEMORY[0x1B2738A20](v6, v28);
    }

    else
    {
      if (v6 >= *(v33 + 16))
      {
        goto LABEL_41;
      }

      result = *(v32 + 8 * v6);
    }

    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      break;
    }

    v10 = sub_1B1AE80A4(result, a2);

    if (v10 >> 62)
    {
      v11 = sub_1B1C2D468();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v7 >> 62;
    if (v7 >> 62)
    {
      result = sub_1B1C2D468();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v11;
    v9 = __OFADD__(result, v11);
    v13 = result + v11;
    if (v9)
    {
      goto LABEL_42;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v12)
      {
LABEL_18:
        sub_1B1C2D468();
      }

LABEL_19:
      result = sub_1B1C2D568();
      v36 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_20;
    }

    if (v12)
    {
      goto LABEL_18;
    }

    v14 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v36 = v7;
LABEL_20:
    v15 = *(v14 + 16);
    v16 = (*(v14 + 24) >> 1) - v15;
    v17 = v14 + 8 * v15;
    v35 = v14;
    if (v10 >> 62)
    {
      v19 = sub_1B1C2D468();
      if (v19)
      {
        v20 = v19;
        result = sub_1B1C2D468();
        if (v16 < result)
        {
          goto LABEL_46;
        }

        if (v20 < 1)
        {
          goto LABEL_47;
        }

        v31 = result;
        v21 = v17 + 32;
        sub_1B1B3B768();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762640, &qword_1B1C383E8);
          v23 = sub_1B1B37C88(v38, i, v10);
          v25 = *v24;
          v23(v38, 0);
          *(v21 + 8 * i) = v25;
        }

        a2 = v30;
        v5 = v29;
        v18 = v31;
        goto LABEL_30;
      }

LABEL_34:

      v7 = v36;
      if (v37 > 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_34;
      }

      if (v16 < v18)
      {
        goto LABEL_45;
      }

      type metadata accessor for TTSAsset();
      swift_arrayInitWithCopy();
LABEL_30:

      v7 = v36;
      if (v18 < v37)
      {
        goto LABEL_43;
      }

      if (v18 > 0)
      {
        v26 = *(v35 + 16);
        v9 = __OFADD__(v26, v18);
        v27 = v26 + v18;
        if (v9)
        {
          goto LABEL_44;
        }

        *(v35 + 16) = v27;
      }
    }
  }

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
  return result;
}

uint64_t sub_1B1AE80A4(void *a1, unint64_t a2)
{
  v3 = v2;
  LOBYTE(v6) = sub_1B1C2D098();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_78:
    OUTLINED_FUNCTION_0_13(&qword_1ED9A99C0);
  }

  log = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v94 = v9;
    *v7 = 138412546;
    *(v7 + 4) = a1;
    *v8 = a1;
    *(v7 + 12) = 2082;
    v10 = a1;
    v11 = sub_1B1AB5454(a2);
    v13 = sub_1B1A930E4(v11, v12, v94);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1B1A8A000, log, v6, "#MobileAsset listing assets for type '%@', filter: '%{public}s'", v7, 0x16u);
    sub_1B1A90C78(v8, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }

  v14 = [a1 string];
  v15 = sub_1B1C2CB58();
  v17 = v16;

  v18 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v19 = sub_1B1AEA368(v15, v17);
  if (!v19)
  {
    v29 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v3 = MEMORY[0x1E69E7CC0];
    sub_1B1C2C7C8(v29, &dword_1B1A8A000, qword_1ED9AA668, "#MobileAsset Unable to create query", 35, 2, MEMORY[0x1E69E7CC0]);
    return v3;
  }

  v20 = v19;
  sub_1B1AA0AEC(5, a2);
  if (v95)
  {
    if (OUTLINED_FUNCTION_13_11(v21, v22, v23, MEMORY[0x1E69E6370], v24, v25, v26, v27, v85, v86, v87, *(&v87 + 1), i, v89, log, v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92.receiver, v92.super_class, v93.receiver, v93.super_class, v94[0]) && (v91 & 0x100000000000000) != 0)
    {
      HIDWORD(v89) = 0;
      v28 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    sub_1B1A90C78(v94, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  HIDWORD(v89) = 1;
  v28 = 2;
LABEL_14:
  [v20 returnTypes_];
  [v20 setDoNotBlockBeforeFirstUnlock_];
  [v20 setDoNotBlockOnNetworkStatus_];
  sub_1B1AA0AEC(6, a2);
  v84 = v3;
  if (!v95)
  {
    sub_1B1A90C78(v94, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_18;
  }

  if ((OUTLINED_FUNCTION_13_11(v30, v31, v32, MEMORY[0x1E69E6370], v33, v34, v35, v36, v3, v86, v87, *(&v87 + 1), i, v89, log, v91, SWORD2(v91), SBYTE6(v91), SHIBYTE(v91), v92.receiver, v92.super_class, v93.receiver, v93.super_class, v94[0]) & 1) == 0)
  {
LABEL_18:
    v37 = 0;
    goto LABEL_19;
  }

  v37 = HIBYTE(v91);
LABEL_19:
  v86 = a1;
  sub_1B1AE8AD0(v20, a1, v37);
  v38 = 1;
  v87 = xmmword_1B1C361C0;
  v39 = MEMORY[0x1E69E63A8];
  for (i = v20; ; v20 = i)
  {
    v40 = [v20 queryMetaDataSync];
    v41 = v40;
    if (v40 != 2)
    {
      break;
    }

    if ((HIDWORD(v89) & v38 & 1) == 0)
    {
      goto LABEL_26;
    }

    if (qword_1EB761600 != -1)
    {
      swift_once();
    }

    v42 = byte_1EB762610;
    v43 = sub_1B1C2D098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1B1C361C0;
    *(v44 + 56) = MEMORY[0x1E69E6370];
    *(v44 + 64) = v39;
    *(v44 + 32) = v42;
    sub_1B1C2C7C8(v43, &dword_1B1A8A000, log, "Download asset catalogs, sync: %{BOOL}", 38, 2, v44);

    v38 = 0;
  }

  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_26:
  v45 = sub_1B1C2D0B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B1C36280;
  v47 = [a1 string];
  v48 = sub_1B1C2CB58();
  v50 = v49;

  *(v46 + 56) = MEMORY[0x1E69E6158];
  v51 = sub_1B1AC9204();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  v52 = MEMORY[0x1E69E65A8];
  *(v46 + 96) = MEMORY[0x1E69E6530];
  *(v46 + 104) = v52;
  *(v46 + 64) = v51;
  *(v46 + 72) = v41;
  sub_1B1C2C7C8(v45, &dword_1B1A8A000, log, "Query for %{public}@ failed: %d", 31, 2, v46);

LABEL_27:
  if (HIDWORD(v89) && ([v20 isCatalogFetchedWithinThePastFewDays_] & 1) == 0)
  {
    v53 = sub_1B1AE9DE8(a1);
    if (*(v53 + 16))
    {
      v54 = *(v53 + 32);

      if (v54 == v84)
      {
        type metadata accessor for TTSAssetMAStrategy();
        sub_1B1B39710(a1);
      }
    }

    else
    {
    }
  }

  if (!sub_1B1AEA3CC(v20))
  {

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B1AEA3CC(v20);
  if (!result)
  {
    goto LABEL_84;
  }

  v56 = result;
  v57 = sub_1B1A9547C();
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v59 = v57;
    *v94 = MEMORY[0x1E69E7CC0];
    sub_1B1C2D5B8();
    if (v59 < 0)
    {
      __break(1u);
      goto LABEL_80;
    }

    v60 = 0;
    do
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1B2738A20](v60, v56);
      }

      else
      {
        v61 = *(v56 + 8 * v60 + 32);
      }

      v62 = v61;
      ++v60;
      v63 = type metadata accessor for TTSAssetMAAsset();
      v64 = objc_allocWithZone(v63);
      *&v64[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] = v62;
      v93.receiver = v64;
      v93.super_class = v63;
      objc_msgSendSuper2(&v93, sel_init);
      sub_1B1C2D588();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v59 != v60);

    v3 = *v94;
    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  if (qword_1ED9A98B8 != -1)
  {
    swift_once();
  }

  v65 = qword_1ED9A98C0;
  v66 = sub_1B1C2D248();

  if ((v66 & 1) == 0)
  {
    if (!(v3 >> 62))
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();

      return v3;
    }

LABEL_80:
    type metadata accessor for TTSAsset();

    v83 = sub_1B1C2D668();

    swift_bridgeObjectRelease_n();
    return v83;
  }

  *v94 = v58;
  v67 = sub_1B1A9547C();
  a2 = 0;
  v6 = v3 & 0xC000000000000001;
  a1 = (v3 & 0xFFFFFFFFFFFFFF8);
  while (v67 != a2)
  {
    if (v6)
    {
      v68 = MEMORY[0x1B2738A20](a2, v3);
    }

    else
    {
      if (a2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v68 = *(v3 + 8 * a2 + 32);
    }

    v69 = v68;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ([v68 locallyAvailable])
    {
      sub_1B1C2D588();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5C8();
      OUTLINED_FUNCTION_11_9();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++a2;
  }

  v70 = *v94;
  v71 = sub_1B1A9547C();
  if (!v71)
  {

    v80 = MEMORY[0x1E69E7CC0];
LABEL_70:
    if (v3 >> 62)
    {
      type metadata accessor for TTSAsset();

      v81 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();
      v81 = v3;
    }

    if (v80 >> 62)
    {
      type metadata accessor for TTSAsset();

      v82 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      type metadata accessor for TTSAsset();
      v82 = v80;
    }

    *v94 = v81;
    sub_1B1AB4AD0(v82);

    return *v94;
  }

  v72 = v71;
  *v94 = MEMORY[0x1E69E7CC0];
  result = sub_1B1C2D5B8();
  if ((v72 & 0x8000000000000000) == 0)
  {
    v73 = 0;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x1B2738A20](v73, v70);
      }

      else
      {
        v74 = *(v70 + 8 * v73 + 32);
      }

      v75 = v74;
      ++v73;
      v76 = *&v74[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
      v77 = objc_allocWithZone(type metadata accessor for TTSAssetMACompactAsset());
      *&v77[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] = v76;
      v78 = type metadata accessor for TTSAssetMAAsset();
      v92.receiver = v77;
      v92.super_class = v78;
      v79 = v76;
      objc_msgSendSuper2(&v92, sel_init);

      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    while (v72 != v73);

    v80 = *v94;
    goto LABEL_70;
  }

  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

void sub_1B1AE8AD0(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_1ED9A9978 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = qword_1ED9A9980;
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v6 = v5;
  v7 = sub_1B1C2D248();

  if (v7)
  {
    v8 = [objc_opt_self() _gryphonVoiceCompatibility];
    v10 = &v8[v9];
    if (__OFADD__(v8, v9))
    {
      goto LABEL_42;
    }

    v11 = (v10 - 1);
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    v28 = a1;
    if (a3)
    {
      a1 = 1;
    }

    else
    {
      a1 = v8;
    }

    if (v11 >= a1)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (qword_1ED9A98D0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v12 = OUTLINED_FUNCTION_8_10(qword_1ED9A98D8);

    if (v12)
    {
      v28 = a1;
      v11 = 7;
    }

    else
    {
      if (qword_1ED9A9960 != -1)
      {
LABEL_45:
        swift_once();
      }

      v13 = OUTLINED_FUNCTION_8_10(qword_1ED9A9968);

      if ((v13 & 1) == 0)
      {
        return;
      }

      v28 = a1;
      v11 = 18;
    }

    a1 = 1;
LABEL_17:
    v14 = v11 - a1;
    if (__OFSUB__(v11, a1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_40;
    }

    if (v14 == -1)
    {
LABEL_31:
      v25 = *MEMORY[0x1E69B1840];
      v26 = sub_1B1C2CE68();

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
      }

      [v28 addKeyValueArray:v25 with:v27];

      return;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  a3 = 0;
  v16 = 0;
  v17 = v29;
  while (1)
  {
    if (a3 >= v15)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v18 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_36;
    }

    if (v16)
    {
      break;
    }

    v20 = sub_1B1C2D778();
    v30 = v17;
    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      v24 = v19;
      sub_1B1AC9FA8();
      v19 = v24;
      v17 = v30;
    }

    *(v17 + 16) = v21 + 1;
    v22 = v17 + 16 * v21;
    *(v22 + 32) = v20;
    *(v22 + 40) = v19;
    v16 = a1 == v11;
    if (a1 == v11)
    {
      a1 = 0;
    }

    else if (__OFADD__(a1++, 1))
    {
      goto LABEL_37;
    }

    ++a3;
    if (v18 == v15)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
}

uint64_t sub_1B1AE8E3C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = *v2;
  LOBYTE(v5) = sub_1B1C2D098();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v6 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v7 = 136315138;
    if (qword_1ED9A9870 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C1C8();
    __swift_project_value_buffer(v9, qword_1ED9AA650);
    v10 = sub_1B1C2C098();
    v12 = sub_1B1A930E4(v10, v11, &v37);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v5, "Searching in preinstalled voice directory: '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v13 = sub_1B1C2D0D8();
  v14 = os_log_type_enabled(v6, v13);
  if (v14)
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v17 = MEMORY[0x1B2738350](v34, v16);
    v19 = sub_1B1A930E4(v17, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_1B1AB5454(a2);
    v22 = sub_1B1A930E4(v20, v21, &v37);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B1A8A000, v6, v13, "#Local listing voices for types: %{public}s, filter: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  if (qword_1ED9A9548 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v14);
  v33 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FA8, &unk_1B1C40950);
  v4 = 0;
  sub_1B1C2D138();
  a2 = v37;
  v36 = MEMORY[0x1E69E7CC0];
  v23 = sub_1B1A9547C();
  v5 = 0;
  v24 = a2 & 0xC000000000000001;
  while (v23 != v5)
  {
    sub_1B1A9EC44(v5, v24 == 0, a2);
    if (v24)
    {
      v25 = MEMORY[0x1B2738A20](v5, a2);
    }

    else
    {
      v25 = *(a2 + 8 * v5 + 32);
    }

    v26 = v25;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v27 = sub_1B1AECD40();
    v35 = v27;
    MEMORY[0x1EEE9AC00](v27);
    v33 = &v35;
    v28 = sub_1B1ABAB9C(sub_1B1ABACC4, &v32, v34);

    if (v28)
    {
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++v5;
  }

  v29 = v36;
  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    type metadata accessor for TTSAsset();

    v30 = sub_1B1C2D668();
  }

  else
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v30 = v29;
  }

  return v30;
}

uint64_t sub_1B1AE92E8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762848, &qword_1B1C394C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B1AE9318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1AECDA0();
  *a1 = result;
  return result;
}

uint64_t sub_1B1AE9354()
{
  sub_1B1AED7D4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1AE9388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B1C2BEA8();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v35 = sub_1B1AE97E8(a1, a2);
  sub_1B1AEE318();
  v15 = sub_1B1AEE42C();
  v17 = v16;

  sub_1B1C2BE98();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  sub_1B1C2BE78();
  v38 = v14;
  sub_1B1C2BE78();
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v18;
  v43 = v15;
  if (!v18)
  {
    goto LABEL_38;
  }

  v34 = a3;
  v36 = 0;
  v37 = 0;
  v19 = 0;
  a3 = 0;
  v40 = v17 & 0xFFFFFFFFFFFFFFLL;
  v41 = 0;
  v39 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 += 8;
  while (1)
  {
    if ((v17 & 0x1000000000000000) != 0)
    {
      sub_1B1C2D528();
      v23 = v22;
      goto LABEL_14;
    }

    if ((v17 & 0x2000000000000000) == 0)
    {
      v20 = v39;
      if ((v43 & 0x1000000000000000) == 0)
      {
        v20 = sub_1B1C2D578();
      }

      if (*(a3 + v20) < 0)
      {
        OUTLINED_FUNCTION_5_26();
        switch(v21)
        {
          case 1:
            goto LABEL_28;
          case 2:
            goto LABEL_32;
          case 3:
            goto LABEL_33;
          default:
            break;
        }
      }

LABEL_13:
      v23 = 1;
      goto LABEL_14;
    }

    v44[0] = v43;
    v44[1] = v40;
    if ((*(v44 + a3) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_5_26();
    switch(v29)
    {
      case 1:
LABEL_28:
        v23 = 2;
        break;
      case 2:
LABEL_32:
        v23 = 3;
        break;
      case 3:
LABEL_33:
        v23 = 4;
        break;
      default:
        goto LABEL_13;
    }

LABEL_14:
    sub_1B1C2BE38();
    v24 = sub_1B1C2BE88();
    v25 = *v8;
    (*v8)(v12, v6);
    if (v24)
    {
      goto LABEL_30;
    }

    sub_1B1C2BE58();
    v26 = sub_1B1C2BE88();
    v25(v12, v6);
    if (v26)
    {
      break;
    }

    sub_1B1C2BE48();
    v28 = sub_1B1C2BE88();
    v25(v12, v6);
    if (v28)
    {
      v27 = __OFADD__(v41++, 1);
      if (v27)
      {
        goto LABEL_35;
      }
    }

    else if (sub_1B1C2BE88())
    {
      v27 = __OFADD__(v36++, 1);
      if (v27)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = __OFADD__(v37++, 1);
      if (v27)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    a3 = (a3 + v23);
    if (a3 >= v42)
    {

      a3 = v34;
      v31 = v36;
      v30 = v37;
      v32 = v41;
      result = (v25)(v38, v6);
      goto LABEL_34;
    }
  }

  v27 = __OFADD__(v19++, 1);
  if (!v27)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v19 = 0;
  result = (*(v8 + 8))(v38, v6);
LABEL_34:
  *a3 = v35;
  a3[1] = v19;
  a3[2] = v32;
  a3[3] = v31;
  a3[4] = v30;
  return result;
}

uint64_t sub_1B1AE97E8(uint64_t a1, uint64_t a2)
{
  v83 = 0;
  v84 = 0xE000000000000000;
  v81 = 0;
  v82 = 0xE000000000000000;
  if (sub_1B1C2CDA8() & 1) != 0 && (sub_1B1C2CDB8())
  {
    isEscapingClosureAtFileLocation = [objc_allocWithZone(type metadata accessor for SSMLSimpleParser()) init];
    v5 = sub_1B1BC7C18(a1, a2);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 56);
      do
      {
        v8 = *(v7 - 2);
        if (v8)
        {
          v9 = *(v7 - 3);
          v11 = *(v7 - 1);
          v10 = *v7;
          aBlock = v9;
          v74 = v8;
          v79 = 0x61706D6173;
          v80 = 0xE500000000000000;
          sub_1B1A8EDAC();

          v20 = OUTLINED_FUNCTION_4_23(v12, v13, v14, v15, v16, v17, v18, v19, v71);
          if (v20 & 1) != 0 || (aBlock = v9, v74 = v8, v79 = 7366764, v80 = 0xE300000000000000, (OUTLINED_FUNCTION_4_23(v20, v21, v22, v23, v24, v25, v26, v27, v71)))
          {
            if (v10)
            {
              v28 = v11;
            }

            else
            {
              v28 = 0;
            }

            if (v10)
            {
              v29 = v10;
            }

            else
            {
              v29 = 0xE000000000000000;
            }

            MEMORY[0x1B27381B0](v28, v29);

            MEMORY[0x1B27381B0](2106144, 0xE300000000000000);
          }
        }

        v7 += 4;
        --v6;
      }

      while (v6);

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:

    v32 = 0;
    v33 = 0;
    goto LABEL_25;
  }

  v30 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v31 = sub_1B1AEDFA4(0xD00000000000001DLL, 0x80000001B1C52150, 0);
  v34 = v31;
  if (!v31)
  {
    v32 = 0;
    v33 = 0;
    goto LABEL_25;
  }

  v72 = sub_1B1C2CB28();
  v79 = a1;
  v80 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
  sub_1B1AEDF30();
  sub_1B1A8EDAC();
  v35 = sub_1B1C2D268();
  v37 = v36;
  OUTLINED_FUNCTION_66();
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = &v83;
  v38 = swift_allocObject();
  v32 = sub_1B1BC8C7C;
  *(v38 + 16) = sub_1B1BC8C7C;
  *(v38 + 24) = v33;
  v77 = sub_1B1BC8C88;
  v78 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1B1BC87C0;
  v76 = &block_descriptor_23;
  v39 = _Block_copy(&aBlock);

  [v34 enumerateMatchesInString:v72 options:0 range:v35 usingBlock:{v37, v39}];

  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  v79 = 0;
  v80 = 0xE000000000000000;
  v40 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v40 = v83 & 0xFFFFFFFFFFFFLL;
  }

  aBlock = v83;
  v74 = v84;
  v75 = 0;
  v76 = v40;

  while (1)
  {
    v41 = sub_1B1C2CD08();
    if (!v42)
    {
      break;
    }

    v43 = v41;
    v44 = v42;
    v45 = v41 == 46 && v42 == 0xE100000000000000;
    if (v45 || ((v46 = OUTLINED_FUNCTION_40(), v48 = OUTLINED_FUNCTION_6_23(v46, v47, 46), v43 == 95) ? (v49 = v44 == 0xE100000000000000) : (v49 = 0), !v49 ? (v50 = 0) : (v50 = 1), (v48 & 1) != 0 || (v50 & 1) != 0 || ((v51 = OUTLINED_FUNCTION_40(), v53 = OUTLINED_FUNCTION_6_23(v51, v52, 95), v43 == 35) ? (v54 = v44 == 0xE100000000000000) : (v54 = 0), !v54 ? (v55 = 0) : (v55 = 1), (v53 & 1) != 0 || (v55 & 1) != 0 || (v56 = OUTLINED_FUNCTION_40(), (OUTLINED_FUNCTION_6_23(v56, v57, 35) & 1) != 0))))
    {
      v58 = OUTLINED_FUNCTION_40();
      MEMORY[0x1B27381A0](v58);
    }
  }

  v59 = sub_1B1C2CC68();

  v79 = 0;
  v80 = 0xE000000000000000;
  v60 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v60 = v81 & 0xFFFFFFFFFFFFLL;
  }

  aBlock = v81;
  v74 = v82;
  v75 = 0;
  v76 = v60;
  while (1)
  {
    v61 = sub_1B1C2CD08();
    if (!v62)
    {
      break;
    }

    v63 = v61;
    v64 = v62;
    v65 = v61 == 46 && v62 == 0xE100000000000000;
    if (v65 || ((v66 = OUTLINED_FUNCTION_6_23(v61, v62, 46), v63 == 35) ? (v67 = v64 == 0xE100000000000000) : (v67 = 0), !v67 ? (v68 = 0) : (v68 = 1), (v66 & 1) != 0 || (v68 & 1) != 0 || (OUTLINED_FUNCTION_6_23(v63, v64, 35) & 1) != 0))
    {
      MEMORY[0x1B27381A0](v63, v64);
    }
  }

  v69 = sub_1B1C2CC68();

  if (__OFADD__(v59, v69))
  {
    __break(1u);
  }

  else
  {

    sub_1B1A949B4(v32, v33);
    return v59 + v69;
  }

  return result;
}

uint64_t RoughDurationEstimationAction.__deallocating_deinit()
{
  Buffer.deinit();

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B1AE9DE8(void *a1)
{
  if (qword_1ED9A9920 != -1)
  {
    swift_once();
  }

  inited = qword_1ED9A9928;
  sub_1B1C2D1B8();
  if (qword_1ED9A9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_1B1AEA28C(a1, qword_1ED9A9910);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    swift_endAccess();
    if (sub_1B1B347C8(a1))
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1B1AB5BB8();
      v8 = v7;
      sub_1B1B0464C();
      v5 = v9;
      v10 = *(v9 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v9 + 24) >> 1)
      {
        sub_1B1B0464C();
        v11 = v10 + 1;
        v5 = v37;
      }

      *(v5 + 16) = v11;
      v12 = v5 + 16 * v10;
      *(v12 + 32) = v6;
      *(v12 + 40) = v8;
      type metadata accessor for TTSAsset();
      if (sub_1B1B34578())
      {
        type metadata accessor for TTSAssetTrialStrategy();
        v13 = &off_1F28B7758;
      }

      else
      {
        type metadata accessor for TTSAssetStubStrategy();
        v13 = &off_1F28B7930;
      }

      inited = swift_initStaticObject();
      v14 = *(v5 + 16);
      v1 = (v14 + 1);
      if (v14 >= *(v5 + 24) >> 1)
      {
        sub_1B1B0464C();
        v5 = v38;
      }

      *(v5 + 16) = v1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = inited;
      *(v15 + 40) = v13;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B1B0464C();
      v5 = v34;
    }

    OUTLINED_FUNCTION_4_8();
    if (v16)
    {
      OUTLINED_FUNCTION_2_15();
      v5 = v35;
    }

    type metadata accessor for TTSAssetMAStrategy();
    v17 = swift_initStaticObject();
    *(v5 + 16) = inited;
    v18 = v5 + 16 * v1;
    *(v18 + 32) = v17;
    *(v18 + 40) = &off_1F28B7B18;
    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED9A96C0;
    sub_1B1AB2758();
    if (v20 != 2 && (v20 & 1) != 0)
    {
      if (qword_1ED9A9978 != -1)
      {
        OUTLINED_FUNCTION_6(&qword_1ED9A9978);
      }

      v21 = qword_1ED9A9980;
      v19 = sub_1B1AB940C();
      v1 = v21;
      v22 = sub_1B1C2D248();

      if (v22)
      {
        goto LABEL_31;
      }

      if (qword_1ED9A9960 != -1)
      {
        OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
      }

      v1 = qword_1ED9A9968;
      v19 = sub_1B1C2D248();

      if (v19)
      {
LABEL_31:
        OUTLINED_FUNCTION_4_8();
        if (v16)
        {
          OUTLINED_FUNCTION_2_15();
          v5 = v40;
        }

        type metadata accessor for TTSAssetAdhocStrategy();
        v23 = swift_initStaticObject();
        *(v5 + 16) = v19;
        v24 = v5 + 16 * v1;
        *(v24 + 32) = v23;
        *(v24 + 40) = &off_1F28B77A8;
      }
    }

    OUTLINED_FUNCTION_4_8();
    if (v16)
    {
      OUTLINED_FUNCTION_2_15();
      v5 = v36;
    }

    type metadata accessor for TTSAssetFactoryInstalledStrategy();
    v25 = swift_initStaticObject();
    *(v5 + 16) = v19;
    v26 = v5 + 16 * v1;
    *(v26 + 32) = v25;
    *(v26 + 40) = &off_1F28B7400;
    if (qword_1ED9A9960 != -1)
    {
      OUTLINED_FUNCTION_12_4(&qword_1ED9A9960);
    }

    v27 = qword_1ED9A9968;
    sub_1B1AB940C();
    v28 = v27;
    v29 = sub_1B1C2D248();

    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      if (v16)
      {
        OUTLINED_FUNCTION_2_15();
        v5 = v39;
      }

      type metadata accessor for TTSAssetPreinstalledStrategy();
      v30 = swift_initStaticObject();
      *(v5 + 16) = v29;
      v31 = v5 + 16 * v28;
      *(v31 + 32) = v30;
      *(v31 + 40) = &off_1F28B7490;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = qword_1ED9A9910;
    sub_1B1B37394(v5, a1, isUniquelyReferenced_nonNull_native);
    qword_1ED9A9910 = v41;
  }

  swift_endAccess();
  sub_1B1C2D1C8();
  return v5;
}

uint64_t sub_1B1AEA28C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1B1AEBB3C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v2);
}

uint64_t sub_1B1AEA2D8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1C2CB58();

  return v4;
}

id sub_1B1AEA368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B1C2CB28();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType_];

  return v4;
}

uint64_t sub_1B1AEA3CC(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B1A8E474(0, &unk_1ED9A9798, 0x1E69B18D8);
  v3 = sub_1B1C2CE78();

  return v3;
}

void sub_1B1AEA43C()
{
  OUTLINED_FUNCTION_25();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v5 = sub_1B1C2C0A8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v11 = (v10 - v9);
  v12 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_132();
  v33 = v16;
  OUTLINED_FUNCTION_16_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  v32 = *(v14 + 16);
  v32(v20, v0 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL, v12);
  v36 = v4;
  v37 = v34;
  (*(v7 + 104))(v11, *MEMORY[0x1E6968F68], v5);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v23 = OUTLINED_FUNCTION_42_0();
  v24(v23);
  v25 = *(v14 + 8);
  v25(v20, v12);
  v26 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_19_5();

  v27 = [v26 fileExistsAtPath_];

  if (v27)
  {
    v32(v33, v22, v12);
    v28 = v35;
    SynthesisCacheFile.init(readFileURL:)();
    v25(v22, v12);
    v29 = 0;
  }

  else
  {
    v25(v22, v12);
    v29 = 1;
    v28 = v35;
  }

  v30 = type metadata accessor for SynthesisCacheFile(0);
  __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
  OUTLINED_FUNCTION_26_1();
}

void SynthesisCacheFile.init(readFileURL:)()
{
  OUTLINED_FUNCTION_12_17();
  v3 = v2;
  v5 = v4;
  v6 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = *(v8 + 16);
  v13(v5, v3, v6);
  sub_1B1A8E474(0, &qword_1ED9A4F20, 0x1E696AC00);
  v14 = OUTLINED_FUNCTION_19_5();
  v13(v14, v5, v6);
  v15 = sub_1B1ACD2C4(v12);
  if (v0)
  {
    goto LABEL_8;
  }

  v51 = v3;
  v16 = v15;
  if (qword_1ED9A5138 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED9A5138);
  }

  v17 = [v16 readDataOfLength_];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v18 = OUTLINED_FUNCTION_66_1();
  v19 = MEMORY[0x1B2737770](v18);
  if ((v19 & 1) == 0)
  {
    v30 = OUTLINED_FUNCTION_35_10(v19);
    OUTLINED_FUNCTION_34(&type metadata for TTSError, v30);
    *v31 = 1;
    OUTLINED_FUNCTION_32_11(v31, 0xD000000000000050);
    v32 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v32, v33);

LABEL_8:
    v34 = *(v8 + 8);
    v35 = OUTLINED_FUNCTION_15();
    v34(v35);
    (v34)(v5, v6);
    goto LABEL_9;
  }

  v20 = [v16 readDataOfLength_];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v21 = OUTLINED_FUNCTION_66_1();
  v23 = sub_1B1AEAC28(v21, v22);
  v24 = OUTLINED_FUNCTION_66_1();
  sub_1B1A94524(v24, v25);
  v26 = v16;
  if (v23 < 1)
  {
    v27 = &off_1E7AF4000;
    v36 = 0;
  }

  else
  {
    v27 = &off_1E7AF4000;
    v28 = [v26 readDataOfLength_];
    sub_1B1C2C2B8();
    OUTLINED_FUNCTION_22_13();
    sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
    OUTLINED_FUNCTION_23_5();
    v29 = type metadata accessor for SynthesisVoice();
    v36 = OUTLINED_FUNCTION_28_8(v29);
    v37 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v37, v38);
  }

  v50 = type metadata accessor for SynthesisCacheFile(0);
  *(v5 + v50[6]) = v36;
  v39 = [v26 v27[394]];
  sub_1B1C2C2B8();
  OUTLINED_FUNCTION_22_13();
  v40 = OUTLINED_FUNCTION_66_1();
  v42 = sub_1B1AEAC28(v40, v41);
  v43 = OUTLINED_FUNCTION_66_1();
  sub_1B1A94524(v43, v44);
  if (v42 < 1)
  {
    v47 = 0;
  }

  else
  {
    v45 = [v26 v27[394]];
    sub_1B1C2C2B8();
    OUTLINED_FUNCTION_22_13();
    sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
    OUTLINED_FUNCTION_23_5();
    v46 = type metadata accessor for SynthesisResource();
    v47 = OUTLINED_FUNCTION_28_8(v46);
    v48 = OUTLINED_FUNCTION_66_1();
    sub_1B1A94524(v48, v49);
  }

  sub_1B1A94524(v1, v8 + 16);
  (*(v8 + 8))(v51, v6);
  *(v5 + v50[7]) = v47;
  *(v5 + v50[5]) = v26;
LABEL_9:
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AEAC28(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x1B1AEACA0);
      }

      result = result;
      goto LABEL_5;
    case 2uLL:
      result = *(result + 16);
LABEL_5:
      result = sub_1B1BDBA24(result);
      break;
    case 3uLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1AEACB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AEAD14()
{
  OUTLINED_FUNCTION_46_1();
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1AEAD78(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v27 = v25[0];
    a3(&v27);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    (*(v7 + 16))(v9, a1, v6);
    v12 = a2;
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315650;
      v17 = sub_1B1C2CB58();
      v19 = sub_1B1A930E4(v17, v18, v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B1A930E4(0x664F656372756F53, 0xEB00000000535454, v25);
      *(v15 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v20 = sub_1B1C2CBD8();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1B1A930E4(v20, v22, v25);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "Event '%s' expect associated object as %s, got: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v16, -1, -1);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1B1AEB0F8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = mach_absolute_time();
  v5 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime, v15);
  *(v3 + v5) = v4;
  v6 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS, v14);
  *(v3 + v6) = a1;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState, v13);
  *(v3 + v9) = v8;
  LODWORD(v9) = OSThermalNotificationCurrentLevel();
  v10 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  result = OUTLINED_FUNCTION_66_0(v3 + OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel, &v12);
  *(v3 + v10) = v9;
  return result;
}

void sub_1B1AEB214()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B1C2C7E8();
  v4 = sub_1B1C2C818();
  v5 = sub_1B1C2D188();
  if (sub_1B1C2D278())
  {
    v17 = v5;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = InstrumentationMetrics.SourceOfTTS.description.getter();
    v10 = sub_1B1A930E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    v11 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v4, v17, v11, "TTSSynthesis", "source=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v12 = OUTLINED_FUNCTION_11_5();
  v13(v12);
  sub_1B1C2C868();
  v14 = swift_allocObject();
  sub_1B1C2C858();
  v15 = OUTLINED_FUNCTION_16_8();
  v16(v15);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval) = v14;

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AEB400()
{
  OUTLINED_FUNCTION_25();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  v62 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_40_8();
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v60 - v11;
  v12 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v13 = mach_absolute_time();
  v14 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_66_0(&v12[OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime], &v72);
  *&v12[v14] = v13;
  v15 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_66_0(&v12[OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS], &v71);
  *&v12[v15] = v4;
  v16 = [objc_opt_self() processInfo];
  v17 = [v16 thermalState];

  v18 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_66_0(&v12[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState], &v70);
  *&v12[v18] = v17;
  LODWORD(v16) = OSThermalNotificationCurrentLevel();
  v19 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  OUTLINED_FUNCTION_66_0(&v12[OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel], &v69);
  *&v12[v19] = v16;
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) != 1)
  {
    goto LABEL_45;
  }

  v20 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v68);
  sub_1B1AADD60(v0 + v20, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v21)
  {
    sub_1B1AABFB0(v0);
LABEL_45:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  (*(v62 + 32))(v61, v0, v7);
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF7E8]) init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_33;
  }

  [v22 setSynthesisSource_];
  v24 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
  v60 = v23;
  v25 = v23;
  v26 = [v24 init];
  OUTLINED_FUNCTION_69_4(v26, sel_setVoiceContext_);

  v27 = &unk_1ED9AA000;
  if (OUTLINED_FUNCTION_53_4())
  {
    OUTLINED_FUNCTION_39_9();
    v28 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_type + 0x1ED9AA000, &v67);
    [v26 setVoiceType_];

    v27 = &unk_1ED9AA000;
  }

  if (OUTLINED_FUNCTION_53_4())
  {
    OUTLINED_FUNCTION_39_9();
    v29 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
    OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0] + 0x1ED9AA000, &v66);
    [v26 setVoiceFootprint_];

    v27 = &unk_1ED9AA000;
  }

  v30 = OUTLINED_FUNCTION_53_4();
  if (v30)
  {
    v26 = v30;
    v31 = *(v2 + v27[177]);
    if (v31)
    {
      v32 = (v31 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
      OUTLINED_FUNCTION_65(v31 + OBJC_IVAR___SiriTTSSynthesisVoice_name, &v65);
      v33 = v32[1];
      if (v33)
      {
        v34 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v32, v33);
      }

      else
      {
        v34 = 0;
      }

      v27 = &unk_1ED9AA000;
    }

    else
    {
      v34 = 0;
    }

    [v26 setVoiceName_];
  }

  if (!OUTLINED_FUNCTION_53_4())
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39_9();
  if (v27)
  {
    v35 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
    OUTLINED_FUNCTION_65(OBJC_IVAR___SiriTTSSynthesisVoice_version + v27, &v64);
    v36 = *(v35 + v27);
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (!HIDWORD(v36))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v36 = 0;
LABEL_24:
  [v26 setVoiceVersion_];

LABEL_25:
  v37 = OUTLINED_FUNCTION_53_4();
  if (!v37)
  {
LABEL_32:
    [v25 setSynthesisEffect_];
    [v25 setThermalState_];
    [v25 setThermalLevel_];
    v23 = v60;
LABEL_33:
    v42 = [objc_allocWithZone(MEMORY[0x1E69CF798]) init];
    [v42 setStartedOrChanged_];
    v43 = v23;
    if (v42)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v44(v1);
      v45 = v42;
      v46 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v46, sel_setContextId_);
    }

    v47 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
    if (v47)
    {
      v48 = v47;
      [v47 setSynthesisContext_];
      sub_1B1AABABC();
      v50 = v49;
      OUTLINED_FUNCTION_36_10(v49, sel_setEventMetadata_);

      v51 = OUTLINED_FUNCTION_50_6();
      if (v51)
      {
        v12 = v51;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        (*(v62 + 16))(v1, v61, v7);
        v52 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v52, sel_setTtsId_);
      }

      v53 = OUTLINED_FUNCTION_50_6();
      if (v53)
      {
        v54 = v53;
        OUTLINED_FUNCTION_54_4();
        if (v12)
        {

          v55 = sub_1B1C2CB28();
        }

        else
        {
          v55 = 0;
        }

        [v54 setClientId_];
      }

      OUTLINED_FUNCTION_68_4();

      v58 = OUTLINED_FUNCTION_33_11();
      v59(v58);
    }

    else
    {
      v56 = OUTLINED_FUNCTION_33_11();
      v57(v56);
    }

    goto LABEL_45;
  }

  v38 = v37;
  v39 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
  if (!v39)
  {
    goto LABEL_30;
  }

  v40 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_65(v39 + OBJC_IVAR___SiriTTSSynthesisResource_version, &v63);
  v41 = *(v39 + v40);
  if ((v41 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v41))
    {
LABEL_31:
      [v38 setResourceVersion_];

      goto LABEL_32;
    }

    __break(1u);
LABEL_30:
    v41 = 0;
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
}

unint64_t sub_1B1AEBB3C()
{
  sub_1B1C2D238();
  v0 = OUTLINED_FUNCTION_107();

  return sub_1B1AE6BF0(v0, v1);
}

id sub_1B1AEBBA0(void *a1)
{
  result = [a1 level];
  if (result)
  {
    v3 = result;
    v4 = [result directoryValue];

    if (v4 && (v5 = [v4 hasAsset], v4, v5))
    {
      v6 = a1;
      v7 = sub_1B1AEBC74(v6);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        sub_1B1AEC118();
      }
    }

    else
    {

      type metadata accessor for TTSAssetTrialVoiceAsset();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1AEBC74(void *a1)
{
  v2 = v1;
  sub_1B1C2D128();
  OUTLINED_FUNCTION_7();
  v21 = v4;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1B1C2D118();
  OUTLINED_FUNCTION_45();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v9 = sub_1B1C2C9D8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_16();
  v10 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762460, &unk_1B1C37E30);
  swift_allocObject();
  *&v1[v10] = sub_1B1B2A370();
  v11 = &v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_path];
  *v11 = 0;
  *(v11 + 1) = 0;
  v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_isDownloading] = 0;
  *&v1[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_downloadToken] = 0;
  v20 = OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_progressQueue;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B1ACD030(&qword_1ED9A9720, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AA624C(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440, MEMORY[0x1E69E6328]);
  sub_1B1C2D418();
  (*(v21 + 104))(v7, *MEMORY[0x1E69E8090], v22);
  *&v1[v20] = sub_1B1C2D158();
  if (![a1 hasFactor])
  {
    goto LABEL_8;
  }

  result = [a1 factor];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  v14 = [result hasName];

  if (!v14)
  {
LABEL_8:
    v19 = sub_1B1C2D0C8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    sub_1B1C2C7C8(v19, &dword_1B1A8A000, qword_1ED9AA668, "Missing name on TRIFactorLevel.", 31, 2, MEMORY[0x1E69E7CC0]);

    swift_unknownObjectRelease();

    type metadata accessor for TTSAssetTrialAsset();
    swift_deallocPartialClassInstance();
    return 0;
  }

  result = [a1 factor];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B1AEA2D8(result, &selRef_name);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = &v2[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  *v16 = result;
  *(v16 + 1) = v15;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for TTSAssetTrialAsset();
  v17 = objc_msgSendSuper2(&v24, sel_init);
  result = [a1 level];
  if (result)
  {
    v18 = result;
    sub_1B1AE6FEC(result);

    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B1AEC0C8(void *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  sub_1B1C2CAD8();
  return sub_1B1C2C4F8();
}

void sub_1B1AEC118()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName + 8];
  v44 = *&v0[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_factorName];
  v45 = v2;
  v46 = MEMORY[0x1E69E7CC0];

  if (!sub_1B1AE6D1C())
  {
    goto LABEL_8;
  }

  v3 = v46;
  if (v46[2] < 9uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v4 = MEMORY[0x1E69E6158];
  v5 = v46[20];
  v6 = v46[21];
  v43 = MEMORY[0x1E69E6158];
  v41 = v5;
  v42 = v6;

  sub_1B1AC965C(&v41, 0x6E697270746F6F46, 0xE900000000000074);

  if (v3[2] < 8uLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = v3[18];
  v8 = v3[19];
  v43 = v4;
  v41 = v7;
  v42 = v8;

  sub_1B1AC965C(&v41, 1701869908, 0xE400000000000000);

  if (v3[2] < 7uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v3[17];
  v41 = v3[16];
  v42 = v9;
  sub_1B1A8EDAC();

  OUTLINED_FUNCTION_4();
  v10 = sub_1B1C2D398();
  v43 = v4;
  v41 = v10;
  v42 = v11;
  sub_1B1AC965C(&v41, 1701667150, 0xE400000000000000);

  sub_1B1AB9288();

  v12 = v43;
  sub_1B1A90C20(&v41, &qword_1EB761DE0, &qword_1B1C352C0);
  if (v12)
  {
LABEL_8:
    v16 = [type metadata accessor for TTSAsset() assistantVoiceMaps];
    v17 = *&v16[OBJC_IVAR___TTSAssistantVoiceMaps_voicesForLanguageMap];

    v18 = [v1 primaryLanguage];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    v22 = sub_1B1AEC754(v19, v21, v17);

    if (!v22)
    {
LABEL_26:

      return;
    }

    v23 = sub_1B1A9547C();
    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        goto LABEL_26;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1B2738A20](i, v22);
      }

      else
      {
        if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v27 = sub_1B1C2CBE8();
      v29 = v28;
      v30 = v1;
      sub_1B1AEC7A0();
      v31 = sub_1B1C2CBE8();
      v33 = v32;

      if (v27 == v31 && v29 == v33)
      {

LABEL_25:

        v36 = *&v26[OBJC_IVAR___TTSAssistantAsset_supportedLanguages];

        v37 = *&v30[OBJC_IVAR____TtC14SiriTTSService18TTSAssetTrialAsset_assetAttr];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B1C361C0;
        *(inited + 32) = 0x65676175676E614CLL;
        *(inited + 40) = 0xE900000000000073;
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
        *(inited + 48) = v36;

        sub_1B1C2CAB8();
        os_unfair_lock_lock((v37 + 16));

        OUTLINED_FUNCTION_5_8();
        sub_1B1B3016C(v39, v40, 0, (v37 + 24));
        os_unfair_lock_unlock((v37 + 16));

        goto LABEL_26;
      }

      v35 = sub_1B1C2D7A8();

      if (v35)
      {
        goto LABEL_25;
      }

      v1 = v30;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  OUTLINED_FUNCTION_38_1();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C361C0;
  if (v3[2] >= 6uLL)
  {
    v14 = v13;
    v15 = v3[15];
    *(v13 + 32) = v3[14];
    *(v13 + 40) = v15;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    v41 = v14;

    sub_1B1AC965C(&v41, 0x65676175676E614CLL, 0xE900000000000073);

    goto LABEL_8;
  }

LABEL_32:
  __break(1u);
}

uint64_t static TTSAsset.assistantVoiceMaps.getter()
{
  if (qword_1ED9A8F58 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB761288);
  sub_1B1B6675C(&qword_1EB761290, v0, &v2);
  os_unfair_lock_unlock(&dword_1EB761288);
  return v2;
}

uint64_t sub_1B1AEC754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1B1A8EB10();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_70_0(v3);
}

uint64_t sub_1B1AEC7A0()
{
  OUTLINED_FUNCTION_39_0();
  sub_1B1AB9288();

  if (v18[3])
  {
    OUTLINED_FUNCTION_9_7(v0, v1, v2, MEMORY[0x1E69E6158], v3, v4, v5, v6, v15);
    if (swift_dynamicCast())
    {
      v18[0] = v16;
      v18[1] = v17;
      sub_1B1A8EDAC();
      v7 = sub_1B1C2D378();
      v9 = v8;
      if (*(sub_1B1AE778C() + 16))
      {

        OUTLINED_FUNCTION_33();
        sub_1B1C2CBE8();
        sub_1B1C2CBE8();

        v10 = sub_1B1C2CDA8();

        if (v10)
        {

          v7 = v16;
          v9 = v17;
        }
      }

      else
      {
      }

      v12 = OUTLINED_FUNCTION_33();
      sub_1B1AC8BF0(v12, v13, v7, v9);

      return OUTLINED_FUNCTION_43_0();
    }
  }

  else
  {
    sub_1B1A90C20(v18, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v11 = sub_1B1C2D0B8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
  }

  sub_1B1C2C7C8(v11, &dword_1B1A8A000, qword_1ED9AA668, "Missing name for voice", 22, 2, MEMORY[0x1E69E7CC0]);
  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AEC9B0(uint64_t a1, unint64_t a2)
{
  v25 = a1;
  v3 = sub_1B1C2D0D8();
  if (qword_1ED9A99C0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = qword_1ED9AA670;
  if (os_log_type_enabled(qword_1ED9AA670, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446466;
    v7 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v8 = MEMORY[0x1B2738350](v25, v7);
    v10 = sub_1B1A930E4(v8, v9, &v27);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    v11 = sub_1B1AB5454(a2);
    v13 = sub_1B1A930E4(v11, v12, &v27);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1B1A8A000, v4, v3, "#FactoryInstall listing assets for types: %{public}s, filter: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v6, -1, -1);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  v14 = sub_1B1AECCBC();
  v27 = MEMORY[0x1E69E7CC0];
  v15 = sub_1B1A9547C();
  a2 = 0;
  v3 = OS_LOG_TYPE_DEFAULT;
  v16 = v14 & 0xC000000000000001;
  while (v15 != a2)
  {
    sub_1B1A9EC44(a2, v16 == 0, v14);
    if (v16)
    {
      v17 = MEMORY[0x1B2738A20](a2, v14);
    }

    else
    {
      v17 = *(v14 + 8 * a2 + 32);
    }

    v18 = v17;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v19 = sub_1B1B06A7C();
    v26 = v19;
    MEMORY[0x1EEE9AC00](v19);
    v24[2] = &v26;
    v20 = sub_1B1ABAB9C(sub_1B1ABACC4, v24, v25);

    if (v20)
    {
      sub_1B1C2D588();
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
    }

    else
    {
    }

    ++a2;
  }

  v21 = v27;
  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    type metadata accessor for TTSAsset();

    v22 = sub_1B1C2D668();
  }

  else
  {

    sub_1B1C2D7B8();
    type metadata accessor for TTSAsset();
    v22 = v21;
  }

  return v22;
}

uint64_t sub_1B1AECCBC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1B1B08790();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1B1AECD40()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_lazyAssetType));
  sub_1B1B604E8((v1 + 8), v0, &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_1B1AECDA0()
{
  v53[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v41 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v8 = v41 - v7;
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v10 = qword_1ED9A96A8;
  if (qword_1ED9A96A8)
  {
  }

  else
  {
    v46 = v6;
    v11 = [objc_opt_self() defaultManager];
    if (qword_1ED9A9870 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_1ED9AA650);
    v12 = sub_1B1C2C118();
    v52 = 0;
    v13 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:1 error:&v52];

    v14 = v52;
    if (v13)
    {
      v15 = sub_1B1C2CE78();
      v16 = v14;

      v52 = MEMORY[0x1E69E7CC0];
      v18 = *(v15 + 16);
      if (v18)
      {
        v20 = v1 + 16;
        v19 = *(v1 + 16);
        v21 = *(v20 + 64);
        v41[1] = v15;
        v22 = v15 + ((v21 + 32) & ~v21);
        v51 = *(v20 + 56);
        v23 = (v20 - 8);
        v10 = MEMORY[0x1E69E7CC0];
        *&v17 = 136446210;
        v42 = v17;
        v50 = v5;
        v43 = v20;
        do
        {
          v19(v8, v22, v0);
          v19(v5, v8, v0);
          v24 = objc_allocWithZone(type metadata accessor for TTSAssetPreinstalledVoice());
          v25 = sub_1B1B63788(v5);
          if (v25)
          {
            v26 = v25;
            MEMORY[0x1B2738320]();
            if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B1C2CE98();
            }

            sub_1B1C2CEC8();

            (*v23)(v8, v0);
            v10 = v52;
            v5 = v50;
          }

          else if (sub_1B1C2C0E8())
          {
            v48 = v10;
            v49 = sub_1B1C2D098();
            if (qword_1ED9A99C0 != -1)
            {
              swift_once();
            }

            v27 = qword_1ED9AA670;
            v28 = v46;
            v19(v46, v8, v0);
            v47 = v27;
            if (os_log_type_enabled(v27, v49))
            {
              v29 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v53[0] = v45;
              *v29 = v42;
              v44 = sub_1B1C2C098();
              v31 = v30;
              v32 = *v23;
              (*v23)(v28, v0);
              v33 = sub_1B1A930E4(v44, v31, v53);
              v5 = v50;

              *(v29 + 4) = v33;
              _os_log_impl(&dword_1B1A8A000, v47, v49, "Skip invalid voice folder '%{public}s'", v29, 0xCu);
              v34 = v45;
              __swift_destroy_boxed_opaque_existential_0(v45);
              MEMORY[0x1B2739FD0](v34, -1, -1);
              MEMORY[0x1B2739FD0](v29, -1, -1);
              v32(v8, v0);
            }

            else
            {
              v35 = v28;
              v36 = *v23;
              (*v23)(v35, v0);
              v36(v8, v0);
            }

            v10 = v48;
          }

          else
          {
            (*v23)(v8, v0);
          }

          v22 += v51;
          --v18;
        }

        while (v18);

        p_cache = (&OBJC_METACLASS___SiriTTSSynthesisResource + 16);
      }

      else
      {

        v10 = MEMORY[0x1E69E7CC0];
      }

      p_cache[213] = v10;
    }

    else
    {
      v37 = v52;
      v38 = sub_1B1C2C058();

      swift_willThrow();
      v39 = sub_1B1C2D0B8();
      if (qword_1ED9A99C0 != -1)
      {
        swift_once();
      }

      v10 = MEMORY[0x1E69E7CC0];
      sub_1B1C2C7C8(v39, &dword_1B1A8A000, qword_1ED9AA670, "Unable to list voice folder", 27, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  return v10;
}

void sub_1B1AED35C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService19TTSAssetStaticVoice_attr);
  sub_1B1A93AEC(0xD000000000000016, 0x80000001B1C4DE10, v1);
  if (v46)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_33_6(v2, v3, v4, v5, v6, v7, v8, v9, v41, v42))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B1A90C78(v45, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v10 = OUTLINED_FUNCTION_16_16();
  sub_1B1A93AEC(v10, 0xE900000000000073, v1);
  if (v46)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_33_6(v11, v12, v13, v14, v15, v16, v17, v18, v41, v42))
    {
LABEL_7:
      v19 = v43;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B1A90C78(v45, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v19 = sub_1B1B616FC();
LABEL_10:
  v20 = *(v19 + 16);
  if (v20)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v21 = v44;
    sub_1B1A8EDAC();
    v22 = (v19 + 40);
    do
    {
      v23 = *v22;
      v45[0] = *(v22 - 1);
      v45[1] = v23;
      OUTLINED_FUNCTION_4();
      v24 = sub_1B1C2D398();
      v26 = v25;
      v27 = *(v44 + 16);
      if (v27 >= *(v44 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v44 + 16) = v27 + 1;
      v28 = v44 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v22 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v29 = 0;
  v30 = *(v21 + 16);
  v31 = MEMORY[0x1E69E7CC0];
LABEL_18:
  for (i = (v21 + 40 + 16 * v29); ; i += 2)
  {
    if (v30 == v29)
    {

      return;
    }

    if (v29 >= *(v21 + 16))
    {
      break;
    }

    v34 = *(i - 1);
    v33 = *i;

    v35 = sub_1B1AED674();
    v37 = sub_1B1AC974C(v35, v36, v34, v33);

    if (v37)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B1AC9FA8();
        v31 = v45[0];
      }

      v39 = *(v31 + 16);
      if (v39 >= *(v31 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v31 = v45[0];
      }

      ++v29;
      *(v31 + 16) = v39 + 1;
      v40 = v31 + 16 * v39;
      *(v40 + 32) = v34;
      *(v40 + 40) = v33;
      goto LABEL_18;
    }

    ++v29;
  }

  __break(1u);
}

uint64_t sub_1B1AED674()
{
  OUTLINED_FUNCTION_27_8();
  if (v0)
  {
    v1 = sub_1B1A8EB10();
    if (v2)
    {
      v6 = OUTLINED_FUNCTION_23_10(v1, v2, v3, v4, v5);
      if (OUTLINED_FUNCTION_8_18(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v16, v18, v20))
      {
        sub_1B1A8EDAC();
        v13 = sub_1B1C2D378();
        sub_1B1AC8BF0(v17, v19, v13, v14);
      }
    }
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AED7D4()
{
  sub_1B1C2CAD8();
  v1 = sub_1B1C2C508();
  sub_1B1B1C340(v1);
  return v0;
}

uint64_t sub_1B1AED8BC(uint64_t a1, unint64_t a2)
{
  v49[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x80000001B1C521A0;
  *(inited + 48) = 0xD000000000000024;
  *(inited + 56) = 0x80000001B1C521D0;
  objc_allocWithZone(MEMORY[0x1E696AE70]);

  v5 = sub_1B1AEDFA4(0xD000000000000020, 0x80000001B1C521A0, 0);
  if (v5)
  {
    OUTLINED_FUNCTION_8_24();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v6 = sub_1B1C2D268();
    v34 = v7;
    v36 = v6;
    v33 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_66();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v49;
    v9 = swift_allocObject();
    v41 = sub_1B1BC8D00;
    *(v9 + 16) = sub_1B1BC8D00;
    *(v9 + 24) = v8;
    v47 = sub_1B1BC8D04;
    v48 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1B1BC87C0;
    v46 = &block_descriptor_35;
    v10 = _Block_copy(&aBlock);

    [v5 enumerateMatchesInString:v33 options:0 range:v36 usingBlock:{v34, v10}];

    _Block_release(v10);
    v11 = OUTLINED_FUNCTION_10_26(v9, "");

    if (v11)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v41 = 0;
    v8 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  if (sub_1B1AEDFA4(0xD000000000000024, 0x80000001B1C521D0, 0))
  {
    v16 = a2 & 0x2000000000000000;
    v17 = a1 & 0xFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_8_24();
    v40 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v19 = sub_1B1C2D268();
    v37 = v20;
    v38 = v19;
    v35 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_66();
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = v49;

    sub_1B1A949B4(v41, v8);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B1BC8CF4;
    *(v22 + 24) = v21;
    v47 = sub_1B1BC8D04;
    v48 = v22;
    v42 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1B1BC87C0;
    v46 = &block_descriptor_24;
    v23 = _Block_copy(&aBlock);

    [v40 enumerateMatchesInString:v35 options:0 range:v38 usingBlock:{v37, v23}];

    _Block_release(v23);
    LOBYTE(v23) = OUTLINED_FUNCTION_10_26(v22, "");

    if ((v23 & 1) == 0)
    {
      v8 = v21;
      swift_setDeallocating();
      sub_1B1AC9708();
      v14 = v49[0];
      v15 = *(v49[0] + 16);
      v24 = sub_1B1BC8CF4;
      if (!v15)
      {
        goto LABEL_27;
      }

      v39 = v42;
      v41 = sub_1B1BC8CF4;
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  swift_setDeallocating();
  sub_1B1AC9708();
  v14 = v49[0];
  v15 = *(v49[0] + 16);
  if (!v15)
  {
    goto LABEL_26;
  }

  v39 = v8;
  v16 = a2 & 0x2000000000000000;
  v17 = a1 & 0xFFFFFFFFFFFFLL;
LABEL_12:

  v25 = (v14 + 40);
  v26 = 0.0;
  do
  {
    v28 = *(v25 - 1);
    v27 = *v25;
    sub_1B1C2CE08();
    v29 = COERCE_DOUBLE(sub_1B1C2CF28());
    if ((v30 & 1) != 0 || (v31 = v29 / 1000.0, v29 / 1000.0 <= 0.01))
    {
      v31 = 0.01;
      if (v28 < 0x4000)
      {
        goto LABEL_24;
      }

      v31 = 0.01;
    }

    else if (v28 < 0x4000)
    {
      goto LABEL_22;
    }

    v32 = v17;
    if (v16)
    {
      v32 = HIBYTE(a2) & 0xF;
    }

    if (v27 >> 14 == 4 * v32)
    {
LABEL_22:
      if (v31 > 0.1)
      {
        v31 = 0.1;
      }
    }

LABEL_24:
    v25 += 2;
    v26 = v26 + v31;
    --v15;
  }

  while (v15);

  v8 = v39;
LABEL_26:
  v24 = v41;
LABEL_27:

  return sub_1B1A949B4(v24, v8);
}

uint64_t sub_1B1AEDEDC()
{

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1B1AEDF30()
{
  result = qword_1EB763F58;
  if (!qword_1EB763F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB763F50, &qword_1B1C407E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763F58);
  }

  return result;
}

id sub_1B1AEDFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2CB28();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B1C2C058();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1B1AEE088()
{
  v1 = sub_1B1AA95C4();
  if (v1)
  {
    v2 = v1;
    sub_1B1BC84BC(v0, &v25);
    v3 = *&v25;
    v4 = *(&v25 + 1);
    v5 = *&v26;
    v6 = *(&v26 + 4);
    ObjectType = swift_getObjectType();
    SynthesizingRequestProtocol.text.getter();
    v8 = sub_1B1C2CB28();

    v9 = SynthesizingRequestProtocol.voice.getter(ObjectType);
    swift_beginAccess();

    v10 = sub_1B1C2CB28();

    v11 = SiriTTSService_TransformEmojiWithLanguage(v8, v10);

    v12 = sub_1B1C2CB58();
    v14 = v13;

    sub_1B1AED8BC(v12, v14);
    v16 = v15;
    sub_1B1AE9388(v12, v14, &v25);
    v24 = v27;
    v17 = v25;
    v18 = v26;

    v19 = vmulq_f64(vcvtq_f64_f32(v6), vcvtq_f64_s64(v24));
    *&v20 = v16 + v3 * v17 + v4 * v18 + v5 * *(&v18 + 1) + v19.f64[0] + v19.f64[1];
    type metadata accessor for DataContainer();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B1C2CAB8();
    sub_1B1AEE4F4(v20, 0);
    sub_1B1AA81A8(v21);
  }

  else
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0xD00000000000003CLL;
    *(v23 + 16) = 0x80000001B1C51FE0;
    return swift_willThrow();
  }
}

uint64_t sub_1B1AEE318()
{
  v0 = sub_1B1A8EDAC();
  v1 = MEMORY[0x1E69E6158];
  v9 = OUTLINED_FUNCTION_15_5(v0, v2, v3, v4, v5, v6, v7, v8, MEMORY[0x1E69E6158], v0, v0, v0, 0, 0xE000000000000000, 38);
  v11 = OUTLINED_FUNCTION_0_32(v9, v10);
  v19 = OUTLINED_FUNCTION_15_5(v11, v12, v13, v14, v15, v16, v17, v18, v33, v34, v0, v0, 0, 0xE000000000000000, 19);
  OUTLINED_FUNCTION_0_32(v19, v20);

  v29 = OUTLINED_FUNCTION_15_5(v21, v22, v23, v24, v25, v26, v27, v28, v1, v0, v0, v0, 0, 0xE000000000000000, 60);
  v31 = OUTLINED_FUNCTION_0_32(v29, v30);

  return v31;
}

uint64_t sub_1B1AEE42C()
{
  v0 = sub_1B1A8EDAC();
  v8 = OUTLINED_FUNCTION_15_5(v0, v1, v2, v3, v4, v5, v6, v7, MEMORY[0x1E69E6158], v0, v0, v0, 0, 0xE000000000000000, 17);
  v23 = OUTLINED_FUNCTION_0_32(v8, v9);
  v17 = OUTLINED_FUNCTION_15_5(v23, v10, v11, v12, v13, v14, v15, v16, v21, v22, v0, v0, 0, 0xE000000000000000, 60);
  v19 = OUTLINED_FUNCTION_0_32(v17, v18);

  return v19;
}

uint64_t sub_1B1AEE4F4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E63B0];
  }

  v4[0] = a1;
  v4[3] = v2;
  return sub_1B1AA5E5C(v4, 0x7275446867756F72, 0xED00006E6F697461);
}

double static DurationEstimator.roughEstimation(request:)(void *a1)
{
  type metadata accessor for ObjectPool();
  swift_initStackObject();
  ObjectPool.init()();
  type metadata accessor for RoughDurationEstimationAction();
  swift_initStackObject();

  RoughDurationEstimationAction.init(pool:)(v2);
  type metadata accessor for DataContainer();
  inited = swift_initStackObject();
  *(inited + 16) = sub_1B1C2CAB8();
  v4 = a1;
  sub_1B1ACFA84(a1);
  sub_1B1AEE088();
  if (!sub_1B1AA8754())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v11 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v11, qword_1ED9A9120);
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "DurationEstimator: Unable to get output", v14, 2u);
      OUTLINED_FUNCTION_11();
    }

    goto LABEL_13;
  }

  v5 = sub_1B1AEE920();
  if (v6)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = sub_1B1C2C888();
    v9 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B1A8A000, v8, v9, "DurationEstimator: DurationEstimator: Missing duration", v10, 2u);
      OUTLINED_FUNCTION_11();
    }

LABEL_13:

    return 0.0;
  }

  v16 = *&v5;

  return v16;
}

uint64_t sub_1B1AEE920()
{
  sub_1B1AA61C0(0x7275446867756F72, &v20);
  if (v21)
  {
    OUTLINED_FUNCTION_0_8(v0, v1, v2, MEMORY[0x1E69E63B0], v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_5_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

void sub_1B1AEE9E4(uint64_t a1, const char *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v9 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v9, qword_1ED9A9120);
  v10 = sub_1B1C2C888();
  v11 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1A8A000, v10, v11, a2, v12, 2u);
    MEMORY[0x1B2739FD0](v12, -1, -1);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v14 = *a4;

    [v13 postNotificationName:v14 object:0];
  }
}

void sub_1B1AEEB38()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_66_0(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback, v6);
  *(v1 + v2) = 1;

  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_66_0(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode, v5);
  *(v1 + v3) = 103;
  OUTLINED_FUNCTION_19_2(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues, v4);
  sub_1B1AA149C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_8_20();
}

uint64_t sub_1B1AEEBDC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_66_0(v2 + OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback, v10);
  *(v2 + v3) = 1;
  v4 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
  OUTLINED_FUNCTION_67(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues, &v9);
  sub_1B1AC69E8();
  v5 = *(*(v1 + v4) + 16);
  sub_1B1ACF958(v5);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = 8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  return swift_endAccess();
}

id sub_1B1AEEC94()
{
  OUTLINED_FUNCTION_27_8();
  if (!v0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_40_4();
  v1 = sub_1B1A8EB10();
  if ((v2 & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = OUTLINED_FUNCTION_23_10(v1, v2, v3, v4, v5);
  if (!OUTLINED_FUNCTION_8_18(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v21, v23, v25))
  {
    goto LABEL_18;
  }

  v13 = v22 == 0x746361706D6F63 && v24 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_3(0x746361706D6F63, 0xE700000000000000) & 1) != 0)
  {

    if (qword_1ED9A97D8 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1ED9A97D8);
    }

    v14 = &qword_1ED9A9830;
    goto LABEL_21;
  }

  v15 = v22 == 0x6D75696D657270 && v24 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_3(0x6D75696D657270, 0xE700000000000000) & 1) != 0)
  {

LABEL_18:
    if (qword_1ED9A9100 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED9A9100);
    }

    v14 = &qword_1ED9A90A8;
    goto LABEL_21;
  }

  v18 = v22 == 0x686D75696D657270 && v24 == 0xEB00000000686769;
  if (v18 || (OUTLINED_FUNCTION_3(0x686D75696D657270, 0xEB00000000686769) & 1) != 0)
  {

    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0(&qword_1ED9A9628);
    }

    v14 = &qword_1ED9A9598;
  }

  else
  {
    if (v22 == 1635018082 && v24 == 0xE400000000000000)
    {
    }

    else
    {
      v20 = OUTLINED_FUNCTION_3(1635018082, 0xE400000000000000);

      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (qword_1EB7615E0 != -1)
    {
      swift_once();
    }

    v14 = &qword_1EB7625D8;
  }

LABEL_21:
  v16 = *v14;

  return v16;
}

void sub_1B1AEEEB8()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_75_1();

  if (!v39)
  {
    sub_1B1A90C20(v38, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_13;
  }

  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_9_7(v1, v2, v3, v4, v5, v6, v7, v8, v35);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v16 = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    sub_1B1C2C7C8(v16, &dword_1B1A8A000, qword_1ED9AA668, "Missing asset type for voice", 28, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_16;
  }

  v10 = OUTLINED_FUNCTION_36_2();
  v11 = v0 + 7;
  v12 = v36 == v10 && v37 == v11;
  if (!v12 && (OUTLINED_FUNCTION_8_6(v10, v11) & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_61_2();
    v18 = v12 && v37 == 0xE600000000000000;
    if (v18 || (OUTLINED_FUNCTION_8_6(v17, 0xE600000000000000) & 1) != 0)
    {

      if (qword_1ED9A97B8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v19 = OUTLINED_FUNCTION_49_1();
    v20 = v12 && v37 == 0xE700000000000000;
    if (v20 || (OUTLINED_FUNCTION_8_6(v19, 0xE700000000000000) & 1) != 0)
    {

      if (qword_1ED9A97A8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v21 = OUTLINED_FUNCTION_25_3();
    v22 = v36 == v21 && v37 == 0xE600000000000000;
    if (v22 || (OUTLINED_FUNCTION_8_6(v21, 0xE600000000000000) & 1) != 0)
    {

      if (qword_1ED9A9820 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v23 = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000;
    v24 = v36 == v23 && v37 == 0xE800000000000000;
    if (v24 || (OUTLINED_FUNCTION_8_6(v23, 0xE800000000000000) & 1) != 0)
    {

      if (qword_1ED9A9698 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v25 = OUTLINED_FUNCTION_63();
    v26 = v36 == v25 && v37 == 0xE700000000000000;
    if (v26 || (OUTLINED_FUNCTION_8_6(v25, 0xE700000000000000) & 1) != 0)
    {

      if (qword_1ED9A8D90 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    v27 = OUTLINED_FUNCTION_48_4();
    v28 = v12 && v37 == v0;
    if (v28 || (OUTLINED_FUNCTION_8_6(v27, 0xE90000000000006BLL) & 1) != 0)
    {

      if (qword_1ED9A5280 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      OUTLINED_FUNCTION_0_12(&qword_1ED9A99B8);
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v30 = OUTLINED_FUNCTION_54_0(v29);
    *(v30 + 16) = xmmword_1B1C361C0;
    *(v30 + 56) = v9;
    *(v30 + 64) = sub_1B1AC9204();
    *(v30 + 32) = v36;
    *(v30 + 40) = v37;
    v31 = OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_53_2(v31, v32, v33, v34, 32);

LABEL_16:
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    OUTLINED_FUNCTION_11_1();
    sub_1B1ABAA54();
    OUTLINED_FUNCTION_76_2();
    return;
  }

  if (qword_1ED9A9890 != -1)
  {
LABEL_64:
    swift_once();
  }

LABEL_9:
  OUTLINED_FUNCTION_76_2();

  v15 = v13;
}

BOOL static TTSAsset.isBetterAsset(_:_:)(void *a1)
{
  OUTLINED_FUNCTION_2_31();
  v3 = *(v2 + 136);
  v4 = v3();
  OUTLINED_FUNCTION_0_34();
  v6 = *(v5 + 136);
  v7 = v6();
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v8 = sub_1B1C2D248();

  if ((v8 & 1) == 0)
  {
    v3();
    OUTLINED_FUNCTION_5_28();
    v36 = v6();
    v37 = sub_1B1AF22E4();
    if (v37 >> 62)
    {
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
      v38 = sub_1B1C2D668();
    }

    else
    {

      sub_1B1C2D7B8();
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
      v38 = v37;
    }

    v39 = static TTSAsset.isBetter(_:_:order:)(a1, v36, v38);

    return v39 & 1;
  }

  OUTLINED_FUNCTION_3_23();
  v10 = *(v9 + 128);
  v11 = v10();
  OUTLINED_FUNCTION_1_36();
  v13 = *(v12 + 128);
  v14 = v13();
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v15 = sub_1B1C2D248();

  if ((v15 & 1) == 0)
  {
    v10();
    OUTLINED_FUNCTION_5_28();
    v41 = v13();
    if (qword_1EB761848 != -1)
    {
      swift_once();
    }

    v42 = qword_1EB763FB0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_3_23();
  v17 = *(v16 + 144);
  v18 = v17();
  OUTLINED_FUNCTION_1_36();
  v20 = *(v19 + 144);
  v21 = v20();
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v22 = sub_1B1C2D248();

  if ((v22 & 1) == 0)
  {
    v17();
    OUTLINED_FUNCTION_5_28();
    v41 = v20();
    if (qword_1EB761850 != -1)
    {
      swift_once();
    }

    v42 = qword_1EB763FB8;
LABEL_19:
    if (v42 >> 62)
    {
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);

      v43 = sub_1B1C2D668();

      v42 = v43;
    }

    else
    {

      sub_1B1C2D7B8();
      sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
    }

    v35 = static TTSAsset.isBetter(_:_:order:)(a1, v41, v42);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_3_23();
  v24 = *(v23 + 168);
  v25 = v24();
  OUTLINED_FUNCTION_1_36();
  v27 = *(v26 + 168);
  if (v25 == v27())
  {
    OUTLINED_FUNCTION_3_23();
    v29 = (*(v28 + 152))();
    v31 = v30;
    OUTLINED_FUNCTION_1_36();
    if ((*(v32 + 152))() != v29 || v33 != v31)
    {
      v35 = sub_1B1C2D7A8();

LABEL_22:

      return v35 & 1;
    }

    return 0;
  }

  else
  {
    v24();
    OUTLINED_FUNCTION_5_28();
    return v27() < a1;
  }
}

uint64_t sub_1B1AEF88C(char a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14SiriTTSService18TTSAssetProxyAsset_proxy_attr);
  v5 = sub_1B1AE3168(a1);
  sub_1B1A93AEC(v5, v6, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  return a2;
}

void sub_1B1AEF968()
{
  OUTLINED_FUNCTION_53_0();
  v1 = v0;
  v2 = sub_1B1C2C998();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  sub_1B1C2D1B8();

  if (!*(v1 + 32))
  {
    sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
    (*(v3 + 104))(v5, *MEMORY[0x1E69E7F98], v2);
    v7 = sub_1B1C2D168();
    v8 = OUTLINED_FUNCTION_33();
    v9(v8);
    v10 = sub_1B1C2CBF8();
    v11 = xpc_connection_create((v10 + 32), v7);

    v17[4] = nullsub_1;
    v17[5] = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B1B3658C;
    v17[3] = &block_descriptor_16_0;
    v12 = _Block_copy(v17);
    v13 = OUTLINED_FUNCTION_36();
    xpc_connection_set_event_handler(v13, v14);
    _Block_release(v12);
    *(v1 + 32) = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    xpc_connection_resume(v11);
    if (!*(v1 + 40))
    {
      sub_1B1B365EC(v15);
    }

    swift_unknownObjectRelease();
  }

  v16 = *(v1 + 48);
  sub_1B1C2D1C8();

  OUTLINED_FUNCTION_34_3();
}

void sub_1B1AEFB90()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  empty = xpc_dictionary_create_empty();
  if (v3)
  {
    v5 = 7005;
  }

  else
  {
    v5 = 7001;
  }

  v6 = xpc_int64_create(v5);
  xpc_dictionary_set_value(empty, "msg", v6);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19_4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      JUMPOUT(0x1B1AEFDA4);
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v1 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_9:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v1 + 56) + 8 * (v14 | (v12 << 6)));
        v16 = sub_1B1C2CBF8();
        OUTLINED_FUNCTION_21_4();
        swift_unknownObjectRetain_n();

        xpc_dictionary_set_value(empty, (v16 + 32), v15);
        OUTLINED_FUNCTION_21_4();
        swift_unknownObjectRelease_n();
      }

      while (v9);
    }
  }

  OUTLINED_FUNCTION_26_1();
}