uint64_t sub_258E78630()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_258E78CF4;
  }

  else
  {
    v2 = sub_258E78794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E78794()
{

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[59];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = *(*(v3 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "#ODDIMetricsCalculator: Query yielded %ld results", v4, 0xCu);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  else
  {
  }

  v26 = v0[70];
  v29 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v35 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[62];
  v11 = v0[60];
  v33 = v0[59];
  v32 = v0[57];
  v30 = v0[55];
  v31 = v0[56];
  v27 = v0[49];
  v28 = v0[48];
  v23 = v0[47];
  v24 = v0[51];
  v25 = v0[45];
  v12 = v0[43];
  v34 = v0[42];
  swift_beginAccess();
  sub_258E38C54(*(v11 + 16), 0x69737361206C696ELL, 0xEF6449746E617473, v6, v5);
  swift_beginAccess();
  sub_258E38C54(*(v7 + 16), 0xD000000000000014, 0x8000000258F1CBD0, v6, v5);
  swift_beginAccess();
  v13 = *(v8 + 16);
  v0[6] = v13;
  v22 = v13;
  v0[7] = 0xD000000000000021;
  v0[8] = 0x8000000258F1C520;
  swift_beginAccess();
  v21 = *(v9 + 16);
  v0[9] = v21;
  v0[10] = 0xD00000000000001CLL;
  v0[11] = 0x8000000258F1C550;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v0[12] = v14;
  v0[13] = 0xD00000000000001ALL;
  v0[14] = 0x8000000258F1CBF0;
  swift_beginAccess();
  v20 = *(v35 + 16);
  v0[15] = v20;
  v0[16] = 0xD00000000000002CLL;
  v0[17] = 0x8000000258F1C570;

  sub_258E7E58C(v22, 0xD000000000000021, 0x8000000258F1C520, v12);

  sub_258E7E58C(v21, 0xD00000000000001CLL, 0x8000000258F1C550, v12);

  sub_258E7E58C(v14, 0xD00000000000001ALL, 0x8000000258F1CBF0, v12);

  sub_258E7E58C(v20, 0xD00000000000002CLL, 0x8000000258F1C570, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258E3B9F0(v6);
  sub_258F09BB0();
  v29(v23, v25);
  v15 = sub_258F09B60();
  v16 = *(v27 + 8);
  v16(v24, v28);

  v16(v30, v28);
  v16(v31, v28);
  v16(v32, v28);
  swift_beginAccess();
  v17 = *(v33 + 16);

  *v34 = MEMORY[0x277D84F90];
  v34[1] = v15;
  v34[2] = v17;

  v18 = v0[1];

  return v18();
}

uint64_t sub_258E78CF4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);

  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = *(v0 + 456);
  v6 = *(v0 + 384);
  v4(*(v0 + 448), v6);
  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

void sub_258E78E84(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t *a9, void *a10, uint64_t **a11)
{
  v12 = v11;
  v218 = a8;
  v219 = a7;
  v220 = a6;
  v217 = a5;
  v230 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v221 = v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v213 - v21;
  v23 = type metadata accessor for DeviceUsageMetrics(0);
  v224 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v27 = v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v213 - v29;
  v228 = type metadata accessor for EventMetadata(0);
  v226 = *(v228 - 8);
  MEMORY[0x28223BE20](v228, v31);
  v235 = v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v229 = v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v232 = v213 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v233 = v213 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v231 = v213 - v44;
  v222 = type metadata accessor for CommonDigestElements(0);
  MEMORY[0x28223BE20](v222, v45);
  v249 = v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = qword_280CC6078;

  v236 = a2;
  v234 = v47;
  v48 = sub_258F0A350();
  v49 = sub_258F0A810();

  v50 = os_log_type_enabled(v48, v49);
  v225 = v30;
  v223 = v27;
  v227 = v22;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = v12;
    v53 = swift_slowAlloc();
    v246 = v53;
    *v51 = 136315138;
    v54 = sub_258F0A420();
    v56 = sub_258DE3018(v54, v55, &v246);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_258DD8000, v48, v49, "ODDMetrics row data: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v57 = v53;
    v12 = v52;
    MEMORY[0x259C9EF40](v57, -1, -1);
    MEMORY[0x259C9EF40](v51, -1, -1);
  }

  v58 = v236;
  v59 = v236;
  v60 = sub_258E2ACAC(a1, a3, 0xD000000000000026, 0x8000000258F1CC20);
  v62 = v60;
  if ((v61 & 0x10000) != 0)
  {

    return;
  }

  if (v61)
  {
    v63 = v61;
    v59 = v230;
    swift_beginAccess();
    if (__OFADD__(*v59, 1))
    {
      __break(1u);
      goto LABEL_167;
    }

    ++*v59;
    LOWORD(v61) = v63;
  }

  if ((v61 & 0x100) != 0)
  {
    v64 = v217;
    swift_beginAccess();
    if (!__OFADD__(*v64, 1))
    {
      ++*v64;
      goto LABEL_10;
    }

LABEL_167:
    __break(1u);
LABEL_168:
    if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v114 = 10;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v114 = 11;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v114 = 12;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v114 = 13;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v114 = 14;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v114 = 15;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v114 = 16;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v114 = 17;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v114 = 18;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v114 = 19;
      goto LABEL_356;
    }

LABEL_189:
    if ([v59 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v114 = 20;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v114 = 21;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v114 = 22;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v114 = 23;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v114 = 24;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v114 = 25;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v114 = 26;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v114 = 27;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v114 = 28;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v114 = 29;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v114 = 30;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v114 = 31;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v114 = 32;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v114 = 33;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v114 = 34;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v114 = 35;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v114 = 36;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v114 = 37;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v114 = 38;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v114 = 39;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v114 = 40;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v114 = 41;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v114 = 42;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v114 = 43;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v114 = 44;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v114 = 45;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v114 = 46;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v114 = 47;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v114 = 48;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v114 = 49;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v114 = 50;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v114 = 51;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v114 = 52;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v114 = 53;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v114 = 54;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v114 = 55;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v114 = 56;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v114 = 57;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v114 = 58;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v114 = 59;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v114 = 60;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v114 = 61;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v114 = 62;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v114 = 63;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v114 = 64;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v114 = 65;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v114 = 66;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v114 = 67;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v114 = 68;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v114 = 69;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v114 = 70;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v114 = 71;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v114 = 72;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v114 = 73;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v114 = 74;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v114 = 75;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v114 = 76;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v114 = 77;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v114 = 78;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v114 = 79;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v114 = 80;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v114 = 81;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v114 = 82;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v114 = 83;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v114 = 84;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v114 = 85;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v114 = 87;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v114 = 88;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v114 = 89;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v114 = 90;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v114 = 91;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v114 = 92;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v114 = 93;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v114 = 94;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v114 = 95;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v114 = 96;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v114 = 97;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v114 = 98;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v114 = 99;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v114 = 100;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v114 = 101;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v114 = 102;
    }

    else if ([v59 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v114 = 103;
    }

    else
    {
      v114 = 0;
    }

    goto LABEL_356;
  }

LABEL_10:
  sub_258E2BA80(a1, v249);
  v65 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v245[0] = 0xD000000000000015;
  v245[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v66 = *(a1 + 16);
  v216 = v62;
  if (v66 && (v67 = sub_258E2EA2C(&v246), (v68 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v67, &v247);
    sub_258E0F590(&v246);
    if (swift_dynamicCast())
    {
      v69 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v245[0], v245[1]);

      v217 = v69;
    }

    else
    {
      v217 = v65;
    }
  }

  else
  {
    v217 = v65;
    sub_258E0F590(&v246);
  }

  v70 = sub_258F09A70();
  v62 = *(*(v70 - 8) + 56);
  v230 = v70;
  (v62)(v231, 1, 1);
  strcpy(v245, "assistant_id");
  BYTE5(v245[1]) = 0;
  HIWORD(v245[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v71 = sub_258E2EA2C(&v246), (v72 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v71, &v247);
    sub_258E0F590(&v246);
    if (swift_dynamicCast())
    {
      v73 = v229;
      sub_258F09A30();

      v74 = v231;
      sub_258DE2184(v231, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v73, v74, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v246);
  }

  v75 = sub_258F0A350();
  v59 = sub_258F0A820();
  if (os_log_type_enabled(v75, v59))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_258DD8000, v75, v59, "observed NilAssistantId", v76, 2u);
    MEMORY[0x259C9EF40](v76, -1, -1);
  }

  v77 = v220;
  swift_beginAccess();
  if (__OFADD__(*v77, 1))
  {
    __break(1u);
    goto LABEL_161;
  }

  ++*v77;
LABEL_25:
  (v62)(v233, 1, 1, v230);
  v243 = 0xD000000000000015;
  v244 = 0x8000000258F189D0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v78 = sub_258E2EA2C(&v246), (v79 & 1) == 0))
  {
    sub_258E0F590(&v246);
LABEL_30:
    v82 = sub_258F0A350();
    v59 = sub_258F0A820();
    if (os_log_type_enabled(v82, v59))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_258DD8000, v82, v59, "observed NilDeviceAggregationId", v83, 2u);
      MEMORY[0x259C9EF40](v83, -1, -1);
    }

    v84 = v219;
    swift_beginAccess();
    if (!__OFADD__(*v84, 1))
    {
      ++*v84;
      goto LABEL_34;
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v78, &v247);
  sub_258E0F590(&v246);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v80 = v229;
  sub_258F09A30();

  v59 = &unk_258F0F8E0;
  v81 = v233;
  sub_258DE2184(v233, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v80, v81, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v62)(v232, 1, 1, v230);
  v241 = 0xD000000000000013;
  v242 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v59 = a1, v85 = sub_258E2EA2C(&v246), (v86 & 1) == 0))
  {
    sub_258E0F590(&v246);
LABEL_39:
    v89 = v218;
    swift_beginAccess();
    if (!__OFADD__(*v89, 1))
    {
      ++*v89;
      goto LABEL_41;
    }

LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v85, &v247);
  sub_258E0F590(&v246);
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  v87 = v229;
  sub_258F09A30();

  v88 = v232;
  sub_258DE2184(v232, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v87, v88, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  *&v247 = 0xD000000000000029;
  *(&v247 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(a1 + 16) && (v90 = sub_258E2EA2C(&v246), (v91 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v90, &v247);
    sub_258E0F590(&v246);
  }

  else
  {
    sub_258E0F590(&v246);
    v247 = 0u;
    v248 = 0u;
  }

  v219 = sub_258E80360(&v247);
  LODWORD(v218) = v92;
  sub_258DE2184(&v247, &qword_27F989868, &unk_258F12D70);
  *&v247 = 0xD00000000000002BLL;
  *(&v247 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(a1 + 16) && (v93 = sub_258E2EA2C(&v246), (v94 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v93, &v247);
    sub_258E0F590(&v246);
  }

  else
  {
    sub_258E0F590(&v246);
    v247 = 0u;
    v248 = 0u;
  }

  v215 = sub_258E80360(&v247);
  v214 = v95;
  sub_258DE2184(&v247, &qword_27F989868, &unk_258F12D70);
  v239 = 0xD000000000000016;
  v240 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v96 = sub_258E2EA2C(&v246), (v97 & 1) == 0))
  {
    sub_258E0F590(&v246);
LABEL_55:
    v101 = sub_258F0A350();
    v59 = sub_258F0A820();
    if (os_log_type_enabled(v101, v59))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_258DD8000, v101, v59, "observed NilResponseCategory", v102, 2u);
      v103 = v102;
      v58 = v236;
      MEMORY[0x259C9EF40](v103, -1, -1);
    }

    swift_beginAccess();
    v104 = *a9 + 1;
    if (!__OFADD__(*a9, 1))
    {
      HIDWORD(v213[0]) = 0;
      *a9 = v104;
      LODWORD(v213[0]) = 1;
      goto LABEL_59;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    if ([v59 isEqualToString:{@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON", v213[0]}])
    {
      v114 = 9;
      goto LABEL_356;
    }

    goto LABEL_168;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v96, &v247);
  sub_258E0F590(&v246);
  if (!swift_dynamicCast())
  {
    goto LABEL_55;
  }

  v98 = v239;
  v99 = v240;

  v100._countAndFlagsBits = v98;
  v100._object = v99;
  SiriReponseCategory.init(rawValue:)(v100);
  v59 = v246;
  if (v246 == 21)
  {
    __break(1u);
    goto LABEL_189;
  }

  LOBYTE(v247) = v59;
  HIDWORD(v213[0]) = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v247);
  LODWORD(v213[0]) = 0;
LABEL_59:
  v220 = a10;
  v237 = 0x6974756F725F6569;
  v238 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  if (*(a1 + 16) && (v105 = sub_258E2EA2C(&v246), (v106 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v105, &v247);
    sub_258E0F590(&v246);
    if (swift_dynamicCast())
    {
      v58 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v237, v238);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v246);
  }

  v107 = sub_258F0A350();
  v108 = sub_258F0A800();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_258DD8000, v107, v108, "#ODDIMetricsCalculator: No ieRouting found.", v109, 2u);
    MEMORY[0x259C9EF40](v109, -1, -1);
  }

  v58 = 0;
LABEL_67:
  v237 = 0xD000000000000011;
  v238 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v110 = *(a1 + 16);
  v213[1] = v12;
  if (!v110 || (v111 = sub_258E2EA2C(&v246), (v112 & 1) == 0))
  {
    sub_258E0F590(&v246);
    goto LABEL_73;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v111, &v247);
  sub_258E0F590(&v246);
  if (!swift_dynamicCast())
  {
LABEL_73:
    v114 = 0;
    v115 = 1;
    goto LABEL_74;
  }

  v113 = sub_258F0A4E0();

  v59 = v113;
  if (([v59 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v59 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v114 = 1;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v114 = 2;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v114 = 3;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v114 = 4;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v114 = 5;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v114 = 6;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v114 = 7;
      goto LABEL_356;
    }

    if ([v59 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v114 = 8;
      goto LABEL_356;
    }

    goto LABEL_164;
  }

  v114 = 0;
LABEL_356:

  v115 = 0;
LABEL_74:
  v116 = v235;
  (v62)(v235, 1, 1, v230);
  v117 = v228;
  v118 = &qword_27F988730;
  sub_258DE20C0(v233, v116 + *(v228 + 20), &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v232, v116 + *(v117 + 6), &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_156;
  }

  if (v119 <= -1.0)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v119 >= 1.84467441e19)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (is_mul_ok(v119, 0x3E8uLL))
  {
    LODWORD(v234) = v115;
    v120 = v114;
    v121 = v58;
    v122 = 1000 * v119;
    v123 = [objc_opt_self() sharedPreferences];
    v124 = [v123 longLivedIdentifierUploadingEnabled];

    v125 = v235;
    v126 = v235 + *(v117 + 7);
    *v126 = v122;
    *(v126 + 8) = 0;
    *(v125 + *(v117 + 8)) = v216;
    v127 = v125 + *(v117 + 9);
    *v127 = v219;
    *(v127 + 8) = v218 & 1;
    v128 = v125 + *(v117 + 10);
    *v128 = v215;
    *(v128 + 8) = v214 & 1;
    v129 = v125 + *(v117 + 11);
    *v129 = 3;
    *(v129 + 4) = 0;
    *(v125 + *(v117 + 12)) = v124 ^ 1;
    type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    swift_allocObject();
    v130 = DeviceUsageMetricsBuilderImpl.init()();
    v131 = v229;
    sub_258DE20C0(v231, v229, &qword_27F988730, &unk_258F0F8E0);
    v132 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v131, v130 + v132, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v237 = 0x5F746375646F7270;
    v238 = 0xEA00000000006469;
    sub_258F0AA80();
    if (*(a1 + 16) && (v133 = sub_258E2EA2C(&v246), (v134 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v133, &v247);
      sub_258E0F590(&v246);
      if (swift_dynamicCast())
      {
        v135 = v237;
        v136 = v238;
        v137 = v121;
        if (v237 != 0x4E41545349535341 || v238 != 0xE900000000000054)
        {
          v141 = v120;
          if (sub_258F0AD80())
          {

            v138 = 1;
            v139 = v227;
            v140 = v226;
          }

          else
          {
            if (v135 == 0x4F49544154434944 && v136 == 0xE90000000000004ELL)
            {

              v138 = 2;
            }

            else
            {
              v210 = sub_258F0AD80();

              if (v210)
              {
                v138 = 2;
              }

              else
              {
                v138 = 0;
              }
            }

            v139 = v227;
            v140 = v226;
          }

LABEL_87:
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v138;
          sub_258E7F2AC(v235, v139, type metadata accessor for EventMetadata);
          (*(v140 + 56))(v139, 0, 1, v117);
          v142 = v221;
          sub_258E2EAD8(v139, v221, &qword_27F9894E0, &unk_258F106A0);
          v143 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v142, v130 + v143, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v247, "device_type");
          HIDWORD(v247) = -352321536;
          sub_258F0AA80();
          if (*(a1 + 16) && (v144 = sub_258E2EA2C(&v246), (v145 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v144, &v247);
            sub_258E0F590(&v246);
            v146 = swift_dynamicCast();
            v147 = v237;
            v148 = v238;
            if (!v146)
            {
              v147 = 0;
              v148 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v147 = 0;
            v148 = 0;
          }

          v149 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          *v149 = v147;
          v149[1] = v148;

          strcpy(&v247, "system_build");
          BYTE13(v247) = 0;
          HIWORD(v247) = -5120;
          sub_258F0AA80();
          if (*(a1 + 16) && (v150 = sub_258E2EA2C(&v246), (v151 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v150, &v247);
            sub_258E0F590(&v246);
            v152 = swift_dynamicCast();
            v153 = v237;
            v154 = v238;
            if (!v152)
            {
              v153 = 0;
              v154 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v153 = 0;
            v154 = 0;
          }

          v155 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          *v155 = v153;
          v155[1] = v154;

          v156 = v249;
          v157 = *(v249 + 44);
          v158 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v158 = *(v249 + 40);
          *(v158 + 4) = v157;
          v159 = *(v156 + 12);
          v160 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v160 = *(v156 + 8);
          *(v160 + 4) = v159;
          v161 = *(v156 + 32);
          v162 = *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v161;

          v163 = *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v164 = v217;
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v217;
          v165 = v161;

          v166 = *(v156 + 4);
          v167 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v167 = *v156;
          *(v167 + 4) = v166;
          *&v247 = 0xD000000000000012;
          *(&v247 + 1) = 0x8000000258F1A600;
          v62 = v164;
          sub_258F0AA80();
          if (*(a1 + 16) && (v168 = sub_258E2EA2C(&v246), (v169 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v168, &v247);
            sub_258E0F590(&v246);
            v170 = swift_dynamicCast();
            v171 = v237;
            v172 = v238;
            if (!v170)
            {
              v171 = 0;
              v172 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v171 = 0;
            v172 = 0;
          }

          v173 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          *v173 = v171;
          v173[1] = v172;

          *&v247 = 0xD000000000000013;
          *(&v247 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(a1 + 16) && (v174 = sub_258E2EA2C(&v246), (v175 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v174, &v247);
            sub_258E0F590(&v246);
            v176 = swift_dynamicCast();
            v177 = v237;
            v178 = v238;
            if (!v176)
            {
              v177 = 0;
              v178 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v177 = 0;
            v178 = 0;
          }

          v179 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          *v179 = v177;
          v179[1] = v178;

          v180 = v249;
          v181 = *(v249 + 20);
          v182 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v182 = *(v249 + 16);
          *(v182 + 4) = v181;
          v183 = *(v180 + 28);
          v184 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v184 = *(v180 + 24);
          *(v184 + 4) = v183;
          strcpy(&v247, "sub_domain");
          BYTE11(v247) = 0;
          HIDWORD(v247) = -369098752;
          sub_258F0AA80();
          if (*(a1 + 16) && (v185 = sub_258E2EA2C(&v246), (v186 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v185, &v247);
            sub_258E0F590(&v246);
            v187 = swift_dynamicCast();
            v188 = v237;
            v189 = v238;
            if (!v187)
            {
              v188 = 0;
              v189 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v188 = 0;
            v189 = 0;
          }

          v190 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          *v190 = v188;
          v190[1] = v189;

          strcpy(&v247, "turn_cnt");
          BYTE9(v247) = 0;
          WORD5(v247) = 0;
          HIDWORD(v247) = -402653184;
          sub_258F0AA80();
          if (*(a1 + 16) && (v191 = sub_258E2EA2C(&v246), (v192 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v191, &v247);
            sub_258E0F590(&v246);
          }

          else
          {
            sub_258E0F590(&v246);
            v247 = 0u;
            v248 = 0u;
          }

          v117 = a11;
          v193 = sub_258E7FFA8(&v247);
          sub_258DE2184(&v247, &qword_27F989868, &unk_258F12D70);
          v194 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v194 = v193;
          *(v194 + 4) = BYTE4(v193) & 1;
          strcpy(&v247, "user_turn_cnt");
          HIWORD(v247) = -4864;
          sub_258F0AA80();
          if (*(a1 + 16) && (v195 = sub_258E2EA2C(&v246), (v196 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v195, &v247);
            sub_258E0F590(&v246);
          }

          else
          {
            sub_258E0F590(&v246);
            v247 = 0u;
            v248 = 0u;
          }

          v197 = sub_258E7FFA8(&v247);
          sub_258DE2184(&v247, &qword_27F989868, &unk_258F12D70);
          v198 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v198 = v197;
          *(v198 + 4) = BYTE4(v197) & 1;
          *&v247 = 0xD000000000000010;
          *(&v247 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          if (*(a1 + 16) && (v199 = sub_258E2EA2C(&v246), (v200 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 56) + 32 * v199, &v247);
            sub_258E0F590(&v246);
            v201 = swift_dynamicCast();
            v202 = v237;
            v203 = v238;
            if (!v201)
            {
              v202 = 0;
              v203 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v246);
            v202 = 0;
            v203 = 0;
          }

          v115 = v223;
          v204 = (v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          *v204 = v202;
          v204[1] = v203;

          v205 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v205 = HIDWORD(v213[0]);
          *(v205 + 4) = v213[0];
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v249 + *(v222 + 44));

          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(a1);
          *(v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v137;

          v206 = v130 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v206 = v141;
          *(v206 + 4) = v234;
          v58 = v225;
          sub_258E4D51C(v225);

          sub_258E7F2AC(v58, v115, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v118 = *a11;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a11 = v118;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_126;
          }

          goto LABEL_159;
        }

        v138 = 1;
        v139 = v227;
        v140 = v226;
LABEL_86:
        v141 = v120;
        goto LABEL_87;
      }
    }

    else
    {
      sub_258E0F590(&v246);
    }

    v139 = v227;
    v140 = v226;
    v137 = v121;
    v138 = 0;
    goto LABEL_86;
  }

LABEL_158:
  __break(1u);
LABEL_159:
  v211 = v118[2];

  v212 = sub_258DE2968(0, v211 + 1, 1, v118);
  *v117 = v212;

  v118 = v212;
LABEL_126:
  v209 = v118[2];
  v208 = v118[3];
  if (v209 >= v208 >> 1)
  {
    v118 = sub_258DE2968((v208 > 1), v209 + 1, 1, v118);
  }

  v118[2] = v209 + 1;
  sub_258E7F314(v115, v118 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v209);
  *v117 = v118;
  swift_endAccess();

  sub_258E7F378(v58, type metadata accessor for DeviceUsageMetrics);
  sub_258E7F378(v235, type metadata accessor for EventMetadata);
  sub_258DE2184(v232, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v233, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v231, &qword_27F988730, &unk_258F0F8E0);
  sub_258E7F378(v249, type metadata accessor for CommonDigestElements);
}

void sub_258E7B8D8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v238 = a8;
  v239 = a7;
  v240 = a6;
  v236 = a5;
  v237 = a4;
  v251 = a3;
  v15 = *a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v242 = v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v232 - v21;
  v23 = type metadata accessor for DeviceUsageMetrics(0);
  v245 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v27 = v232 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v246 = v232 - v29;
  v249 = type metadata accessor for EventMetadata(0);
  v247 = *(v249 - 8);
  MEMORY[0x28223BE20](v249, v30);
  v32 = (v232 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v253 = v232 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v254 = (v232 - v39);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v250 = v232 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v252 = (v232 - v44);
  v243 = type metadata accessor for CommonDigestElements(0);
  MEMORY[0x28223BE20](v243, v45);
  v256 = v232 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = qword_280CC6078;

  v257 = a2;
  v255 = v47;
  v48 = sub_258F0A350();
  v49 = sub_258F0A810();

  v50 = os_log_type_enabled(v48, v49);
  v270 = a1;
  v244 = v27;
  v248 = v22;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v267 = v52;
    *v51 = 136315138;
    v53 = sub_258F0A420();
    v55 = v32;
    v56 = v12;
    v57 = sub_258DE3018(v53, v54, &v267);

    *(v51 + 4) = v57;
    v12 = v56;
    v32 = v55;
    a1 = v270;
    _os_log_impl(&dword_258DD8000, v48, v49, "ODDMetrics row data: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x259C9EF40](v52, -1, -1);
    MEMORY[0x259C9EF40](v51, -1, -1);
  }

  v59 = *(v15 + 80);
  v58 = *(v15 + 88);
  v60 = (*(v58 + 24))(v59, v58);
  v62 = v61;
  v241 = v58;
  v64 = type metadata accessor for ODDIMetricsCalculator(0, v59, v58, v63);
  WitnessTable = swift_getWitnessTable();
  v66 = v60;
  v67 = v257;
  v68 = sub_258E3A7C4(a1, v251, v66, v62, v64, WitnessTable);
  v70 = v69;

  if ((v70 & 0x10000) != 0)
  {

    return;
  }

  if (v70)
  {
    v67 = v237;
    swift_beginAccess();
    v71 = *(v67 + 16);
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      __break(1u);
      goto LABEL_165;
    }

    *(v67 + 16) = v73;
  }

  if ((v70 & 0x100) != 0)
  {
    v74 = v236;
    swift_beginAccess();
    v75 = *(v74 + 2);
    v72 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v72)
    {
      *(v74 + 2) = v76;
      goto LABEL_10;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v135 = 10;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v135 = 11;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v135 = 12;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v135 = 13;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v135 = 14;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v135 = 15;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v135 = 16;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v135 = 17;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v135 = 18;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v135 = 19;
      goto LABEL_354;
    }

LABEL_187:
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v135 = 20;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v135 = 21;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v135 = 22;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v135 = 23;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v135 = 24;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v135 = 25;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v135 = 26;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v135 = 27;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v135 = 28;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v135 = 29;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v135 = 30;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v135 = 31;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v135 = 32;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v135 = 33;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v135 = 34;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v135 = 35;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v135 = 36;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v135 = 37;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v135 = 38;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v135 = 39;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v135 = 40;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v135 = 41;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v135 = 42;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v135 = 43;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v135 = 44;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v135 = 45;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v135 = 46;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v135 = 47;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v135 = 48;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v135 = 49;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v135 = 50;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v135 = 51;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v135 = 52;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v135 = 53;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v135 = 54;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v135 = 55;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v135 = 56;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v135 = 57;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v135 = 58;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v135 = 59;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v135 = 60;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v135 = 61;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v135 = 62;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v135 = 63;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v135 = 64;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v135 = 65;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v135 = 66;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v135 = 67;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v135 = 68;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v135 = 69;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v135 = 70;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v135 = 71;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v135 = 72;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v135 = 73;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v135 = 74;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v135 = 75;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v135 = 76;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v135 = 77;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v135 = 78;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v135 = 79;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v135 = 80;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v135 = 81;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v135 = 82;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v135 = 83;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v135 = 84;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v135 = 85;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v135 = 87;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v135 = 88;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v135 = 89;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v135 = 90;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v135 = 91;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v135 = 92;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v135 = 93;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v135 = 94;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v135 = 95;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v135 = 96;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v135 = 97;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v135 = 98;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v135 = 99;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v135 = 100;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v135 = 101;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v135 = 102;
    }

    else if ([v67 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v135 = 103;
    }

    else
    {
      v135 = 0;
    }

    goto LABEL_354;
  }

LABEL_10:
  v237 = v59;
  v59 = 0xD000000000000013;
  v77 = v270;
  sub_258E394E8(v270, v64, WitnessTable, v256);
  v62 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v266[0] = 0xD000000000000015;
  v266[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v78 = *(v77 + 16);
  v235 = v68;
  if (v78 && (v79 = sub_258E2EA2C(&v267), (v80 & 1) != 0))
  {
    sub_258DE4090(*(v77 + 56) + 32 * v79, &v268);
    sub_258E0F590(&v267);
    if (swift_dynamicCast())
    {
      v81 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v266[0], v266[1]);

      v77 = v270;

      v236 = v81;
    }

    else
    {
      v236 = v62;
    }
  }

  else
  {
    v236 = v62;
    sub_258E0F590(&v267);
  }

  v82 = sub_258F09A70();
  v83 = *(v82 - 8);
  v68 = *(v83 + 56);
  WitnessTable = v83 + 56;
  (v68)(v252, 1, 1, v82);
  strcpy(v266, "assistant_id");
  BYTE5(v266[1]) = 0;
  HIWORD(v266[1]) = -5120;
  sub_258F0AA80();
  v84 = *(v77 + 16);
  v251 = v82;
  if (v84 && (v85 = sub_258E2EA2C(&v267), (v86 & 1) != 0))
  {
    sub_258DE4090(*(v77 + 56) + 32 * v85, &v268);
    sub_258E0F590(&v267);
    if (swift_dynamicCast())
    {
      v87 = v250;
      sub_258F09A30();

      v62 = v252;
      sub_258DE2184(v252, &qword_27F988730, &unk_258F0F8E0);
      v88 = v87;
      v82 = v251;
      sub_258E2EAD8(v88, v62, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v267);
  }

  v89 = sub_258F0A350();
  v67 = sub_258F0A820();
  if (os_log_type_enabled(v89, v67))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_258DD8000, v89, v67, "observed NilAssistantId", v62, 2u);
    MEMORY[0x259C9EF40](v62, -1, -1);
  }

  v90 = v240;
  swift_beginAccess();
  v91 = *(v90 + 16);
  v72 = __OFADD__(v91, 1);
  v92 = v91 + 1;
  if (v72)
  {
    __break(1u);
    goto LABEL_159;
  }

  *(v90 + 16) = v92;
LABEL_25:
  (v68)(v254, 1, 1, v82);
  v264 = 0xD000000000000015;
  v265 = 0x8000000258F189D0;
  sub_258F0AA80();
  v93 = v270;
  if (!*(v270 + 16) || (v94 = sub_258E2EA2C(&v267), (v95 & 1) == 0))
  {
    sub_258E0F590(&v267);
LABEL_30:
    v98 = sub_258F0A350();
    v67 = sub_258F0A820();
    if (os_log_type_enabled(v98, v67))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_258DD8000, v98, v67, "observed NilDeviceAggregationId", v62, 2u);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    v99 = v239;
    swift_beginAccess();
    v100 = *(v99 + 16);
    v72 = __OFADD__(v100, 1);
    v101 = v100 + 1;
    if (!v72)
    {
      *(v99 + 16) = v101;
      goto LABEL_34;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  sub_258DE4090(*(v93 + 56) + 32 * v94, &v268);
  sub_258E0F590(&v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v96 = v250;
  sub_258F09A30();

  v62 = v254;
  sub_258DE2184(v254, &qword_27F988730, &unk_258F0F8E0);
  v97 = v96;
  v82 = v251;
  sub_258E2EAD8(v97, v62, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v68)(v253, 1, 1, v82);
  v262 = 0xD000000000000013;
  v263 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  v102 = v270;
  if (!*(v270 + 16) || (v103 = sub_258E2EA2C(&v267), (v104 & 1) == 0))
  {
    sub_258E0F590(&v267);
LABEL_39:
    v67 = v238;
    swift_beginAccess();
    v107 = *(v67 + 16);
    v72 = __OFADD__(v107, 1);
    v108 = v107 + 1;
    if (!v72)
    {
      *(v67 + 16) = v108;
      goto LABEL_41;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_258DE4090(*(v102 + 56) + 32 * v103, &v268);
  sub_258E0F590(&v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v105 = v250;
  sub_258F09A30();

  v106 = v253;
  sub_258DE2184(v253, &qword_27F988730, &unk_258F0F8E0);
  v102 = v270;
  sub_258E2EAD8(v105, v106, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  v62 = &v268;
  *&v268 = 0xD000000000000029;
  *(&v268 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v102 + 16) && (v109 = sub_258E2EA2C(&v267), (v110 & 1) != 0))
  {
    sub_258DE4090(*(v102 + 56) + 32 * v109, &v268);
    sub_258E0F590(&v267);
  }

  else
  {
    sub_258E0F590(&v267);
    v268 = 0u;
    v269 = 0u;
  }

  v239 = sub_258E77690(&v268);
  LODWORD(v238) = v111;
  sub_258DE2184(&v268, &qword_27F989868, &unk_258F12D70);
  *&v268 = 0xD00000000000002BLL;
  *(&v268 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v102 + 16) && (v112 = sub_258E2EA2C(&v267), (v113 & 1) != 0))
  {
    sub_258DE4090(*(v102 + 56) + 32 * v112, &v268);
    sub_258E0F590(&v267);
  }

  else
  {
    sub_258E0F590(&v267);
    v268 = 0u;
    v269 = 0u;
  }

  v234 = sub_258E77690(&v268);
  v233 = v114;
  sub_258DE2184(&v268, &qword_27F989868, &unk_258F12D70);
  v260 = 0xD000000000000016;
  v261 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(v102 + 16) || (v115 = sub_258E2EA2C(&v267), (v116 & 1) == 0))
  {
    sub_258E0F590(&v267);
LABEL_55:
    v121 = sub_258F0A350();
    v67 = sub_258F0A820();
    if (os_log_type_enabled(v121, v67))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_258DD8000, v121, v67, "observed NilResponseCategory", v62, 2u);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    swift_beginAccess();
    v122 = *(a9 + 16);
    v72 = __OFADD__(v122, 1);
    v123 = v122 + 1;
    if (!v72)
    {
      LODWORD(v232[0]) = 0;
      *(a9 + 16) = v123;
      v120 = 1;
      goto LABEL_59;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    if ([v67 isEqualToString:{@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON", v232[0]}])
    {
      v135 = 9;
      goto LABEL_354;
    }

    goto LABEL_166;
  }

  sub_258DE4090(*(v102 + 56) + 32 * v115, &v268);
  sub_258E0F590(&v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v117 = v260;
  v118 = v261;

  v119._countAndFlagsBits = v117;
  v119._object = v118;
  SiriReponseCategory.init(rawValue:)(v119);
  v67 = v267;
  if (v267 == 21)
  {
    __break(1u);
    goto LABEL_187;
  }

  LOBYTE(v268) = v67;
  LODWORD(v232[0]) = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v268);
  v120 = 0;
LABEL_59:
  v240 = a10;
  v258 = 0x6974756F725F6569;
  v259 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  v124 = v270;
  if (*(v270 + 16) && (v125 = sub_258E2EA2C(&v267), (v126 & 1) != 0))
  {
    sub_258DE4090(*(v124 + 56) + 32 * v125, &v268);
    sub_258E0F590(&v267);
    if (swift_dynamicCast())
    {
      v62 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v258, v259);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v267);
  }

  v127 = sub_258F0A350();
  v128 = sub_258F0A800();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_258DD8000, v127, v128, "#ODDIMetricsCalculator: No ieRouting found.", v129, 2u);
    MEMORY[0x259C9EF40](v129, -1, -1);
  }

  v62 = 0;
LABEL_67:
  v258 = 0xD000000000000011;
  v259 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v130 = v270;
  v131 = *(v270 + 16);
  v232[1] = v12;
  HIDWORD(v232[0]) = v120;
  if (!v131 || (v132 = sub_258E2EA2C(&v267), (v133 & 1) == 0))
  {
    sub_258E0F590(&v267);
    goto LABEL_73;
  }

  sub_258DE4090(*(v130 + 56) + 32 * v132, &v268);
  sub_258E0F590(&v267);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_73:
    v135 = 0;
    LODWORD(v255) = 1;
    goto LABEL_74;
  }

  v134 = sub_258F0A4E0();

  v67 = v134;
  if (([v67 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v67 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v135 = 1;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v135 = 2;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v135 = 3;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v135 = 4;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v135 = 5;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v135 = 6;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v135 = 7;
      goto LABEL_354;
    }

    if ([v67 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v135 = 8;
      goto LABEL_354;
    }

    goto LABEL_162;
  }

  v135 = 0;
LABEL_354:

  LODWORD(v255) = 0;
LABEL_74:
  (v68)(v32, 1, 1, v251);
  v136 = v249;
  v137 = &qword_27F988730;
  sub_258DE20C0(v254, v32 + *(v249 + 20), &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v253, v32 + v136[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_154;
  }

  if (v138 <= -1.0)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v138 >= 1.84467441e19)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (is_mul_ok(v138, 0x3E8uLL))
  {
    LODWORD(v251) = v135;
    v139 = v62;
    v140 = 1000 * v138;
    v141 = (*(v241 + 32))();
    v142 = [objc_opt_self() sharedPreferences];
    v143 = [v142 longLivedIdentifierUploadingEnabled];

    v144 = v32 + v136[7];
    *v144 = v140;
    v144[8] = 0;
    *(v32 + v136[8]) = v235;
    v145 = v32 + v136[9];
    *v145 = v239;
    v145[8] = v238 & 1;
    v146 = v32 + v136[10];
    *v146 = v234;
    v146[8] = v233 & 1;
    v147 = v32 + v136[11];
    *v147 = v141;
    v147[4] = 0;
    *(v32 + v136[12]) = v143 ^ 1;
    type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    swift_allocObject();
    v148 = DeviceUsageMetricsBuilderImpl.init()();
    v149 = v250;
    sub_258DE20C0(v252, v250, &qword_27F988730, &unk_258F0F8E0);
    v150 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v149, v148 + v150, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v258 = 0x5F746375646F7270;
    v259 = 0xEA00000000006469;
    sub_258F0AA80();
    v151 = v270;
    if (*(v270 + 16) && (v152 = sub_258E2EA2C(&v267), (v153 & 1) != 0))
    {
      sub_258DE4090(*(v151 + 56) + 32 * v152, &v268);
      sub_258E0F590(&v267);
      if (swift_dynamicCast())
      {
        v154 = v258;
        v155 = v259;
        if (v258 == 0x4E41545349535341 && v259 == 0xE900000000000054 || (sub_258F0AD80() & 1) != 0)
        {

          v156 = 1;
LABEL_85:
          v157 = v248;
          v158 = v247;
LABEL_89:
          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v156;
          sub_258E7F2AC(v32, v157, type metadata accessor for EventMetadata);
          (*(v158 + 56))(v157, 0, 1, v136);
          v159 = v242;
          sub_258E2EAD8(v157, v242, &qword_27F9894E0, &unk_258F106A0);
          v160 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v159, v148 + v160, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v268, "device_type");
          HIDWORD(v268) = -352321536;
          sub_258F0AA80();
          v161 = v270;
          if (*(v270 + 16) && (v162 = sub_258E2EA2C(&v267), (v163 & 1) != 0))
          {
            sub_258DE4090(*(v161 + 56) + 32 * v162, &v268);
            sub_258E0F590(&v267);
            v164 = swift_dynamicCast();
            v165 = v258;
            v166 = v259;
            if (!v164)
            {
              v165 = 0;
              v166 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v165 = 0;
            v166 = 0;
          }

          v167 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          *v167 = v165;
          v167[1] = v166;

          strcpy(&v268, "system_build");
          BYTE13(v268) = 0;
          HIWORD(v268) = -5120;
          sub_258F0AA80();
          if (*(v161 + 16) && (v168 = sub_258E2EA2C(&v267), (v169 & 1) != 0))
          {
            sub_258DE4090(*(v161 + 56) + 32 * v168, &v268);
            sub_258E0F590(&v267);
            v170 = swift_dynamicCast();
            v171 = v258;
            v172 = v259;
            if (!v170)
            {
              v171 = 0;
              v172 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v171 = 0;
            v172 = 0;
          }

          v173 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          *v173 = v171;
          v173[1] = v172;

          v174 = v256;
          v175 = *(v256 + 44);
          v176 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v176 = *(v256 + 40);
          *(v176 + 4) = v175;
          v177 = *(v174 + 12);
          v178 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v178 = *(v174 + 8);
          *(v178 + 4) = v177;
          v179 = *(v174 + 32);
          v180 = *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v179;

          v181 = *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v182 = v236;
          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v236;
          v183 = v179;

          v184 = *(v174 + 4);
          v185 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v185 = *v174;
          *(v185 + 4) = v184;
          *&v268 = v59 - 1;
          *(&v268 + 1) = 0x8000000258F1A600;
          v68 = v182;
          sub_258F0AA80();
          v186 = v270;
          if (*(v270 + 16) && (v187 = sub_258E2EA2C(&v267), (v188 & 1) != 0))
          {
            sub_258DE4090(*(v186 + 56) + 32 * v187, &v268);
            sub_258E0F590(&v267);
            v189 = swift_dynamicCast();
            v190 = v258;
            v191 = v259;
            if (!v189)
            {
              v190 = 0;
              v191 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v190 = 0;
            v191 = 0;
          }

          v192 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          *v192 = v190;
          v192[1] = v191;

          *&v268 = v59;
          *(&v268 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(v186 + 16) && (v193 = sub_258E2EA2C(&v267), (v194 & 1) != 0))
          {
            sub_258DE4090(*(v186 + 56) + 32 * v193, &v268);
            sub_258E0F590(&v267);
            v195 = swift_dynamicCast();
            v196 = v258;
            v197 = v259;
            if (!v195)
            {
              v196 = 0;
              v197 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v196 = 0;
            v197 = 0;
          }

          v198 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          *v198 = v196;
          v198[1] = v197;

          v199 = v256;
          v200 = *(v256 + 20);
          v201 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v201 = *(v256 + 16);
          *(v201 + 4) = v200;
          v202 = *(v199 + 28);
          v203 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v203 = *(v199 + 24);
          *(v203 + 4) = v202;
          strcpy(&v268, "sub_domain");
          BYTE11(v268) = 0;
          HIDWORD(v268) = -369098752;
          sub_258F0AA80();
          if (*(v186 + 16) && (v204 = sub_258E2EA2C(&v267), (v205 & 1) != 0))
          {
            sub_258DE4090(*(v186 + 56) + 32 * v204, &v268);
            sub_258E0F590(&v267);
            v206 = swift_dynamicCast();
            v207 = v258;
            v208 = v259;
            if (!v206)
            {
              v207 = 0;
              v208 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v207 = 0;
            v208 = 0;
          }

          v209 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          *v209 = v207;
          v209[1] = v208;

          strcpy(&v268, "turn_cnt");
          BYTE9(v268) = 0;
          WORD5(v268) = 0;
          HIDWORD(v268) = -402653184;
          sub_258F0AA80();
          if (*(v186 + 16) && (v210 = sub_258E2EA2C(&v267), (v211 & 1) != 0))
          {
            sub_258DE4090(*(v186 + 56) + 32 * v210, &v268);
            sub_258E0F590(&v267);
          }

          else
          {
            sub_258E0F590(&v267);
            v268 = 0u;
            v269 = 0u;
          }

          v212 = sub_258E772E0(&v268);
          sub_258DE2184(&v268, &qword_27F989868, &unk_258F12D70);
          v213 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v213 = v212;
          *(v213 + 4) = BYTE4(v212) & 1;
          strcpy(&v268, "user_turn_cnt");
          HIWORD(v268) = -4864;
          sub_258F0AA80();
          v214 = v270;
          if (*(v270 + 16) && (v215 = sub_258E2EA2C(&v267), (v216 & 1) != 0))
          {
            sub_258DE4090(*(v214 + 56) + 32 * v215, &v268);
            sub_258E0F590(&v267);
          }

          else
          {
            sub_258E0F590(&v267);
            v268 = 0u;
            v269 = 0u;
          }

          WitnessTable = a11;
          v217 = sub_258E772E0(&v268);
          sub_258DE2184(&v268, &qword_27F989868, &unk_258F12D70);
          v218 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v218 = v217;
          *(v218 + 4) = BYTE4(v217) & 1;
          *&v268 = v59 - 3;
          *(&v268 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          v219 = v270;
          if (*(v270 + 16) && (v220 = sub_258E2EA2C(&v267), (v221 & 1) != 0))
          {
            sub_258DE4090(*(v219 + 56) + 32 * v220, &v268);
            sub_258E0F590(&v267);
            v222 = swift_dynamicCast();
            v223 = v258;
            v224 = v259;
            if (!v222)
            {
              v223 = 0;
              v224 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v267);
            v223 = 0;
            v224 = 0;
          }

          v59 = v244;
          v136 = v32;
          v225 = (v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          *v225 = v223;
          v225[1] = v224;

          v226 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v226 = v232[0];
          *(v226 + 4) = BYTE4(v232[0]);
          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v256 + *(v243 + 44));

          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(v270);
          *(v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v139;

          v227 = v148 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v227 = v251;
          *(v227 + 4) = v255;
          v135 = v246;
          sub_258E4D51C(v246);

          sub_258E7F2AC(v135, v59, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v137 = *(a11 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a11 + 16) = v137;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_128;
          }

          goto LABEL_157;
        }

        if (v154 == 0x4F49544154434944 && v155 == 0xE90000000000004ELL)
        {

          v156 = 2;
          goto LABEL_85;
        }

        v231 = sub_258F0AD80();

        v157 = v248;
        v158 = v247;
        if (v231)
        {
          v156 = 2;
          goto LABEL_89;
        }

LABEL_88:
        v156 = 0;
        goto LABEL_89;
      }
    }

    else
    {
      sub_258E0F590(&v267);
    }

    v157 = v248;
    v158 = v247;
    goto LABEL_88;
  }

LABEL_156:
  __break(1u);
LABEL_157:
  v137 = sub_258DE2968(0, v137[2] + 1, 1, v137);
  *(WitnessTable + 16) = v137;
LABEL_128:
  v230 = v137[2];
  v229 = v137[3];
  if (v230 >= v229 >> 1)
  {
    v137 = sub_258DE2968((v229 > 1), v230 + 1, 1, v137);
  }

  v137[2] = v230 + 1;
  sub_258E7F314(v59, v137 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v230);
  *(WitnessTable + 16) = v137;
  swift_endAccess();

  sub_258E7F378(v135, type metadata accessor for DeviceUsageMetrics);
  sub_258E7F378(v136, type metadata accessor for EventMetadata);
  sub_258DE2184(v253, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v254, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v252, &qword_27F988730, &unk_258F0F8E0);
  sub_258E7F378(v256, type metadata accessor for CommonDigestElements);
}

uint64_t sub_258E7E3B0(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v9), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 27;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v5 = sub_258E2EA2C(v9), (v6 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v5, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 1;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  sub_258F0AA80();
  if (*(a1 + 16) && (v7 = sub_258E2EA2C(v9), (v8 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v7, v10);
    sub_258E0F590(v9);
    if (swift_dynamicCast())
    {
      return 1;
    }
  }

  else
  {
    sub_258E0F590(v9);
  }

  return 2;
}

uint64_t sub_258E7E58C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_258F09F50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ODDIMetricsCalculator(0, *(v8 + 80), *(v8 + 88), v14);
  WitnessTable = swift_getWitnessTable();
  sub_258E38C54(a1, a2, a3, v15, WitnessTable);
  v18[1] = a4;
  (*(v10 + 104))(v13, *MEMORY[0x277D5D9D8], v9);
  sub_258E3B420(a1, a2, a3, v13, v15, &off_286A2D6F8);
  return (*(v10 + 8))(v13, v9);
}

char *ODDIMetricsCalculator.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = qword_280CC6078;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[qword_280CC6080]);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 136)]);
  return v0;
}

uint64_t ODDIMetricsCalculator.__deallocating_deinit()
{
  ODDIMetricsCalculator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258E7E870()
{
  sub_258E7E988();
}

id sub_258E7E8B0()
{
  v0 = sub_258E7E978();

  return v0;
}

uint64_t sub_258E7E8DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E77ADC(a1);
}

char *sub_258E7E990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for CAAnalyticsEventSubmitter();
  v12 = swift_allocObject();
  *(v5 + 5) = v11;
  *(v5 + 6) = &off_286A2C648;
  *(v5 + 2) = v12;
  (*(*(*(v10 + 80) - 8) + 16))(&v5[*(v10 + 136)], a1);
  v13 = qword_280CC6078;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v5[v13], a2, v14);
  *&v5[qword_280CC6070] = a4;
  v16 = &v5[qword_280CC6080];
  *(v16 + 3) = sub_258F09C20();
  *(v16 + 4) = &off_286A2FA30;
  *v16 = a3;
  sub_258F09F30();
  v17 = a4;

  v18 = sub_258F09F20();
  (*(v15 + 8))(a2, v14);
  *(v5 + 7) = v18;
  return v5;
}

char *sub_258E7EB2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ODDIMetricsCalculator(0, a5, a6, a4);
  swift_allocObject();
  return sub_258E7E990(a1, a2, a3, a4);
}

void sub_258E7EBB0(uint64_t a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_258E7B8D8(a1, *(v1 + 32), v1 + v5, *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_258E7ECB4()
{
  result = qword_27F989D08;
  if (!qword_27F989D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989D08);
  }

  return result;
}

uint64_t sub_258E7ED08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E7ED44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E7ED80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E7EDBC()
{
  result = qword_27F989D10[0];
  if (!qword_27F989D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F989D10);
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsConcluding.conclude(with:endTimes:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258E08B24;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E7EFCC(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

unint64_t sub_258E7F204()
{
  result = qword_27F989DA8;
  if (!qword_27F989DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989DA8);
  }

  return result;
}

unint64_t sub_258E7F258()
{
  result = qword_27F989DB0;
  if (!qword_27F989DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989DB0);
  }

  return result;
}

uint64_t sub_258E7F2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E7F314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E7F378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ODDIMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ODDIMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E7F520(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDIMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t ODDIMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDIMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E7F6FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258E7F500();
}

uint64_t type metadata accessor for ODDIMetricsDataProvider(uint64_t a1)
{
  result = qword_27F989DC0;
  if (!qword_27F989DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

char *sub_258E7F940(uint64_t a1, char *a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BiomeODDIMetricsConcluder(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_258E8792C(a1, v13, type metadata accessor for BiomeODDIMetricsConcluder);
  v14 = *(v6 + 16);
  v27 = a2;
  v25 = v14;
  v14(v9, a2, v5);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v16 = sub_258F0A4E0();

  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E58, qword_258F12D90);
  v18 = swift_allocObject();
  v19 = type metadata accessor for CAAnalyticsEventSubmitter();
  v20 = swift_allocObject();
  *(v18 + 5) = v19;
  *(v18 + 6) = &off_286A2C648;
  *(v18 + 2) = v20;
  sub_258E8792C(v13, &v18[*(*v18 + 136)], type metadata accessor for BiomeODDIMetricsConcluder);
  v25(&v18[qword_280CC6078], v9, v5);
  *&v18[qword_280CC6070] = v17;
  v21 = &v18[qword_280CC6080];
  v21[3] = sub_258F09C20();
  v21[4] = &off_286A2FA30;
  *v21 = v26;
  v22 = sub_258F09F20();

  v23 = *(v6 + 8);
  v23(v27, v5);
  sub_258E87994(v28, type metadata accessor for BiomeODDIMetricsConcluder);
  v23(v9, v5);
  sub_258E87994(v13, type metadata accessor for BiomeODDIMetricsConcluder);
  *(v18 + 7) = v22;
  return v18;
}

char *sub_258E7FC74(uint64_t a1, char *a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_258E8792C(a1, v13, type metadata accessor for PoirotODDIMetricsConcluder);
  v14 = *(v6 + 16);
  v27 = a2;
  v25 = v14;
  v14(v9, a2, v5);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v16 = sub_258F0A4E0();

  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E50, &qword_258F12D88);
  v18 = swift_allocObject();
  v19 = type metadata accessor for CAAnalyticsEventSubmitter();
  v20 = swift_allocObject();
  *(v18 + 5) = v19;
  *(v18 + 6) = &off_286A2C648;
  *(v18 + 2) = v20;
  sub_258E8792C(v13, &v18[*(*v18 + 136)], type metadata accessor for PoirotODDIMetricsConcluder);
  v25(&v18[qword_280CC6078], v9, v5);
  *&v18[qword_280CC6070] = v17;
  v21 = &v18[qword_280CC6080];
  v21[3] = sub_258F09C20();
  v21[4] = &off_286A2FA30;
  *v21 = v26;
  v22 = sub_258F09F20();

  v23 = *(v6 + 8);
  v23(v27, v5);
  sub_258E87994(v28, type metadata accessor for PoirotODDIMetricsConcluder);
  v23(v9, v5);
  sub_258E87994(v13, type metadata accessor for PoirotODDIMetricsConcluder);
  *(v18 + 7) = v22;
  return v18;
}

unint64_t sub_258E7FFAC(uint64_t a1)
{
  sub_258DE20C0(a1, &v23, &qword_27F989868, &unk_258F12D70);
  if (v24)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v20;
      return v3 | (v2 << 32);
    }
  }

  else
  {
    sub_258DE2184(&v23, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v18, &qword_27F989868, &unk_258F12D70);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_258DDA76C(&v20, &v23);
        v4 = __swift_project_boxed_opaque_existential_1(&v23, v24);
        MEMORY[0x28223BE20](v4, v4);
        (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F258();
        sub_258F0AB80();
        v3 = v20;
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v2 = 0;
        return v3 | (v2 << 32);
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v18, &qword_27F989868, &unk_258F12D70);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_258DE2184(&v20, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v20, &qword_27F989868, &unk_258F12D70);
  if (*(&v21 + 1))
  {
    sub_258DEB8B8(&v20, &v23);
    sub_258DE4090(&v23, &v20);
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      sub_258DE4090(&v20, v18);
      v11 = sub_258F0A550();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      v14 = sub_258DE3018(v11, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_258DD8000, v7, v8, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt32: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  }

  else
  {
    sub_258DE2184(&v20, &qword_27F989868, &unk_258F12D70);
  }

  v3 = 0;
  v2 = 1;
  return v3 | (v2 << 32);
}

uint64_t sub_258E80364(uint64_t a1)
{
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (v23)
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v17, &qword_27F989868, &unk_258F12D70);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_258DDA76C(&v19, &v22);
        v3 = __swift_project_boxed_opaque_existential_1(&v22, v23);
        MEMORY[0x28223BE20](v3, v3);
        (*(v5 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F204();
        sub_258F0AB80();
        v6 = v19;
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        return v6;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v17, &qword_27F989868, &unk_258F12D70);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_258DE2184(&v19, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (v23)
  {
    result = swift_dynamicCast();
    if (result)
    {
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (*&v19 > -1.0)
      {
        if (*&v19 < 1.84467441e19)
        {
          return *&v19;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, &v19, &qword_27F989868, &unk_258F12D70);
  if (*(&v20 + 1))
  {
    sub_258DEB8B8(&v19, &v22);
    sub_258DE4090(&v22, &v19);
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      sub_258DE4090(&v19, v17);
      v11 = sub_258F0A550();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      v14 = sub_258DE3018(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_258DD8000, v7, v8, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt64: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    sub_258DE2184(&v19, &qword_27F989868, &unk_258F12D70);
  }

  return 0;
}

uint64_t sub_258E807B4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_258F09F40();
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  v5 = sub_258F09B00();
  v2[57] = v5;
  v2[58] = *(v5 - 8);
  v2[59] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[60] = v6;
  v2[61] = *(v6 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E809D0, 0, 0);
}

uint64_t sub_258E809D0(uint64_t a1)
{
  v50 = v1;
  *(v1 + 552) = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 400);

  v6 = *(v5 + qword_280CC6070);
  v7 = sub_258F0A4E0();
  v45 = v6;
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v14 = *(v1 + 464);
  v13 = *(v1 + 472);
  v15 = *(v1 + 456);

  *(v1 + 336) = MEMORY[0x277D84F90];
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0u;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v16 = *(v14 + 8);
  *(v1 + 560) = v16;
  *(v1 + 568) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v15);
  v17 = sub_258DE41D4();
  *(v1 + 576) = v17;
  v44 = v17;
  v18 = sub_258F0A4E0();
  v19 = [v45 BOOLForKey_];

  if (v19)
  {
    sub_258F09A10();
  }

  else
  {
    v20 = *(v1 + 472);
    v21 = *(v1 + 456);
    sub_258F09AC0();
    sub_258F09BB0();
    v16(v20, v21);
  }

  v48 = *(*(v1 + 488) + 16);
  v48(*(v1 + 520), *(v1 + 528), *(v1 + 480));
  v22 = sub_258F0A350();
  v23 = sub_258F0A800();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v1 + 520);
  v27 = *(v1 + 480);
  v26 = *(v1 + 488);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v28 = 136315138;
    sub_258E8731C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v29 = sub_258F0AD60();
    v31 = v30;
    v46 = v23;
    v32 = *(v26 + 8);
    v32(v25, v27);
    v33 = sub_258DE3018(v29, v31, &v49);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_258DD8000, v22, v46, "#ODDIMetricsCalculator: EndTime: %s.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x259C9EF40](v47, -1, -1);
    MEMORY[0x259C9EF40](v28, -1, -1);
  }

  else
  {

    v32 = *(v26 + 8);
    v32(v25, v27);
  }

  *(v1 + 584) = v32;
  v34 = *(v1 + 544);
  v35 = *(v1 + 536);
  v37 = *(v1 + 504);
  v36 = *(v1 + 512);
  v38 = *(v1 + 480);
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  v39 = sub_258F0A0B0();
  *(v1 + 592) = v39;

  v48(v36, v35, v38);
  v48(v37, v34, v38);

  v40 = sub_258E85880();
  *(v1 + 600) = 0;
  *(v1 + 608) = v41;
  *(v1 + 616) = v40;
  v42 = swift_task_alloc();
  *(v1 + 624) = v42;
  *v42 = v1;
  v42[1] = sub_258E810E4;

  return sub_258E6A310(v44, v39);
}

uint64_t sub_258E810E4(uint64_t a1)
{
  *(*v1 + 632) = a1;

  return MEMORY[0x2822009F8](sub_258E811E4, 0, 0);
}

uint64_t sub_258E811E4()
{
  sub_258F0A040();

  if (sub_258F0A070())
  {
    v1 = *(v57 + 600);
    v2 = sub_258F0A060();
    if (v2)
    {
      sub_258E78E84(v2, *(v57 + 400), *(v57 + 512), v57 + 376, (v57 + 384), (v57 + 344), v57 + 352, (v57 + 360), (v0 + 368), *(v57 + 504), (v0 + 336));
      if (v1)
      {
        v4 = *(v57 + 632);

        v5 = *(v57 + 584);
        v6 = *(v57 + 576);
        v54 = *(v57 + 544);
        v7 = *(v57 + 536);
        v8 = *(v57 + 528);
        v9 = *(v57 + 504);
        v10 = *(v57 + 480);
        v5(*(v57 + 512), v10);
        v5(v9, v10);

        v5(v8, v10);
        v5(v7, v10);
        v5(v54, v10);

        v11 = *(v57 + 8);
        goto LABEL_20;
      }

      while (1)
      {

        if ((sub_258F0A070() & 1) == 0)
        {
          break;
        }

        v3 = sub_258F0A060();
        if (!v3)
        {
          break;
        }

        sub_258E78E84(v3, *(v57 + 400), *(v57 + 512), v57 + 376, (v57 + 384), (v57 + 344), v57 + 352, (v57 + 360), (v0 + 368), *(v57 + 504), (v0 + 336));
      }
    }
  }

  v55 = (v0 + 368);
  v47 = v0 + 336;
  v12 = *(v57 + 632);
  v13 = *(v57 + 584);
  v15 = *(v57 + 504);
  v14 = *(v57 + 512);
  v16 = *(v57 + 480);

  v13(v14, v16);
  v13(v15, v16);
  v17 = sub_258F0A350();
  v18 = sub_258F0A810();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    swift_beginAccess();
    *(v19 + 4) = *(*v47 + 16);
    _os_log_impl(&dword_258DD8000, v17, v18, "#ODDIMetricsCalculator: Query yielded %ld results", v19, 0xCu);
    MEMORY[0x259C9EF40](v19, -1, -1);
  }

  swift_beginAccess();
  v20 = *(v57 + 344);
  v21 = v57;
  if (v20 >= 1)
  {
    sub_258E2D30C(v20, 0x69737361206C696ELL, 0xEF6449746E617473);
    v21 = v57;
  }

  swift_beginAccess();
  if (*v55 >= 1)
  {
    sub_258E2D30C(*v55, 0xD000000000000014, 0x8000000258F1CBD0);
    v21 = v57;
  }

  v22 = v21[55];
  v23 = v21[52];
  swift_beginAccess();
  *(v57 + 48) = v21[47];
  *(v57 + 56) = 0xD000000000000021;
  *(v57 + 64) = 0x8000000258F1C520;
  swift_beginAccess();
  *(v57 + 72) = *(v57 + 352);
  *(v57 + 80) = 0xD00000000000001CLL;
  *(v57 + 88) = 0x8000000258F1C550;
  swift_beginAccess();
  *(v57 + 96) = *(v57 + 360);
  *(v57 + 104) = 0xD00000000000001ALL;
  *(v57 + 112) = 0x8000000258F1CBF0;
  swift_beginAccess();
  v24 = 0;
  *(v57 + 120) = *(v57 + 384);
  *(v57 + 128) = 0xD00000000000002CLL;
  *(v57 + 136) = 0x8000000258F1C570;
  v25 = v57;
  v56 = *MEMORY[0x277D5D9D8];
  v53 = (v22 + 104);
  v26 = (v22 + 8);
  v52 = *MEMORY[0x277D5D9B8];
  v48 = (v23 + 8);
  v50 = (v23 + 104);
  do
  {
    v27 = v25[v24 + 6];
    v28 = v25[v24 + 7];
    v29 = v25[v24 + 8];

    v30 = v25[56];
    v31 = v25[54];
    if (v27 < 1)
    {
      (*v53)(v25[56], v56, v25[54]);
    }

    else
    {
      v32 = v25[53];
      v33 = v25[51];
      sub_258E2D30C(v27, v28, v29);
      (*v53)(v30, v56, v31);
      (*v50)(v32, v52, v33);
      sub_258F09F10();
      v25 = v57;
      (*v48)(v32, v33);
    }

    (*v26)(v25[56], v25[54]);

    v24 += 3;
  }

  while (v24 != 12);
  v34 = v25[73];
  v35 = v25;
  v36 = v25[72];
  v37 = v35[70];
  v49 = v35[67];
  v51 = v35[68];
  v45 = v35[66];
  v38 = v35[62];
  v39 = v35[59];
  v40 = v35[60];
  v41 = v35[57];
  v42 = v35[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258F09AC0();
  sub_258F09BB0();
  v37(v39, v41);
  v46 = sub_258F09B60();
  v34(v38, v40);

  v34(v45, v40);
  v34(v49, v40);
  v34(v51, v40);
  swift_beginAccess();
  v43 = v35[42];
  *v42 = MEMORY[0x277D84F90];
  v42[1] = v46;
  v42[2] = v43;

  v11 = v35[1];
LABEL_20:

  return v11();
}

uint64_t sub_258E81A14(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = sub_258F09F40();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();
  v5 = sub_258F09B00();
  v2[50] = v5;
  v2[51] = *(v5 - 8);
  v2[52] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[53] = v6;
  v7 = *(v6 - 8);
  v2[54] = v7;
  v2[55] = *(v7 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E81C38, 0, 0);
}

uint64_t sub_258E81C38(uint64_t a1)
{
  v80 = v1;
  v1[63] = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[43];

  v6 = *(v5 + qword_280CC6070);
  v7 = sub_258F0A4E0();
  v71 = v6;
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v13 = v1[51];
  v14 = v1[52];
  v76 = v1[50];

  v15 = swift_allocObject();
  v1[64] = v15;
  v75 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  v1[65] = v16;
  v74 = v16;
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v1[66] = v17;
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  v1[67] = v18;
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v1[68] = v19;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v1[69] = v20;
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v1[70] = v21;
  *(v21 + 16) = 0;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v22 = *(v13 + 8);
  v1[71] = v22;
  v1[72] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v14, v76);
  v23 = sub_258DE41D4();
  v1[73] = v23;
  v66 = v20;
  v68 = v19;
  v77 = v18;
  v78 = v17;
  v67 = v23;
  v24 = sub_258F0A4E0();
  LOBYTE(v18) = [v71 BOOLForKey_];

  if (v18)
  {
    sub_258F09A10();
  }

  else
  {
    v25 = v1[52];
    v26 = v1[50];
    sub_258F09AC0();
    sub_258F09BB0();
    v22(v25, v26);
  }

  v73 = v21;
  v69 = *(v1[54] + 16);
  v69(v1[59], v1[60], v1[53]);
  v27 = sub_258F0A350();
  v28 = sub_258F0A800();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v1[59];
  v31 = v1[53];
  v32 = v1[54];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v79 = v34;
    *v33 = 136315138;
    sub_258E8731C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v35 = sub_258F0AD60();
    v37 = v36;
    (*(v32 + 8))(v30, v31);
    v38 = sub_258DE3018(v35, v37, &v79);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_258DD8000, v27, v28, "#ODDIMetricsCalculator: EndTime: %s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x259C9EF40](v34, -1, -1);
    MEMORY[0x259C9EF40](v33, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v30, v31);
  }

  v39 = v1[61];
  v41 = v1[57];
  v40 = v1[58];
  v59 = v40;
  v60 = v41;
  v61 = v1[62];
  v42 = v1[54];
  v63 = v1[55];
  v43 = v1[53];
  v44 = v1[43];
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  v65 = sub_258F0A0B0();
  v1[74] = v65;

  v45 = v44;
  v69(v40, v39, v43);
  v46 = v41;
  v47 = v43;
  v69(v46, v61, v43);
  v48 = *(v42 + 80);
  v49 = (v48 + 24) & ~v48;
  v50 = v63 + 7;
  v51 = (v49 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF8);
  v70 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v48 + v53 + 8) & ~v48;
  v62 = (v54 + v50) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v1[75] = v55;
  *(v55 + 16) = v45;
  v56 = *(v42 + 32);
  v56(v55 + v49, v59, v47);
  *(v55 + v51) = v66;
  *&v72[v55] = v73;
  *(v55 + v70) = v74;
  *(v55 + v64) = v78;
  *(v55 + v52) = v77;
  *(v55 + v53) = v68;
  v56(v55 + v54, v60, v47);
  *(v55 + v62) = v75;

  v57 = swift_task_alloc();
  v1[76] = v57;
  *v57 = v1;
  v57[1] = sub_258E82508;

  return sub_258E912D4(v67, v65, sub_258E87828, v55);
}

uint64_t sub_258E82508()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_258E82C80;
  }

  else
  {
    v2 = sub_258E8266C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E8266C()
{

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[64];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = *(*(v3 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "#ODDIMetricsCalculator: Query yielded %ld results", v4, 0xCu);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[65];
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (v6 >= 1)
  {
    sub_258E2D55C(v6, 0x69737361206C696ELL, 0xEF6449746E617473);
  }

  v7 = v0[68];
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8 >= 1)
  {
    sub_258E2D55C(v8, 0xD000000000000014, 0x8000000258F1CBD0);
  }

  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[48];
  v14 = v0[45];
  swift_beginAccess();
  v0[6] = *(v10 + 16);
  v0[7] = 0xD000000000000021;
  v0[8] = 0x8000000258F1C520;
  swift_beginAccess();
  v0[9] = *(v12 + 16);
  v0[10] = 0xD00000000000001CLL;
  v0[11] = 0x8000000258F1C550;
  swift_beginAccess();
  v0[12] = *(v11 + 16);
  v0[13] = 0xD00000000000001ALL;
  v0[14] = 0x8000000258F1CBF0;
  swift_beginAccess();
  v15 = 0;
  v0[15] = *(v9 + 16);
  v0[16] = 0xD00000000000002CLL;
  v0[17] = 0x8000000258F1C570;
  v43 = *MEMORY[0x277D5D9D8];
  v41 = (v13 + 8);
  v42 = (v13 + 104);
  v40 = *MEMORY[0x277D5D9B8];
  do
  {
    v16 = v0[v15 + 6];
    v17 = v0[v15 + 7];
    v18 = v0[v15 + 8];

    v19 = v0[49];
    v20 = v0[47];
    if (v16 < 1)
    {
      (*v42)(v0[49], v43, v0[47]);
    }

    else
    {
      v21 = v0[46];
      v22 = v0[44];
      sub_258E2D55C(v16, v17, v18);
      (*v42)(v19, v43, v20);
      (*(v14 + 104))(v21, v40, v22);
      sub_258F09F10();
      (*(v14 + 8))(v21, v22);
    }

    (*v41)(v0[49], v0[47]);

    v15 += 3;
  }

  while (v15 != 12);
  v23 = v0[73];
  v24 = v0[71];
  v38 = v0[64];
  v25 = v0[61];
  v37 = v0[62];
  v36 = v0[60];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[54];
  v29 = v0[52];
  v30 = v0[50];
  v31 = v0[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
  swift_arrayDestroy();
  sub_258F0A0F0();
  sub_258F09AC0();
  sub_258F09BB0();
  v24(v29, v30);
  v39 = sub_258F09B60();
  v32 = *(v28 + 8);
  v32(v26, v27);

  v32(v36, v27);
  v32(v25, v27);
  v32(v37, v27);
  swift_beginAccess();
  v33 = *(v38 + 16);

  *v31 = MEMORY[0x277D84F90];
  v31[1] = v39;
  v31[2] = v33;

  v34 = v0[1];

  return v34();
}

uint64_t sub_258E82C80()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);

  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = *(v0 + 496);
  v6 = *(v0 + 424);
  v4(*(v0 + 488), v6);
  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

void sub_258E82E38(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v237 = a8;
  v238 = a7;
  v239 = a6;
  v236 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v240 = &v229[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v229[-v22];
  v24 = type metadata accessor for DeviceUsageMetrics(0);
  v243 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v229[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v29);
  v244 = &v229[-v30];
  v31 = type metadata accessor for EventMetadata(0);
  v245 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v254 = &v229[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v248 = &v229[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v36, v38);
  v251 = &v229[-v40];
  v42 = MEMORY[0x28223BE20](v39, v41);
  v252 = &v229[-v43];
  MEMORY[0x28223BE20](v42, v44);
  v250 = &v229[-v45];
  v241 = type metadata accessor for CommonDigestElements(0);
  MEMORY[0x28223BE20](v241, v46);
  v268 = &v229[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = qword_280CC6078;

  v255 = a2;
  v253 = v48;
  v49 = sub_258F0A350();
  v50 = sub_258F0A810();

  v51 = os_log_type_enabled(v49, v50);
  v249 = v12;
  v242 = v28;
  v246 = v23;
  v247 = v31;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = a3;
    v54 = a5;
    v55 = swift_slowAlloc();
    v265 = v55;
    *v52 = 136315138;
    v56 = sub_258F0A420();
    v58 = sub_258DE3018(v56, v57, &v265);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_258DD8000, v49, v50, "ODDMetrics row data: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v59 = v55;
    a5 = v54;
    a3 = v53;
    MEMORY[0x259C9EF40](v59, -1, -1);
    MEMORY[0x259C9EF40](v52, -1, -1);
  }

  v60 = a3;
  v61 = v255;
  v62 = v255;
  v63 = sub_258E2ACD4(a1, v60, 0xD00000000000002CLL, 0x8000000258F1CEA0);
  v65 = v63;
  if ((v64 & 0x10000) != 0)
  {

    return;
  }

  if (v64)
  {
    v66 = v64;
    v62 = v236;
    swift_beginAccess();
    v67 = *(v62 + 16);
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      __break(1u);
      goto LABEL_165;
    }

    *(v62 + 16) = v69;
    LOWORD(v64) = v66;
  }

  if ((v64 & 0x100) != 0)
  {
    swift_beginAccess();
    v70 = *(a5 + 16);
    v68 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (!v68)
    {
      *(a5 + 16) = v71;
      goto LABEL_10;
    }

LABEL_165:
    __break(1u);
LABEL_166:
    if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
    {
      v131 = 10;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
    {
      v131 = 11;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v131 = 12;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v131 = 13;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v131 = 14;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v131 = 15;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v131 = 16;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v131 = 17;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v131 = 18;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v131 = 19;
      goto LABEL_354;
    }

LABEL_187:
    if ([v62 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v131 = 20;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v131 = 21;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v131 = 22;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v131 = 23;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v131 = 24;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v131 = 25;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v131 = 26;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v131 = 27;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v131 = 28;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v131 = 29;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v131 = 30;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v131 = 31;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v131 = 32;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v131 = 33;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v131 = 34;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v131 = 35;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v131 = 36;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v131 = 37;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v131 = 38;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v131 = 39;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v131 = 40;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v131 = 41;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v131 = 42;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v131 = 43;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v131 = 44;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v131 = 45;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v131 = 46;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v131 = 47;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v131 = 48;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v131 = 49;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v131 = 50;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v131 = 51;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v131 = 52;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v131 = 53;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v131 = 54;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v131 = 55;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v131 = 56;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v131 = 57;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v131 = 58;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v131 = 59;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v131 = 60;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v131 = 61;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v131 = 62;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v131 = 63;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v131 = 64;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v131 = 65;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v131 = 66;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v131 = 67;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v131 = 68;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v131 = 69;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v131 = 70;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v131 = 71;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v131 = 72;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v131 = 73;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v131 = 74;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v131 = 75;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v131 = 76;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v131 = 77;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v131 = 78;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v131 = 79;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v131 = 80;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v131 = 81;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v131 = 82;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v131 = 83;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v131 = 84;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v131 = 85;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v131 = 87;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v131 = 88;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v131 = 89;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v131 = 90;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v131 = 91;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v131 = 92;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v131 = 93;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v131 = 94;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v131 = 95;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v131 = 96;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v131 = 97;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v131 = 98;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v131 = 99;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v131 = 100;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v131 = 101;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v131 = 102;
    }

    else if ([v62 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v131 = 103;
    }

    else
    {
      v131 = 0;
    }

    goto LABEL_354;
  }

LABEL_10:
  sub_258E2BA80(a1, v268);
  v72 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v264[0] = 0xD000000000000015;
  v264[1] = 0x8000000258F1BA40;
  sub_258F0AA80();
  v73 = *(a1 + 2);
  v235 = v65;
  if (v73 && (v74 = sub_258E2EA2C(&v265), (v75 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v74, &v266);
    sub_258E0F590(&v265);
    if (swift_dynamicCast())
    {
      v76 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v264[0], v264[1]);

      v234 = v76;
    }

    else
    {
      v234 = v72;
    }
  }

  else
  {
    v234 = v72;
    sub_258E0F590(&v265);
  }

  v77 = sub_258F09A70();
  v65 = *(*(v77 - 8) + 56);
  (v65)(v250, 1, 1, v77);
  strcpy(v264, "assistant_id");
  BYTE5(v264[1]) = 0;
  HIWORD(v264[1]) = -5120;
  sub_258F0AA80();
  v78 = *(a1 + 2);
  v236 = v77;
  if (v78 && (v79 = sub_258E2EA2C(&v265), (v80 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v79, &v266);
    sub_258E0F590(&v265);
    if (swift_dynamicCast())
    {
      v81 = v248;
      sub_258F09A30();

      v82 = v250;
      sub_258DE2184(v250, &qword_27F988730, &unk_258F0F8E0);
      v83 = v81;
      v77 = v236;
      sub_258E2EAD8(v83, v82, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }
  }

  else
  {
    sub_258E0F590(&v265);
  }

  v84 = sub_258F0A350();
  v62 = sub_258F0A820();
  if (os_log_type_enabled(v84, v62))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_258DD8000, v84, v62, "observed NilAssistantId", v85, 2u);
    MEMORY[0x259C9EF40](v85, -1, -1);
  }

  v86 = v239;
  swift_beginAccess();
  v87 = *(v86 + 16);
  v68 = __OFADD__(v87, 1);
  v88 = v87 + 1;
  if (v68)
  {
    __break(1u);
    goto LABEL_159;
  }

  *(v86 + 16) = v88;
LABEL_25:
  (v65)(v252, 1, 1, v77);
  v262 = 0xD000000000000015;
  v263 = 0x8000000258F189D0;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v89 = sub_258E2EA2C(&v265), (v90 & 1) == 0))
  {
    sub_258E0F590(&v265);
LABEL_30:
    v94 = sub_258F0A350();
    v62 = sub_258F0A820();
    if (os_log_type_enabled(v94, v62))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_258DD8000, v94, v62, "observed NilDeviceAggregationId", v95, 2u);
      MEMORY[0x259C9EF40](v95, -1, -1);
    }

    v96 = v238;
    swift_beginAccess();
    v97 = *(v96 + 16);
    v68 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (!v68)
    {
      *(v96 + 16) = v98;
      goto LABEL_34;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v89, &v266);
  sub_258E0F590(&v265);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v91 = v248;
  sub_258F09A30();

  v62 = &unk_258F0F8E0;
  v92 = v252;
  sub_258DE2184(v252, &qword_27F988730, &unk_258F0F8E0);
  v93 = v91;
  v77 = v236;
  sub_258E2EAD8(v93, v92, &qword_27F988730, &unk_258F0F8E0);
LABEL_34:
  (v65)(v251, 1, 1, v77);
  v260 = 0xD000000000000013;
  v261 = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v62 = a1, v99 = sub_258E2EA2C(&v265), (v100 & 1) == 0))
  {
    sub_258E0F590(&v265);
LABEL_39:
    v103 = v237;
    swift_beginAccess();
    v104 = *(v103 + 16);
    v68 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (!v68)
    {
      *(v103 + 16) = v105;
      goto LABEL_41;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v99, &v266);
  sub_258E0F590(&v265);
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  v101 = v248;
  sub_258F09A30();

  v102 = v251;
  sub_258DE2184(v251, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v101, v102, &qword_27F988730, &unk_258F0F8E0);
LABEL_41:
  *&v266 = 0xD000000000000029;
  *(&v266 + 1) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(a1 + 2) && (v106 = sub_258E2EA2C(&v265), (v107 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v106, &v266);
    sub_258E0F590(&v265);
  }

  else
  {
    sub_258E0F590(&v265);
    v266 = 0u;
    v267 = 0u;
  }

  v238 = sub_258E80364(&v266);
  LODWORD(v237) = v108;
  sub_258DE2184(&v266, &qword_27F989868, &unk_258F12D70);
  *&v266 = 0xD00000000000002BLL;
  *(&v266 + 1) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(a1 + 2) && (v109 = sub_258E2EA2C(&v265), (v110 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v109, &v266);
    sub_258E0F590(&v265);
  }

  else
  {
    sub_258E0F590(&v265);
    v266 = 0u;
    v267 = 0u;
  }

  v233 = sub_258E80364(&v266);
  v232 = v111;
  sub_258DE2184(&v266, &qword_27F989868, &unk_258F12D70);
  v258 = 0xD000000000000016;
  v259 = 0x8000000258F1BA60;
  sub_258F0AA80();
  if (!*(a1 + 2) || (v112 = sub_258E2EA2C(&v265), (v113 & 1) == 0))
  {
    sub_258E0F590(&v265);
LABEL_55:
    v118 = sub_258F0A350();
    v62 = sub_258F0A820();
    if (os_log_type_enabled(v118, v62))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_258DD8000, v118, v62, "observed NilResponseCategory", v119, 2u);
      MEMORY[0x259C9EF40](v119, -1, -1);
    }

    swift_beginAccess();
    v120 = *(a9 + 16);
    v68 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (!v68)
    {
      v231 = 0;
      *(a9 + 16) = v121;
      v117 = 1;
      goto LABEL_59;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    if ([v62 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
    {
      v131 = 9;
      goto LABEL_354;
    }

    goto LABEL_166;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v112, &v266);
  sub_258E0F590(&v265);
  if (!swift_dynamicCast())
  {
    goto LABEL_55;
  }

  v114 = v258;
  v115 = v259;

  v116._countAndFlagsBits = v114;
  v116._object = v115;
  SiriReponseCategory.init(rawValue:)(v116);
  v62 = v265;
  if (v265 == 21)
  {
    __break(1u);
    goto LABEL_187;
  }

  LOBYTE(v266) = v62;
  v231 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(&v266);
  v117 = 0;
LABEL_59:
  v239 = a10;
  v256 = 0x6974756F725F6569;
  v257 = 0xEA0000000000676ELL;
  sub_258F0AA80();
  if (*(a1 + 2) && (v122 = sub_258E2EA2C(&v265), (v123 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 7) + 32 * v122, &v266);
    sub_258E0F590(&v265);
    if (swift_dynamicCast())
    {
      v61 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v256, v257);

      goto LABEL_67;
    }
  }

  else
  {
    sub_258E0F590(&v265);
  }

  v124 = sub_258F0A350();
  v125 = sub_258F0A800();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_258DD8000, v124, v125, "#ODDIMetricsCalculator: No ieRouting found.", v126, 2u);
    MEMORY[0x259C9EF40](v126, -1, -1);
  }

  v61 = 0;
LABEL_67:
  v256 = 0xD000000000000011;
  v257 = 0x8000000258F1BA80;
  sub_258F0AA80();
  v127 = *(a1 + 2);
  v230 = v117;
  if (!v127 || (v128 = sub_258E2EA2C(&v265), (v129 & 1) == 0))
  {
    sub_258E0F590(&v265);
    goto LABEL_73;
  }

  sub_258DE4090(*(a1 + 7) + 32 * v128, &v266);
  sub_258E0F590(&v265);
  if (!swift_dynamicCast())
  {
LABEL_73:
    v131 = 0;
    v132 = 1;
    goto LABEL_74;
  }

  v130 = sub_258F0A4E0();

  v62 = v130;
  if (([v62 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"] & 1) == 0)
  {
    if ([v62 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
    {
      v131 = 1;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
    {
      v131 = 2;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
    {
      v131 = 3;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
    {
      v131 = 4;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
    {
      v131 = 5;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
    {
      v131 = 6;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
    {
      v131 = 7;
      goto LABEL_354;
    }

    if ([v62 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
    {
      v131 = 8;
      goto LABEL_354;
    }

    goto LABEL_162;
  }

  v131 = 0;
LABEL_354:

  v132 = 0;
LABEL_74:
  v133 = v254;
  (v65)(v254, 1, 1, v236);
  v134 = v247;
  v135 = &qword_27F988730;
  sub_258DE20C0(v252, &v133[*(v247 + 20)], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v251, &v133[*(v134 + 24)], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v136 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_154;
  }

  if (v136 <= -1.0)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v136 >= 1.84467441e19)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (is_mul_ok(v136, 0x3E8uLL))
  {
    LODWORD(v253) = v132;
    v137 = v131;
    v138 = v61;
    v139 = 1000 * v136;
    v140 = [objc_opt_self() sharedPreferences];
    v141 = [v140 longLivedIdentifierUploadingEnabled];

    v142 = v254;
    v143 = &v254[*(v134 + 28)];
    *v143 = v139;
    v143[8] = 0;
    *&v142[*(v134 + 32)] = v235;
    v144 = &v142[*(v134 + 36)];
    *v144 = v238;
    v144[8] = v237 & 1;
    v145 = &v142[*(v134 + 40)];
    *v145 = v233;
    v145[8] = v232 & 1;
    v146 = &v142[*(v134 + 44)];
    *v146 = 2;
    v146[4] = 0;
    v142[*(v134 + 48)] = v141 ^ 1;
    type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    swift_allocObject();
    v147 = DeviceUsageMetricsBuilderImpl.init()();
    v148 = v248;
    sub_258DE20C0(v250, v248, &qword_27F988730, &unk_258F0F8E0);
    v149 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v148, v147 + v149, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v256 = 0x5F746375646F7270;
    v257 = 0xEA00000000006469;
    sub_258F0AA80();
    if (*(a1 + 2) && (v150 = sub_258E2EA2C(&v265), (v151 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 7) + 32 * v150, &v266);
      sub_258E0F590(&v265);
      if (swift_dynamicCast())
      {
        v152 = v256;
        v153 = v257;
        v154 = v138;
        if (v256 == 0x4E41545349535341 && v257 == 0xE900000000000054)
        {

          v155 = 1;
          v156 = v246;
          v157 = v245;
          v158 = v137;
LABEL_87:
          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v155;
          sub_258E8792C(v254, v156, type metadata accessor for EventMetadata);
          (*(v157 + 56))(v156, 0, 1, v134);
          v159 = v240;
          sub_258E2EAD8(v156, v240, &qword_27F9894E0, &unk_258F106A0);
          v160 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v159, v147 + v160, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          strcpy(&v266, "device_type");
          HIDWORD(v266) = -352321536;
          sub_258F0AA80();
          if (*(a1 + 2) && (v161 = sub_258E2EA2C(&v265), (v162 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v161, &v266);
            sub_258E0F590(&v265);
            v163 = swift_dynamicCast();
            v164 = v256;
            v165 = v257;
            if (!v163)
            {
              v164 = 0;
              v165 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v164 = 0;
            v165 = 0;
          }

          v166 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          *v166 = v164;
          v166[1] = v165;

          strcpy(&v266, "system_build");
          BYTE13(v266) = 0;
          HIWORD(v266) = -5120;
          sub_258F0AA80();
          if (*(a1 + 2) && (v167 = sub_258E2EA2C(&v265), (v168 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v167, &v266);
            sub_258E0F590(&v265);
            v169 = swift_dynamicCast();
            v170 = v256;
            v171 = v257;
            if (!v169)
            {
              v170 = 0;
              v171 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v170 = 0;
            v171 = 0;
          }

          v172 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          *v172 = v170;
          v172[1] = v171;

          v173 = v268;
          v174 = v268[44];
          v175 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v175 = *(v268 + 10);
          *(v175 + 4) = v174;
          v176 = v173[12];
          v177 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v177 = *(v173 + 2);
          *(v177 + 4) = v176;
          v178 = *(v173 + 4);
          v179 = *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v178;

          v180 = *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          v181 = v234;
          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v234;
          v182 = v178;

          v183 = v173[4];
          v184 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v184 = *v173;
          *(v184 + 4) = v183;
          *&v266 = 0xD000000000000012;
          *(&v266 + 1) = 0x8000000258F1A600;
          v65 = v181;
          sub_258F0AA80();
          if (*(a1 + 2) && (v185 = sub_258E2EA2C(&v265), (v186 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v185, &v266);
            sub_258E0F590(&v265);
            v187 = swift_dynamicCast();
            v188 = v256;
            v189 = v257;
            if (!v187)
            {
              v188 = 0;
              v189 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v188 = 0;
            v189 = 0;
          }

          v190 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          *v190 = v188;
          v190[1] = v189;

          *&v266 = 0xD000000000000013;
          *(&v266 + 1) = 0x8000000258F1A620;
          sub_258F0AA80();
          if (*(a1 + 2) && (v191 = sub_258E2EA2C(&v265), (v192 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v191, &v266);
            sub_258E0F590(&v265);
            v193 = swift_dynamicCast();
            v194 = v256;
            v195 = v257;
            if (!v193)
            {
              v194 = 0;
              v195 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v194 = 0;
            v195 = 0;
          }

          v196 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          *v196 = v194;
          v196[1] = v195;

          v197 = v268;
          v198 = v268[20];
          v199 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v199 = *(v268 + 4);
          *(v199 + 4) = v198;
          v200 = v197[28];
          v201 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v201 = *(v197 + 6);
          *(v201 + 4) = v200;
          strcpy(&v266, "sub_domain");
          BYTE11(v266) = 0;
          HIDWORD(v266) = -369098752;
          sub_258F0AA80();
          if (*(a1 + 2) && (v202 = sub_258E2EA2C(&v265), (v203 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v202, &v266);
            sub_258E0F590(&v265);
            v204 = swift_dynamicCast();
            v205 = v256;
            v206 = v257;
            if (!v204)
            {
              v205 = 0;
              v206 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v205 = 0;
            v206 = 0;
          }

          v207 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          *v207 = v205;
          v207[1] = v206;

          strcpy(&v266, "turn_cnt");
          BYTE9(v266) = 0;
          WORD5(v266) = 0;
          HIDWORD(v266) = -402653184;
          sub_258F0AA80();
          if (*(a1 + 2) && (v208 = sub_258E2EA2C(&v265), (v209 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v208, &v266);
            sub_258E0F590(&v265);
          }

          else
          {
            sub_258E0F590(&v265);
            v266 = 0u;
            v267 = 0u;
          }

          v210 = sub_258E7FFAC(&v266);
          sub_258DE2184(&v266, &qword_27F989868, &unk_258F12D70);
          v211 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v211 = v210;
          *(v211 + 4) = BYTE4(v210) & 1;
          strcpy(&v266, "user_turn_cnt");
          HIWORD(v266) = -4864;
          sub_258F0AA80();
          if (*(a1 + 2) && (v212 = sub_258E2EA2C(&v265), (v213 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v212, &v266);
            sub_258E0F590(&v265);
          }

          else
          {
            sub_258E0F590(&v265);
            v266 = 0u;
            v267 = 0u;
          }

          v134 = a11;
          v214 = sub_258E7FFAC(&v266);
          sub_258DE2184(&v266, &qword_27F989868, &unk_258F12D70);
          v215 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v215 = v214;
          *(v215 + 4) = BYTE4(v214) & 1;
          *&v266 = 0xD000000000000010;
          *(&v266 + 1) = 0x8000000258F1CC50;
          sub_258F0AA80();
          if (*(a1 + 2) && (v216 = sub_258E2EA2C(&v265), (v217 & 1) != 0))
          {
            sub_258DE4090(*(a1 + 7) + 32 * v216, &v266);
            sub_258E0F590(&v265);
            v218 = swift_dynamicCast();
            v219 = v256;
            v220 = v257;
            if (!v218)
            {
              v219 = 0;
              v220 = 0;
            }
          }

          else
          {
            sub_258E0F590(&v265);
            v219 = 0;
            v220 = 0;
          }

          v221 = v253;
          v222 = (v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          *v222 = v219;
          v222[1] = v220;

          v223 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v223 = v231;
          *(v223 + 4) = v230;
          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *&v268[*(v241 + 44)];

          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = sub_258E7E3B0(a1);
          *(v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v154;

          v224 = v147 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v224 = v158;
          *(v224 + 4) = v221;
          a1 = v244;
          sub_258E4D51C(v244);

          v131 = v242;
          sub_258E8792C(a1, v242, type metadata accessor for DeviceUsageMetrics);
          swift_beginAccess();
          v135 = *(a11 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a11 + 16) = v135;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_126;
          }

          goto LABEL_157;
        }

        v158 = v137;
        if (sub_258F0AD80())
        {

          v155 = 1;
          v156 = v246;
          v157 = v245;
          goto LABEL_87;
        }

        if (v152 == 0x4F49544154434944 && v153 == 0xE90000000000004ELL)
        {

          v155 = 2;
          v156 = v246;
          v157 = v245;
          goto LABEL_87;
        }

        v228 = sub_258F0AD80();

        v156 = v246;
        v157 = v245;
        if (v228)
        {
          v155 = 2;
          goto LABEL_87;
        }

LABEL_86:
        v155 = 0;
        goto LABEL_87;
      }
    }

    else
    {
      sub_258E0F590(&v265);
    }

    v156 = v246;
    v157 = v245;
    v154 = v138;
    v158 = v137;
    goto LABEL_86;
  }

LABEL_156:
  __break(1u);
LABEL_157:
  v135 = sub_258DE2968(0, v135[2] + 1, 1, v135);
  *(v134 + 16) = v135;
LABEL_126:
  v227 = v135[2];
  v226 = v135[3];
  if (v227 >= v226 >> 1)
  {
    v135 = sub_258DE2968((v226 > 1), v227 + 1, 1, v135);
  }

  v135[2] = v227 + 1;
  sub_258E7F314(v131, v135 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v227);
  *(v134 + 16) = v135;
  swift_endAccess();

  sub_258E87994(a1, type metadata accessor for DeviceUsageMetrics);
  sub_258E87994(v254, type metadata accessor for EventMetadata);
  sub_258DE2184(v251, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v252, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE2184(v250, &qword_27F988730, &unk_258F0F8E0);
  sub_258E87994(v268, type metadata accessor for CommonDigestElements);
}

uint64_t sub_258E85880()
{
  v1 = sub_258F0A540();
  MEMORY[0x28223BE20](v1 - 8, v2);
  type metadata accessor for BiomeODDIMetricsConcluder(0);
  sub_258F0A530();
  v3 = sub_258F0A4C0();
  v5 = v4;
  if (v0)
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#BiomeODDIMetricsConcluder: SQL file could not be loaded", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
  }

  else
  {

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_258DE3018(v3, v5, &v15);
      _os_log_impl(&dword_258DD8000, v10, v11, "#BiomeODDIMetricsConcluder: SQL: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_258E85AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258E85AEC, 0, 0);
}

uint64_t sub_258E85AEC()
{
  v1 = sub_258E85880();
  v0[7] = 0;
  v0[8] = v2;
  v0[9] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_258E85BF0;
  v5 = v0[2];
  v4 = v0[3];

  return sub_258E6A310(v5, v4);
}

uint64_t sub_258E85BF0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_258E85CF0, 0, 0);
}

uint64_t sub_258E85CF0()
{
  sub_258F0A040();

  if (sub_258F0A070())
  {
    v1 = *(v0 + 56);
    if (sub_258F0A060())
    {
      (*(v0 + 32))();
      if (v1)
      {
        v2 = *(v0 + 88);

        v3 = *(v0 + 8);
        v4 = 0;
        goto LABEL_9;
      }

      while (1)
      {

        if ((sub_258F0A070() & 1) == 0 || !sub_258F0A060())
        {
          break;
        }

        (*(v0 + 32))();
      }
    }
  }

  v5 = *(v0 + 88);

  v3 = *(v0 + 8);
  v4 = 1;
LABEL_9:

  return v3(v4);
}

uint64_t sub_258E85E20()
{
  v0 = qword_27F989DD0;

  return v0;
}

uint64_t sub_258E85E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_258F098D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_258E85EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E85AC4(a1, a2, a3, a4);
}

uint64_t sub_258E85FAC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_258E860B4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_258F0A4E0();
  v17 = sub_258F0A4E0();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_258F098B0();

    v19 = sub_258F098D0();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  }

  else
  {
    v19 = sub_258F098D0();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  sub_258E2EAD8(v10, v13, &qword_27F988720, &qword_258F0B830);
  sub_258DE20C0(v13, v6, &qword_27F988720, &qword_258F0B830);
  sub_258F098D0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    sub_258DE2184(v6, &qword_27F988720, &qword_258F0B830);
    result = sub_258F0AB90();
    __break(1u);
  }

  else
  {
    sub_258DE2184(v13, &qword_27F988720, &qword_258F0B830);
    return (*(v20 + 32))(a1, v6, v19);
  }

  return result;
}

uint64_t ODDIMetricsPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

void *ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v76 = a1;
  v77 = a4;
  v73 = a3;
  v68 = *v4;
  v67 = type metadata accessor for BiomeODDIMetricsConcluder(0);
  MEMORY[0x28223BE20](v67, v6);
  v69 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_258F09B00();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v63 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_258F09A20();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v11);
  v61 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258F0A370();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v60 - v20;
  v22 = *(v14 + 16);
  v74 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v22(&v4[OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger], a2, v13);
  v22(v21, a2, v13);
  type metadata accessor for ODDIMetricsDataProvider(0);
  v23 = swift_allocObject();
  v78 = v14;
  v24 = *(v14 + 32);
  v71 = v14 + 32;
  v72 = v21;
  v70 = v24;
  v24(v23 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger, v21, v13);
  v82 = v4;
  *&v4[OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_dataProvider] = v23;
  v25 = sub_258F0A1F0();
  swift_allocObject();
  v76 = v76;
  v26 = sub_258F0A1E0();
  v80 = v25;
  v81 = MEMORY[0x277D04548];
  v79 = v26;
  v27 = a2;
  v28 = a2;
  v29 = v22;
  v22(v18, v28, v13);
  sub_258F09C20();
  swift_allocObject();
  v30 = v75;
  v31 = sub_258F09BE0();
  v75 = v30;
  if (v30)
  {
    v32 = *(v78 + 8);
    v32(v27, v13);

    v33 = v82;
    v32(v82 + v74, v13);

    type metadata accessor for ODDIMetricsPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v31;
    v35 = v61;
    sub_258F0A090();
    v36 = v63;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v65 + 8))(v36, v66);
    (*(v62 + 8))(v35, v64);
    v37 = v67;
    v38 = v69;
    sub_258E860B4(v69 + *(v67 + 20));
    v39 = v29;
    v29(v38 + *(v37 + 24), v27, v13);
    type metadata accessor for ODDIDatabaseFactory();
    *v38 = swift_allocObject();
    v40 = v72;
    v39(v72, v27, v13);
    v60[1] = v34;

    v41 = v38;
    v42 = v40;
    v43 = sub_258E7F940(v41, v40, v34);
    v44 = v82;
    *(v82 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_calculator) = v43;
    v45 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v46 = [v45 ODDI];
    swift_unknownObjectRelease();
    v47 = [v46 ScorecardMetrics];
    swift_unknownObjectRelease();
    v48 = [v47 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DF8, &unk_258F12B70);
    swift_allocObject();
    v49 = sub_258F09B80();
    v50 = v27;
    v60[0] = v27;
    v39(v42, v27, v13);
    type metadata accessor for ODDIMetricsBiomeReporter(0);
    v51 = swift_allocObject();
    v74 = v51;
    *(v51 + 16) = v49;
    v52 = v70;
    v70(v51 + OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger, v42, v13);
    v39(v42, v50, v13);
    v33 = v44;

    v53 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v73, v77);
    type metadata accessor for ODDIMetricsSELFReporter(0);
    v54 = swift_allocObject();
    v55 = (v54 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
    v55[3] = type metadata accessor for SELFReportingService();
    v55[4] = &protocol witness table for SELFReportingService;
    *v55 = v53;
    *(v54 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v52(v54 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger, v42, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_258F0F6D0;
    v57 = v74;
    *(v56 + 32) = v54;
    *(v56 + 40) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E00, &qword_258F12B80);
    swift_allocObject();

    v79 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E08, qword_258F12B88);
    swift_allocObject();
    v58 = sub_258F09BC0();

    (*(v78 + 8))(v60[0], v13);
    *(v33 + OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_reporter) = v58;
  }

  return v33;
}

uint64_t sub_258E86CAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E86CCC, 0, 0);
}

uint64_t sub_258E86CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E7F500();
}

uint64_t sub_258E86D70(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E86DA0, 0, 0);
}

uint64_t sub_258E86DA0()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E86E6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E86E8C, 0, 0);
}

uint64_t sub_258E86E8C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;
  v2 = *(v0 + 16);

  return sub_258E807B4(v2);
}

uint64_t ODDIMetricsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ODDIMetricsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17ODDIMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E870A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E870C4, 0, 0);
}

uint64_t sub_258E870C4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E7F500();
}

uint64_t sub_258E87168(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E86E8C, 0, 0);
}

uint64_t sub_258E8718C(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E871C0, 0, 0);
}

uint64_t sub_258E871C0()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258E8731C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ODDIMetricsPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIMetricsPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIMetricsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E8778C(uint64_t a1)
{
  result = type metadata accessor for ODDIDatabaseFactory();
  if (v2 <= 0x3F)
  {
    result = sub_258F098D0();
    if (v3 <= 0x3F)
    {
      result = sub_258F0A370();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_258E87828(_BYTE *a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_258E82E38(a1, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_258E8792C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E87994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E87AAC(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIMetricsReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t ODDIMetricsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E8B9D0(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t sub_258E87D98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_258E87E00()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_258E87E48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ODDIMetricsSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258E8B8FC(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258E87FF8(uint64_t a1)
{
  *(v2 + 104) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E60, &qword_258F12E48);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_258F0A370();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = *(type metadata accessor for EventMetadata(0) - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E68, &qword_258F12E50);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v5 = type metadata accessor for DeviceUsageMetrics(0);
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;
  *(v2 + 240) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E88220, 0, 0);
}

void sub_258E88220(uint64_t a1)
{
  v177 = v1;
  v2 = v1[13];
  v3 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v1[31] = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v168 = v3;
  v169 = v2;
  v4 = sub_258F0A350();
  v5 = sub_258F0A810();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258DD8000, v4, v5, "#ODDIMetricsSELFReporter: Reporter invoked", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v7 = sub_258F0A350();
  v8 = sub_258F0A810();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[30];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v10 + 16);

    _os_log_impl(&dword_258DD8000, v7, v8, "#ODDIMetricsSELFReporter: Total Results Count %ld", v11, 0xCu);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
  }

  v12 = v1[28];

  v13 = sub_258F0A350();
  v14 = sub_258F0A810();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v1[30];
    v16 = v1[25];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v176 = v18;
    *v17 = 136315138;
    v19 = MEMORY[0x259C9DF80](v15, v16);
    v12 = sub_258DE3018(v19, v20, &v176);

    *(v17 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v13, v14, "#ODDIMetricsSELFReporter: Results Data %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x259C9EF40](v18, -1, -1);
    MEMORY[0x259C9EF40](v17, -1, -1);
  }

  v21 = v1[30];
  v22 = MEMORY[0x277D84F98];
  v1[11] = MEMORY[0x277D84F98];
  v1[12] = v22;
  v23 = *(v21 + 16);
  v175 = v1;
  if (v23)
  {
    v24 = 0;
    v26 = v1[25];
    v25 = v1[26];
    v27 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        goto LABEL_116;
      }

      v29 = v1[27];
      sub_258E8BAD0(v27 + *(v25 + 72) * v24, v29, type metadata accessor for DeviceUsageMetrics);
      if (*(v29 + *(v26 + 32)) > 1u)
      {
        if (*(v29 + *(v26 + 32)) != 2)
        {
LABEL_18:
          v30 = sub_258F0A350();
          v31 = sub_258F0A820();
          if (os_log_type_enabled(v30, v31))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_258DD8000, v30, v31, "#ODDIMetricsSELFReporter: Invalid productId.", v12, 2u);
            MEMORY[0x259C9EF40](v12, -1, -1);
          }

          v28 = v1;
          goto LABEL_11;
        }

        v28 = v1;
        sub_258E8C1DC(v1[27], v1 + 12, v169 + v168);
      }

      else
      {
        if (!*(v29 + *(v26 + 32)))
        {
          goto LABEL_18;
        }

        v28 = v1;
        sub_258E8BB98(v1[27], v1 + 11, v169 + v168);
      }

LABEL_11:
      ++v24;
      sub_258E8BB38(v28[27], type metadata accessor for DeviceUsageMetrics);
      if (v23 == v24)
      {
        v22 = v1[11];
        break;
      }
    }
  }

  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = *(v22 + 16);

    _os_log_impl(&dword_258DD8000, v32, v33, "#ODDIMetricsSELFReporter: Assistant Events Count: %ld", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }

  else
  {
  }

  v35 = v1[12];

  v36 = sub_258F0A350();
  v37 = sub_258F0A810();
  v160 = v35;
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v35 + 16);

    _os_log_impl(&dword_258DD8000, v36, v37, "#ODDIMetricsSELFReporter: Dictation Events Count: %ld", v38, 0xCu);
    MEMORY[0x259C9EF40](v38, -1, -1);
  }

  else
  {
  }

  v12 = 0;
  v161 = v22;
  v41 = *(v22 + 64);
  v40 = v22 + 64;
  v39 = v41;
  v42 = -1;
  v43 = -1 << *(v40 - 32);
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & v39;
  v167 = v1[13];
  v166 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents;
  v159 = (63 - v43) >> 6;
  v164 = v1[19];
  v165 = (v1[17] + 16);
  v45 = &selRef_setSampledErrorAsset_;
  v163 = v40;
  if ((v42 & v39) == 0)
  {
LABEL_31:
    if (v159 <= (v12 + 1))
    {
      v47 = v12 + 1;
    }

    else
    {
      v47 = v159;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v46 >= v159)
      {
        v83 = v1[23];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
        (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
        v44 = 0;
        v12 = v48;
        goto LABEL_40;
      }

      v44 = *(v40 + 8 * v46);
      ++v12;
      if (v44)
      {
        v12 = v46;
        goto LABEL_39;
      }
    }

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
    v138 = sub_258F0AA20();
LABEL_96:
    v139 = *(v12 + 104);
    v140 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService;
    *(v12 + 264) = v138;
    *(v12 + 272) = v140;

    v141 = *(v12 + 256);
    if (!v138)
    {

      v156 = sub_258F0A350();
      v157 = sub_258F0A810();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_258DD8000, v156, v157, "#ODDIMetricsSELFReporter: Finished Emitting ODDIMetrics SELF events", v158, 2u);
        MEMORY[0x259C9EF40](v158, -1, -1);
      }

      goto LABEL_108;
    }

    if ((v141 & 0xC000000000000001) != 0)
    {
      v142 = MEMORY[0x259C9E3B0](0);
      v140 = *(v12 + 272);
      v139 = *(v12 + 104);
    }

    else
    {
      if (!*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        return;
      }

      v142 = *(v141 + 32);
    }

    *(v12 + 280) = v142;
    *(v12 + 288) = 1;
    v143 = v12;
    v144 = *(v12 + 248);
    v145 = (v139 + v140);
    v146 = *(v139 + v140 + 24);
    v147 = v145[4];
    __swift_project_boxed_opaque_existential_1(v145, v146);
    v174 = (*(v147 + 8) + **(v147 + 8));
    v148 = swift_task_alloc();
    *(v143 + 296) = v148;
    *v148 = v143;
    v148[1] = sub_258E895F8;

    v174(v142, v139 + v144, v146, v147);
    return;
  }

  while (1)
  {
    v46 = v12;
LABEL_39:
    v49 = v1[22];
    v50 = v1[23];
    v51 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v52 = v51 | (v46 << 6);
    sub_258E8BAD0(*(v161 + 48) + *(v164 + 72) * v52, v49, type metadata accessor for EventMetadata);
    v53 = *(v161 + 56);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
    v55 = *(v54 + 48);
    v170 = *(v53 + 16 * v52);
    sub_258E3F8CC(v49, v50);
    *(v50 + v55) = v170;
    (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
    v56 = v170;

    v45 = &selRef_setSampledErrorAsset_;
LABEL_40:
    v57 = v1[24];
    sub_258E2EAD8(v1[23], v57, &qword_27F989E68, &qword_258F12E50);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E78, &qword_258F12E58);
    if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
    {
      break;
    }

    v59 = v1[24];
    v60 = v59 + *(v58 + 48);
    v62 = *v60;
    v61 = *(v60 + 8);
    sub_258E3F8CC(v59, v1[21]);
    v63 = [objc_allocWithZone(MEMORY[0x277D593E0]) v45[10]];
    v64 = v1;
    if (!v63)
    {

      v131 = sub_258F0A350();
      v132 = sub_258F0A820();
      v133 = os_log_type_enabled(v131, v132);
      v134 = v64[21];
      v12 = v64;
      if (v133)
      {
        v135 = v62;
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_258DD8000, v131, v132, "#ODDIMetricsSELFReporter: Failed to generate client event", v136, 2u);
        MEMORY[0x259C9EF40](v136, -1, -1);

LABEL_105:
      }

      else
      {
      }

      goto LABEL_107;
    }

    v65 = v63;
    v67 = v1[21];
    v66 = v1[22];
    v171 = v62;
    v68 = v1[18];
    v69 = v1[16];
    sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
    v70 = v45;
    sub_258E8BAD0(v67, v66, type metadata accessor for EventMetadata);
    (*v165)(v68, v169 + v168, v69);
    v71 = sub_258E8A4CC(v66, v68);
    [v65 setEventMetadata_];

    v72 = objc_allocWithZone(MEMORY[0x277D59228]);
    v73 = v171;
    v74 = [v72 v70 + 2936];
    if (!v74)
    {
      goto LABEL_122;
    }

    v75 = v74;
    v76 = v65;
    [v74 setFixedDimensions_];

    if (v61 >> 62)
    {
      v77 = sub_258F0AA20();
      if (v77)
      {
LABEL_45:
        if (v77 < 1)
        {
          goto LABEL_117;
        }

        for (i = 0; i != v77; ++i)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x259C9E3B0](i, v61);
          }

          else
          {
            v79 = *(v61 + 8 * i + 32);
          }

          v80 = v79;
          [v75 addDigests_];
        }

        v76 = v65;
      }
    }

    else
    {
      v77 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v77)
      {
        goto LABEL_45;
      }
    }

    [v76 setAssistantDeviceDigestReported_];
    v1 = v175;
    swift_beginAccess();
    v81 = v76;
    MEMORY[0x259C9DF50]();
    if (*((*(v167 + v166) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v167 + v166) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    v82 = v175[21];
    sub_258F0A700();
    swift_endAccess();

    sub_258E8BB38(v82, type metadata accessor for EventMetadata);
    v45 = &selRef_setSampledErrorAsset_;
    v40 = v163;
    if (!v44)
    {
      goto LABEL_31;
    }
  }

  v85 = 0;
  v86 = v160 + 64;
  v87 = -1;
  v88 = -1 << *(v160 + 32);
  if (-v88 < 64)
  {
    v87 = ~(-1 << -v88);
  }

  v89 = v87 & *(v160 + 64);
  v90 = (63 - v88) >> 6;
  v162 = v90;
  if (!v89)
  {
LABEL_63:
    if (v90 <= v85 + 1)
    {
      v92 = v85 + 1;
    }

    else
    {
      v92 = v90;
    }

    v93 = v92 - 1;
    v12 = v175;
    while (1)
    {
      v91 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_115;
      }

      if (v91 >= v90)
      {
        v129 = v175[14];
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
        (*(*(v130 - 8) + 56))(v129, 1, 1, v130);
        v89 = 0;
        v85 = v93;
        goto LABEL_72;
      }

      v89 = *(v86 + 8 * v91);
      ++v85;
      if (v89)
      {
        v85 = v91;
        goto LABEL_71;
      }
    }
  }

  while (1)
  {
    v91 = v85;
    v12 = v175;
LABEL_71:
    v94 = *(v12 + 176);
    v95 = *(v12 + 112);
    v96 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v97 = v96 | (v91 << 6);
    sub_258E8BAD0(*(v160 + 48) + *(v164 + 72) * v97, v94, type metadata accessor for EventMetadata);
    v98 = *(v160 + 56);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
    v100 = *(v99 + 48);
    v172 = *(v98 + 16 * v97);
    sub_258E3F8CC(v94, v95);
    *(v95 + v100) = v172;
    v101 = *(*(v99 - 8) + 56);
    v102 = v99;
    v12 = v175;
    v101(v95, 0, 1, v102);
    v103 = v172;

LABEL_72:
    v104 = *(v12 + 120);
    sub_258E2EAD8(*(v12 + 112), v104, &qword_27F989E60, &qword_258F12E48);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E80, qword_258F12E60);
    if ((*(*(v105 - 8) + 48))(v104, 1, v105) == 1)
    {

      swift_beginAccess();
      v137 = *(v167 + v166);
      *(v12 + 256) = v137;
      if (v137 >> 62)
      {
        goto LABEL_119;
      }

      v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

    v106 = *(v12 + 120);
    v107 = v106 + *(v105 + 48);
    v109 = *v107;
    v108 = *(v107 + 8);
    sub_258E3F8CC(v106, *(v12 + 160));
    v110 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    if (!v110)
    {
      break;
    }

    v111 = v110;
    v112 = *(v12 + 176);
    v113 = v12;
    v114 = *(v12 + 160);
    v115 = *(v113 + 144);
    v173 = v109;
    v116 = *(v113 + 128);
    sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
    sub_258E8BAD0(v114, v112, type metadata accessor for EventMetadata);
    (*v165)(v115, v169 + v168, v116);
    v117 = sub_258E8A4CC(v112, v115);
    v12 = v111;
    [v111 setEventMetadata_];

    v118 = objc_allocWithZone(MEMORY[0x277D592F8]);
    v119 = v173;
    v120 = [v118 init];
    if (!v120)
    {
      goto LABEL_123;
    }

    v121 = v120;
    [v120 setFixedDimensions_];

    if (v108 >> 62)
    {
      v122 = sub_258F0AA20();
      v123 = v111;
      if (v122)
      {
LABEL_77:
        if (v122 < 1)
        {
          goto LABEL_118;
        }

        for (j = 0; j != v122; ++j)
        {
          if ((v108 & 0xC000000000000001) != 0)
          {
            v125 = MEMORY[0x259C9E3B0](j, v108);
          }

          else
          {
            v125 = *(v108 + 8 * j + 32);
          }

          v126 = v125;
          [v121 addDigests_];
        }
      }
    }

    else
    {
      v122 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v123 = v111;
      if (v122)
      {
        goto LABEL_77;
      }
    }

    [v123 setDictationDeviceDigestReported_];
    v127 = swift_beginAccess();
    MEMORY[0x259C9DF50](v127);
    if (*((*(v167 + v166) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v167 + v166) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    v128 = v175[20];
    sub_258F0A700();
    swift_endAccess();

    sub_258E8BB38(v128, type metadata accessor for EventMetadata);
    v90 = v162;
    v86 = v160 + 64;
    if (!v89)
    {
      goto LABEL_63;
    }
  }

  v149 = sub_258F0A350();
  v150 = sub_258F0A820();
  v151 = os_log_type_enabled(v149, v150);
  v134 = *(v12 + 160);
  if (v151)
  {
    v152 = v12;
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_258DD8000, v149, v150, "#ODDIMetricsSELFReporter: Failed to generate client event", v153, 2u);
    v154 = v153;
    v12 = v152;
    MEMORY[0x259C9EF40](v154, -1, -1);

    goto LABEL_105;
  }

LABEL_107:
  sub_258E8BB38(v134, type metadata accessor for EventMetadata);
LABEL_108:

  v155 = *(v12 + 8);

  v155();
}

uint64_t sub_258E895F8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_258E899E8;
  }

  else
  {
    v2 = sub_258E89714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258E89714()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);

  if (v1 == v2)
  {

    v3 = sub_258F0A350();
    v4 = sub_258F0A810();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_258DD8000, v3, v4, "#ODDIMetricsSELFReporter: Finished Emitting ODDIMetrics SELF events", v5, 2u);
      MEMORY[0x259C9EF40](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    v6();
    return;
  }

  v7 = *(v0 + 288);
  v8 = *(v0 + 256);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x259C9E3B0](*(v0 + 288));
  }

  else
  {
    if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return;
    }

    v9 = *(v8 + 8 * v7 + 32);
  }

  v10 = v9;
  *(v0 + 280) = v9;
  *(v0 + 288) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 104);
  v13 = (v12 + *(v0 + 272));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v17 = (*(v15 + 8) + **(v15 + 8));
  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_258E895F8;

  v17(v10, v12 + v11, v14, v15);
}

uint64_t sub_258E899E8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsSELFReporter: Unable to report ODDIMetrics SELF events.", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 280);

  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

id sub_258E89B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258F0A370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DeviceUsageMetrics(0);
  MEMORY[0x28223BE20](v49, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v18 = result;
    sub_258DEB8C8(0, &qword_27F988AC8, 0x277D59248);
    sub_258E8BAD0(a1, v16, type metadata accessor for DeviceUsageMetrics);
    v48 = a1;
    v45 = v10;
    v19 = *(v10 + 16);
    v19(v13, a2, v9);
    v20 = v18;
    v46 = v9;
    v21 = v20;
    v22 = sub_258E8ABF4(v16, v13);
    [v21 setDimensions_];

    sub_258DEB8C8(0, &qword_27F989EA8, 0x277D59220);
    sub_258E8BAD0(v48, v16, type metadata accessor for DeviceUsageMetrics);
    v47 = a2;
    v23 = a2;
    v24 = v46;
    v19(v13, v23, v46);
    v25 = v48;
    v26 = sub_258E8B1D4(v16, v13);
    [v21 setCounts_];

    v27 = [objc_opt_self() sharedPreferences];
    LODWORD(v22) = [v27 longLivedIdentifierUploadingEnabled];

    if (v22)
    {
      v28 = *(v25 + *(v49 + 140));
      if (v28)
      {
        v29 = *(v28 + 16);
        v30 = v43;
        v31 = v21;
        if (v29)
        {
          v49 = *(v44 + 16);
          v32 = v28 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
          v33 = *(v44 + 72);
          v34 = (v44 + 8);
          do
          {
            (v49)(v8, v32, v30);
            v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v36 = sub_258F09A50();
            (*v34)(v8, v30);
            v37 = [v35 initWithNSUUID_];

            [v31 addTurnIds_];
            v32 += v33;
            --v29;
          }

          while (v29);
        }

        v38 = v31;
        v39 = sub_258F0A350();
        v40 = sub_258F0A800();
        v21 = v31;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = [v38 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v39, v40, "#ODDIMetricsSELFReporter: Added %ld turnIds to ODDAssistantDigest.", v41, 0xCu);
          MEMORY[0x259C9EF40](v41, -1, -1);
        }

        else
        {

          v39 = v38;
        }

        v25 = v48;
        v24 = v46;
      }
    }

    (*(v45 + 8))(v47, v24);
    sub_258E8BB38(v25, type metadata accessor for DeviceUsageMetrics);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8A010(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258F0A370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DeviceUsageMetrics(0);
  MEMORY[0x28223BE20](v49, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v18 = result;
    sub_258DEB8C8(0, &qword_27F989EC8, 0x277D59308);
    sub_258E8BAD0(a1, v16, type metadata accessor for DeviceUsageMetrics);
    v48 = a1;
    v45 = v10;
    v19 = *(v10 + 16);
    v19(v13, a2, v9);
    v20 = v18;
    v46 = v9;
    v21 = v20;
    v22 = sub_258E8B524(v16, v13);
    [v21 setDimensions_];

    sub_258DEB8C8(0, &qword_27F989ED0, 0x277D592F0);
    sub_258E8BAD0(v48, v16, type metadata accessor for DeviceUsageMetrics);
    v47 = a2;
    v23 = a2;
    v24 = v46;
    v19(v13, v23, v46);
    v25 = v48;
    v26 = sub_258E8B72C(v16, v13);
    [v21 setCounts_];

    v27 = [objc_opt_self() sharedPreferences];
    LODWORD(v22) = [v27 longLivedIdentifierUploadingEnabled];

    if (v22)
    {
      v28 = *(v25 + *(v49 + 140));
      if (v28)
      {
        v29 = *(v28 + 16);
        v30 = v43;
        v31 = v21;
        if (v29)
        {
          v49 = *(v44 + 16);
          v32 = v28 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
          v33 = *(v44 + 72);
          v34 = (v44 + 8);
          do
          {
            (v49)(v8, v32, v30);
            v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v36 = sub_258F09A50();
            (*v34)(v8, v30);
            v37 = [v35 initWithNSUUID_];

            [v31 addTurnIds_];
            v32 += v33;
            --v29;
          }

          while (v29);
        }

        v38 = v31;
        v39 = sub_258F0A350();
        v40 = sub_258F0A800();
        v21 = v31;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = [v38 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v39, v40, "#ODDIMetricsSELFReporter: Added %ld turnIds to ODDDictationDigest.", v41, 0xCu);
          MEMORY[0x259C9EF40](v41, -1, -1);
        }

        else
        {

          v39 = v38;
        }

        v25 = v48;
        v24 = v46;
      }
    }

    (*(v45 + 8))(v47, v24);
    sub_258E8BB38(v25, type metadata accessor for DeviceUsageMetrics);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8A4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v48 - v9;
  v11 = sub_258F09A70();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v51 = &v48 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v48 - v21;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v24 = result;
    sub_258F09A60();
    v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v26 = sub_258F09A50();
    v27 = [v25 initWithNSUUID_];

    v52 = v12[1];
    v53 = v12 + 1;
    v52(v22, v11);
    [v24 setOddId_];

    v28 = type metadata accessor for EventMetadata(0);
    v29 = (a1 + v28[11]);
    if ((v29[1] & 1) == 0)
    {
      [v24 setEventOrigin_];
    }

    v30 = a1 + v28[7];
    if ((*(v30 + 8) & 1) == 0)
    {
      [v24 setEventTimestampInMsSince1970_];
    }

    v50 = v16;
    v54 = a2;
    if (*(a1 + v28[8]))
    {
      [v24 setAggregationInterval_];
    }

    sub_258DE20C0(a1 + v28[5], v10, &qword_27F988730, &unk_258F0F8E0);
    v31 = v12[6];
    v32 = v31(v10, 1, v11);
    v49 = v12;
    if (v32 == 1)
    {
      sub_258DE2184(v10, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v33 = v12[4];
      v34 = v51;
      v33(v51, v10, v11);
      v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v36 = sub_258F09A50();
      v37 = [v35 initWithNSUUID_];

      [v24 setDeviceAggregationId_];
      v52(v34, v11);
    }

    v38 = v55;
    sub_258DE20C0(a1 + v28[6], v55, &qword_27F988730, &unk_258F0F8E0);
    if (v31(v38, 1, v11) == 1)
    {
      sub_258DE2184(v38, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v39 = v50;
      (v49[4])(v50, v38, v11);
      v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v41 = sub_258F09A50();
      v42 = [v40 initWithNSUUID_];

      [v24 setUserAggregationId_];
      v52(v39, v11);
    }

    v43 = v54;
    v44 = a1 + v28[10];
    if ((*(v44 + 8) & 1) == 0)
    {
      [v24 setUserAggregationIdExpirationTimestampMs_];
    }

    v45 = a1 + v28[9];
    if ((*(v45 + 8) & 1) == 0)
    {
      [v24 setUserAggregationIdRotationTimestampMs_];
    }

    v46 = *(a1 + v28[12]);
    if (v46 != 2)
    {
      [v24 setIsLongLivedIDUploadDisabled_];
    }

    v47 = sub_258F0A370();
    (*(*(v47 - 8) + 8))(v43, v47);
    sub_258E8BB38(a1, type metadata accessor for EventMetadata);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E8AA08()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));
}

uint64_t ODDIMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));

  return v0;
}

uint64_t ODDIMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

id sub_258E8ABF4(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    if (*(a1 + v6[9] + 8))
    {
      v7 = sub_258F0A4E0();
      [v5 setSystemBuild_];
    }

    v8 = (a1 + v6[10]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setDataSharingOptInStatus_];
    }

    v9 = (a1 + v6[11]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setViewInterface_];
    }

    if (*(a1 + v6[12] + 8))
    {
      v10 = sub_258F0A4E0();
      [v5 setAudioInterfaceVendorId_];
    }

    if (*(a1 + v6[13] + 8))
    {
      v11 = sub_258F0A4E0();
      [v5 setAudioInterfaceProductId_];
    }

    v12 = (a1 + v6[14]);
    if ((v12[1] & 1) == 0)
    {
      [v5 setAsrLocation_];
    }

    v13 = (a1 + v6[15]);
    if ((v13[1] & 1) == 0)
    {
      [v5 setNlLocation_];
    }

    if (*(a1 + v6[16]))
    {
      [v5 setSiriInputLocale_];
    }

    if (*(a1 + v6[18] + 8))
    {
      v14 = sub_258F0A4E0();
      [v5 setSubDomain_];
    }

    v15 = (a1 + v6[34]);
    if ((v15[1] & 1) == 0)
    {
      [v5 setResponseCategory_];
    }

    v16 = *(a1 + v6[36]);
    if (v16 != 2)
    {
      [v5 setIsIntelligenceEngineRequest_];
    }

    v17 = *(a1 + v6[37]);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 32);
        do
        {
          v20 = *v19++;
          [v5 addRouting_];
          --v18;
        }

        while (v18);
      }
    }

    v21 = (a1 + v6[38]);
    if ((v21[1] & 1) == 0)
    {
      [v5 setInvocationSource_];
    }

    v22 = sub_258F0A370();
    (*(*(v22 - 8) + 8))(a2, v22);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8AED8(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[21]);
    if ((v7[1] & 1) == 0)
    {
      [v5 setSiriTasksStarted_];
    }

    v8 = (a1 + v6[22]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setSiriTasksCompleted_];
    }

    v9 = (a1 + v6[23]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setFlowTasksStarted_];
    }

    v10 = (a1 + v6[24]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setFlowTasksCompleted_];
    }

    v11 = sub_258F0A370();
    (*(*(v11 - 8) + 8))(a2, v11);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B020(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    v7 = (a1 + v6[25]);
    if ((v7[1] & 1) == 0)
    {
      [v5 setReliabilityRequestCount_];
    }

    v8 = (a1 + v6[26]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setReliabilityTurnCount_];
    }

    v9 = (a1 + v6[27]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setClientErrorCount_];
    }

    v10 = (a1 + v6[28]);
    if ((v10[1] & 1) == 0)
    {
      [v5 setUndesiredResponseCount_];
    }

    v11 = (a1 + v6[29]);
    if ((v11[1] & 1) == 0)
    {
      [v5 setFatalResponseCount_];
    }

    v12 = (a1 + v6[30]);
    if ((v12[1] & 1) == 0)
    {
      [v5 setFailureResponseCount_];
    }

    v13 = (a1 + v6[31]);
    if ((v13[1] & 1) == 0)
    {
      [v5 setSiriUnavailableResponseCount_];
    }

    v14 = sub_258F0A370();
    (*(*(v14 - 8) + 8))(a2, v14);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B1D4(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceUsageMetrics(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - v14;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  sub_258E8BAD0(a1, v15, type metadata accessor for DeviceUsageMetrics);
  v18 = objc_allocWithZone(MEMORY[0x277D59400]);
  v19 = v17;
  result = [v18 init];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = &v15[*(v8 + 76)];
  if ((v21[1] & 1) == 0)
  {
    [result setTotalTurnCount_];
  }

  v22 = &v15[*(v8 + 80)];
  if ((v22[1] & 1) == 0)
  {
    [v20 setValidTurnCount_];
  }

  v30 = type metadata accessor for DeviceUsageMetrics;
  sub_258E8BB38(v15, type metadata accessor for DeviceUsageMetrics);
  [v19 setTurnCounts_];

  sub_258DEB8C8(0, &qword_27F989EB0, 0x277D593F0);
  sub_258E8BAD0(a1, v12, type metadata accessor for DeviceUsageMetrics);
  v23 = *(v4 + 16);
  v31 = a1;
  v24 = v32;
  v23(v7, v32, v3);
  v25 = sub_258E8AED8(v12, v7);
  [v19 setTaskCounts_];

  sub_258DEB8C8(0, &qword_27F989EB8, 0x277D593A8);
  v26 = a1;
  v27 = v30;
  sub_258E8BAD0(v26, v12, v30);
  v23(v7, v24, v3);
  v28 = sub_258E8B020(v12, v7);
  [v19 setReliabilityCounts_];

  (*(v4 + 8))(v24, v3);
  sub_258E8BB38(v31, v27);
  return v19;
}

id sub_258E8B524(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for DeviceUsageMetrics(0);
    if (*(a1 + v6[9] + 8))
    {
      v7 = sub_258F0A4E0();
      [v5 setSystemBuild_];
    }

    v8 = (a1 + v6[10]);
    if ((v8[1] & 1) == 0)
    {
      [v5 setDataSharingOptInStatus_];
    }

    v9 = (a1 + v6[11]);
    if ((v9[1] & 1) == 0)
    {
      [v5 setViewInterface_];
    }

    if (*(a1 + v6[12] + 8))
    {
      v10 = sub_258F0A4E0();
      [v5 setAudioInterfaceVendorId_];
    }

    if (*(a1 + v6[13] + 8))
    {
      v11 = sub_258F0A4E0();
      [v5 setAudioInterfaceProductId_];
    }

    v12 = (a1 + v6[14]);
    if ((v12[1] & 1) == 0)
    {
      [v5 setAsrLocation_];
    }

    if (*(a1 + v6[17]))
    {
      [v5 setDictationLocale_];
    }

    v13 = (a1 + v6[38]);
    if ((v13[1] & 1) == 0)
    {
      [v5 setInvocationSource_];
    }

    v14 = sub_258F0A370();
    (*(*(v14 - 8) + 8))(a2, v14);
    sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E8B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  sub_258E8BAD0(a1, v7, type metadata accessor for DeviceUsageMetrics);
  v10 = objc_allocWithZone(MEMORY[0x277D59400]);
  v11 = v9;
  result = [v10 init];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = &v7[*(v4 + 76)];
  if ((v13[1] & 1) == 0)
  {
    [result setTotalTurnCount_];
  }

  v14 = &v7[*(v4 + 80)];
  if ((v14[1] & 1) == 0)
  {
    [v12 setValidTurnCount_];
  }

  sub_258E8BB38(v7, type metadata accessor for DeviceUsageMetrics);
  [v11 setTurnCounts_];

  v15 = sub_258F0A370();
  (*(*(v15 - 8) + 8))(a2, v15);
  sub_258E8BB38(a1, type metadata accessor for DeviceUsageMetrics);
  return v11;
}

uint64_t sub_258E8B8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E8B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ODDIMetricsSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258E8B8FC(a1, v11, v12, a4, a5);
}

uint64_t sub_258E8BAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E8BB38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258E8BB98(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a2;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for EventMetadata(0);
  v68 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for DeviceUsageMetrics(0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v66 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v63 - v26;
  sub_258E8BAD0(a1, &v63 - v26, type metadata accessor for DeviceUsageMetrics);
  v69 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!v69)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*&v27[*(v21 + 24) + 8])
  {
    v28 = sub_258F0A4E0();
    v65 = v13;
    v29 = v9;
    v30 = v6;
    v31 = a1;
    v32 = v5;
    v33 = a3;
    v34 = v20;
    v35 = v14;
    v36 = v28;
    [v69 setDeviceType_];

    v14 = v35;
    v20 = v34;
    a3 = v33;
    v5 = v32;
    a1 = v31;
    v6 = v30;
    v9 = v29;
    v13 = v65;
  }

  v37 = &v27[*(v21 + 28)];
  if ((v37[1] & 1) == 0)
  {
    [v69 setProgramCode_];
  }

  sub_258E8BB38(v27, type metadata accessor for DeviceUsageMetrics);
  sub_258DE20C0(a1, v13, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v68 + 48))(v13, 1, v14) != 1)
  {
    v68 = v14;
    sub_258E3F8CC(v13, v20);
    v41 = swift_allocObject();
    v42 = v69;
    *(v41 + 16) = v69;
    sub_258DEB8C8(0, &qword_27F989EA0, 0x277D59240);
    v43 = a1;
    v44 = v66;
    sub_258E8BAD0(v43, v66, type metadata accessor for DeviceUsageMetrics);
    (*(v6 + 16))(v9, a3, v5);
    v45 = v42;
    v69 = sub_258E89B54(v44, v9);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_258E8C9B4;
    *(v46 + 24) = v41;
    v47 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v47;
    v49 = v70;
    v51 = sub_258E2EF70(v20);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      __break(1u);
LABEL_21:
      sub_258F0A6D0();
LABEL_19:
      sub_258F0A700();

      sub_258E8BB38(v20, type metadata accessor for EventMetadata);

      return;
    }

    v55 = v50;
    if (v49[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258ED8684();
        v49 = v70;
      }

LABEL_16:
      *v47 = v49;
      if ((v55 & 1) == 0)
      {
        v58 = sub_258E8C9B4();
        v60 = v59;
        v61 = v64;
        sub_258E8BAD0(v20, v64, type metadata accessor for EventMetadata);
        sub_258EDA470(v51, v61, v58, v60, v49);
      }

      v62 = v49[7] + 16 * v51;
      MEMORY[0x259C9DF50]();
      if (*((*(v62 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v62 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    sub_258ED56D0(v54, isUniquelyReferenced_nonNull_native);
    v49 = v70;
    v56 = sub_258E2EF70(v20);
    if ((v55 & 1) == (v57 & 1))
    {
      v51 = v56;
      goto LABEL_16;
    }

LABEL_23:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

  sub_258DE2184(v13, &qword_27F9894E0, &unk_258F106A0);
  v38 = sub_258F0A350();
  v39 = sub_258F0A820();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_258DD8000, v38, v39, "#ODDIMetricsSELFReporter: Missing event metadata", v40, 2u);
    MEMORY[0x259C9EF40](v40, -1, -1);
  }
}

void sub_258E8C1DC(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a2;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for EventMetadata(0);
  v68 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for DeviceUsageMetrics(0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v66 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v63 - v26;
  sub_258E8BAD0(a1, &v63 - v26, type metadata accessor for DeviceUsageMetrics);
  v69 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!v69)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*&v27[*(v21 + 24) + 8])
  {
    v28 = sub_258F0A4E0();
    v65 = v13;
    v29 = v9;
    v30 = v6;
    v31 = a1;
    v32 = v5;
    v33 = a3;
    v34 = v20;
    v35 = v14;
    v36 = v28;
    [v69 setDeviceType_];

    v14 = v35;
    v20 = v34;
    a3 = v33;
    v5 = v32;
    a1 = v31;
    v6 = v30;
    v9 = v29;
    v13 = v65;
  }

  v37 = &v27[*(v21 + 28)];
  if ((v37[1] & 1) == 0)
  {
    [v69 setProgramCode_];
  }

  sub_258E8BB38(v27, type metadata accessor for DeviceUsageMetrics);
  sub_258DE20C0(a1, v13, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v68 + 48))(v13, 1, v14) != 1)
  {
    v68 = v14;
    sub_258E3F8CC(v13, v20);
    v41 = swift_allocObject();
    v42 = v69;
    *(v41 + 16) = v69;
    sub_258DEB8C8(0, &qword_27F989EC0, 0x277D59300);
    v43 = a1;
    v44 = v66;
    sub_258E8BAD0(v43, v66, type metadata accessor for DeviceUsageMetrics);
    (*(v6 + 16))(v9, a3, v5);
    v45 = v42;
    v69 = sub_258E8A010(v44, v9);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_258E8C9E8;
    *(v46 + 24) = v41;
    v47 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *v47;
    v49 = v70;
    v51 = sub_258E2EF70(v20);
    v52 = v49[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      __break(1u);
LABEL_21:
      sub_258F0A6D0();
LABEL_19:
      sub_258F0A700();

      sub_258E8BB38(v20, type metadata accessor for EventMetadata);

      return;
    }

    v55 = v50;
    if (v49[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_258ED8648();
        v49 = v70;
      }

LABEL_16:
      *v47 = v49;
      if ((v55 & 1) == 0)
      {
        v58 = sub_258E8C9B4();
        v60 = v59;
        v61 = v64;
        sub_258E8BAD0(v20, v64, type metadata accessor for EventMetadata);
        sub_258EDA470(v51, v61, v58, v60, v49);
      }

      v62 = v49[7] + 16 * v51;
      MEMORY[0x259C9DF50]();
      if (*((*(v62 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v62 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    sub_258ED56BC(v54, isUniquelyReferenced_nonNull_native);
    v49 = v70;
    v56 = sub_258E2EF70(v20);
    if ((v55 & 1) == (v57 & 1))
    {
      v51 = v56;
      goto LABEL_16;
    }

LABEL_23:
    sub_258F0ADC0();
    __break(1u);
    return;
  }

  sub_258DE2184(v13, &qword_27F9894E0, &unk_258F106A0);
  v38 = sub_258F0A350();
  v39 = sub_258F0A820();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_258DD8000, v38, v39, "#ODDIMetricsSELFReporter: Missing event metadata", v40, 2u);
    MEMORY[0x259C9EF40](v40, -1, -1);
  }
}

uint64_t type metadata accessor for ODDIMetricsSELFReporter(uint64_t a1)
{
  result = qword_27F989E90;
  if (!qword_27F989E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E8C874(uint64_t a1)
{
  result = sub_258F0A370();
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

void *sub_258E8C9B4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

MetricsFramework::ODDIMetricsTaskExecutor::Subtask_optional __swiftcall ODDIMetricsTaskExecutor.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ODDIMetricsTaskExecutor.Subtask.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7274654D6964646FLL;
  }
}

uint64_t sub_258E8CA98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x7274654D6964646FLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000736369;
  }

  else
  {
    v4 = 0x8000000258F18C50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x7274654D6964646FLL;
  }

  if (*a2)
  {
    v6 = 0x8000000258F18C50;
  }

  else
  {
    v6 = 0xEB00000000736369;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E8CB4C()
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8CBDC(uint64_t a1)
{
  sub_258F0A5B0();
}

uint64_t sub_258E8CC58(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8CCE4@<X0>(char *a2@<X8>)
{
  v3 = sub_258F0ABE0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_258E8CD44(unint64_t *a1@<X8>)
{
  v2 = 0x8000000258F18C50;
  v3 = 0x7274654D6964646FLL;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB00000000736369;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_258E8CDA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a1;
  *(v8 + 88) = *a2;
  return MEMORY[0x2822009F8](sub_258E8CDDC, 0, 0);
}

uint64_t sub_258E8CDDC()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    v3 = *MEMORY[0x277D81758];
    v4 = sub_258F09E50();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = **(v0 + 64);
    if (v1)
    {
      v17 = (*(v7 + 104) + **(v7 + 104));
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v8[1] = sub_258E8D190;
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 16);
      v15 = v17;
    }

    else
    {
      v18 = (*(v7 + 96) + **(v7 + 96));
      v16 = swift_task_alloc();
      *(v0 + 72) = v16;
      *v16 = v0;
      v16[1] = sub_258E8D09C;
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 16);
      v15 = v18;
    }

    return v15(v14, v12, v13, v10, v11, v9);
  }
}

uint64_t sub_258E8D09C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258E8D190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258E8D284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E8D34C, 0, 0);
}

uint64_t sub_258E8D34C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsTaskExecutor: Call ODDIMetrics", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v12 = swift_task_alloc();
  v1[12] = v12;
  (*(v6 + 16))(v5, v10, v8);
  type metadata accessor for ODDIMetricsPlugin(0);
  swift_allocObject();

  v1[2] = ODDIMetricsPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989ED8, qword_258F12EE8);
  swift_allocObject();
  v14 = sub_258F09E40();
  v1[13] = v14;
  if (v14)
  {
    v15 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v16 = swift_task_alloc();
    v1[14] = v16;
    v17 = sub_258F09E00();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v16, v15, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_258E8D720;

    return MEMORY[0x2821ED078](v12, v16);
  }

  else
  {
    v20 = v1[3];
    v21 = sub_258F09E50();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v12, 1, 1, v21);
    (*(v22 + 104))(v20, *MEMORY[0x277D81758], v21);

    v23 = v1[1];

    return v23();
  }
}

uint64_t sub_258E8D720()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  sub_258E8D87C(*(v2 + 112));

  if (v0)
  {
    v3 = sub_258E4B01C;
  }

  else
  {

    v3 = sub_258E4AF14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E8D87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E8D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E8D9AC, 0, 0);
}

uint64_t sub_258E8D9AC(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsTaskExecutor: Call ODDISegmentsCohorts", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v12 = swift_task_alloc();
  v1[12] = v12;
  (*(v6 + 16))(v5, v10, v8);
  type metadata accessor for ODDISegmentsCohortsPlugin(0);
  swift_allocObject();

  v1[2] = ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989EE0, &qword_258F12F00);
  swift_allocObject();
  v14 = sub_258F09E40();
  v1[13] = v14;
  if (v14)
  {
    v15 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v16 = swift_task_alloc();
    v1[14] = v16;
    v17 = sub_258F09E00();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v16, v15, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_258E8DD80;

    return MEMORY[0x2821ED078](v12, v16);
  }

  else
  {
    v20 = v1[3];
    v21 = sub_258F09E50();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v12, 1, 1, v21);
    (*(v22 + 104))(v20, *MEMORY[0x277D81758], v21);

    v23 = v1[1];

    return v23();
  }
}

uint64_t sub_258E8DD80()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  sub_258E8D87C(*(v2 + 112));

  if (v0)
  {
    v3 = sub_258E8E72C;
  }

  else
  {

    v3 = sub_258E8E730;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E8DEF4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 64) = *v7;
  *(v8 + 88) = *a2;
  return MEMORY[0x2822009F8](sub_258E8DF30, 0, 0);
}

uint64_t sub_258E8DF30()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    v3 = *MEMORY[0x277D81758];
    v4 = sub_258F09E50();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = **(v0 + 64);
    if (v1)
    {
      v17 = (*(v7 + 104) + **(v7 + 104));
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v8[1] = sub_258E8E728;
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 16);
      v15 = v17;
    }

    else
    {
      v18 = (*(v7 + 96) + **(v7 + 96));
      v16 = swift_task_alloc();
      *(v0 + 72) = v16;
      *v16 = v0;
      v16[1] = sub_258E8E724;
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      v14 = *(v0 + 16);
      v15 = v18;
    }

    return v15(v14, v12, v13, v10, v11, v9);
  }
}

unint64_t sub_258E8E1F4()
{
  result = qword_27F989EE8;
  if (!qword_27F989EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989EE8);
  }

  return result;
}

unint64_t sub_258E8E24C()
{
  result = qword_280CC5008[0];
  if (!qword_280CC5008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC5008);
  }

  return result;
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 88) + **(*v7 + 88));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_258DEE37C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.executeODDIMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 96) + **(*v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ODDIMetricsTaskExecutor.executeODDISegmentsCohorts(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

MetricsFramework::ODDIMetricsWorkerError_optional __swiftcall ODDIMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODDIMetricsWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E8E9A4()
{
  v0 = ODDIMetricsWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == ODDIMetricsWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258E8EA40()
{
  sub_258F0AE40();
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E8EAA8(uint64_t a1)
{
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E8EB0C(uint64_t a1)
{
  sub_258F0AE40();
  ODDIMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E8EB7C@<X0>(unint64_t *a1@<X8>)
{
  result = ODDIMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ODDIMetricsWorker.init()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();

  return sub_258F0A360();
}

uint64_t ODDIMetricsWorker.doWork<A>(executor:context:subtask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[21] = a7;
  v8[22] = v7;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_258F0A770();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getAssociatedTypeWitness();
  v10 = sub_258F0A920();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E8ED74, 0, 0);
}

uint64_t sub_258E8ED74()
{
  v92 = v0;
  v1 = *(v0 + 136);
  v2 = sub_258F0A350();
  v3 = sub_258F0A800();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v91 = v5;
    *v4 = 136315394;
    v6 = sub_258F09E80();
    v8 = sub_258DE3018(v6, v7, &v91);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = sub_258F09E90();
    v11 = sub_258DE3018(v9, v10, &v91);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_258DD8000, v2, v3, "TaskId: %s, TaskName: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v5, -1, -1);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v12 = *(v0 + 152);
  v13 = *(v0 + 120);
  *v13 = 0;
  v14 = *MEMORY[0x277D81760];
  *(v0 + 344) = v14;
  v15 = sub_258F09E50();
  *(v0 + 240) = v15;
  v16 = *(v15 - 8);
  *(v0 + 248) = v16;
  v17 = *(v16 + 104);
  *(v0 + 256) = v17;
  *(v0 + 264) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v13, v14, v15);
  v18 = *(v12 + 16);
  v88 = *(v12 + 24);
  (*(v88 + 8))(v18);
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_258F0A4E0();

  v21 = [v19 initWithSuiteName_];
  *(v0 + 272) = v21;

  v22 = sub_258F09E80();
  v24 = v23;
  v25 = sub_258F09E90();
  sub_258E90AE0(v22, v24, v25, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989EF0, &unk_258F13050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = (*(v88 + 40))(v18);
  v35 = sub_258DFBE24(inited);
  swift_setDeallocating();
  sub_258E90C74(inited + 32);
  if (v21)
  {
    v36 = *(v0 + 208);
    v87 = *(v0 + 168);
    v37 = *(v0 + 144);
    v86 = *(v0 + 232);
    v21;
    sub_258F09E80();
    v38 = sub_258F09E90();
    v40 = v39;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_258E90CDC(v38, v40, v37, v18, v36, v88, AssociatedConformanceWitness);

    v42 = objc_allocWithZone(sub_258F09EA0());
    v43 = sub_258F09E70();
    *(v0 + 280) = v43;
    v44 = sub_258F09E00();
    *(v0 + 288) = v44;
    *(v0 + 296) = *(v44 - 8);
    *(v0 + 304) = swift_task_alloc();
    v45 = v43;
    sub_258DFA2E0(v35);

    sub_258F09DF0();
    *(v0 + 312) = swift_task_alloc();
    v46 = *(v36 - 8);
    (*(v46 + 16))(v86, v37, v36);
    (*(v46 + 56))(v86, 0, 1, v36);
    (*(v88 + 32))(v18, v88);
    *(v0 + 320) = v47;
    v89 = *(v87 + 32) + **(v87 + 32);
    v48 = swift_task_alloc();
    *(v0 + 328) = v48;
    *v48 = v0;
    v48[1] = sub_258E8FAFC;
    v94 = *(v0 + 168);

    __asm { BRAA            X8, X16 }
  }

  v54 = sub_258F0A350();
  v55 = sub_258F0A820();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_258DD8000, v54, v55, "Can't get user defaults initialized", v56, 2u);
    MEMORY[0x259C9EF40](v56, -1, -1);
  }

  sub_258E75C14();
  v32 = swift_allocError();
  *v57 = 5;
  swift_willThrow();
  *(v0 + 72) = v32;
  v27 = sub_258F09E20();
  v28 = *(v27 - 8);
  v29 = swift_task_alloc();
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v31 = (*(v28 + 88))(v29, v27);
    if (MEMORY[0x277D81740] && v31 == *MEMORY[0x277D81740])
    {

      v32 = *(v0 + 72);
      v33 = 3;
LABEL_34:
      v90 = v33;
      goto LABEL_35;
    }

    if (MEMORY[0x277D81748] && v31 == *MEMORY[0x277D81748])
    {

      v32 = *(v0 + 72);
      v33 = 4;
      goto LABEL_34;
    }

    (*(v28 + 8))(v29, v27);
  }

  *(v0 + 80) = v32;
  v49 = sub_258F0A1D0();
  v50 = *(v49 - 8);
  v51 = swift_task_alloc();
  v52 = v32;
  if (swift_dynamicCast())
  {
    v53 = (*(v50 + 88))(v51, v49);
    if (MEMORY[0x277D04530] && v53 == *MEMORY[0x277D04530])
    {

      v32 = *(v0 + 80);
      v33 = 6;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v53 == *MEMORY[0x277D04538])
    {

      v32 = *(v0 + 80);
      v33 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v53 == *MEMORY[0x277D04540])
    {

      v32 = *(v0 + 80);
      v33 = 8;
      goto LABEL_34;
    }

    (*(v50 + 8))(v51, v49);
  }

  *(v0 + 88) = v32;
  v58 = v32;
  if (swift_dynamicCast())
  {

    v90 = *(v0 + 348);
    v32 = *(v0 + 88);
LABEL_35:

    v63 = *(v0 + 272);
    v64 = *(v0 + 248);
    v65 = *(v0 + 256);
    v66 = *(v0 + 240);
    v67 = *(v0 + 344);
    v68 = *(v0 + 120);
    v69 = swift_task_alloc();
    sub_258E75C14();
    v70 = swift_allocError();
    *v71 = v90;

    (*(v64 + 8))(v68, v66);
    *v69 = v70;
    v65(v69, v67, v66);
    (*(v64 + 32))(v68, v69, v66);

    goto LABEL_36;
  }

  *(v0 + 96) = v32;
  v59 = sub_258F09E60();
  v60 = *(v59 - 8);
  v61 = swift_task_alloc();
  v62 = v32;
  if (swift_dynamicCast())
  {

    (*(v60 + 8))(v61, v59);

    v32 = *(v0 + 96);
    v33 = 2;
    goto LABEL_34;
  }

  *(v0 + 104) = v32;
  v74 = sub_258F09E10();
  v75 = *(v74 - 8);
  v76 = swift_task_alloc();
  v77 = v32;
  if (swift_dynamicCast())
  {

    (*(v75 + 8))(v76, v74);

    v90 = 0;
    v32 = *(v0 + 104);
    goto LABEL_35;
  }

  *(v0 + 112) = v32;
  v78 = v32;
  if (!swift_dynamicCast())
  {

    v33 = 1;
    goto LABEL_34;
  }

  v79 = *(v0 + 272);
  v80 = *(v0 + 256);
  v81 = *(v0 + 240);
  v83 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 184);
  v85 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v85, v81);

  v80(v85, *MEMORY[0x277D81770], v81);
  (*(v83 + 8))(v82, v84);

LABEL_36:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_258E8FAFC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2[28] + 8))(v2[29], v2[27]);

  if (v0)
  {
    v3 = sub_258E9040C;
  }

  else
  {
    v3 = sub_258E8FC80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E8FC80()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 120);
  (*(v4 + 8))(v5, v3);
  (*(v4 + 32))(v5, v2, v3);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258E90AE0(v6, v8, v9, v10);
  v11 = *(v0 + 280);
  v12 = *(v0 + 272);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 72) = v1;
  v13 = sub_258F09E20();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D81740] && v17 == *MEMORY[0x277D81740])
    {

      v18 = 3;
LABEL_26:
      v52 = v18;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v17 == *MEMORY[0x277D81748])
    {

      v18 = 4;
      goto LABEL_26;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 80) = v1;
  v19 = sub_258F0A1D0();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v1;
  if (swift_dynamicCast())
  {
    v23 = (*(v20 + 88))(v21, v19);
    if (MEMORY[0x277D04530] && v23 == *MEMORY[0x277D04530])
    {

      v18 = 6;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04538] && v23 == *MEMORY[0x277D04538])
    {

      v18 = 7;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04540] && v23 == *MEMORY[0x277D04540])
    {

      v18 = 8;
      goto LABEL_26;
    }

    (*(v20 + 8))(v21, v19);
  }

  *(v0 + 88) = v1;
  v24 = v1;
  if (swift_dynamicCast())
  {

    v52 = *(v0 + 348);
LABEL_27:
    v29 = *(v0 + 272);
    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    v32 = *(v0 + 240);
    v33 = *(v0 + 344);
    v34 = *(v0 + 120);
    v35 = swift_task_alloc();
    sub_258E75C14();
    v36 = swift_allocError();
    *v37 = v52;

    (*(v30 + 8))(v34, v32);
    *v35 = v36;
    v31(v35, v33, v32);
    (*(v30 + 32))(v34, v35, v32);
    goto LABEL_28;
  }

  *(v0 + 96) = v1;
  v25 = sub_258F09E60();
  v26 = *(v25 - 8);
  v27 = swift_task_alloc();
  v28 = v1;
  if (swift_dynamicCast())
  {

    (*(v26 + 8))(v27, v25);

    v18 = 2;
    goto LABEL_26;
  }

  *(v0 + 104) = v1;
  v40 = sub_258F09E10();
  v41 = *(v40 - 8);
  v42 = swift_task_alloc();
  v43 = v1;
  if (swift_dynamicCast())
  {

    (*(v41 + 8))(v42, v40);

    v52 = 0;
    goto LABEL_27;
  }

  *(v0 + 112) = v1;
  v44 = v1;
  if (!swift_dynamicCast())
  {

    v18 = 1;
    goto LABEL_26;
  }

  v45 = *(v0 + 272);
  v46 = *(v0 + 256);
  v47 = *(v0 + 240);
  v49 = *(v0 + 192);
  v48 = *(v0 + 200);
  v50 = *(v0 + 184);
  v51 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v51, v47);

  v46(v51, *MEMORY[0x277D81770], v47);
  (*(v49 + 8))(v48, v50);

LABEL_29:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_258E9040C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 336);
  *(v0 + 72) = v5;
  v6 = (v0 + 72);
  v7 = sub_258F09E20();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v11 = (*(v8 + 88))(v9, v7);
    if (MEMORY[0x277D81740] && v11 == *MEMORY[0x277D81740])
    {

      v5 = *v6;
      v12 = 3;
LABEL_24:
      v46 = v12;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v11 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v12 = 4;
      goto LABEL_24;
    }

    (*(v8 + 8))(v9, v7);
  }

  *(v0 + 80) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 80);
      v12 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 80);
      v12 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 80);
      v12 = 8;
      goto LABEL_24;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 88) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v46 = *(v0 + 348);
    v5 = *(v0 + 88);
LABEL_25:

    v23 = *(v0 + 272);
    v24 = *(v0 + 248);
    v25 = *(v0 + 256);
    v26 = *(v0 + 240);
    v27 = *(v0 + 344);
    v28 = *(v0 + 120);
    v29 = swift_task_alloc();
    sub_258E75C14();
    v30 = swift_allocError();
    *v31 = v46;

    (*(v24 + 8))(v28, v26);
    *v29 = v30;
    v25(v29, v27, v26);
    (*(v24 + 32))(v28, v29, v26);

    goto LABEL_26;
  }

  *(v0 + 96) = v5;
  v19 = sub_258F09E60();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v5;
  if (swift_dynamicCast())
  {

    (*(v20 + 8))(v21, v19);

    v5 = *(v0 + 96);
    v12 = 2;
    goto LABEL_24;
  }

  *(v0 + 104) = v5;
  v34 = sub_258F09E10();
  v35 = *(v34 - 8);
  v36 = swift_task_alloc();
  v37 = v5;
  if (swift_dynamicCast())
  {

    (*(v35 + 8))(v36, v34);

    v46 = 0;
    v5 = *(v0 + 104);
    goto LABEL_25;
  }

  *(v0 + 112) = v5;
  v38 = v5;
  if (!swift_dynamicCast())
  {

    v12 = 1;
    goto LABEL_24;
  }

  v39 = *(v0 + 272);
  v40 = *(v0 + 256);
  v41 = *(v0 + 240);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 184);
  v45 = *(v0 + 120);
  (*(*(v0 + 248) + 8))(v45, v41);

  v40(v45, *MEMORY[0x277D81770], v41);
  (*(v43 + 8))(v42, v44);

LABEL_26:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_258E90AE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A800();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(a1, a2, &v13);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_258DE3018(a3, a4, &v13);
      _os_log_impl(&dword_258DD8000, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E90C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B08, &unk_258F0CD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E90CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = v15 - v12;
  v16 = a1;
  v17 = a2;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);
  v15[0] = v16;
  v15[1] = v17;
  sub_258F0A670();
  sub_258E9119C();
  sub_258F0A7F0();
  (*(v10 + 8))(v13, AssociatedTypeWitness);

  return v16;
}

unint64_t sub_258E90E58()
{
  result = qword_27F989EF8;
  if (!qword_27F989EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989EF8);
  }

  return result;
}

unint64_t sub_258E90EB4()
{
  result = qword_27F989F00;
  if (!qword_27F989F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989F00);
  }

  return result;
}