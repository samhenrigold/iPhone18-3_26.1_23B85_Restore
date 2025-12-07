uint64_t SpeakerIdSamplingCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter));

  return v0;
}

uint64_t SpeakerIdSamplingCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter));

  return swift_deallocClassInstance();
}

uint64_t sub_258EEF0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EEF170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EE7B98(a1);
}

void sub_258EEF20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988890, &unk_258F0C040);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_258EEF2F8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_258EEF3A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v12 = 0;
      MEMORY[0x259C9EF50](&v12, 8);
      v6 = (v12 * v2) >> 64;
      if (v2 > v12 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v12 * v2)
        {
          do
          {
            v12 = 0;
            MEMORY[0x259C9EF50](&v12, 8);
          }

          while (v7 > v12 * v2);
          v6 = (v12 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = v1[2];
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = v1[v4 + 4];
        v11 = v1[v8 + 4];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_258E07F08(v1);
        }

        if (v4 >= v1[2])
        {
          goto LABEL_21;
        }

        v1[v4 + 4] = v11;

        if (v8 >= v1[2])
        {
          goto LABEL_22;
        }

        v1[v8 + 4] = v10;

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

id sub_258EEF518(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v6), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v7);
    sub_258E0F590(v6);
    if (swift_dynamicCast())
    {
      v4 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(0xD000000000000011, 0x8000000258F18A30);

      return v4;
    }
  }

  else
  {
    sub_258E0F590(v6);
  }

  return 0;
}

uint64_t sub_258EEF5F8(uint64_t a1)
{
  sub_258F0AA80();
  if (!*(a1 + 16) || (v2 = sub_258E2EA2C(v8), (v3 & 1) == 0))
  {
    sub_258E0F590(v8);
    goto LABEL_7;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v2, v9);
  sub_258E0F590(v8);
  if (!swift_dynamicCast())
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = sub_258F0A4E0();

  v5 = v4;
  if ([v5 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
  {
    v6 = 8;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
  {
    v6 = 10;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
  {
    v6 = 12;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
  {
    v6 = 13;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
  {
    v6 = 14;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
  {
    v6 = 15;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
  {
    v6 = 16;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
  {
    v6 = 17;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
  {
    v6 = 18;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
  {
    v6 = 19;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
  {
    v6 = 20;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
  {
    v6 = 21;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
  {
    v6 = 22;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
  {
    v6 = 23;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
  {
    v6 = 24;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
  {
    v6 = 25;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
  {
    v6 = 26;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
  {
    v6 = 27;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
  {
    v6 = 28;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
  {
    v6 = 29;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
  {
    v6 = 30;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
  {
    v6 = 31;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
  {
    v6 = 32;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
  {
    v6 = 33;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
  {
    v6 = 34;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
  {
    v6 = 35;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
  {
    v6 = 36;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
  {
    v6 = 37;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
  {
    v6 = 38;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
  {
    v6 = 39;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
  {
    v6 = 40;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
  {
    v6 = 41;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
  {
    v6 = 42;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
  {
    v6 = 43;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
  {
    v6 = 44;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
  {
    v6 = 45;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
  {
    v6 = 46;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
  {
    v6 = 47;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
  {
    v6 = 48;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
  {
    v6 = 49;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
  {
    v6 = 50;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
  {
    v6 = 51;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
  {
    v6 = 52;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
  {
    v6 = 53;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
  {
    v6 = 54;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
  {
    v6 = 55;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
  {
    v6 = 56;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
  {
    v6 = 57;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
  {
    v6 = 58;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
  {
    v6 = 59;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
  {
    v6 = 60;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
  {
    v6 = 61;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
  {
    v6 = 62;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
  {
    v6 = 63;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
  {
    v6 = 64;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
  {
    v6 = 65;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
  {
    v6 = 66;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
  {
    v6 = 67;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
  {
    v6 = 68;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
  {
    v6 = 69;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
  {
    v6 = 70;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
  {
    v6 = 71;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
  {
    v6 = 72;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
  {
    v6 = 73;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
  {
    v6 = 74;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
  {
    v6 = 75;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
  {
    v6 = 76;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
  {
    v6 = 77;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
  {
    v6 = 78;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
  {
    v6 = 79;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
  {
    v6 = 80;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
  {
    v6 = 81;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
  {
    v6 = 82;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
  {
    v6 = 83;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
  {
    v6 = 84;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
  {
    v6 = 85;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
  {
    v6 = 87;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
  {
    v6 = 88;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
  {
    v6 = 89;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
  {
    v6 = 90;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
  {
    v6 = 91;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
  {
    v6 = 92;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
  {
    v6 = 93;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
  {
    v6 = 94;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
  {
    v6 = 95;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
  {
    v6 = 96;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
  {
    v6 = 97;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
  {
    v6 = 98;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
  {
    v6 = 99;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
  {
    v6 = 100;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
  {
    v6 = 101;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
  {
    v6 = 102;
  }

  else if ([v5 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
  {
    v6 = 103;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  LOBYTE(v8[0]) = 0;
  return v6;
}

uint64_t sub_258EF0230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EF02A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakerIdSamplingData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258EF0304()
{
  result = qword_27F98A8D8;
  if (!qword_27F98A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A8D8);
  }

  return result;
}

uint64_t sub_258EF0358(uint64_t a1)
{
  result = sub_258EF0768(&qword_27F98A8E0, type metadata accessor for SpeakerIdSamplingCalculator, &unk_258F16B38);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SpeakerIdSamplingCalculator(uint64_t a1)
{
  result = qword_27F98A8F8;
  if (!qword_27F98A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF03FC(uint64_t a1)
{
  result = sub_258EF0768(&qword_27F98A8E8, type metadata accessor for SpeakerIdSamplingCalculator, &protocol conformance descriptor for SpeakerIdSamplingCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258EF0454()
{
  result = qword_27F98A8F0;
  if (!qword_27F98A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A8F0);
  }

  return result;
}

void sub_258EF04C0(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SpeakerIdSamplingCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EF0710(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258F0AD80() & 1;
  }
}

uint64_t sub_258EF0768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_258EF07B8@<D0>(uint64_t a1@<X8>)
{
  v50 = *(v1 + 16);
  v49 = *(v1 + 24);
  v48 = *(v1 + 32);
  v3 = *(v1 + 48);
  v46 = *(v1 + 56);
  v47 = *(v1 + 40);
  v4 = *(v1 + 80);
  v44 = *(v1 + 88);
  v45 = *(v1 + 72);
  v27 = *(v1 + 64);
  v28 = *(v1 + 96);
  v51 = *(v1 + 104);
  v42 = *(v1 + 116);
  v43 = *(v1 + 112);
  v40 = *(v1 + 124);
  v41 = *(v1 + 120);
  v38 = *(v1 + 127);
  v39 = *(v1 + 125);
  v36 = *(v1 + 132);
  v37 = *(v1 + 128);
  v34 = *(v1 + 140);
  v35 = *(v1 + 136);
  v32 = *(v1 + 148);
  v33 = *(v1 + 144);
  v31 = *(v1 + 152);
  v30 = *(v1 + 160);
  v5 = *(v1 + 176);
  v29 = *(v1 + 168);
  v6 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
  v7 = *(v1 + 192);
  v26 = *(v1 + 184);
  v25 = *(v1 + 200);
  v8 = *(v1 + 216);
  v24 = *(v1 + 208);
  v22 = *(v1 + 228);
  v23 = *(v1 + 224);
  swift_beginAccess();
  v9 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(v1 + v6, a1 + v9[26]);
  v20 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase + 4);
  v21 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase);
  v18 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId + 8);
  v19 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  v17 = *(v1 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location);
  v10 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
  swift_beginAccess();
  sub_258E3A540(v1 + v10, a1 + v9[30]);
  v11 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId;
  swift_beginAccess();
  sub_258E3A540(v1 + v11, a1 + v9[31]);
  *a1 = v50;
  *(a1 + 8) = v49;
  *(a1 + 16) = v48;
  *(a1 + 24) = v47;
  *(a1 + 32) = v3;
  *(a1 + 40) = v46;
  *(a1 + 48) = v27;
  *(a1 + 56) = v45;
  *(a1 + 64) = v4;
  *(a1 + 72) = v44;
  *(a1 + 80) = v28;
  *(a1 + 88) = v51;
  *(a1 + 96) = v43;
  *(a1 + 100) = v42;
  *(a1 + 104) = v41;
  *(a1 + 108) = v40;
  *(a1 + 109) = v39;
  *(a1 + 111) = v38;
  *(a1 + 112) = v37;
  *(a1 + 116) = v36;
  *(a1 + 120) = v35;
  *(a1 + 124) = v34;
  *(a1 + 128) = v33;
  *(a1 + 132) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = v30;
  *(a1 + 152) = v29;
  *(a1 + 160) = v5;
  *(a1 + 168) = v26;
  *(a1 + 176) = v7;
  *(a1 + 184) = v25;
  *(a1 + 192) = v24;
  *(a1 + 200) = v8;
  *(a1 + 208) = v23;
  *(a1 + 212) = v22;
  v12 = a1 + v9[27];
  *v12 = v21;
  *(v12 + 4) = v20;
  v13 = (a1 + v9[28]);
  *v13 = v19;
  v13[1] = v18;
  *(a1 + v9[29]) = v17;
  v14 = v17;

  v15 = v51;

  return result;
}

uint64_t SpeakerIdSamplingDataBuilderImpl.deinit()
{

  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId);

  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId);
  return v0;
}

uint64_t SpeakerIdSamplingDataBuilderImpl.__deallocating_deinit()
{
  SpeakerIdSamplingDataBuilderImpl.deinit();

  return swift_deallocClassInstance();
}

void sub_258EF0EEC(uint64_t a1)
{
  sub_258E0F074(319, &qword_27F989788, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58, MEMORY[0x277D84D38]);
    if (v2 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
        if (v4 <= 0x3F)
        {
          sub_258EF1200(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
          if (v5 <= 0x3F)
          {
            sub_258EF1200(319, &qword_27F98A948, type metadata accessor for ORCHSchemaORCHMotionActivity);
            if (v6 <= 0x3F)
            {
              sub_258EF1200(319, &qword_27F98A950, type metadata accessor for MHSchemaMHASRAudioCodec);
              if (v7 <= 0x3F)
              {
                sub_258EF1200(319, &qword_27F98A958, type metadata accessor for MHSchemaMHAssistantDaemonAudioSource);
                if (v8 <= 0x3F)
                {
                  sub_258EF1200(319, &qword_27F98A960, type metadata accessor for ASRSchemaASRDatapackTask);
                  if (v9 <= 0x3F)
                  {
                    sub_258EF1200(319, &qword_27F98A968, type metadata accessor for ORCHSchemaORCHRequestCancellationReason);
                    if (v10 <= 0x3F)
                    {
                      sub_258EF1200(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
                      if (v11 <= 0x3F)
                      {
                        sub_258EF1200(319, &qword_27F98A970, type metadata accessor for SISchemaTriggerPhrase);
                        if (v12 <= 0x3F)
                        {
                          sub_258E56A6C(319, &qword_27F98A978, &qword_27F98A980, 0x277D5A950);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258EF1200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258EF127C(uint64_t a1)
{
  sub_258EF1200(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_258EF13A8()
{
  *(v0 + 16) = 2;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 100) = 0u;
  *(v0 + 116) = 1;
  *(v0 + 120) = 0;
  *(v0 + 124) = 1;
  *(v0 + 125) = 514;
  *(v0 + 127) = 2;
  *(v0 + 128) = 0;
  *(v0 + 132) = 1;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  *(v0 + 144) = 0;
  *(v0 + 148) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 224) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 228) = 1;
  v1 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
  v2 = sub_258F09A70();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = (v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_location) = 0;
  v3(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_requestId, 1, 1, v2);
  return v0;
}

uint64_t SpeakerIdSamplingDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SpeakerIdSamplingDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EF162C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSamplingDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SpeakerIdSamplingDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSamplingDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF1808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EF160C();
}

uint64_t type metadata accessor for SpeakerIdSamplingDataProvider(uint64_t a1)
{
  result = qword_27F98A9A8;
  if (!qword_27F98A9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSamplingDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t sub_258EF1A64(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdSamplingReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

id sub_258EF1CE4(uint64_t a1)
{
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v8 = result;
    sub_258F09A60();
    v9 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v10 = sub_258F09A50();
    v11 = [v9 initWithNSUUID_];

    (*(v3 + 8))(v6, v2);
    [v8 setOdsampleId_];

    v12 = sub_258F0A370();
    (*(*(v12 - 8) + 8))(a1, v12);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258EF1E70()
{
  result = [objc_opt_self() sharedPreferences];
  qword_27F98AF60 = result;
  return result;
}

uint64_t SpeakerIdSamplingSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258EF4794(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t SpeakerIdSamplingSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258EF46D4(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258EF2010(uint64_t a1)
{
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_258F09A70();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_258F0A370();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  v6 = type metadata accessor for SpeakerIdSamplingData(0);
  *(v2 + 112) = v6;
  *(v2 + 120) = *(v6 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = *a1;
  *(v2 + 184) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258EF2234, 0, 0);
}

void sub_258EF2234(uint64_t a1)
{
  v62 = v1;
  v1[24] = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "#SpeakerIdSamplingSELFReporter: result %ld", v9, 0xCu);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  else
  {
  }

  v10 = sub_258F0A350();
  v11 = sub_258F0A810();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v1[23];
    v13 = v1[14];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v61 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x259C9DF80](v12, v13);
    v18 = sub_258DE3018(v16, v17, &v61);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_258DD8000, v10, v11, "#SpeakerIdSamplingSELFReporter: result.SpeakerIdSamplingData %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x259C9EF40](v15, -1, -1);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  v19 = v1[23];
  v20 = *(v19 + 16);
  v21 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService;
  v1[25] = v20;
  v1[26] = v21;
  if (v20)
  {
    v22 = v1[15];
    v1[27] = 0;
    if (!*(v19 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_258EE73AC(v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v1[20]);
    v23 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v1[28] = v23;
    v24 = v1[24];
    if (v23)
    {
      v25 = v23;
      v26 = v1[19];
      v27 = v1[20];
      v59 = v1[18];
      v29 = v1[12];
      v28 = v1[13];
      v30 = v1[11];
      v31 = v1[2];
      sub_258EF4894();
      sub_258EE73AC(v27, v26);
      (*(v29 + 16))(v28, v31 + v24, v30);
      v32 = sub_258EF3FFC(v26, v28);
      [v25 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v27, v59);
      v33 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (v33)
      {
        v34 = v33;
        v35 = v1[6];
        v36 = v1[7];
        v37 = v1[5];
        sub_258E3A540(v1[18] + *(v1[14] + 120), v37);
        v38 = *(v36 + 48);
        v1[29] = v38;
        v1[30] = (v36 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v39 = v38(v37, 1, v35);
        v40 = v1[18];
        if (v39 == 1)
        {
          v41 = v1[5];
          sub_258EE7410(v1[18]);
          sub_258E3A4D8(v41);
        }

        else
        {
          v47 = v1[10];
          v48 = v1[6];
          v49 = v1[7];
          (*(v49 + 32))(v47, v1[5], v48);
          v50 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v51 = sub_258F09A50();
          v52 = [v50 initWithNSUUID_];

          [v34 setOdsampleId_];
          (*(v49 + 8))(v47, v48);
          sub_258EE7410(v40);
        }

        v53 = v1[24];
        v54 = v1[2];
        v55 = (v54 + v1[26]);
        [v25 setEventMetadata_];

        v56 = v55[3];
        v57 = v55[4];
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v60 = (*(v57 + 16) + **(v57 + 16));
        v58 = swift_task_alloc();
        v1[31] = v58;
        *v58 = v1;
        v58[1] = sub_258EF2960;

        v60(v25, v54 + v53, v56, v57);
        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    v42 = sub_258F0A350();
    v43 = sub_258F0A820();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_258DD8000, v42, v43, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v44, 2u);
      MEMORY[0x259C9EF40](v44, -1, -1);
    }

    v45 = v1[20];

    sub_258EE7410(v45);
  }

  v46 = v1[1];

  v46();
}

uint64_t sub_258EF2960()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_258EF38F4;
  }

  else
  {
    v2 = sub_258EF2A74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EF2A74()
{
  if (qword_27F988688 != -1)
  {
    swift_once();
  }

  if ([qword_27F98AF60 longLivedIdentifierUploadingEnabled])
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[33] = v1;
    if (v1)
    {
      v2 = v1;
      sub_258EE73AC(v0[20], v0[17]);
      v3 = [objc_allocWithZone(MEMORY[0x277D59550]) init];
      if (v3)
      {
        v4 = v3;
        v5 = v0[29];
        v6 = v0[6];
        v7 = v0[4];
        sub_258E3A540(v0[17] + *(v0[14] + 124), v7);
        v8 = v5(v7, 1, v6);
        v9 = v0[17];
        if (v8 == 1)
        {
          v10 = v0[4];
          sub_258EE7410(v0[17]);
          sub_258E3A4D8(v10);
        }

        else
        {
          v32 = v0[9];
          v33 = v0[6];
          v34 = v0[7];
          (*(v34 + 32))(v32, v0[4], v33);
          v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v36 = sub_258F09A50();
          v37 = [v35 initWithNSUUID_];

          [v4 setRequestId_];
          sub_258EE7410(v9);
          (*(v34 + 8))(v32, v33);
        }

        v38 = v0[20];
        v39 = v0[16];
        [v2 setSpeakerIdSampleToRequestMap_];

        sub_258EE73AC(v38, v39);
        v40 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
        if (v40)
        {
          v41 = v40;
          v42 = v0[29];
          v43 = v0[6];
          v44 = v0[3];
          sub_258E3A540(v0[16] + *(v0[14] + 120), v44);
          v45 = v42(v44, 1, v43);
          v46 = v0[16];
          if (v45 == 1)
          {
            v47 = v0[3];
            sub_258EE7410(v0[16]);
            sub_258E3A4D8(v47);
          }

          else
          {
            v49 = v0[7];
            v48 = v0[8];
            v50 = v0[6];
            (*(v49 + 32))(v48, v0[3], v50);
            v51 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v52 = sub_258F09A50();
            v53 = [v51 initWithNSUUID_];

            [v41 setOdsampleId_];
            sub_258EE7410(v46);
            (*(v49 + 8))(v48, v50);
          }

          v54 = v0[24];
          v55 = v0[2];
          v56 = (v55 + v0[26]);
          [v2 setEventMetadata_];

          v57 = v56[3];
          v58 = v56[4];
          __swift_project_boxed_opaque_existential_1(v56, v57);
          v74 = (*(v58 + 16) + **(v58 + 16));
          v59 = swift_task_alloc();
          v0[34] = v59;
          *v59 = v0;
          v60 = sub_258EF32F4;
LABEL_28:
          v59[1] = v60;

          v74(v2, v55 + v54, v57, v58);
          return;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v11 = v0[28];
  sub_258EE7410(v0[20]);

  v12 = v0[27] + 1;
  if (v12 != v0[25])
  {
    v0[27] = v12;
    v13 = v0[23];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_258EE73AC(v13 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v12, v0[20]);
    v14 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v0[28] = v14;
    v15 = v0[24];
    if (v14)
    {
      v2 = v14;
      v16 = v0[19];
      v17 = v0[20];
      v73 = v0[18];
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[11];
      v21 = v0[2];
      sub_258EF4894();
      sub_258EE73AC(v17, v16);
      (*(v19 + 16))(v18, v21 + v15, v20);
      v22 = sub_258EF3FFC(v16, v18);
      [v2 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v17, v73);
      v23 = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (v23)
      {
        v24 = v23;
        v25 = v0[6];
        v26 = v0[7];
        v27 = v0[5];
        sub_258E3A540(v0[18] + *(v0[14] + 120), v27);
        v28 = *(v26 + 48);
        v0[29] = v28;
        v0[30] = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v29 = v28(v27, 1, v25);
        v30 = v0[18];
        if (v29 == 1)
        {
          v31 = v0[5];
          sub_258EE7410(v0[18]);
          sub_258E3A4D8(v31);
        }

        else
        {
          v66 = v0[10];
          v67 = v0[6];
          v68 = v0[7];
          (*(v68 + 32))(v66, v0[5], v67);
          v69 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v70 = sub_258F09A50();
          v71 = [v69 initWithNSUUID_];

          [v24 setOdsampleId_];
          (*(v68 + 8))(v66, v67);
          sub_258EE7410(v30);
        }

        v54 = v0[24];
        v55 = v0[2];
        v72 = (v55 + v0[26]);
        [v2 setEventMetadata_];

        v57 = v72[3];
        v58 = v72[4];
        __swift_project_boxed_opaque_existential_1(v72, v57);
        v74 = (*(v58 + 16) + **(v58 + 16));
        v59 = swift_task_alloc();
        v0[31] = v59;
        *v59 = v0;
        v60 = sub_258EF2960;
        goto LABEL_28;
      }

LABEL_34:
      __break(1u);
      return;
    }

    v61 = sub_258F0A350();
    v62 = sub_258F0A820();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_258DD8000, v61, v62, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v63, 2u);
      MEMORY[0x259C9EF40](v63, -1, -1);
    }

    v64 = v0[20];

    sub_258EE7410(v64);
  }

  v65 = v0[1];

  v65();
}

uint64_t sub_258EF32F4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_258EF3A8C;
  }

  else
  {
    v2 = sub_258EF3408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_258EF3408()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);

  result = sub_258EE7410(v2);
  v4 = *(v0 + 216) + 1;
  if (v4 != *(v0 + 200))
  {
    *(v0 + 216) = v4;
    v5 = *(v0 + 184);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    sub_258EE73AC(v5 + ((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)) + *(*(v0 + 120) + 72) * v4, *(v0 + 160));
    v6 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    *(v0 + 224) = v6;
    v7 = *(v0 + 192);
    if (v6)
    {
      v8 = v6;
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);
      v41 = *(v0 + 144);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v13 = *(v0 + 88);
      v14 = *(v0 + 16);
      sub_258EF4894();
      sub_258EE73AC(v10, v9);
      (*(v12 + 16))(v11, v14 + v7, v13);
      v15 = sub_258EF3FFC(v9, v11);
      [v8 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v10, v41);
      result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (result)
      {
        v16 = result;
        v17 = *(v0 + 48);
        v18 = *(v0 + 56);
        v19 = *(v0 + 40);
        sub_258E3A540(*(v0 + 144) + *(*(v0 + 112) + 120), v19);
        v20 = *(v18 + 48);
        *(v0 + 232) = v20;
        *(v0 + 240) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v21 = v20(v19, 1, v17);
        v22 = *(v0 + 144);
        if (v21 == 1)
        {
          v23 = *(v0 + 40);
          sub_258EE7410(*(v0 + 144));
          sub_258E3A4D8(v23);
        }

        else
        {
          v29 = *(v0 + 80);
          v30 = *(v0 + 48);
          v31 = *(v0 + 56);
          (*(v31 + 32))(v29, *(v0 + 40), v30);
          v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v33 = sub_258F09A50();
          v34 = [v32 initWithNSUUID_];

          [v16 setOdsampleId_];
          (*(v31 + 8))(v29, v30);
          sub_258EE7410(v22);
        }

        v35 = *(v0 + 192);
        v36 = *(v0 + 16);
        v37 = (v36 + *(v0 + 208));
        [v8 setEventMetadata_];

        v38 = v37[3];
        v39 = v37[4];
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v42 = (*(v39 + 16) + **(v39 + 16));
        v40 = swift_task_alloc();
        *(v0 + 248) = v40;
        *v40 = v0;
        v40[1] = sub_258EF2960;

        return v42(v8, v36 + v35, v38, v39);
      }

LABEL_18:
      __break(1u);
      return result;
    }

    v24 = sub_258F0A350();
    v25 = sub_258F0A820();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_258DD8000, v24, v25, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v26, 2u);
      MEMORY[0x259C9EF40](v26, -1, -1);
    }

    v27 = *(v0 + 160);

    sub_258EE7410(v27);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_258EF38F4(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Unable to report SampleReported event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[28];
  v6 = v1[20];

  swift_willThrow();
  sub_258EE7410(v6);

  v7 = v1[1];

  return v7();
}

id sub_258EF3A8C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[35];
  v6 = v1[33];
  v7 = v1[28];
  v8 = v1[20];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingSELFReporter: Unable to report Sample To Request Map event", v9, 2u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  result = sub_258EE7410(v8);
  v11 = v1[27] + 1;
  if (v11 != v1[25])
  {
    v1[27] = v11;
    v12 = v1[23];
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_258EE73AC(v12 + ((*(v1[15] + 80) + 32) & ~*(v1[15] + 80)) + *(v1[15] + 72) * v11, v1[20]);
    v13 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v1[28] = v13;
    v14 = v1[24];
    if (v13)
    {
      v15 = v13;
      v16 = v1[19];
      v17 = v1[20];
      v48 = v1[18];
      v19 = v1[12];
      v18 = v1[13];
      v20 = v1[11];
      v21 = v1[2];
      sub_258EF4894();
      sub_258EE73AC(v17, v16);
      (*(v19 + 16))(v18, v21 + v14, v20);
      v22 = sub_258EF3FFC(v16, v18);
      [v15 setSpeakerIdModelSampleReported_];

      sub_258EE73AC(v17, v48);
      result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
      if (result)
      {
        v23 = result;
        v24 = v1[6];
        v25 = v1[7];
        v26 = v1[5];
        sub_258E3A540(v1[18] + *(v1[14] + 120), v26);
        v27 = *(v25 + 48);
        v1[29] = v27;
        v1[30] = (v25 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        v28 = v27(v26, 1, v24);
        v29 = v1[18];
        if (v28 == 1)
        {
          v30 = v1[5];
          sub_258EE7410(v1[18]);
          sub_258E3A4D8(v30);
        }

        else
        {
          v36 = v1[10];
          v37 = v1[6];
          v38 = v1[7];
          (*(v38 + 32))(v36, v1[5], v37);
          v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v40 = sub_258F09A50();
          v41 = [v39 initWithNSUUID_];

          [v23 setOdsampleId_];
          (*(v38 + 8))(v36, v37);
          sub_258EE7410(v29);
        }

        v42 = v1[24];
        v43 = v1[2];
        v44 = (v43 + v1[26]);
        [v15 setEventMetadata_];

        v45 = v44[3];
        v46 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v49 = (*(v46 + 16) + **(v46 + 16));
        v47 = swift_task_alloc();
        v1[31] = v47;
        *v47 = v1;
        v47[1] = sub_258EF2960;

        return v49(v15, v43 + v42, v45, v46);
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v31 = sub_258F0A350();
    v32 = sub_258F0A820();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_258DD8000, v31, v32, "#SpeakerIdSamplingSELFReporter: Failed to generate event", v33, 2u);
      MEMORY[0x259C9EF40](v33, -1, -1);
    }

    v34 = v1[20];

    sub_258EE7410(v34);
  }

  v35 = v1[1];

  return v35();
}

id sub_258EF3FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = sub_258F09A70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  [result setIsEnrollmentSample_];
  if (*(a1 + 32))
  {
    v15 = sub_258F0A4E0();
    [v14 setDeviceType_];
  }

  if (*(a1 + 48))
  {
    v16 = sub_258F0A4E0();
    [v14 setSystemBuild_];
  }

  if (*(a1 + 88))
  {
    [v14 setSiriInputLocale_];
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    [v14 setStartDatestampInDaysSince1970_];
  }

  if (*(a1 + 64))
  {
    v17 = sub_258F0A4E0();
    [v14 setAudioInterfaceVendorId_];
  }

  if (*(a1 + 80))
  {
    v18 = sub_258F0A4E0();
    [v14 setFirstPartyAudioInterfaceProductId_];
  }

  if ((*(a1 + 100) & 1) == 0)
  {
    [v14 setInvocationSource_];
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    [v14 setMotionActivity_];
  }

  v19 = *(a1 + 109);
  if (v19 != 2)
  {
    [v14 setIsWakeFromSleep_];
  }

  v20 = *(a1 + 110);
  if (v20 != 2)
  {
    [v14 setIsMediaPlaying_];
  }

  v21 = *(a1 + 111);
  if (v21 == 2)
  {
    if (*(a1 + 116))
    {
      goto LABEL_24;
    }
  }

  else
  {
    [v14 setIsDeviceHandHeld_];
    if (*(a1 + 116))
    {
LABEL_24:
      if (*(a1 + 124))
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }
  }

  [v14 setAudioCodec_];
  if (*(a1 + 124))
  {
LABEL_25:
    if (*(a1 + 132))
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v14 setAudioSource_];
  if (*(a1 + 132))
  {
LABEL_26:
    if (*(a1 + 144))
    {
      goto LABEL_27;
    }

LABEL_37:
    [v14 setAudioSkippedNumSamples_];
    if (*(a1 + 212))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_36:
  [v14 setAsrTask_];
  if ((*(a1 + 144) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  if ((*(a1 + 212) & 1) == 0)
  {
LABEL_28:
    [v14 setOrchCancelledReason_];
  }

LABEL_29:
  v22 = type metadata accessor for SpeakerIdSamplingData(0);
  v23 = (a1 + v22[27]);
  if ((v23[1] & 1) == 0)
  {
    [v14 setTriggerPhrase_];
  }

  sub_258E3A540(a1 + v22[26], v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_258E3A4D8(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v24 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v25 = sub_258F09A50();
    v26 = [v24 initWithNSUUID_];

    [v14 setAudioId_];
    (*(v9 + 8))(v12, v8);
  }

  if (*(a1 + v22[29]))
  {
    [v14 setLocation_];
  }

  if (*(a1 + 160))
  {
    v27 = sub_258F0A4E0();
    [v14 setPostItn1Best_];
  }

  if (*(a1 + 176))
  {
    v28 = sub_258F0A4E0();
    [v14 setSubDomain_];
  }

  v29 = sub_258F0A370();
  (*(*(v29 - 8) + 8))(a2, v29);
  sub_258EE7410(a1);
  return v14;
}

uint64_t sub_258EF4528()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));
}

uint64_t SpeakerIdSamplingSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));
  return v0;
}

uint64_t SpeakerIdSamplingSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

uint64_t sub_258EF46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258EF4794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeakerIdSamplingSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258EF46D4(a1, v11, v12, a4, a5);
}

unint64_t sub_258EF4894()
{
  result = qword_27F98A9C8;
  if (!qword_27F98A9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A9C8);
  }

  return result;
}

uint64_t type metadata accessor for SpeakerIdSamplingSELFReporter(uint64_t a1)
{
  result = qword_27F98A9D0;
  if (!qword_27F98A9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF4934(uint64_t a1)
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

uint64_t SpeakerIdSelectionBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t SpeakerIdSelectionBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EF4AF8(uint64_t a1)
{
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[3] = swift_task_alloc();
  v4 = type metadata accessor for SpeakerIdSamplingData(0);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(a1 + 8);
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_258EF4BF8, 0, 0);
}

uint64_t sub_258EF4BF8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SpeakerIdSelectionBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[7];

  v6 = *(v5 + 16);
  if (v6)
  {
    v8 = v1[4];
    v7 = v1[5];
    v9 = v1[7] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v14 = v1[6];
      v15 = v1[3];
      sub_258EE73AC(v9, v14);
      sub_258E3A540(v14 + *(v8 + 120), v15);
      v16 = sub_258F09A70();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_258E3A4D8(v1[3]);
      }

      else
      {
        v18 = v1[3];
        v19 = sub_258F09A40();
        v21 = v20;
        (*(v17 + 8))(v18, v16);
        v22 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          v22 = sub_258DE2990((v23 > 1), v24 + 1, 1, v22);
        }

        *(v22 + 2) = v24 + 1;
        v25 = &v22[16 * v24];
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
      }

      v26 = *(v1[6] + *(v8 + 112) + 8);
      v27 = sub_258F0A6A0();

      if (v26)
      {
        v11 = sub_258F0A4E0();
      }

      else
      {
        v11 = 0;
      }

      v12 = v1[6];
      v13 = [objc_allocWithZone(MEMORY[0x277CF15D8]) initWithTimestamp:0 onDeviceSampleIdentifiers:v27 enrollmentIdentifier:v11];

      sub_258F09B90();
      sub_258EE7410(v12);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v28 = v1[1];

  return v28();
}

id static SpeakerIdSelectionBiomeReporter.createBiomeEvent(result:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SpeakerIdSamplingData(0);
  sub_258E3A540(a1 + *(v10 + 120), v9);
  v11 = sub_258F09A70();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_258E3A4D8(v9);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = sub_258F09A40();
    v16 = v15;
    (*(v12 + 8))(v9, v11);
    v13 = sub_258DE2990(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v13 + 2);
    v17 = *(v13 + 3);
    if (v18 >= v17 >> 1)
    {
      v13 = sub_258DE2990((v17 > 1), v18 + 1, 1, v13);
    }

    *(v13 + 2) = v18 + 1;
    v19 = &v13[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  v20 = sub_258F09A20();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = (a1 + *(v10 + 112));
  v22 = *v21;
  v23 = v21[1];
  objc_allocWithZone(MEMORY[0x277CF15D8]);

  return sub_258EE7258(v5, v13, v22, v23);
}

uint64_t sub_258EF514C()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SpeakerIdSelectionBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSelectionBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpeakerIdSelectionBiomeReporter(uint64_t a1)
{
  result = qword_27F98A9E8;
  if (!qword_27F98A9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSelectionResult.speakerIdDonationEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SpeakerIdSelectionResult.speakerIdDonationData.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpeakerIdSelectionCalculator.__allocating_init(defaults:logger:samplingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_258F0A370();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7);
  v12 = type metadata accessor for CAAnalyticsEventSubmitter();
  v13 = swift_allocObject();
  v25[3] = v12;
  v25[4] = &off_286A2C648;
  v25[0] = v13;
  type metadata accessor for SpeakerIdSelectionCalculator(0);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v12);
  MEMORY[0x28223BE20](v15, v15);
  v17 = (&v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = (v14 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter);
  v20[3] = v12;
  v20[4] = &off_286A2C648;
  *v20 = v19;
  sub_258F09AE0();
  (*(v8 + 32))(v14 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger, v11, v7);
  *(v14 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults) = a1;
  v21 = (v14 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v22 = v24;
  *v21 = a3;
  v21[1] = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  (*(v8 + 8))(a2, v7);
  return v14;
}

uint64_t type metadata accessor for SpeakerIdSelectionCalculator(uint64_t a1)
{
  result = qword_27F98AA18;
  if (!qword_27F98AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF56A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_258F09A20();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EF57E4, 0, 0);
}

uint64_t sub_258EF57E4()
{
  v134 = v0;
  v1 = (v0[3] + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v2 = *v1;
  v3 = v1[1];
  v4 = (*(v3 + 72))(*v1, v3);
  if (!v5)
  {
    v23 = sub_258F0A350();
    v24 = sub_258F0A820();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#SpeakerIdSelectionCalculator: Unable to retrieve the siri language.";
LABEL_21:
      _os_log_impl(&dword_258DD8000, v23, v24, v26, v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

LABEL_22:

    goto LABEL_23;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_258F0A350();
  v9 = sub_258F0A810();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v132 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_258DE3018(v6, v7, &v132);
    _os_log_impl(&dword_258DD8000, v8, v9, "#SpeakerIdSelectionCalculator: SpeakerIdSelectionCalculator locale: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v12 = (*(v3 + 16))(v6, v7, v2, v3);
  if (!v13)
  {

    v23 = sub_258F0A350();
    v24 = sub_258F0A820();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#SpeakerIdSelectionCalculator:  Unable to retrieve the current voice profile enrollment.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v14 = v12;
  v132 = v12;
  v133 = v13;
  v127 = v13;

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);

  v120 = v132;
  v124 = v133;
  v15 = (*(v3 + 8))(v6, v7, v2, v3);
  if (v15 == 2)
  {

    v27 = sub_258F0A350();
    v28 = sub_258F0A810();

    v113 = v6;
    v114 = v14;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v14;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v132 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_258DE3018(v29, v127, &v132);
      _os_log_impl(&dword_258DD8000, v27, v28, "#SpeakerIdSelectionCalculator: enrollment selection status is samplingSelectionFinished for enrollmentId: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v50 = v0[6];
    v51 = v0[7];
    v52 = v0[3];
    v53 = v0[4];
    type metadata accessor for SamplingUtils();
    v54 = *(v52 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults);
    v55 = v124;
    log = v54;
    static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(v54, v53);
    if ((*(v51 + 48))(v53, 1, v50) != 1)
    {
      v61 = v0[10];
      v60 = v0[11];
      v63 = v0[6];
      v62 = v0[7];
      (*(v62 + 32))(v60, v0[4], v63);
      v112 = *(v62 + 16);
      v112(v61, v60, v63);

      v64 = sub_258F0A350();
      v65 = sub_258F0A810();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v0[10];
      v68 = v0[6];
      v69 = v0[7];
      if (v66)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v132 = v111;
        *v110 = 136315394;
        sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v108 = sub_258F0AD60();
        v109 = v64;
        v70 = v65;
        v72 = v71;
        v73 = v68;
        v74 = *(v69 + 8);
        v74(v67, v73);
        v75 = sub_258DE3018(v108, v72, &v132);

        *(v110 + 4) = v75;
        *(v110 + 12) = 2080;
        v76 = v120;
        *(v110 + 14) = sub_258DE3018(v120, v124, &v132);
        _os_log_impl(&dword_258DD8000, v109, v70, "#SpeakerIdSelectionCalculator: selectedDate: %s for selectionDateKey: %s", v110, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v111, -1, -1);
        MEMORY[0x259C9EF40](v110, -1, -1);

        v77 = v114;
      }

      else
      {

        v79 = v68;
        v74 = *(v69 + 8);
        v74(v67, v79);
        v77 = v114;
        v76 = v120;
      }

      v80 = (*(v3 + 104))(v76, v124, log, v2, v3);
      v121 = v0[11];
      loga = v0[6];
      if ((v80 & 1) == 0)
      {
        v126 = v74;
        v94 = v76;
        v95 = v0[8];
        v20 = sub_258EF6DEC(v113, v7, v77, v127, v94, v55);
        v22 = v96;

        v112(v95, v121, loga);

        v97 = sub_258F0A350();
        v98 = sub_258F0A810();

        v99 = os_log_type_enabled(v97, v98);
        v131 = v0[8];
        v123 = v0[6];
        if (v99)
        {
          logb = v98;
          v100 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v132 = v119;
          *v100 = 136315394;
          v101 = sub_258DE3018(v114, v127, &v132);
          v115 = v97;
          v102 = v101;

          *(v100 + 4) = v102;
          *(v100 + 12) = 2080;
          sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v129 = sub_258F0AD60();
          v104 = v103;
          v126(v131, v123);
          v105 = sub_258DE3018(v129, v104, &v132);

          *(v100 + 14) = v105;
          _os_log_impl(&dword_258DD8000, v115, logb, "#SpeakerIdSelectionCalculator: enrollmentId: %s collection date: %s is out of collecting cycle, start sampling again", v100, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v119, -1, -1);
          MEMORY[0x259C9EF40](v100, -1, -1);
        }

        else
        {

          v126(v131, v123);
        }

        v106 = v0[11];
        v107 = v0[6];
        (*(v3 + 32))(v113, v7, v2, v3);

        v126(v106, v107);
        goto LABEL_24;
      }

      v81 = v0[9];

      v112(v81, v121, loga);

      v82 = sub_258F0A350();
      v83 = sub_258F0A810();

      v84 = os_log_type_enabled(v82, v83);
      v85 = v0[11];
      v86 = v0[9];
      v87 = v0[6];
      if (v84)
      {
        v125 = v74;
        v88 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v122 = v132;
        *v88 = 136315394;
        v89 = sub_258DE3018(v77, v127, &v132);

        *(v88 + 4) = v89;
        *(v88 + 12) = 2080;
        sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v90 = sub_258F0AD60();
        v92 = v91;
        v125(v86, v87);
        v93 = sub_258DE3018(v90, v92, &v132);

        *(v88 + 14) = v93;
        _os_log_impl(&dword_258DD8000, v82, v83, "#SpeakerIdSelectionCalculator: enrollmentId: %s collection date: %s is within collecting period", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v122, -1, -1);
        MEMORY[0x259C9EF40](v88, -1, -1);

        v125(v85, v87);
      }

      else
      {

        v74(v86, v87);
        v74(v85, v87);
      }

      goto LABEL_23;
    }

    v56 = v0[4];

    sub_258DE2184(v56, &qword_27F988728, &unk_258F0B840);
    v23 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_22;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "#SpeakerIdSelectionCalculator: Cannot find device collection selection date, keep marking selection as finished";
    goto LABEL_21;
  }

  if (v15)
  {
  }

  else
  {
    v16 = v0[6];
    v17 = v0[7];
    v18 = v0[5];
    v19 = v0[3];
    type metadata accessor for SamplingUtils();
    static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(*(v19 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults), v18);
    if ((*(v17 + 48))(v18, 1, v16) == 1)
    {
      sub_258DE2184(v0[5], &qword_27F988728, &unk_258F0B840);
      v20 = sub_258EF6DEC(v6, v7, v14, v127, v120, v124);
      v22 = v21;

      goto LABEL_24;
    }

    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[6];
    v35 = v0[7];
    v36 = v0[5];

    (*(v35 + 32))(v32, v36, v34);
    (*(v35 + 16))(v33, v32, v34);
    v37 = sub_258F0A350();
    v38 = sub_258F0A810();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[12];
    v41 = v0[13];
    v43 = v0[6];
    v42 = v0[7];
    if (v39)
    {
      v130 = v0[13];
      v44 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v132 = v128;
      *v44 = 136315138;
      sub_258EF79AC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v45 = sub_258F0AD60();
      v47 = v46;
      v48 = *(v42 + 8);
      v48(v40, v43);
      v49 = sub_258DE3018(v45, v47, &v132);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_258DD8000, v37, v38, "#SpeakerIdSelectionCalculator: Device already selected for Sampling on date: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      MEMORY[0x259C9EF40](v128, -1, -1);
      MEMORY[0x259C9EF40](v44, -1, -1);

      v48(v130, v43);
    }

    else
    {

      v78 = *(v42 + 8);
      v78(v40, v43);
      v78(v41, v43);
    }
  }

LABEL_23:
  v20 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
LABEL_24:
  v57 = v0[2];
  *v57 = v20;
  v57[1] = v22;

  v58 = v0[1];

  return v58();
}

id sub_258EF6704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v56 - v4;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_258F0A370();
  v10 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v11);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SpeakerIdSamplingData(0);
  v14 = MEMORY[0x28223BE20](v66, v13);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v67 = &v56 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v22 = &v56 - v21;
  v23 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  v71 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  if (!v24)
  {
LABEL_13:
    v47 = sub_258F0A350();
    v48 = sub_258F0A810();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_258DD8000, v47, v48, "#SpeakerIdSelectionCalculator: Created ODSAMPLESiriSchemaODSAMPLEClientEvent for the donationID", v49, 2u);
      MEMORY[0x259C9EF40](v49, -1, -1);
    }

    v50 = sub_258F0A350();
    v51 = sub_258F0A810();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = *(v23 + 16);

      _os_log_impl(&dword_258DD8000, v50, v51, "#SpeakerIdSelectionCalculator: donationID event count %ld", v52, 0xCu);
      MEMORY[0x259C9EF40](v52, -1, -1);
    }

    else
    {
    }

    return v23;
  }

  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = *(v20 + 72);
  sub_258EE73AC(a1 + v25, &v56 - v21);
  v27 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
  if (!v27)
  {
LABEL_19:

    v53 = sub_258F0A350();
    v54 = sub_258F0A820();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_258DD8000, v53, v54, "Failed to generate event", v55, 2u);
      MEMORY[0x259C9EF40](v55, -1, -1);
    }

    sub_258EE7410(v22);
    return MEMORY[0x277D84F90];
  }

  v28 = v27;
  v65 = (v10 + 16);
  v62 = (v7 + 48);
  v63 = v6;
  v57 = (v7 + 8);
  v58 = (v7 + 32);
  v64 = sub_258EF4894();
  v29 = a1 + v26 + v25;
  v30 = v26;
  v59 = v26;
  v60 = v22;
  while (1)
  {
    v31 = v67;
    sub_258EE73AC(v22, v67);
    v32 = v70;
    (*v65)(v70, v72 + v71, v69);
    v33 = sub_258EF3FFC(v31, v32);
    [v28 setSpeakerIdModelSampleReported_];

    v34 = v68;
    sub_258EE73AC(v22, v68);
    result = [objc_allocWithZone(MEMORY[0x277D59530]) init];
    if (!result)
    {
      break;
    }

    v36 = result;
    sub_258E3A540(v34 + *(v66 + 120), v5);
    v37 = v63;
    if ((*v62)(v5, 1, v63) == 1)
    {
      sub_258EE7410(v34);
      sub_258DE2184(v5, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      v38 = v5;
      v39 = v61;
      (*v58)(v61, v38, v37);
      v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v41 = v34;
      v42 = sub_258F09A50();
      v43 = [v40 initWithNSUUID_];

      [v36 setOdsampleId_];
      v44 = v39;
      v5 = v38;
      v22 = v60;
      (*v57)(v44, v37);
      v45 = v41;
      v30 = v59;
      sub_258EE7410(v45);
    }

    [v28 setEventMetadata_];

    v46 = v28;
    MEMORY[0x259C9DF50]();
    if (*(v73 + 16) >= *(v73 + 24) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();

    sub_258EE7410(v22);
    v23 = v73;
    if (!--v24)
    {
      goto LABEL_13;
    }

    sub_258EE73AC(v29, v22);
    v28 = [objc_allocWithZone(MEMORY[0x277D59528]) init];
    v29 += v30;
    if (!v28)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_258EF6DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char *a6)
{
  v7 = v6;
  v57 = a2;
  v58 = a6;
  v12 = type metadata accessor for SpeakerIdSamplingData(0);
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F09A70();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258F09A60();
  sub_258F09A40();
  v21 = v20;
  (*(v16 + 8))(v19, v15);
  v22 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults);

  v23 = sub_258F0A4E0();
  v65[0] = a3;
  v65[1] = a4;

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v24 = sub_258F0A4E0();

  [v22 setValue:v23 forKey:v24];
  v55 = v21;
  v25 = v57;

  v26 = v58;
  v56 = v7;
  v27 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  v28 = *(v7 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils + 8);
  v29 = *(v28 + 32);
  v53 = a1;
  v30 = a1;
  v31 = a5;
  v29(v30, v25, v27, v28);
  (*(v28 + 40))(a5, v26, v22, v27, v28);
  v32 = *(v28 + 64);
  v62 = a3;
  v63 = a4;
  v33 = v32(a3, a4, v27, v28);
  v34 = v33;
  if (v33 >> 62)
  {
    goto LABEL_16;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
    while (1)
    {
      v65[0] = MEMORY[0x277D84F90];
      result = sub_258E14DB8(0, v35 & ~(v35 >> 63), 0);
      if (v35 < 0)
      {
        break;
      }

      v52 = v31;
      v31 = 0;
      v37 = v65[0];
      v38 = v34;
      v59 = v34 & 0xFFFFFFFFFFFFFF8;
      v60 = v34 & 0xC000000000000001;
      v39 = v34;
      v26 = v54;
      v34 = v35;
      while (1)
      {
        v25 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v60)
        {
          v40 = MEMORY[0x259C9E3B0](v31, v38);
        }

        else
        {
          if (v31 >= *(v59 + 16))
          {
            goto LABEL_15;
          }

          v40 = *(v38 + 8 * v31 + 32);
        }

        v41 = v40;
        v64 = v40;
        sub_258EF7348(&v64, v62, v63, v26);

        v65[0] = v37;
        v42 = v26;
        v44 = *(v37 + 16);
        v43 = *(v37 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_258E14DB8((v43 > 1), v44 + 1, 1);
          v37 = v65[0];
        }

        *(v37 + 16) = v44 + 1;
        sub_258EF02A0(v42, v37 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v44);
        ++v31;
        v38 = v39;
        v26 = v42;
        if (v25 == v34)
        {

          v25 = v57;
          v26 = v58;
          v31 = v52;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v35 = sub_258F0AA20();
      if (!v35)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v37 = MEMORY[0x277D84F90];
LABEL_18:
    v45 = sub_258EF6704(v37);

    v46 = sub_258F0A350();
    v47 = sub_258F0A840();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v26;
      v49 = swift_slowAlloc();
      v50 = v31;
      v51 = swift_slowAlloc();
      v65[0] = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_258DE3018(v53, v25, v65);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_258DE3018(v50, v48, v65);
      _os_log_impl(&dword_258DD8000, v46, v47, "finished setting event collection for locale: %s and selectionDateKey: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v51, -1, -1);
      MEMORY[0x259C9EF40](v49, -1, -1);
    }

    return v45;
  }

  return result;
}

id sub_258EF7348@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v40 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = v40 - v18;
  v20 = *a1;
  type metadata accessor for SpeakerIdSamplingDataBuilderImpl(0);
  swift_allocObject();
  v21 = sub_258EF13A8();
  v22 = (v21 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_enrollmentId);
  *v22 = a2;
  v22[1] = a3;

  *(v21 + 16) = 1;

  result = [v20 donationId];
  if (result)
  {
    v24 = result;
    sub_258F0A4F0();

    sub_258F09A30();

    v25 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_audioId;
    swift_beginAccess();
    sub_258EF0230(v19, v21 + v25);
    swift_endAccess();
    v26 = [v20 triggerPhrase];
    v27 = 2 * (v26 == 2);
    if (v26 == 1)
    {
      v27 = 1;
    }

    v28 = v21 + OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_triggerPhrase;
    *v28 = v27;
    *(v28 + 4) = 0;
    sub_258F09A60();
    v29 = sub_258F09A70();
    (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
    sub_258E3A468(v16, v12);
    v30 = OBJC_IVAR____TtC16MetricsFramework32SpeakerIdSamplingDataBuilderImpl_sampleId;
    swift_beginAccess();
    sub_258EF0230(v12, v21 + v30);
    swift_endAccess();
    result = [v20 locale];
    if (result)
    {
      v31 = result;
      v32 = sub_258F0A4F0();
      v34 = v33;

      v40[5] = v32;
      v40[6] = v34;
      v40[3] = 45;
      v40[4] = 0xE100000000000000;
      v40[1] = 95;
      v40[2] = 0xE100000000000000;
      sub_258DEF388();
      v35 = sub_258F0A970();
      v37 = v36;

      v38 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v35, v37);

      v39 = *(v21 + 104);
      *(v21 + 104) = v38;

      sub_258EF07B8(a4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SpeakerIdSelectionCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SpeakerIdSelectionCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter));

  return swift_deallocClassInstance();
}

uint64_t sub_258EF78B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EF56A4(a1);
}

uint64_t sub_258EF7954(uint64_t a1)
{
  result = sub_258EF79AC(&qword_27F98AA00, type metadata accessor for SpeakerIdSelectionCalculator, &protocol conformance descriptor for SpeakerIdSelectionCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EF79AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258EF79F4()
{
  result = qword_27F98AA08;
  if (!qword_27F98AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA08);
  }

  return result;
}

unint64_t sub_258EF7A48()
{
  result = qword_27F98AA10;
  if (!qword_27F98AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA10);
  }

  return result;
}

uint64_t sub_258EF7AB4(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09B00();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSelectionCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t SpeakerIdSelectionDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SpeakerIdSelectionDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EF7DF8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSelectionDataDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t SpeakerIdSelectionDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSelectionDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EF7FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EF7DD8();
}

uint64_t type metadata accessor for SpeakerIdSelectionDataProvider(uint64_t a1)
{
  result = qword_27F98AA30;
  if (!qword_27F98AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSelectionDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t sub_258EF8230(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t SpeakerIdSelectionSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t SpeakerIdSelectionSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258EF8458(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_258EF8480, 0, 0);
}

void sub_258EF8480(uint64_t a1)
{
  v26 = v1;
  v1[5] = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSelectionSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[3];

  v6 = *(v5 + 16);
  v1[6] = v6;
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v1[7] = v7;
      v8 = v1[3];
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 + 8 * v7 + 32);
      v1[8] = v9;
      v10 = v9;

      v11 = sub_258F0A350();
      v12 = sub_258F0A810();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = v1[3];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136315138;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
        v17 = MEMORY[0x259C9DF80](v13, v16);
        v19 = sub_258DE3018(v17, v18, &v25);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_258DD8000, v11, v12, "#SpeakerIdSelectionSELFReporter: result.speakerIdDonationEvents %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x259C9EF40](v15, -1, -1);
        MEMORY[0x259C9EF40](v14, -1, -1);
      }

      if (v9)
      {
        break;
      }

      v7 = v1[7] + 1;
      if (v7 == v1[6])
      {
        goto LABEL_10;
      }
    }

    v21 = v1[5];
    v22 = v1[2];
    v23 = v10;
    v24 = swift_task_alloc();
    v1[9] = v24;
    *v24 = v1;
    v24[1] = sub_258EF877C;

    sub_258EB6B24(v23, v22 + v21);
  }

  else
  {
LABEL_10:
    v20 = v1[1];

    v20();
  }
}

uint64_t sub_258EF877C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_258EF8B10;
  }

  else
  {

    v3 = sub_258EF8898;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258EF8898()
{
  v20 = v0;

  while (1)
  {
    v1 = *(v0 + 56) + 1;
    if (v1 == *(v0 + 48))
    {
      break;
    }

    *(v0 + 56) = v1;
    v2 = *(v0 + 24);
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 8 * v1 + 32);
    *(v0 + 64) = v3;
    v4 = v3;

    v5 = sub_258F0A350();
    v6 = sub_258F0A810();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 24);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A890, &unk_258F17380);
      v11 = MEMORY[0x259C9DF80](v7, v10);
      v13 = sub_258DE3018(v11, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_258DD8000, v5, v6, "#SpeakerIdSelectionSELFReporter: result.speakerIdDonationEvents %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C9EF40](v9, -1, -1);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    if (v3)
    {
      v15 = *(v0 + 40);
      v16 = *(v0 + 16);
      v17 = v4;
      v18 = swift_task_alloc();
      *(v0 + 72) = v18;
      *v18 = v0;
      v18[1] = sub_258EF877C;

      sub_258EB6B24(v17, v16 + v15);
      return;
    }
  }

  v14 = *(v0 + 8);

  v14();
}

uint64_t sub_258EF8B10()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#SpeakerIdSelectionSELFReporter: Unable to report SpeakerId Donation Events", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = *(v0 + 64);

  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258EF8C04()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t SpeakerIdSelectionSELFReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SpeakerIdSelectionSELFReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SpeakerIdSelectionReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t type metadata accessor for SpeakerIdSelectionSELFReporter(uint64_t a1)
{
  result = qword_27F98AA48;
  if (!qword_27F98AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall inStoreDemoMode()()
{
  v0 = sub_258F0A4E0();
  v1 = sub_258F0A4E0();
  v2 = swift_slowAlloc();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, v2);
  v4 = *v2;

  if (AppBooleanValue)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t VTEnrollmentResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t VTEnrollmentResults.eventStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t VTEnrollmentResults.vtEnrollmentData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VTEnrollmentCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v28 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v15(v14, a1, v10);
  sub_258DE20C0(a2, v9, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v29 = swift_allocObject();
  v16 = type metadata accessor for CAAnalyticsEventSubmitter();
  v17 = swift_allocObject();
  v33[3] = v16;
  v33[4] = &off_286A2C648;
  v33[0] = v17;
  type metadata accessor for VTEnrollmentCalculator(0);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v16);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = (v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter);
  v24[3] = v16;
  v24[4] = &off_286A2C648;
  *v24 = v23;
  sub_258F09AC0();
  v15((v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger), v14, v10);
  sub_258DE20C0(v9, v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v25 = (v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService);
  v25[3] = sub_258F09C20();
  v25[4] = &off_286A2FA30;
  *v25 = v31;
  sub_258DE2184(v28, &qword_27F988720, &qword_258F0B830);
  v26 = *(v11 + 8);
  v26(v30, v10);
  sub_258DE2184(v9, &qword_27F988720, &qword_258F0B830);
  v26(v14, v10);
  *(v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory) = v29;
  *(v18 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults) = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v18;
}

uint64_t type metadata accessor for VTEnrollmentCalculator(uint64_t a1)
{
  result = qword_27F98AA80;
  if (!qword_27F98AA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EF9514(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = *(type metadata accessor for VTEnrollmentData(0) - 8);
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v3 = type metadata accessor for FunnelEventMetadata(0);
  v2[152] = v3;
  v2[153] = *(v3 - 8);
  v2[154] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[157] = v4;
  v2[158] = *(v4 - 8);
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v2[164] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EF9788, 0, 0);
}

void sub_258EF9788(uint64_t a1)
{
  v163 = v1;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "SQL calculator invoked: VTEnrollmentCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 1312);
  v6 = *(v1 + 1168);

  sub_258DE20C0(v6 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, v5, &qword_27F988720, &qword_258F0B830);
  v7 = sub_258F098D0();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_258DE2184(v5, &qword_27F988720, &qword_258F0B830);
  if (v6 == 1)
  {
    sub_258DE403C();
    swift_allocError();
    *v8 = 9;
    swift_willThrow();

    v135 = *(v1 + 8);
LABEL_164:

    v135();
    return;
  }

  sub_258DE03D8();
  v9 = sub_258DE06C4();
  v10 = *(*(v1 + 1168) + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults);
  v145 = v9;
  v11 = sub_258F0A4E0();
  v142 = v10;
  LODWORD(v10) = [v10 BOOLForKey_];

  v12 = sub_258F0A350();
  v13 = sub_258F0A810();
  v14 = os_log_type_enabled(v12, v13);
  if (v10)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v162[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v162);
      _os_log_impl(&dword_258DD8000, v12, v13, "%s: Include current date data for aggregation.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C9EF40](v16, -1, -1);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    v17 = v145;
  }

  else
  {
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v162[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v162);
      _os_log_impl(&dword_258DD8000, v12, v13, "%s: current date data NOT included for aggregation.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    v17 = v145;
    v20 = v145;
  }

  sub_258F0A050();
  v21 = MEMORY[0x277D84F90];
  v22 = sub_258F0A010();
  v23 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v143 = swift_allocObject();
  *(v143 + 16) = v23;
  sub_258F09B50();
  sub_258F09930();
  if ((sub_258F0A070() & 1) == 0)
  {
LABEL_163:
    v133 = *(v1 + 1264);
    sub_258DFD094(v143, 1);
    v134 = (v133 + 8);
    v136 = *(v1 + 1304);
    v150 = *(v1 + 1296);
    v137 = *(v1 + 1272);
    v160 = v21;
    v138 = *(v1 + 1256);
    v139 = *(v1 + 1160);
    sub_258F0A0F0();
    sub_258F09BB0();
    v140 = sub_258F09B70();
    v141 = *v134;
    (*v134)(v137, v138);

    v141(v150, v138);
    v141(v136, v138);
    *v139 = MEMORY[0x277D84F90];
    v139[1] = v140;
    v139[2] = v160;

    v135 = *(v1 + 8);
    goto LABEL_164;
  }

  v144 = (*(v1 + 1264) + 8);
  v147 = *(v1 + 1192);
  v148 = *(v1 + 1216);
  v146 = (*(v1 + 1224) + 56);
  while (1)
  {
    v28 = sub_258F0A060();
    if (!v28)
    {
      goto LABEL_15;
    }

    v29 = v28;
    v30 = sub_258F0A350();
    v31 = sub_258F0A810();
    v159 = v21;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v162[0] = v33;
      *v32 = 136315138;
      v34 = sub_258F0A420();
      v36 = sub_258DE3018(v34, v35, v162);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_258DD8000, v30, v31, "VTEnrollment row data: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x259C9EF40](v33, -1, -1);
      MEMORY[0x259C9EF40](v32, -1, -1);
    }

    v161 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    *(v1 + 976) = 0xD000000000000017;
    *(v1 + 984) = 0x8000000258F1EC00;
    sub_258F0AA80();
    if (*(v29 + 16) && (v37 = sub_258E2EA2C(v1 + 56), (v38 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v37, v1 + 456);
      sub_258E0F590(v1 + 56);
      sub_258E76E10();
      if (swift_dynamicCast())
      {
        v39 = *(v1 + 1152);
        [v39 doubleValue];
        sub_258F099D0();
        sub_258F09930();
        if (sub_258F099F0())
        {
          v40 = sub_258F0A4E0();
          v41 = [v142 BOOLForKey_];

          if ((v41 & 1) == 0)
          {
            v24 = *(v1 + 1288);
            v25 = *(v1 + 1280);
            v26 = *(v1 + 1256);

            v27 = *v144;
            (*v144)(v25, v26);
            v27(v24, v26);
            v21 = v159;
            goto LABEL_15;
          }
        }

        sub_258F099E0();
        v43 = v42;
        if (v42 > -1.0 && v42 < 1.84467441e19 && v42 == trunc(v42))
        {
          [v161 setStartTimestampInSecondsSince1970_];
          if (!v161)
          {
LABEL_113:
            v129 = *(v1 + 1288);
            v130 = *(v1 + 1280);
            v131 = *(v1 + 1256);

            v132 = *v144;
            (*v144)(v130, v131);
            v132(v129, v131);
            goto LABEL_30;
          }

          v44 = v161;
          [v44 setNumberOfSeconds:86400];
        }

        else
        {
          sub_258E2E59C(1, 0xD00000000000001DLL, 0x8000000258F20280);
          v44 = sub_258F0A350();
          v127 = sub_258F0A820();
          if (os_log_type_enabled(v44, v127))
          {
            v128 = swift_slowAlloc();
            *v128 = 134217984;
            *(v128 + 4) = v43;
            _os_log_impl(&dword_258DD8000, v44, v127, "startTimestamp %f cannot be cast to UInt64.", v128, 0xCu);
            MEMORY[0x259C9EF40](v128, -1, -1);
          }
        }

        goto LABEL_113;
      }
    }

    else
    {
      sub_258E0F590(v1 + 56);
    }

LABEL_30:
    v45 = *(v1 + 1248);
    v46 = sub_258F09A70();
    v47 = *(*(v46 - 8) + 56);
    v47(v45, 1, 1, v46);
    *(v1 + 880) = 0xD000000000000015;
    *(v1 + 888) = 0x8000000258F189D0;
    sub_258F0AA80();
    if (*(v29 + 16) && (v48 = sub_258E2EA2C(v1 + 176), (v49 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v48, v1 + 552);
      sub_258E0F590(v1 + 176);
      if (swift_dynamicCast())
      {
        v50 = *(v1 + 1248);
        v51 = *(v1 + 1240);
        sub_258F09A30();

        sub_258DE2184(v50, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v51, v50, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590(v1 + 176);
    }

    strcpy((v1 + 864), "program_code");
    *(v1 + 877) = 0;
    *(v1 + 878) = -5120;
    sub_258F0AA80();
    if (!*(v29 + 16) || (v52 = sub_258E2EA2C(v1 + 296), (v53 & 1) == 0))
    {
      sub_258E0F590(v1 + 296);
LABEL_41:
      v56 = 0;
      v158 = 1;
      goto LABEL_42;
    }

    sub_258DE4090(*(v29 + 56) + 32 * v52, v1 + 744);
    sub_258E0F590(v1 + 296);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v54 = sub_258F0A4E0();

    v55 = v54;
    if ([v55 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v56 = 0;
    }

    else if ([v55 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v56 = 1;
    }

    else if ([v55 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v56 = 2;
    }

    else if ([v55 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v56 = 3;
    }

    else if ([v55 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v56 = 4;
    }

    else
    {
      v56 = [v55 isEqualToString:@"PROGRAMCODE_VISIONOS"] ? 5 : 0;
    }

    v158 = 0;
LABEL_42:
    *(v1 + 960) = 0x656D6C6C6F726E65;
    *(v1 + 968) = 0xEF65646F6D5F746ELL;
    sub_258F0AA80();
    if (!*(v29 + 16) || (v57 = sub_258E2EA2C(v1 + 416), (v58 & 1) == 0))
    {
      sub_258E0F590(v1 + 416);
LABEL_48:
      v157 = 0;
      v156 = 1;
      goto LABEL_49;
    }

    sub_258DE4090(*(v29 + 56) + 32 * v57, v1 + 616);
    sub_258E0F590(v1 + 416);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v59 = sub_258F0A4E0();

    v60 = v59;
    if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_UNKNOWN"])
    {
      v157 = 0;
    }

    else
    {
      if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_AND_PHS_BUDDY"])
      {
        v124 = 1;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_AND_PHS_FOLLOWUP"])
      {
        v124 = 2;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_TRAINING_UI_ONLY"])
      {
        v124 = 3;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIRI_ONLY"])
      {
        v124 = 4;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_PHS_ONLY"])
      {
        v124 = 5;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_SIDEKICK"])
      {
        v124 = 6;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_VT_CONFIRMATION"])
      {
        v124 = 7;
      }

      else if ([v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_HOME_ONBOARDING"])
      {
        v124 = 8;
      }

      else
      {
        v124 = [v60 isEqualToString:@"SIRISETUPENROLLMENTUIMODE_HOME_VOICE_ENROLL"] ? 9 : 0;
      }

      v157 = v124;
    }

    v156 = 0;
LABEL_49:
    *(v1 + 928) = 0xD000000000000012;
    *(v1 + 936) = 0x8000000258F20220;
    sub_258F0AA80();
    if (!*(v29 + 16) || (v61 = sub_258E2EA2C(v1 + 16), (v62 & 1) == 0))
    {
      sub_258E0F590(v1 + 16);
LABEL_55:
      v155 = 0;
      v154 = 1;
      goto LABEL_56;
    }

    sub_258DE4090(*(v29 + 56) + 32 * v61, v1 + 776);
    sub_258E0F590(v1 + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_55;
    }

    v63 = sub_258F0A4E0();

    v64 = v63;
    if ([v64 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_UNKNOWN"])
    {
      v155 = 0;
    }

    else
    {
      if ([v64 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_SUCCESSFUL"])
      {
        v125 = 1;
      }

      else if ([v64 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_CANCELLED"])
      {
        v125 = 2;
      }

      else if ([v64 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_FAILED"])
      {
        v125 = 3;
      }

      else
      {
        v125 = [v64 isEqualToString:@"SIRISETUPENROLLMENTUISESSIONOUTCOME_SKIPPED"] ? 4 : 0;
      }

      v155 = v125;
    }

    v154 = 0;
LABEL_56:
    *(v1 + 912) = 0xD000000000000010;
    *(v1 + 920) = 0x8000000258F20240;
    sub_258F0AA80();
    if (!*(v29 + 16) || (v65 = sub_258E2EA2C(v1 + 376), (v66 & 1) == 0))
    {
      sub_258E0F590(v1 + 376);
LABEL_62:
      v153 = 0;
      v152 = 1;
      goto LABEL_63;
    }

    sub_258DE4090(*(v29 + 56) + 32 * v65, v1 + 584);
    sub_258E0F590(v1 + 376);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v67 = sub_258F0A4E0();

    v68 = v67;
    if ([v68 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_UNKNOWN"])
    {
      v153 = 0;
    }

    else
    {
      if ([v68 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_SUCCESSFUL"])
      {
        v126 = 1;
      }

      else if ([v68 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_SKIPPED"])
      {
        v126 = 2;
      }

      else
      {
        v126 = [v68 isEqualToString:@"SIRISETUPENROLLMENTUITRAININGOUTCOME_FAILED"] ? 3 : 0;
      }

      v153 = v126;
    }

    v152 = 0;
LABEL_63:
    v69 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    *(v1 + 832) = 0xD000000000000011;
    *(v1 + 840) = 0x8000000258F18A30;
    sub_258F0AA80();
    if (*(v29 + 16) && (v70 = sub_258E2EA2C(v1 + 336), (v71 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v70, v1 + 680);
      sub_258E0F590(v1 + 336);
      if (swift_dynamicCast())
      {
        v72 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v1 + 1056), *(v1 + 1064));

        v69 = v72;
      }
    }

    else
    {
      sub_258E0F590(v1 + 336);
    }

    *(v1 + 848) = 0xD000000000000012;
    *(v1 + 856) = 0x8000000258F20260;
    sub_258F0AA80();
    if (!*(v29 + 16) || (v73 = sub_258E2EA2C(v1 + 256), (v74 & 1) == 0))
    {
      sub_258E0F590(v1 + 256);
LABEL_74:
      v77 = 0;
      v78 = 1;
      goto LABEL_75;
    }

    sub_258DE4090(*(v29 + 56) + 32 * v73, v1 + 488);
    sub_258E0F590(v1 + 256);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_74;
    }

    v75 = sub_258F0A4E0();

    v76 = v75;
    if ([v76 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN"])
    {
      v77 = 0;
    }

    else if ([v76 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS"])
    {
      v77 = 1;
    }

    else
    {
      v77 = [v76 isEqualToString:@"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS"] ? 2 : 0;
    }

    v78 = 0;
LABEL_75:
    v47(*(v1 + 1232), 1, 1, v46);
    sub_258F099E0();
    if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v79 <= -1.0)
    {
      goto LABEL_168;
    }

    if (v79 >= 1.84467441e19)
    {
      goto LABEL_169;
    }

    if (!is_mul_ok(v79, 0x3E8uLL))
    {
      goto LABEL_170;
    }

    v149 = v78;
    v151 = v77;
    v80 = v56;
    v81 = 1000 * v79;
    v82 = *(v1 + 1232);
    v83 = *(v1 + 1216);
    v84 = *(v1 + 1184);
    v85 = *(v1 + 1176);
    sub_258DE20C0(*(v1 + 1248), v82 + v148[7], &qword_27F988730, &unk_258F0F8E0);
    v86 = v82 + v148[5];
    *v86 = v81;
    *(v86 + 8) = 0;
    *(v82 + v148[6]) = v161;
    v87 = v82 + v148[8];
    *v87 = 0;
    *(v87 + 8) = 1;
    v88 = v82 + v148[9];
    *v88 = 0;
    *(v88 + 8) = 1;
    type metadata accessor for VTEnrollmentDataBuilderImpl(0);
    swift_allocObject();
    v89 = sub_258F05A78();
    sub_258EFB684(v82, v84, type metadata accessor for FunnelEventMetadata);
    (*v146)(v84, 0, 1, v83);
    sub_258E2EAD8(v84, v85, &qword_27F98AA58, &unk_258F174B0);
    v90 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
    swift_beginAccess();
    sub_258EFB614(v85, v89 + v90);
    swift_endAccess();
    *(v1 + 896) = 0x745F656369766564;
    *(v1 + 904) = 0xEB00000000657079;
    sub_258F0AA80();
    if (*(v29 + 16) && (v91 = sub_258E2EA2C(v1 + 216), (v92 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v91, v1 + 712);
      sub_258E0F590(v1 + 216);
      v93 = swift_dynamicCast();
      v94 = *(v1 + 1024);
      v95 = *(v1 + 1032);
      if (!v93)
      {
        v94 = 0;
        v95 = 0;
      }
    }

    else
    {
      sub_258E0F590(v1 + 216);
      v94 = 0;
      v95 = 0;
    }

    v21 = v159;
    v96 = (v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
    *v96 = v94;
    v96[1] = v95;

    v97 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode;
    *v97 = v80;
    *(v97 + 4) = v158;
    v98 = *(v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale);
    *(v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale) = v69;

    strcpy((v1 + 944), "system_build");
    *(v1 + 957) = 0;
    *(v1 + 958) = -5120;
    v99 = v69;
    sub_258F0AA80();
    if (*(v29 + 16) && (v100 = sub_258E2EA2C(v1 + 136), (v101 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v100, v1 + 648);
      sub_258E0F590(v1 + 136);
      v102 = swift_dynamicCast();
      v103 = *(v1 + 1008);
      v104 = *(v1 + 1016);
      if (!v102)
      {
        v103 = 0;
        v104 = 0;
      }
    }

    else
    {
      sub_258E0F590(v1 + 136);
      v103 = 0;
      v104 = 0;
    }

    v105 = (v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
    *v105 = v103;
    v105[1] = v104;

    v106 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode;
    *v106 = v157;
    *(v106 + 4) = v156;
    v107 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome;
    *v107 = v155;
    *(v107 + 4) = v154;
    v108 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType;
    *v108 = v151;
    *(v108 + 4) = v149;
    *(v1 + 992) = 0x6D756E5F65676170;
    *(v1 + 1000) = 0xEB00000000726562;
    sub_258F0AA80();
    if (*(v29 + 16) && (v109 = sub_258E2EA2C(v1 + 96), (v110 & 1) != 0))
    {
      sub_258DE4090(*(v29 + 56) + 32 * v109, v1 + 520);
      sub_258E0F590(v1 + 96);

      v111 = swift_dynamicCast();
      v112 = *(v1 + 1320);
      if (!v111)
      {
        v112 = 0;
      }

      v113 = v111 ^ 1;
    }

    else
    {

      sub_258E0F590(v1 + 96);
      v112 = 0;
      v113 = 1;
    }

    v114 = *(v1 + 1208);
    v115 = *(v1 + 1200);
    v116 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted;
    *v116 = v112;
    *(v116 + 4) = v113;
    v117 = v89 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
    *v117 = v153;
    *(v117 + 4) = v152;
    sub_258F05748(v114);

    sub_258EFB684(v114, v115, type metadata accessor for VTEnrollmentData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_258DE2D90(0, v159[2] + 1, 1, v159);
    }

    v119 = v21[2];
    v118 = v21[3];
    if (v119 >= v118 >> 1)
    {
      v21 = sub_258DE2D90((v118 > 1), v119 + 1, 1, v21);
    }

    v120 = *(v1 + 1248);
    v121 = *(v1 + 1232);
    v122 = *(v1 + 1208);
    v123 = *(v1 + 1200);

    sub_258EFB6EC(v122, type metadata accessor for VTEnrollmentData);
    sub_258EFB6EC(v121, type metadata accessor for FunnelEventMetadata);
    sub_258DE2184(v120, &qword_27F988730, &unk_258F0F8E0);
    v21[2] = v119 + 1;
    sub_258EFB74C(v123, v21 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v119);
LABEL_15:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_163;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

uint64_t VTEnrollmentCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter));

  return v0;
}

uint64_t VTEnrollmentCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter));

  return swift_deallocClassInstance();
}

uint64_t sub_258EFB578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EF9514(a1);
}

uint64_t sub_258EFB614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EFB684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258EFB6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258EFB74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VTEnrollmentData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258EFB7B0()
{
  result = qword_27F98AA60;
  if (!qword_27F98AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA60);
  }

  return result;
}

uint64_t sub_258EFB804(uint64_t a1)
{
  result = sub_258EFB88C(&qword_27F98AA68, &unk_258F17530);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EFB848(uint64_t a1)
{
  result = sub_258EFB88C(&qword_27F98AA70, &protocol conformance descriptor for VTEnrollmentCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EFB88C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VTEnrollmentCalculator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EFB8D0()
{
  result = qword_27F98AA78;
  if (!qword_27F98AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AA78);
  }

  return result;
}

void sub_258EFB93C(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09B00();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VTEnrollmentCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t SpeakerIdManifestPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  swift_allocObject();
  v8 = sub_258EFC3B0(a1, a2, a3, a4);

  return v8;
}

uint64_t SpeakerIdManifestPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258EFC3B0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258EFBC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFBC90, 0, 0);
}

uint64_t sub_258EFBC90()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EE4F5C();
}

uint64_t sub_258EFBD34(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_258EFBD5C, 0, 0);
}

uint64_t sub_258EFBD5C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);
  v2 = v0[6];
  v0[2] = v0[5];
  v0[3] = v2;
  v5 = (*(*v1 + 80) + **(*v1 + 80));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_258E44B28;

  return v5(v0 + 2);
}

uint64_t sub_258EFBE98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFBEB8, 0, 0);
}

uint64_t sub_258EFBEB8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258EE0B30(v2);
}

uint64_t SpeakerIdManifestPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SpeakerIdManifestPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258EFC0B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFC0DC, 0, 0);
}

uint64_t sub_258EFC0DC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EE4F5C();
}

uint64_t sub_258EFC180(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFC1A4, 0, 0);
}

uint64_t sub_258EFC1A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258EE0B30(v2);
}

uint64_t sub_258EFC248(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = *v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_258EFC274, 0, 0);
}

uint64_t sub_258EFC274()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter);
  v2 = v0[6];
  v0[2] = v0[5];
  v0[3] = v2;
  v5 = (*(*v1 + 80) + **(*v1 + 80));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_258E45774;

  return v5(v0 + 2);
}

uint64_t sub_258EFC3B0(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v48 = a4;
  v46 = a1;
  v47 = a3;
  v6 = sub_258F0A370();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  v15 = v14;
  v44 = v4;
  v45 = v14;
  v16 = *(v14 + 16);
  v17 = v4 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_logger;
  v18 = v4;
  v19 = a2;
  v16(v17, a2, v6);
  v43 = a2;
  v16(v13, a2, v6);
  type metadata accessor for SpeakerIdManifestDataProvider(0);
  v20 = swift_allocObject();
  v21 = *(v15 + 32);
  v41 = v15 + 32;
  v50 = v21;
  v21(v20 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestDataProvider_logger, v13, v6);
  *(v18 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_dataProvider) = v20;
  v42 = v16;
  v16(v13, v19, v6);
  v22 = v10;
  v16(v10, v13, v6);
  v23 = type metadata accessor for SamplingUtils();
  v24 = type metadata accessor for CAAnalyticsEventSubmitter();
  v25 = swift_allocObject();
  v49[3] = v24;
  v49[4] = &off_286A2C648;
  v49[0] = v25;
  type metadata accessor for SpeakerIdManifestCalculator(0);
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v49, v24);
  MEMORY[0x28223BE20](v27, v27);
  v29 = (&v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v32 = (v26 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_analyticsEventSubmitter);
  v32[3] = v24;
  v32[4] = &off_286A2C648;
  *v32 = v31;
  v33 = v46;
  sub_258F09AE0();
  *(v26 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_defaults) = v33;
  v50(v26 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_logger, v22, v6);
  v34 = (v26 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdManifestCalculator_samplingUtils);
  *v34 = v23;
  v34[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  v35 = *(v45 + 8);
  v35(v13, v6);
  v36 = v44;
  *(v44 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_calculator) = v26;
  v37 = v43;
  v42(v13, v43, v6);
  v38 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v47, v48);
  v35(v37, v6);
  type metadata accessor for SpeakerIdManifestSELFReporter(0);
  v39 = swift_allocObject();
  v50(v39 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdManifestSELFReporter_logger, v13, v6);
  *(v39 + 16) = v38;
  result = v36;
  *(v36 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdManifestPlugin_reporter) = v39;
  return result;
}

uint64_t type metadata accessor for SpeakerIdManifestPlugin(uint64_t a1)
{
  result = qword_27F98AAC8;
  if (!qword_27F98AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EFC8A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdManifestPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdManifestPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdManifestPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdManifestPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EFCCA4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriDigestMetricsCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t SpeakerIdSamplingPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v89 = a4;
  v83 = a3;
  v90 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v78 = &v72 - v7;
  v77 = sub_258F09B00();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_258F09A20();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v10);
  v72 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258F09A70();
  v91 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v17 = *(v16 - 1);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v87 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v72 - v22;
  v24 = *(v17 + 16);
  v24(&v72 - v22, a2, v16);
  type metadata accessor for SpeakerIdSamplingDataProvider(0);
  v25 = swift_allocObject();
  v92 = v17;
  v26 = *(v17 + 32);
  v81 = v17 + 32;
  v82 = v23;
  v80 = v26;
  v26(v25 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingDataProvider_logger, v23, v16);
  v27 = v97;
  *(v97 + 16) = v25;
  v85 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v28 = v27;
  v24(v27 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger, a2, v16);
  sub_258F09A60();
  v29 = v91[4];
  v84 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v86 = v12;
  v29(v28 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId, v15, v12);
  v30 = sub_258F0A1F0();
  swift_allocObject();
  v31 = v90;
  v32 = sub_258F0A1E0();
  v95 = v30;
  v96 = MEMORY[0x277D04548];
  v93 = a2;
  v94 = v32;
  v90 = v16;
  v79 = v24;
  v24(v87, a2, v16);
  v33 = sub_258F09C20();
  swift_allocObject();
  v34 = v88;
  v35 = sub_258F09BE0();
  v88 = v34;
  if (v34)
  {
    v36 = *(v92 + 8);
    v37 = v90;
    v36(v93, v90);

    v38 = v97;

    v36((v38 + v85), v37);
    (v91[1])(v38 + v84, v86);
    type metadata accessor for SpeakerIdSamplingPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v35;
    v40 = v72;
    sub_258F0A090();
    v41 = v74;
    sub_258F09AE0();
    sub_258F09C10();
    (*(v76 + 8))(v41, v77);
    (*(v73 + 8))(v40, v75);
    v42 = v82;
    v43 = v90;
    v44 = v79;
    v79(v82, v93, v90);
    v45 = v31;
    v91 = v45;
    v46 = v39;
    v87 = v39;

    v47 = v78;
    sub_258EFCCA4(v78);
    v86 = type metadata accessor for SamplingUtils();
    type metadata accessor for SpeakerIdSamplingCalculator(0);
    v48 = swift_allocObject();
    *(v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_defaults) = v45;
    v44(v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_logger, v42, v43);
    sub_258DECF90(v47, v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_sqlFileURL);
    v49 = (v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bookmarkService);
    v49[3] = v33;
    v49[4] = &off_286A2FA30;
    *v49 = v46;
    v50 = (v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_samplingUtils);
    *v50 = v86;
    v50[1] = &protocol witness table for SamplingUtils;
    v51 = type metadata accessor for CAAnalyticsEventSubmitter();
    v52 = swift_allocObject();
    v53 = (v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_analyticsEventSubmitter);
    v53[3] = v51;
    v53[4] = &off_286A2C648;
    *v53 = v52;
    sub_258F09F30();
    v54 = sub_258F09F20();
    sub_258DED000(v47);
    v55 = *(v92 + 8);
    v92 += 8;
    v86 = v55;
    v56 = v43;
    v55(v42, v43);
    *(v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_bugReporter) = v54;
    type metadata accessor for BiomeResultsWrapperFactory();
    *(v48 + OBJC_IVAR____TtC16MetricsFramework27SpeakerIdSamplingCalculator_biomeResultsFactory) = swift_allocObject();
    v38 = v97;
    *(v97 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_calculator) = v48;
    v57 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v58 = [v57 OnDeviceAnalytics];
    swift_unknownObjectRelease();
    v59 = [v58 SpeakerIdSampling];
    swift_unknownObjectRelease();
    v60 = [v59 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF0, &unk_258F177F8);
    swift_allocObject();
    v61 = sub_258F09B80();
    v62 = v93;
    v44(v42, v93, v43);
    type metadata accessor for SpeakerIdSamplingBiomeReporter(0);
    v63 = swift_allocObject();
    v85 = v63;
    *(v63 + 16) = v61;
    v64 = v80;
    v80(v63 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSamplingBiomeReporter_logger, v42, v43);
    v44(v42, v62, v43);

    v65 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v83, v89);
    type metadata accessor for SpeakerIdSamplingSELFReporter(0);
    v66 = swift_allocObject();
    v67 = (v66 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_reportingService);
    v67[3] = type metadata accessor for SELFReportingService();
    v67[4] = &protocol witness table for SELFReportingService;
    *v67 = v65;
    v64(v66 + OBJC_IVAR____TtC16MetricsFramework29SpeakerIdSamplingSELFReporter_logger, v42, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_258F0F6D0;
    v69 = v85;
    *(v68 + 32) = v66;
    *(v68 + 40) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF8, &qword_258F17808);
    swift_allocObject();

    v94 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB00, qword_258F17810);
    swift_allocObject();
    v70 = sub_258F09BC0();

    v86(v93, v56);
    *(v38 + OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_reporter) = v70;
  }

  return v38;
}

uint64_t type metadata accessor for SpeakerIdSamplingPlugin(uint64_t a1)
{
  result = qword_27F98AB28;
  if (!qword_27F98AB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EFD890(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFD8B0, 0, 0);
}

uint64_t sub_258EFD8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EF160C();
}

uint64_t sub_258EFD94C(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EFD97C, 0, 0);
}

uint64_t sub_258EFD97C()
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

uint64_t sub_258EFDA48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EFDA68, 0, 0);
}

uint64_t sub_258EFDA68()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258EE7B98(v2);
}

uint64_t SpeakerIdSamplingPlugin.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SpeakerIdSamplingPlugin.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework23SpeakerIdSamplingPlugin_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EFDCD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFDCFC, 0, 0);
}

uint64_t sub_258EFDCFC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EF160C();
}

uint64_t sub_258EFDD98(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EFDDBC, 0, 0);
}

uint64_t sub_258EFDDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258EE7B98(v2);
}

uint64_t sub_258EFDE60(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EFDE94, 0, 0);
}

uint64_t sub_258EFDE94()
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

uint64_t sub_258EFDFFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdSamplingPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EFE048(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdSamplingPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EFE4E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E656DLL;
  v3 = 0xD000000000000011;
  v4 = 0x6C6C6F726E457476;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0x6C6C6F726E457476;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000258F18F10;
    }

    else
    {
      v7 = 0xEC000000746E656DLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5)
    {
      v7 = 0x8000000258F18EF0;
    }

    else
    {
      v7 = 0x8000000258F18ED0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000019;
    v2 = 0x8000000258F18F10;
  }

  v8 = 0x8000000258F18EF0;
  if (!a2)
  {
    v3 = 0xD000000000000012;
    v8 = 0x8000000258F18ED0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258F0AD80();
  }

  return v11 & 1;
}

uint64_t sub_258EFE608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737574617453;
  v3 = 0xD000000000000012;
  v4 = 0x7465737341524941;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    else
    {
      v6 = 0x7465737341524941;
    }

    if (v5 == 2)
    {
      v7 = 0x8000000258F18980;
    }

    else
    {
      v7 = 0xEE00737574617453;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v5)
    {
      v7 = 0x8000000258F18960;
    }

    else
    {
      v7 = 0x8000000258F18940;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000019;
    v2 = 0x8000000258F18980;
  }

  v8 = 0x8000000258F18960;
  if (!a2)
  {
    v3 = 0xD000000000000016;
    v8 = 0x8000000258F18940;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258F0AD80();
  }

  return v11 & 1;
}

MetricsFramework::SpeakerIdWorkerError_optional __swiftcall SpeakerIdWorkerError.init(rawValue:)(Swift::String rawValue)
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

unint64_t SpeakerIdWorkerError.rawValue.getter()
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

uint64_t sub_258EFE9AC()
{
  v0 = SpeakerIdWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == SpeakerIdWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258EFEA48()
{
  sub_258F0AE40();
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EFEAB0(uint64_t a1)
{
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258EFEB14(uint64_t a1)
{
  sub_258F0AE40();
  SpeakerIdWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258EFEB84@<X0>(unint64_t *a1@<X8>)
{
  result = SpeakerIdWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::SpeakerIdSamplingWorker::Subtask_optional __swiftcall SpeakerIdSamplingWorker.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SpeakerIdSamplingWorker.Subtask.rawValue.getter()
{
  v1 = 0x6C6C6F726E457476;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_258EFEDD4()
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EFEEA8(uint64_t a1)
{
  sub_258F0A5B0();
}

uint64_t sub_258EFEF68(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

void sub_258EFF044(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000746E656DLL;
  v3 = 0x6C6C6F726E457476;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000019;
    v2 = 0x8000000258F18F10;
  }

  v4 = 0x8000000258F18ED0;
  if (*v1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v1)
  {
    v4 = 0x8000000258F18EF0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SpeakerIdSamplingWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AE0();
  v4 = *(type metadata accessor for SpeakerIdSamplingWorker(0) + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for SpeakerIdSamplingWorker(uint64_t a1)
{
  result = qword_27F98AB70;
  if (!qword_27F98AB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeakerIdSamplingWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_258F0A770();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EFF268, 0, 0);
}

uint64_t sub_258EFF268()
{
  v86 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for SpeakerIdSamplingWorker(0) + 20);
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v85[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v85);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v85);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v5, v6, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v8, -1, -1);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v15 = *(v0 + 64);
  *v15 = 0;
  v16 = *MEMORY[0x277D81760];
  *(v0 + 216) = v16;
  v17 = sub_258F09E50();
  *(v0 + 120) = v17;
  v18 = *(v17 - 8);
  *(v0 + 128) = v18;
  v19 = *(v18 + 104);
  *(v0 + 136) = v19;
  *(v0 + 144) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v15, v16, v17);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_258F0A4E0();
  v22 = [v20 initWithSuiteName_];
  *(v0 + 152) = v22;

  v23 = sub_258F09E80();
  v25 = v24;
  v26 = sub_258F09E90();
  sub_258F00DD4(v23, v25, v26, v27);

  v35 = sub_258DFBE24(&unk_286A29C70);
  sub_258DE2184(&unk_286A29C90, &qword_27F988B08, &unk_258F0CD90);
  if (v22)
  {
    v36 = *(v0 + 72);
    v83 = v22;
    sub_258F09E80();
    v85[0] = sub_258F09E90();
    v85[1] = v37;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0x6C6C6F726E457476, 0xEC000000746E656DLL);

    v38 = objc_allocWithZone(sub_258F09EA0());
    v39 = sub_258F09E70();
    *(v0 + 160) = v39;
    v40 = sub_258F09E00();
    *(v0 + 168) = v40;
    *(v0 + 176) = *(v40 - 8);
    v41 = swift_task_alloc();
    *(v0 + 184) = v41;
    v42 = v39;
    sub_258DFA2E0(v35);

    sub_258F09DF0();
    v43 = swift_task_alloc();
    *(v0 + 192) = v43;
    v82 = (*(*v36 + 112) + **(*v36 + 112));
    v44 = swift_task_alloc();
    *(v0 + 200) = v44;
    *v44 = v0;
    v44[1] = sub_258EFFE8C;

    return v82(v43, v83, v41, v2 + v3, 0xD000000000000029, 0x8000000258F20760);
  }

  v51 = sub_258F0A350();
  v52 = sub_258F0A820();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_258DD8000, v51, v52, "Can't get user defaults initialized", v53, 2u);
    MEMORY[0x259C9EF40](v53, -1, -1);
  }

  sub_258EB875C();
  v33 = swift_allocError();
  *v54 = 5;
  swift_willThrow();
  *(v0 + 16) = v33;
  v28 = sub_258F09E20();
  v29 = *(v28 - 8);
  v30 = swift_task_alloc();
  v31 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v32 = (*(v29 + 88))(v30, v28);
    if (MEMORY[0x277D81740] && v32 == *MEMORY[0x277D81740])
    {

      v33 = *(v0 + 16);
      v34 = 3;
LABEL_34:
      v84 = v34;
      goto LABEL_35;
    }

    if (MEMORY[0x277D81748] && v32 == *MEMORY[0x277D81748])
    {

      v33 = *(v0 + 16);
      v34 = 4;
      goto LABEL_34;
    }

    (*(v29 + 8))(v30, v28);
  }

  *(v0 + 24) = v33;
  v46 = sub_258F0A1D0();
  v47 = *(v46 - 8);
  v48 = swift_task_alloc();
  v49 = v33;
  if (swift_dynamicCast())
  {
    v50 = (*(v47 + 88))(v48, v46);
    if (MEMORY[0x277D04530] && v50 == *MEMORY[0x277D04530])
    {

      v33 = *(v0 + 24);
      v34 = 6;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v50 == *MEMORY[0x277D04538])
    {

      v33 = *(v0 + 24);
      v34 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v50 == *MEMORY[0x277D04540])
    {

      v33 = *(v0 + 24);
      v34 = 8;
      goto LABEL_34;
    }

    (*(v47 + 8))(v48, v46);
  }

  *(v0 + 32) = v33;
  v55 = v33;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v33;
    v56 = sub_258F09E60();
    v57 = *(v56 - 8);
    v58 = swift_task_alloc();
    v59 = v33;
    if (swift_dynamicCast())
    {

      (*(v57 + 8))(v58, v56);

      v33 = *(v0 + 40);
      v34 = 2;
    }

    else
    {

      *(v0 + 48) = v33;
      v70 = sub_258F09E10();
      v71 = *(v70 - 8);
      v72 = swift_task_alloc();
      v73 = v33;
      if (swift_dynamicCast())
      {

        (*(v71 + 8))(v72, v70);

        v84 = 0;
        v33 = *(v0 + 48);
        goto LABEL_35;
      }

      *(v0 + 56) = v33;
      v74 = v33;
      if (swift_dynamicCast())
      {
        v75 = *(v0 + 152);
        v76 = *(v0 + 136);
        v78 = *(v0 + 112);
        v77 = *(v0 + 120);
        v79 = *(v0 + 96);
        v80 = *(v0 + 104);
        v81 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v81, v77);

        v76(v81, *MEMORY[0x277D81770], v77);
        (*(v80 + 8))(v78, v79);

        goto LABEL_36;
      }

      v34 = 1;
    }

    goto LABEL_34;
  }

  v84 = *(v0 + 220);
  v33 = *(v0 + 32);
LABEL_35:

  v60 = *(v0 + 152);
  v61 = *(v0 + 128);
  v62 = *(v0 + 136);
  v63 = *(v0 + 120);
  v64 = *(v0 + 216);
  v65 = *(v0 + 64);
  v66 = swift_task_alloc();
  sub_258EB875C();
  v67 = swift_allocError();
  *v68 = v84;

  (*(v61 + 8))(v65, v63);
  *v66 = v67;
  v62(v66, v64, v63);
  (*(v61 + 32))(v65, v66, v63);

LABEL_36:

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_258EFFE8C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_258F00710;
  }

  else
  {
    v2 = sub_258EFFFA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258EFFFA0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 64);
  (*(v4 + 8))(v5, v3);
  (*(v4 + 32))(v5, v2, v3);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258F00DD4(v6, v8, v9, v10);
  v11 = *(v0 + 160);
  v12 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 16) = v1;
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

  *(v0 + 24) = v1;
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

  *(v0 + 32) = v1;
  v24 = v1;
  if (swift_dynamicCast())
  {

    v52 = *(v0 + 220);
LABEL_27:
    v29 = *(v0 + 152);
    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 216);
    v34 = *(v0 + 64);
    v35 = swift_task_alloc();
    sub_258EB875C();
    v36 = swift_allocError();
    *v37 = v52;

    (*(v30 + 8))(v34, v32);
    *v35 = v36;
    v31(v35, v33, v32);
    (*(v30 + 32))(v34, v35, v32);
    goto LABEL_28;
  }

  *(v0 + 40) = v1;
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

  *(v0 + 48) = v1;
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

  *(v0 + 56) = v1;
  v44 = v1;
  if (!swift_dynamicCast())
  {

    v18 = 1;
    goto LABEL_26;
  }

  v45 = *(v0 + 152);
  v46 = *(v0 + 136);
  v47 = *(v0 + 112);
  v48 = *(v0 + 120);
  v49 = *(v0 + 96);
  v50 = *(v0 + 104);
  v51 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v51, v48);

  v46(v51, *MEMORY[0x277D81770], v48);
  (*(v50 + 8))(v47, v49);

LABEL_29:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_258F00710()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 208);
  *(v0 + 16) = v5;
  v6 = (v0 + 16);
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

  *(v0 + 24) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 24);
      v12 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 24);
      v12 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 24);
      v12 = 8;
      goto LABEL_24;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 32) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v46 = *(v0 + 220);
    v5 = *(v0 + 32);
LABEL_25:

    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = swift_task_alloc();
    sub_258EB875C();
    v30 = swift_allocError();
    *v31 = v46;

    (*(v24 + 8))(v28, v26);
    *v29 = v30;
    v25(v29, v27, v26);
    (*(v24 + 32))(v28, v29, v26);

    goto LABEL_26;
  }

  *(v0 + 40) = v5;
  v19 = sub_258F09E60();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v5;
  if (swift_dynamicCast())
  {

    (*(v20 + 8))(v21, v19);

    v5 = *(v0 + 40);
    v12 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v5;
  v34 = sub_258F09E10();
  v35 = *(v34 - 8);
  v36 = swift_task_alloc();
  v37 = v5;
  if (swift_dynamicCast())
  {

    (*(v35 + 8))(v36, v34);

    v46 = 0;
    v5 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v5;
  v38 = v5;
  if (!swift_dynamicCast())
  {

    v12 = 1;
    goto LABEL_24;
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 136);
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v43 = *(v0 + 96);
  v44 = *(v0 + 104);
  v45 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v45, v41);

  v40(v45, *MEMORY[0x277D81770], v41);
  (*(v44 + 8))(v42, v43);

LABEL_26:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_258F00DD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    type metadata accessor for SpeakerIdSamplingWorker(0);

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

uint64_t sub_258F00F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01058, 0, 0);
}

uint64_t sub_258F01058(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdSelection", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v12 = swift_task_alloc();
  *(v1 + 96) = v12;
  (*(v6 + 16))(v5, v10, v8);
  type metadata accessor for SpeakerIdSelectionPlugin(0);
  swift_allocObject();

  v13 = sub_258F031C0(v11, v5, v9, v7);

  *(v1 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB38, qword_258F179B8);
  swift_allocObject();
  v15 = sub_258F09E40();
  *(v1 + 104) = v15;
  if (v15)
  {
    v16 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v17 = swift_task_alloc();
    *(v1 + 112) = v17;
    v18 = sub_258F09E00();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v17, v16, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v20 = swift_task_alloc();
    *(v1 + 120) = v20;
    *v20 = v1;
    v20[1] = sub_258F01438;

    return MEMORY[0x2821ED078](v12, v17);
  }

  else
  {
    v21 = *(v1 + 24);
    v22 = sub_258F09E50();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v12, 1, 1, v22);
    (*(v23 + 104))(v21, *MEMORY[0x277D81758], v22);

    v24 = *(v1 + 8);

    return v24();
  }
}

uint64_t sub_258F01438()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  sub_258DE2184(*(v2 + 112), &qword_27F988B20, &unk_258F0CDB0);

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

uint64_t sub_258F015A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F0166C, 0, 0);
}

uint64_t sub_258F0166C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdSampling", v4, 2u);
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
  type metadata accessor for SpeakerIdSamplingPlugin(0);
  swift_allocObject();

  v1[2] = SpeakerIdSamplingPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB40, &unk_258F179D0);
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
    v19[1] = sub_258F01438;

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

uint64_t sub_258F01A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01B08, 0, 0);
}

uint64_t sub_258F01B08(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeSpeakerIdManifest", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v12 = swift_task_alloc();
  *(v1 + 96) = v12;
  (*(v6 + 16))(v5, v10, v8);
  type metadata accessor for SpeakerIdManifestPlugin(0);
  swift_allocObject();

  v13 = sub_258EFC3B0(v11, v5, v9, v7);

  *(v1 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB48, &unk_258F179E0);
  swift_allocObject();
  v15 = sub_258F09E40();
  *(v1 + 104) = v15;
  if (v15)
  {
    v16 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v17 = swift_task_alloc();
    *(v1 + 112) = v17;
    v18 = sub_258F09E00();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v17, v16, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v20 = swift_task_alloc();
    *(v1 + 120) = v20;
    *v20 = v1;
    v20[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v12, v17);
  }

  else
  {
    v21 = *(v1 + 24);
    v22 = sub_258F09E50();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v12, 1, 1, v22);
    (*(v23 + 104))(v21, *MEMORY[0x277D81758], v22);

    v24 = *(v1 + 8);

    return v24();
  }
}

uint64_t sub_258F01EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258F01FB0, 0, 0);
}

uint64_t sub_258F01FB0(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SpeakerIdSamplingWorker: Call executeVTEnrollment", v4, 2u);
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
  type metadata accessor for VTEnrollmentPlugin(0);
  swift_allocObject();

  v1[2] = VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AB50, &qword_258F179F0);
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
    v19[1] = sub_258F01438;

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

unint64_t sub_258F023A0()
{
  result = qword_27F98AB58;
  if (!qword_27F98AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB58);
  }

  return result;
}

unint64_t sub_258F023FC()
{
  result = qword_27F98AB60;
  if (!qword_27F98AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB60);
  }

  return result;
}

unint64_t sub_258F02454()
{
  result = qword_27F98AB68;
  if (!qword_27F98AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AB68);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdSelection(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 88) + **(*v6 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdSampling(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 96) + **(*v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeSpeakerIdManifest(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SpeakerIdSamplingTaskExecutor.executeVTEnrollment(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 112) + **(*v6 + 112));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t SpeakerIdSelectionPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_allocObject();
  v8 = sub_258F031C0(a1, a2, a3, a4);

  return v8;
}

uint64_t SpeakerIdSelectionPlugin.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258F031C0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258F02B70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F02B90, 0, 0);
}

uint64_t sub_258F02B90()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EF7DD8();
}

uint64_t sub_258F02C34(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258F02C5C, 0, 0);
}

uint64_t sub_258F02C5C()
{
  *(v0 + 16) = *(v0 + 40);
  v3 = (*MEMORY[0x277D04430] + MEMORY[0x277D04430]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_258E44B28;

  return v3(v0 + 16);
}

uint64_t sub_258F02D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F02D40, 0, 0);
}

uint64_t sub_258F02D40()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258EF56A4(v2);
}

uint64_t SpeakerIdSelectionPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SpeakerIdSelectionPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258F02F40(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F02F64, 0, 0);
}

uint64_t sub_258F02F64()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EF7DD8();
}

uint64_t sub_258F03008(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F0302C, 0, 0);
}

uint64_t sub_258F0302C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258EF56A4(v2);
}

uint64_t sub_258F030D0(_OWORD *a1)
{
  *(v2 + 32) = *v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258F030FC, 0, 0);
}

uint64_t sub_258F030FC()
{
  *(v0 + 16) = *(v0 + 40);
  v3 = (*MEMORY[0x277D04430] + MEMORY[0x277D04430]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_258E45774;

  return v3(v0 + 16);
}

uint64_t sub_258F031C0(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v50 = a1;
  v6 = sub_258F0A370();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - v12;
  v15 = v14;
  v57 = v14;
  v16 = *(v14 + 16);
  v55 = v4;
  v16(v4 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_logger, a2, v6);
  v51 = a2;
  v16(v13, a2, v6);
  type metadata accessor for SpeakerIdSelectionDataProvider(0);
  v17 = swift_allocObject();
  v18 = *(v15 + 32);
  v54 = v15 + 32;
  v48 = v18;
  v18(v17 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionDataProvider_logger, v13, v6);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_dataProvider) = v17;
  v49 = v16;
  v16(v13, a2, v6);
  v47 = type metadata accessor for SamplingUtils();
  v19 = v10;
  v16(v10, v13, v6);
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  v56[3] = v20;
  v56[4] = &off_286A2C648;
  v56[0] = v21;
  type metadata accessor for SpeakerIdSelectionCalculator(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v56, v20);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (&v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = (v22 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_analyticsEventSubmitter);
  v28[3] = v20;
  v28[4] = &off_286A2C648;
  *v28 = v27;
  v29 = v50;
  sub_258F09AE0();
  v30 = v48;
  v48(v22 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_logger, v19, v6);
  *(v22 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_defaults) = v29;
  v31 = (v22 + OBJC_IVAR____TtC16MetricsFramework28SpeakerIdSelectionCalculator_samplingUtils);
  *v31 = v47;
  v31[1] = &protocol witness table for SamplingUtils;
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v32 = *(v57 + 8);
  v57 += 8;
  v50 = v32;
  (v32)(v13, v6);
  *(v55 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_calculator) = v22;
  v33 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v34 = [v33 OnDeviceAnalytics];
  swift_unknownObjectRelease();
  v35 = [v34 SpeakerIdSampling];
  swift_unknownObjectRelease();
  v36 = [v35 source];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AAF0, &unk_258F177F8);
  swift_allocObject();
  v37 = sub_258F09B80();
  v38 = v51;
  v39 = v49;
  v49(v13, v51, v6);
  type metadata accessor for SpeakerIdSelectionBiomeReporter(0);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v30(v40 + OBJC_IVAR____TtC16MetricsFramework31SpeakerIdSelectionBiomeReporter_logger, v13, v6);
  v39(v13, v38, v6);

  v41 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v52, v53);
  type metadata accessor for SpeakerIdSelectionSELFReporter(0);
  v42 = swift_allocObject();
  v30(v42 + OBJC_IVAR____TtC16MetricsFramework30SpeakerIdSelectionSELFReporter_logger, v13, v6);
  *(v42 + 16) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_258F0F6D0;
  *(v43 + 32) = v42;
  *(v43 + 40) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABC8, &qword_258F17E48);
  swift_allocObject();
  v44 = sub_258F09BA0();

  (v50)(v38, v6);
  result = v55;
  *(v55 + OBJC_IVAR____TtC16MetricsFramework24SpeakerIdSelectionPlugin_reporter) = v44;
  return result;
}

uint64_t type metadata accessor for SpeakerIdSelectionPlugin(uint64_t a1)
{
  result = qword_27F98ABB8;
  if (!qword_27F98ABB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258F0385C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpeakerIdSelectionPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of SpeakerIdSelectionPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258F03C60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VTEnrollmentCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t VTEnrollmentPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t VTEnrollmentPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v88 = a4;
  v82 = a3;
  v97 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v81 = &v70 - v11;
  v76 = sub_258F09B00();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v12);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_258F09A20();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v14);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v77 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v70 - v26;
  v29 = v17 + 16;
  v28 = *(v17 + 16);
  v84 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v28(v4 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger, a2, v16);
  v28(v27, a2, v16);
  type metadata accessor for VTEnrollmentDataProvider(0);
  v30 = swift_allocObject();
  v89 = v17;
  v31 = *(v17 + 32);
  v86 = v27;
  v79 = v17 + 32;
  v78 = v31;
  v31(v30 + OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger, v27, v16);
  v90 = v4;
  v83 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_dataProvider) = v30;
  v32 = sub_258F0A1F0();
  swift_allocObject();
  v33 = v97;
  v34 = sub_258F0A1E0();
  v95 = v32;
  v96 = MEMORY[0x277D04548];
  v94[0] = v34;
  v97 = a2;
  v35 = a2;
  v36 = v16;
  v85 = v28;
  v28(v24, v35, v16);
  v37 = sub_258F09C20();
  swift_allocObject();
  v38 = v87;
  v39 = sub_258F09BE0();
  if (v38)
  {
    v40 = *(v89 + 8);
    v40(v97, v36);

    v41 = v90;
    v40(&v84[v90], v36);

    type metadata accessor for VTEnrollmentPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v39;
    v43 = v71;
    sub_258F0A090();
    v44 = v73;
    sub_258F09AC0();
    v87 = v42;
    sub_258F09C10();
    (v75[1])(v44, v76);
    (*(v72 + 8))(v43, v74);
    v45 = v85;
    v46 = v86;
    v47 = v16;
    v85(v86, v97, v16);
    v70 = v29;
    v48 = v45;
    v84 = v33;

    v49 = v81;
    sub_258F03C60(v81);
    v50 = v77;
    v48(v77, v46, v16);
    v51 = v49;
    v52 = v80;
    sub_258DECF90(v49, v80);
    type metadata accessor for BiomeResultsWrapperFactory();
    v76 = swift_allocObject();
    v53 = type metadata accessor for CAAnalyticsEventSubmitter();
    v54 = swift_allocObject();
    v95 = v53;
    v96 = &off_286A2C648;
    v94[0] = v54;
    type metadata accessor for VTEnrollmentCalculator(0);
    v55 = swift_allocObject();
    v56 = __swift_mutable_project_boxed_opaque_existential_1(v94, v53);
    v75 = &v70;
    MEMORY[0x28223BE20](v56, v56);
    v83 = 0;
    v58 = (&v70 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    v60 = *v58;
    v92 = v53;
    v93 = &off_286A2C648;
    *&v91 = v60;
    sub_258F09AC0();
    v61 = v85;
    v85(v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_logger, v50, v47);
    sub_258DECF90(v52, v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_sqlFileURL);
    v62 = (v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_bookmarkService);
    v62[3] = v37;
    v62[4] = &off_286A2FA30;
    *v62 = v87;
    sub_258DED000(v52);
    v63 = *(v89 + 8);
    v63(v50, v47);
    sub_258DED000(v51);
    v64 = v86;
    v63(v86, v47);
    *(v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_biomeResultsFactory) = v76;
    sub_258DEE384(&v91, v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_analyticsEventSubmitter);
    *(v55 + OBJC_IVAR____TtC16MetricsFramework22VTEnrollmentCalculator_defaults) = v84;
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    v41 = v90;
    *(v90 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_calculator) = v55;
    v61(v64, v97, v47);
    v65 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v82, v88);
    type metadata accessor for VTEnrollmentSELFReporter(0);
    v66 = swift_allocObject();
    v78(v66 + OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger, v64, v47);
    *(v66 + 16) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_258F0CA20;
    *(v67 + 32) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABE8, &qword_258F17E50);
    swift_allocObject();

    v94[0] = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98ABF0, qword_258F17E58);
    swift_allocObject();
    v68 = sub_258F09BC0();

    v63(v97, v47);
    *(v41 + OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_reporter) = v68;
  }

  return v41;
}

uint64_t sub_258F04730(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F04750, 0, 0);
}

uint64_t sub_258F04750()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258F06A98();
}

uint64_t sub_258F047F4(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258F04824, 0, 0);
}

uint64_t sub_258F04824()
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

uint64_t sub_258F048F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258F04910, 0, 0);
}

uint64_t sub_258F04910()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258EF9514(v2);
}

uint64_t VTEnrollmentPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VTEnrollmentPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework18VTEnrollmentPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258F04B10(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F04B34, 0, 0);
}

uint64_t sub_258F04B34()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258F06A98();
}

uint64_t sub_258F04BD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258F04BFC, 0, 0);
}

uint64_t sub_258F04BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258EF9514(v2);
}

uint64_t sub_258F04CA0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258F04CD4, 0, 0);
}

uint64_t sub_258F04CD4()
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

uint64_t type metadata accessor for VTEnrollmentPlugin(uint64_t a1)
{
  result = qword_27F98AC18;
  if (!qword_27F98AC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258F04E88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VTEnrollmentPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of VTEnrollmentPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of VTEnrollmentPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t FunnelEventMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_258F09A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  sub_258DE20C0(v2, &v26 - v14, &qword_27F988730, &unk_258F0F8E0);
  v27 = *(v4 + 48);
  if (v27(v15, 1, v3) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_258F0AE60();
    sub_258F062C0(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258F0A450();
    (*(v4 + 8))(v7, v3);
  }

  v16 = type metadata accessor for FunnelEventMetadata(0);
  v17 = v2 + v16[5];
  if (*(v17 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v18 = *v17;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v18);
  }

  v19 = *(v2 + v16[6]);
  sub_258F0AE60();
  if (v19)
  {
    v20 = v19;
    sub_258F0A8F0();
  }

  sub_258DE20C0(v2 + v16[7], v12, &qword_27F988730, &unk_258F0F8E0);
  if (v27(v12, 1, v3) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    sub_258F0AE60();
    sub_258F062C0(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258F0A450();
    (*(v4 + 8))(v7, v3);
  }

  v21 = v2 + v16[8];
  if (*(v21 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v22 = *v21;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v22);
  }

  v23 = v2 + v16[9];
  if (*(v23 + 8) == 1)
  {
    return sub_258F0AE60();
  }

  v25 = *v23;
  sub_258F0AE60();
  return MEMORY[0x259C9E740](v25);
}

uint64_t FunnelEventMetadata.hashValue.getter()
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)(v1);
  return sub_258F0AE90();
}

uint64_t sub_258F056C4()
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)(v1);
  return sub_258F0AE90();
}

uint64_t sub_258F05708(uint64_t a1)
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)(v2);
  return sub_258F0AE90();
}

double sub_258F05748@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F98AA58, &unk_258F174B0);
  v4 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType + 8);
  v34 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
  v32 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode + 4);
  v33 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode);
  v5 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild + 8);
  v31 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
  v29 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface + 4);
  v30 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale);
  v27 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode + 4);
  v28 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode);
  v25 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType + 4);
  v26 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome);
  v8 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome + 4);
  LODWORD(v3) = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted);
  v9 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted + 4);
  v10 = v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome);
  v12 = *(v10 + 4);
  v13 = type metadata accessor for VTEnrollmentData(0);
  v14 = (a1 + v13[5]);
  *v14 = v34;
  v14[1] = v4;
  v15 = a1 + v13[6];
  *v15 = v33;
  *(v15 + 4) = v32;
  v16 = (a1 + v13[7]);
  *v16 = v31;
  v16[1] = v5;
  v17 = a1 + v13[8];
  *v17 = v30;
  *(v17 + 4) = v29;
  *(a1 + v13[9]) = v6;
  v18 = a1 + v13[10];
  *v18 = v28;
  *(v18 + 4) = v27;
  v19 = a1 + v13[11];
  *v19 = v26;
  *(v19 + 4) = v25;
  v20 = a1 + v13[12];
  *v20 = v7;
  *(v20 + 4) = v8;
  v21 = a1 + v13[13];
  *v21 = v3;
  *(v21 + 4) = v9;
  v22 = a1 + v13[14];
  *v22 = v11;
  *(v22 + 4) = v12;
  v23 = v6;

  return result;
}

uint64_t VTEnrollmentDataBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata, &qword_27F98AA58, &unk_258F174B0);

  return v0;
}

uint64_t VTEnrollmentDataBuilderImpl.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata, &qword_27F98AA58, &unk_258F174B0);

  return swift_deallocClassInstance();
}

uint64_t sub_258F05A78()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_metadata;
  v2 = type metadata accessor for FunnelEventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_deviceType);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_programCode;
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcomeprogramCode;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_systemBuild);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_viewInterface;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_siriInputLocale) = 0;
  v8 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentMode;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_voiceTriggerType;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_enrollmentOutcome;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_pageNumberCompleted;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtC16MetricsFramework27VTEnrollmentDataBuilderImpl_trainingOutcome;
  *v12 = 0;
  *(v12 + 4) = 1;
  return v0;
}

BOOL _s16MetricsFramework19FunnelEventMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE8, &qword_258F114B8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v67 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v65 - v21;
  v23 = *(v20 + 48);
  v70 = a1;
  sub_258DE20C0(a1, &v65 - v21, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(a2, &v22[v23], &qword_27F988730, &unk_258F0F8E0);
  v69 = v5;
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      sub_258DE2184(v22, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_10;
    }

LABEL_6:
    v25 = v22;
LABEL_7:
    sub_258DE2184(v25, &qword_27F989AE8, &qword_258F114B8);
    return 0;
  }

  sub_258DE20C0(v22, v14, &qword_27F988730, &unk_258F0F8E0);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    (*(v69 + 8))(v14, v4);
    goto LABEL_6;
  }

  v65 = v24;
  v28 = v68;
  v27 = v69;
  (*(v69 + 32))(v68, &v22[v23], v4);
  sub_258F062C0(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v29 = sub_258F0A4B0();
  v30 = *(v27 + 8);
  v30(v28, v4);
  v30(v14, v4);
  v24 = v65;
  sub_258DE2184(v22, &qword_27F988730, &unk_258F0F8E0);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v31 = type metadata accessor for FunnelEventMetadata(0);
  v32 = v31[5];
  v33 = (v70 + v32);
  v34 = *(v70 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v31[6];
  v38 = *(v70 + v37);
  v39 = *(a2 + v37);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = v31;
    sub_258DEB8C8(0, &qword_280CC49E0, 0x277D593F8);
    v41 = v39;
    v42 = v38;
    v43 = sub_258F0A8E0();

    v31 = v40;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v44 = v31;
  v45 = a2;
  v46 = v31[7];
  v47 = *(v15 + 48);
  v48 = v67;
  sub_258DE20C0(v70 + v46, v67, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v45 + v46, v48 + v47, &qword_27F988730, &unk_258F0F8E0);
  if (v24(v48, 1, v4) == 1)
  {
    if (v24((v48 + v47), 1, v4) == 1)
    {
      sub_258DE2184(v48, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v49 = v66;
  sub_258DE20C0(v48, v66, &qword_27F988730, &unk_258F0F8E0);
  if (v24((v48 + v47), 1, v4) == 1)
  {
    (*(v69 + 8))(v49, v4);
LABEL_26:
    v25 = v48;
    goto LABEL_7;
  }

  v50 = v69;
  v51 = v48 + v47;
  v52 = v68;
  (*(v69 + 32))(v68, v51, v4);
  sub_258F062C0(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v53 = sub_258F0A4B0();
  v54 = *(v50 + 8);
  v54(v52, v4);
  v54(v49, v4);
  sub_258DE2184(v48, &qword_27F988730, &unk_258F0F8E0);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v55 = v44[8];
  v56 = (v70 + v55);
  v57 = *(v70 + v55 + 8);
  v58 = (v45 + v55);
  v59 = *(v45 + v55 + 8);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v44[9];
  v61 = (v70 + v60);
  v62 = *(v70 + v60 + 8);
  v63 = (v45 + v60);
  v64 = *(v45 + v60 + 8);
  if ((v62 & 1) == 0)
  {
    if (*v61 != *v63)
    {
      v64 = 1;
    }

    return (v64 & 1) == 0;
  }

  return (v64 & 1) != 0;
}

uint64_t sub_258F062C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258F064AC(uint64_t a1)
{
  sub_258F06838(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58, MEMORY[0x277D84D38]);
    if (v2 <= 0x3F)
    {
      sub_258E56A6C(319, &qword_27F989AA0, &qword_280CC49E0, 0x277D593F8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258F065F4(uint64_t a1)
{
  sub_258F06838(319, &qword_27F98AC70, type metadata accessor for FunnelEventMetadata);
  if (v1 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_258F06838(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
      if (v3 <= 0x3F)
      {
        sub_258F06838(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
        if (v4 <= 0x3F)
        {
          sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
          if (v5 <= 0x3F)
          {
            sub_258F06838(319, &qword_27F98AC78, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
            if (v6 <= 0x3F)
            {
              sub_258F06838(319, &qword_27F98AC80, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType);
              if (v7 <= 0x3F)
              {
                sub_258F06838(319, &qword_27F98AC88, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome);
                if (v8 <= 0x3F)
                {
                  sub_258E0F074(319, &qword_27F989718, MEMORY[0x277D84CC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_258F06838(319, &qword_27F98AC90, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258F06838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258F068B4(uint64_t a1)
{
  sub_258F06838(319, &qword_27F98AC70, type metadata accessor for FunnelEventMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t VTEnrollmentDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t VTEnrollmentDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258F06AB8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: VTEnrollmentDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t VTEnrollmentDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VTEnrollmentDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258F06C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258F06A98();
}

uint64_t type metadata accessor for VTEnrollmentDataProvider(uint64_t a1)
{
  result = qword_27F98ACF0;
  if (!qword_27F98ACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t VTEnrollmentSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t sub_258F07018(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t VTEnrollmentSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258F071B4(uint64_t a1)
{
  *(v2 + 104) = v1;
  v4 = sub_258F0A370();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD08, &unk_258F18260);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AA58, &unk_258F174B0);
  *(v2 + 152) = swift_task_alloc();
  v5 = type metadata accessor for FunnelEventMetadata(0);
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v6 = type metadata accessor for VTEnrollmentData(0);
  *(v2 + 208) = v6;
  *(v2 + 216) = *(v6 - 8);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = *a1;
  *(v2 + 280) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258F07414, 0, 0);
}

void sub_258F07414(uint64_t a1)
{
  v135 = v1;
  *(v1 + 288) = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#VTEnrollmentSELFReporter: Reporter invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 280);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "#VTEnrollmentSELFReporter: result %ld", v9, 0xCu);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  else
  {
  }

  v10 = sub_258F0A350();
  v11 = sub_258F0A810();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 280);
    v13 = *(v1 + 208);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v134 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x259C9DF80](v12, v13);
    v18 = sub_258DE3018(v16, v17, &v134);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_258DD8000, v10, v11, "#VTEnrollmentSELFReporter: result.vtEnrollmentData %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x259C9EF40](v15, -1, -1);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  v19 = *(v1 + 280);
  *(v1 + 96) = MEMORY[0x277D84F98];
  v20 = &selRef_setSampledErrorAsset_;
  v129 = *(v19 + 16);
  v130 = v19;
  if (v129)
  {
    v21 = 0;
    v127 = (*(v1 + 168) + 48);
    v22 = *(v1 + 208);
    v128 = *(v1 + 216);
    while (v21 < *(v130 + 16))
    {
      v24 = *(v1 + 248);
      v23 = *(v1 + 256);
      sub_258F09514(*(v1 + 280) + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v21, v23, type metadata accessor for VTEnrollmentData);
      sub_258F09514(v23, v24, type metadata accessor for VTEnrollmentData);
      v25 = [objc_allocWithZone(MEMORY[0x277D59490]) v20[10]];
      if (!v25)
      {
        goto LABEL_86;
      }

      v26 = v25;
      sub_258F09514(*(v1 + 248), *(v1 + 240), type metadata accessor for VTEnrollmentData);
      v27 = objc_allocWithZone(MEMORY[0x277D59498]);
      v28 = v26;
      v29 = [v27 v20[10]];
      if (!v29)
      {
        goto LABEL_87;
      }

      v30 = v29;
      sub_258F09514(*(v1 + 240), *(v1 + 232), type metadata accessor for VTEnrollmentData);
      v31 = [objc_allocWithZone(MEMORY[0x277D59480]) v20[10]];
      if (!v31)
      {
        goto LABEL_88;
      }

      v32 = v31;
      v33 = *(v1 + 232);
      if (*(v33 + *(v22 + 28) + 8))
      {
        v34 = sub_258F0A4E0();
        [v32 setSystemBuild_];

        v33 = *(v1 + 232);
      }

      v35 = (v33 + *(v22 + 32));
      if ((v35[1] & 1) == 0)
      {
        [v32 setViewInterface_];
        v33 = *(v1 + 232);
      }

      if (*(v33 + *(v22 + 36)))
      {
        [v32 setSiriInputLocale_];
        v33 = *(v1 + 232);
      }

      v36 = *(v1 + 240);
      sub_258EFB6EC(v33, type metadata accessor for VTEnrollmentData);
      [v30 setCoreDimensions_];

      v37 = (v36 + *(v22 + 40));
      if ((v37[1] & 1) == 0)
      {
        [v30 setEnrollmentMode_];
      }

      v38 = *(v1 + 240);
      v39 = (v38 + *(v22 + 44));
      if ((v39[1] & 1) == 0)
      {
        [v30 setVoiceTriggerType_];
        v38 = *(v1 + 240);
      }

      v40 = (v38 + *(v22 + 48));
      if ((v40[1] & 1) == 0)
      {
        [v30 setEnrollmentOutcome_];
        v38 = *(v1 + 240);
      }

      v41 = (v38 + *(v22 + 52));
      if ((v41[1] & 1) == 0)
      {
        [v30 setPageNumberCompleted_];
        v38 = *(v1 + 240);
      }

      v132 = v21;
      v42 = (v38 + *(v22 + 56));
      if ((v42[1] & 1) == 0)
      {
        [v30 setTrainingOutcome_];
        v38 = *(v1 + 240);
      }

      v44 = *(v1 + 248);
      v43 = *(v1 + 256);
      v45 = *(v1 + 224);
      sub_258EFB6EC(v38, type metadata accessor for VTEnrollmentData);
      [v28 setDimensions_];

      sub_258EFB6EC(v44, type metadata accessor for VTEnrollmentData);
      sub_258F09514(v43, v45, type metadata accessor for VTEnrollmentData);
      v46 = [objc_allocWithZone(MEMORY[0x277D59350]) v20[10]];
      if (!v46)
      {
        goto LABEL_89;
      }

      v47 = v46;
      v48 = *(v1 + 224);
      if (*(v48 + *(v22 + 20) + 8))
      {
        v49 = sub_258F0A4E0();
        [v47 setDeviceType_];

        v48 = *(v1 + 224);
      }

      v50 = (v48 + *(v22 + 24));
      if ((v50[1] & 1) == 0)
      {
        [v47 setProgramCode_];
        v48 = *(v1 + 224);
      }

      v51 = *(v1 + 256);
      v53 = *(v1 + 152);
      v52 = *(v1 + 160);
      sub_258EFB6EC(v48, type metadata accessor for VTEnrollmentData);
      sub_258DE20C0(v51, v53, &qword_27F98AA58, &unk_258F174B0);
      v54 = (*v127)(v53, 1, v52);
      v10 = *(v1 + 152);
      if (v54 == 1)
      {
        sub_258EFB6EC(*(v1 + 256), type metadata accessor for VTEnrollmentData);

        sub_258DE2184(v10, &qword_27F98AA58, &unk_258F174B0);
      }

      else
      {
        sub_258F08E64(*(v1 + 152), *(v1 + 200));
        if (!*(*(v1 + 96) + 16) || (sub_258E2F028(*(v1 + 200)), (v55 & 1) == 0))
        {
          v56 = *(v1 + 200);
          v57 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = *(v1 + 96);
          sub_258ED7EB4(v57, MEMORY[0x277D84F90], v56, isUniquelyReferenced_nonNull_native);
          *(v1 + 96) = v134;
        }

        v59 = *(v1 + 192);
        sub_258F09514(*(v1 + 200), v59, type metadata accessor for FunnelEventMetadata);
        v61 = sub_258ED061C((v1 + 16), v59);
        if (*v60)
        {
          v62 = v60;
          v63 = v28;
          MEMORY[0x259C9DF50]();
          if (*((v62[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        v61();
        v10 = *(v1 + 256);
        v65 = *(v1 + 192);
        v64 = *(v1 + 200);

        sub_258EFB6EC(v65, type metadata accessor for FunnelEventMetadata);
        sub_258EFB6EC(v64, type metadata accessor for FunnelEventMetadata);
        sub_258EFB6EC(v10, type metadata accessor for VTEnrollmentData);
        v20 = &selRef_setSampledErrorAsset_;
      }

      ++v21;
      if (v129 == v132 + 1)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_83:
    v112 = sub_258F0AA20();
    if (!v112)
    {
      goto LABEL_71;
    }

    goto LABEL_64;
  }

LABEL_46:
  v66 = sub_258F0A350();
  v67 = sub_258F0A810();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v134 = v69;
    *v68 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD20, &unk_258F18278);
    sub_258F095EC();
    v70 = sub_258F0A420();
    v72 = v71;

    v73 = sub_258DE3018(v70, v72, &v134);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_258DD8000, v66, v67, "#VTEnrollmentSELFReporter: Event to be emitted: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x259C9EF40](v69, -1, -1);
    MEMORY[0x259C9EF40](v68, -1, -1);
  }

  swift_beginAccess();
  v74 = *(v1 + 96);
  *(v1 + 296) = v74;
  v75 = *(v74 + 32);
  *(v1 + 368) = v75;
  v76 = -1;
  v77 = -1 << v75;
  if (-(-1 << v75) < 64)
  {
    v76 = ~(-1 << -v77);
  }

  v78 = v76 & *(v74 + 64);

  if (v78)
  {
    v79 = 0;
LABEL_55:
    v82 = *(v1 + 184);
    v83 = *(v1 + 136);
    v84 = __clz(__rbit64(v78));
    v85 = (v78 - 1) & v78;
    v86 = v84 | (v79 << 6);
    sub_258F09514(*(v74 + 48) + *(*(v1 + 168) + 72) * v86, v82, type metadata accessor for FunnelEventMetadata);
    v87 = *(v74 + 56);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
    v89 = *(v88 + 48);
    v133 = *(v87 + 16 * v86);
    sub_258F08E64(v82, v83);
    *(v83 + v89) = v133;
    (*(*(v88 - 8) + 56))(v83, 0, 1, v88);
    v90 = v133;

    v81 = v79;
  }

  else
  {
    v80 = 0;
    v81 = ((63 - v77) >> 6) - 1;
    while (v81 != v80)
    {
      v79 = v80 + 1;
      v78 = *(v74 + 72 + 8 * v80++);
      if (v78)
      {
        goto LABEL_55;
      }
    }

    v119 = *(v1 + 136);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
    (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
    v85 = 0;
  }

  *(v1 + 304) = v85;
  *(v1 + 312) = v81;
  v91 = *(v1 + 144);
  sub_258F0957C(*(v1 + 136), v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
  {

    v93 = sub_258F0A350();
    v94 = sub_258F0A810();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_258DD8000, v93, v94, "#VTEnrollmentSELFReporter: Reporter completed.", v95, 2u);
      MEMORY[0x259C9EF40](v95, -1, -1);
    }

    goto LABEL_79;
  }

  v96 = *(v1 + 176);
  v97 = *(v1 + 144);
  v98 = v97 + *(v92 + 48);
  v99 = *v98;
  *(v1 + 320) = *v98;
  v22 = *(v98 + 8);
  *(v1 + 328) = v22;
  sub_258F08E64(v97, v96);
  v100 = [objc_allocWithZone(MEMORY[0x277D59488]) v20[10]];
  *(v1 + 336) = v100;
  v101 = *(v1 + 288);
  if (!v100)
  {
    v121 = sub_258F0A350();
    v122 = sub_258F0A820();
    v123 = os_log_type_enabled(v121, v122);
    v124 = *(v1 + 176);
    if (v123)
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_258DD8000, v121, v122, "#VTEnrollmentSELFReporter: Failed to generate client event", v125, 2u);
      MEMORY[0x259C9EF40](v125, -1, -1);
    }

    else
    {
    }

    sub_258EFB6EC(v124, type metadata accessor for FunnelEventMetadata);
LABEL_79:

    v126 = *(v1 + 8);

    v126();
    return;
  }

  v102 = v100;
  v104 = *(v1 + 176);
  v103 = *(v1 + 184);
  v106 = *(v1 + 120);
  v105 = *(v1 + 128);
  v107 = *(v1 + 104);
  v131 = *(v1 + 112);
  sub_258DEB8C8(0, &qword_27F98AD18, 0x277D59478);
  sub_258F09514(v104, v103, type metadata accessor for FunnelEventMetadata);
  (*(v106 + 16))(v105, v107 + v101, v131);
  v108 = sub_258F08EC8(v103, v105);
  [v102 setEventMetadata_];

  v109 = objc_allocWithZone(MEMORY[0x277D594A0]);
  v110 = v99;
  v111 = [v109 init];
  *(v1 + 344) = v111;
  if (!v111)
  {
    goto LABEL_90;
  }

  v10 = v111;
  v20 = v102;
  [v111 setFixedDimensions:v110];

  if (v22 >> 62)
  {
    goto LABEL_83;
  }

  v112 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v112)
  {
LABEL_64:
    if (v112 >= 1)
    {

      for (i = 0; i != v112; ++i)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x259C9E3B0](i, v22);
        }

        else
        {
          v114 = *(v22 + 8 * i + 32);
        }

        v115 = v114;
        [v10 addDigests:v114];
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    return;
  }

LABEL_71:
  v116 = *(v1 + 288);
  v117 = *(v1 + 104);
  [(SEL *)v20 setVoiceTriggerEnrollmentFunnelReported:v10];
  v118 = swift_task_alloc();
  *(v1 + 352) = v118;
  *v118 = v1;
  v118[1] = sub_258F08474;

  sub_258EB747C(v20, v117 + v116);
}

uint64_t sub_258F08474()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_258F08C80;
  }

  else
  {
    v2 = sub_258F08588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258F08588()
{
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 176);

  sub_258EFB6EC(v5, type metadata accessor for FunnelEventMetadata);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  if (!v6)
  {
    v9 = ((1 << *(v0 + 368)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 368)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v48 = *(v0 + 136);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        v15 = 0;
        goto LABEL_12;
      }

      v8 = *(v0 + 296);
      v6 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v6)
      {
        v7 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v8 = *(v0 + 296);
LABEL_11:
  v13 = *(v0 + 184);
  v14 = *(v0 + 136);
  v15 = (v6 - 1) & v6;
  v16 = __clz(__rbit64(v6)) | (v7 << 6);
  sub_258F09514(*(v8 + 48) + *(*(v0 + 168) + 72) * v16, v13, type metadata accessor for FunnelEventMetadata);
  v17 = *(v8 + 56);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  v19 = *(v18 + 48);
  v57 = *(v17 + 16 * v16);
  sub_258F08E64(v13, v14);
  *(v14 + v19) = v57;
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  v20 = v57;

  v11 = v7;
LABEL_12:
  *(v0 + 304) = v15;
  *(v0 + 312) = v11;
  v21 = *(v0 + 144);
  sub_258F0957C(*(v0 + 136), v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD10, &qword_258F18270);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {

    v23 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258DD8000, v23, v24, "#VTEnrollmentSELFReporter: Reporter completed.", v25, 2u);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

    goto LABEL_35;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 144);
  v28 = v27 + *(v22 + 48);
  v29 = *v28;
  *(v0 + 320) = *v28;
  v11 = *(v28 + 8);
  *(v0 + 328) = v11;
  sub_258F08E64(v27, v26);
  v30 = [objc_allocWithZone(MEMORY[0x277D59488]) init];
  *(v0 + 336) = v30;
  v31 = *(v0 + 288);
  if (!v30)
  {
    v50 = sub_258F0A350();
    v51 = sub_258F0A820();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 176);
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_258DD8000, v50, v51, "#VTEnrollmentSELFReporter: Failed to generate client event", v54, 2u);
      MEMORY[0x259C9EF40](v54, -1, -1);
    }

    else
    {
    }

    sub_258EFB6EC(v53, type metadata accessor for FunnelEventMetadata);
LABEL_35:

    v55 = *(v0 + 8);

    v55();
    return;
  }

  v1 = v30;
  v33 = *(v0 + 176);
  v32 = *(v0 + 184);
  v35 = *(v0 + 120);
  v34 = *(v0 + 128);
  v36 = *(v0 + 104);
  v56 = *(v0 + 112);
  sub_258DEB8C8(0, &qword_27F98AD18, 0x277D59478);
  sub_258F09514(v33, v32, type metadata accessor for FunnelEventMetadata);
  (*(v35 + 16))(v34, v36 + v31, v56);
  v37 = sub_258F08EC8(v32, v34);
  [v1 setEventMetadata_];

  v38 = objc_allocWithZone(MEMORY[0x277D594A0]);
  v39 = v29;
  v40 = [v38 init];
  *(v0 + 344) = v40;
  if (!v40)
  {
    goto LABEL_42;
  }

  v3 = v40;
  [v40 setFixedDimensions_];

  if (v11 >> 62)
  {
LABEL_39:
    v41 = sub_258F0AA20();
    if (v41)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v41 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_20:
    if (v41 >= 1)
    {

      for (i = 0; i != v41; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x259C9E3B0](i, v11);
        }

        else
        {
          v43 = *(v11 + 8 * i + 32);
        }

        v44 = v43;
        [v3 addDigests_];
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_27:
  v45 = *(v0 + 288);
  v46 = *(v0 + 104);
  [v1 setVoiceTriggerEnrollmentFunnelReported_];
  v47 = swift_task_alloc();
  *(v0 + 352) = v47;
  *v47 = v0;
  v47[1] = sub_258F08474;

  sub_258EB747C(v1, v46 + v45);
}

uint64_t sub_258F08C80(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#VTEnrollmentSELFReporter: Unable to report ODFunnelEvent.", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[42];
  v5 = v1[43];
  v7 = v1[40];
  v8 = v1[22];

  swift_willThrow();

  sub_258EFB6EC(v8, type metadata accessor for FunnelEventMetadata);

  v9 = v1[1];

  return v9();
}

uint64_t sub_258F08E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FunnelEventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_258F08EC8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_258F09A70();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v33 - v14;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v17 = result;
    sub_258F09A60();
    v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v19 = sub_258F09A50();
    v20 = [v18 initWithNSUUID_];

    v21 = *(v8 + 8);
    v21(v15, v7);
    [v17 setOdfunnelId_];

    v22 = type metadata accessor for FunnelEventMetadata(0);
    v23 = a1 + v22[5];
    if ((*(v23 + 8) & 1) == 0)
    {
      [v17 setEventTimestampInMsSince1970_];
    }

    if (*(a1 + v22[6]))
    {
      [v17 setAggregationInterval_];
    }

    sub_258DE20C0(a1 + v22[7], v6, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_258DE2184(v6, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v24 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
      v25 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v26 = sub_258F09A50();
      v27 = [v25 initWithNSUUID_];

      [v17 setDeviceAggregationId_];
      v21(v12, v7);
    }

    v28 = a1 + v22[9];
    if (*(v28 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v29 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v17 setUserAggregationIdExpirationTimestampMs_];
    }

    v30 = a1 + v22[8];
    if (*(v30 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v31 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v17 setUserAggregationIdRotationTimestampMs_];
    }

    v32 = sub_258F0A370();
    (*(*(v32 - 8) + 8))(v34, v32);
    sub_258EFB6EC(a1, type metadata accessor for FunnelEventMetadata);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258F09384()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t VTEnrollmentSELFReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VTEnrollmentSELFReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24VTEnrollmentSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258F09514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258F0957C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98AD08, &unk_258F18260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258F095EC()
{
  result = qword_27F98AD28;
  if (!qword_27F98AD28)
  {
    type metadata accessor for FunnelEventMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98AD28);
  }

  return result;
}

uint64_t dispatch thunk of VTEnrollmentReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t type metadata accessor for VTEnrollmentSELFReporter(uint64_t a1)
{
  result = qword_27F98AD30;
  if (!qword_27F98AD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}