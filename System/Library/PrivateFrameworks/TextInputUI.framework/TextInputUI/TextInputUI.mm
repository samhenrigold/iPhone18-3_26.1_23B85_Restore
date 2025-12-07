id _TUIKeyboardTrackingLogger()
{
  if (_TUIKeyboardTrackingLogger_onceToken != -1)
  {
    dispatch_once(&_TUIKeyboardTrackingLogger_onceToken, &__block_literal_global_227);
  }

  v1 = _TUIKeyboardTrackingLogger_log;

  return v1;
}

id TUISmartReplyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TUISmartReplyLog()
{
  if (TUISmartReplyLog_onceToken != -1)
  {
    dispatch_once(&TUISmartReplyLog_onceToken, &__block_literal_global_4);
  }

  v1 = TUISmartReplyLog_log;

  return v1;
}

uint64_t __TUISmartReplyLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "SmartReply");
  v1 = TUISmartReplyLog_log;
  TUISmartReplyLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id TUISmartActionLog()
{
  if (TUISmartActionLog_onceToken != -1)
  {
    dispatch_once(&TUISmartActionLog_onceToken, &__block_literal_global_7);
  }

  v1 = TUISmartActionLog_log;

  return v1;
}

uint64_t __TUISmartActionLog_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "SmartAction");
  v1 = TUISmartActionLog_log;
  TUISmartActionLog_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _TUIKeyplaneViewLogger()
{
  if (_TUIKeyplaneViewLogger_onceToken != -1)
  {
    dispatch_once(&_TUIKeyplaneViewLogger_onceToken, &__block_literal_global_743);
  }

  v1 = _TUIKeyplaneViewLogger_log;

  return v1;
}

void __TIGetShowCrescendoBackdropValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ShowCrescendoBackdrop" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __PredictionViewAnimationFrameRateOptions_block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 maximumFramesPerSecond];

  v2 = 117440512;
  if (v1 > 60)
  {
    v2 = 150994944;
  }

  PredictionViewAnimationFrameRateOptions_frameRateOptions = v2;
}

uint64_t sub_18FFE70CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1900B1610();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18FFE70FC(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1900B1080();
  }

  else
  {
    sub_1900B1060();
  }

  return sub_1900B10A0();
}

uint64_t sub_18FFE7164(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1900B1080();
    sub_1900B10A0();
    sub_18FFEB484();
  }

  else
  {
    sub_1900B1060();
    sub_1900B10A0();
    sub_18FFEBAD8(&qword_1EAD34B88, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_18FFE7258()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7294()
{
  v1 = sub_1900B0FC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18FFE7358(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x1EEE6BDD0](v8, 32, 7);
}

uint64_t sub_18FFE7390()
{
  v1 = sub_1900B0FC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  *(v0 + 24), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18FFE7454()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18FFE74A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE74DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7518()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE764C()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE778C()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v5 + 8), v6, v7, v8, v9, v10, v11, v12;

  return MEMORY[0x1EEE6BDD0](v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE78C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE78FC()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE7A24(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x1EEE6BDD0](v8, 32, 7);
}

uint64_t sub_18FFE7A8C()
{
  swift_unknownObjectRelease();
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 40), v8, v9, v10, v11, v12, v13, v14;

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18FFE7AD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7B14(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return MEMORY[0x1EEE6BDD0](v8, 32, 7);
}

uint64_t sub_18FFE7B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD34E40, &qword_1900BF618);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18FFE7BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedTitle.setter(v1, v2);
}

uint64_t sub_18FFE7C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v1, v2);
}

uint64_t sub_18FFE7CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35190, &qword_1900C01E0);
  sub_1900B0FF0();
  sub_18FFFDF38();
  sub_18FFFE080(&qword_1EAD351C0, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18FFE7D78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351E0, &qword_1900C03A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18FFE7E34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351E0, &qword_1900C03A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18FFE7EE4(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return MEMORY[0x1EEE6BDD0](v8, 40, 7);
}

uint64_t sub_18FFE8020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35300, &qword_1900C06F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFE8090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35300, &qword_1900C06F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18FFE80F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1900B1100();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18FFE815C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE8194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35340, &qword_1900C07A8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18FFE825C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35340, &qword_1900C07A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18FFE8310()
{
  v1 = (type metadata accessor for IntelligenceLightEffect(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  *(v0 + v3 + 8), v6, v7, v8, v9, v10, v11, v12;
  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35318, &qword_1900C0738);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1900B1010();
    (*(*(v21 - 8) + 8))(v5 + v13, v21);
  }

  else
  {
    *(v5 + v13), v14, v15, v16, v17, v18, v19, v20;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18FFE84DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SmartActionGenerator.enabled.getter()
{
  v1 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SmartActionGenerator.enabled.setter(char a1)
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SmartActionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SmartActionGenerator.init()()
{
  v0[OBJC_IVAR___TUISmartActionGenerator_enabled] = 0;
  *&v0[OBJC_IVAR___TUISmartActionGenerator_textComposerClient] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *SmartActionGenerator.textComposerClient.getter()
{
  v1 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SmartActionGenerator.textComposerClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void SmartActionGenerator.generateCandidates(with:completion:)(void *a1, void (*a2)(void), objc_class *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  if (([a1 keyboardSuggestionOptions] & 1) == 0)
  {
    v11 = [a1 keyboardState];
    v12 = [v11 inputContextHistory];
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
      swift_beginAccess();
      v15 = *&v4[v14];
      if (v15)
      {
        v16 = objc_allocWithZone(MEMORY[0x1E69D9328]);
        v17 = v15;
        v18 = [v16 initWithTIInputContextHistory_];
        if (v18)
        {
          v19 = v18;
          v20 = sub_1900B1700();
          (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
          v21 = swift_allocObject();
          *v21->internalTextComposerClient = 0;
          *v21->externalTextComposerClient = 0;
          v21[1].super.isa = v17;
          *v21[1].taskCache = a1;
          *v21[1].internalTextComposerClient = v19;
          *v21[1].externalTextComposerClient = a2;
          v21[2].super.isa = a3;
          *v21[2].taskCache = v4;
          v22 = v17;
          v23 = a1;
          v24 = v19;

          v25 = v4;
          v26 = sub_18FFE9BE8(0, 0, v10, &unk_1900BF600, v21);

          v26, v27, v28, v29, v30, v31, v32, v33;
          return;
        }

        if (qword_1EAD34CB0 != -1)
        {
          swift_once();
        }

        v40 = sub_1900B0E80();
        __swift_project_value_buffer(v40, qword_1EAD379A8);
        v41 = sub_1900B0E60();
        v42 = sub_1900B1790();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_18FFDC000, v41, v42, "Failed to create valid TCInputContextHistory.", v43, 2u);
          MEMORY[0x193AE9010](v43, -1, -1);
        }

        v39 = [objc_opt_self() forSourceType_];
        a2();

        goto LABEL_15;
      }
    }

    v39 = [objc_opt_self() forSourceType_];
    a2();

LABEL_15:
    return;
  }

  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v34 = sub_1900B0E80();
  __swift_project_value_buffer(v34, qword_1EAD379A8);
  v35 = sub_1900B0E60();
  v36 = sub_1900B1790();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_18FFDC000, v35, v36, "UITextInputTraits.keyboardSuggestionOptions contains pollsDisabled, will not generate smart action.", v37, 2u);
    MEMORY[0x193AE9010](v37, -1, -1);
  }

  v44 = [objc_opt_self() forSourceType_];
  a2();
  v38 = v44;
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

uint64_t sub_18FFE8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v12;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v9 = sub_1900B0CE0();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFE8E34, 0, 0);
}

uint64_t sub_18FFE8E34()
{
  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  v0[27] = __swift_project_value_buffer(v1, qword_1EAD379A8);
  v2 = sub_1900B0E60();
  v3 = sub_1900B1790();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "Kicking off task to generate text composer short form smart response.", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v6 = [v5 nextToken];

  v7 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EE0, &qword_1900BF6D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1900BF5C0;
  sub_1900B0CB0();
  *(inited + 32) = sub_1900B0C80();
  *(inited + 72) = MEMORY[0x1E69E6810];
  *(inited + 40) = v9;
  *(inited + 48) = v6;
  *(inited + 80) = sub_1900B0C70();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E72F0];
  *(inited + 96) = v7;
  v11 = sub_18FFEB250(inited);
  v0[28] = v11;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EE8, &unk_1900BF6E0);
  swift_arrayDestroy();
  sub_1900B0CD0();

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_18FFE909C;
  v13 = v0[26];
  v15 = v0[19];
  v14 = v0[20];

  return sub_18FFF2818(v15, v14, v13, 0, 0xE000000000000000, v11);
}

uint64_t sub_18FFE909C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {

    v7 = sub_18FFE9B84;
  }

  else
  {
    v7 = sub_18FFE9248;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_18FFE9248()
{
  v1 = *(v0 + 240);
  v2 = *&v1[OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll];
  if (!v2)
  {

    if (qword_1EAD34B48 != -1)
    {
      swift_once();
    }

    v25 = qword_1EAD37958;
    v26 = [*(v0 + 160) tiInputContextHistory];
    sub_190000634(v25, v26, 0);

    v27 = sub_1900B0E60();
    v28 = sub_1900B1790();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_18FFDC000, v27, v28, "No polls payload found.", v29, 2u);
      MEMORY[0x193AE9010](v29, -1, -1);
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 168);

    v32 = [objc_opt_self() forSourceType_];
    v31();
    goto LABEL_34;
  }

  v3 = v2;
  v4 = sub_1900B0E60();
  v5 = sub_1900B1790();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Valid polls payload found.", v6, 2u);
    MEMORY[0x193AE9010](v6, -1, -1);
  }

  v7 = *&v3[OBJC_IVAR___TUISmartActionPollResponse_options];
  v8 = *(v7 + 16);
  if (v8)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1900B18F0();
    v9 = v7 + 40;
    do
    {
      v10 = objc_allocWithZone(TUISmartActionPollOption);

      v11 = sub_1900B15E0();

      [v10 initWithOption_];

      sub_1900B18D0();
      sub_1900B1900();
      sub_1900B1910();
      sub_1900B18E0();
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  v12 = *(v0 + 152);
  v13 = objc_allocWithZone(TUISmartActionPollCandidate);
  v14 = sub_1900B15E0();
  sub_18FFEB8D0(0, &qword_1EAD34EF0, off_1E72D0598);
  v15 = sub_1900B1690();
  v16 = [v13 initWithTitle:v14 options:v15];

  v17 = [v12 keyboardState];
  v18 = [v17 documentState];

  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = *(v0 + 152);

  v20 = [v18 documentIsEmpty];

  v21 = [v19 keyboardState];
  v22 = [v21 inputContextHistory];

  if (!v22)
  {
    if (!v20)
    {
      v24 = 1;
      goto LABEL_20;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_20;
  }

  v23 = [v22 mostRecentTextEntryIsByMe];

  v24 = 1;
  if (v20 && (v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v33 = *(v0 + 152);
  [v16 setShouldSuggestTitle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EF8, &qword_1900C07A0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1900BF5D0;
  *(v34 + 32) = v16;
  v35 = objc_allocWithZone(MEMORY[0x1E69D9588]);
  sub_18FFEB8D0(0, &qword_1EAD34F00, 0x1E69D95D8);
  v36 = v16;
  v37 = sub_1900B1690();

  v38 = [v35 initWithAutocorrection:0 alternateCorrections:v37];

  LODWORD(v37) = [v33 usesCandidateSelection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08, &qword_1900BF6F0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1900BF5E0;
  *(v39 + 56) = sub_18FFEB8D0(0, &qword_1EAD34F10, off_1E72D0590);
  *(v39 + 32) = v36;
  v32 = v36;
  if (v37)
  {
    v40 = sub_1900B1690();

    v41 = [objc_opt_self() setWithCandidates_];

    if (v41)
    {
      v42 = [objc_opt_self() forSourceType:objc_msgSend(*(v0 + 184) withKeyboardCandidateResultSet:{sel_candidateSourceType), v41}];
      v43 = sub_1900B0E60();
      v44 = sub_1900B1790();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Successfully created poll candidate container (for candidate selection). Calling completion handler.";
LABEL_27:
        _os_log_impl(&dword_18FFDC000, v43, v44, v46, v45, 2u);
        MEMORY[0x193AE9010](v45, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (qword_1EAD34B48 == -1)
    {
LABEL_32:
      v50 = *(v0 + 240);
      v51 = *(v0 + 184);
      v52 = *(v0 + 168);
      v53 = qword_1EAD37958;
      v54 = [*(v0 + 160) tiInputContextHistory];
      sub_190000634(v53, v54, 0);

      v41 = [objc_opt_self() forSourceType_];
      v52();

      goto LABEL_33;
    }

LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  v38 = v38;
  v47 = sub_1900B1690();

  v41 = [objc_opt_self() listWithCorrections:v38 predictions:v47];

  if (!v41)
  {
    if (qword_1EAD34B48 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v42 = [objc_opt_self() forSourceType:objc_msgSend(*(v0 + 184) withAutocorrectionList:{sel_candidateSourceType), v41}];
  v43 = sub_1900B0E60();
  v44 = sub_1900B1790();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Successfully created poll candidate container (for autocorrection). Calling completion handler.";
    goto LABEL_27;
  }

LABEL_28:
  v48 = *(v0 + 240);
  v49 = *(v0 + 168);

  v49(v42);
LABEL_33:

LABEL_34:

  v55 = *(v0 + 8);

  v55();
}

uint64_t sub_18FFE9B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFE9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC11TextInputUI28TUITextComposerClientWrapper *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - v9;
  sub_18FFEB918(a3, v43 - v9, &qword_1EAD34E28, &qword_1900BF5F0);
  v11 = sub_1900B1700();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_18FFEB858(v10);
  }

  else
  {
    sub_1900B16F0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *a5->internalTextComposerClient;
  swift_unknownObjectRetain();
  a5, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    swift_getObjectType();
    v22 = sub_1900B16B0();
    v24 = v23;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25 = sub_1900B1640();

      if (v24 | v22)
      {
        v44[0] = 0;
        v44[1] = 0;
        v26 = v44;
        v44[2] = v22;
        v44[3] = v24;
      }

      else
      {
        v26 = 0;
      }

      v43[1] = 7;
      v43[2] = v26;
      v43[3] = v25 + 1;
      v27 = swift_task_create();
      v25, v28, v29, v30, v31, v32, v33, v34;
      sub_18FFEB858(a3);

      a5, v35, v36, v37, v38, v39, v40, v41;
      return v27;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEB858(a3);
  if (v24 | v22)
  {
    v44[4] = 0;
    v44[5] = 0;
    v44[6] = v22;
    v44[7] = v24;
  }

  return swift_task_create();
}

uint64_t sub_18FFE9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC11TextInputUI28TUITextComposerClientWrapper *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - v9;
  sub_18FFEB918(a3, v43 - v9, &qword_1EAD34E28, &qword_1900BF5F0);
  v11 = sub_1900B1700();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_18FFEB858(v10);
  }

  else
  {
    sub_1900B16F0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *a5->internalTextComposerClient;
  swift_unknownObjectRetain();
  a5, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    swift_getObjectType();
    v22 = sub_1900B16B0();
    v24 = v23;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v43[0] = a2;
      v25 = sub_1900B1640();
      type metadata accessor for ShortFormSmartActionResponse();

      if (v24 | v22)
      {
        v44[0] = 0;
        v44[1] = 0;
        v26 = v44;
        v44[2] = v22;
        v44[3] = v24;
      }

      else
      {
        v26 = 0;
      }

      v43[1] = 7;
      v43[2] = v26;
      v43[3] = v25 + 1;
      v27 = swift_task_create();
      v25, v28, v29, v30, v31, v32, v33, v34;
      sub_18FFEB858(a3);

      a5, v35, v36, v37, v38, v39, v40, v41;
      return v27;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEB858(a3);
  type metadata accessor for ShortFormSmartActionResponse();
  if (v24 | v22)
  {
    v44[4] = 0;
    v44[5] = 0;
    v44[6] = v22;
    v44[7] = v24;
  }

  return swift_task_create();
}

uint64_t SmartActionGenerator.sync(to:)(void *a1)
{
  v2 = [a1 clientIdentifier];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1900B1610();
  v6 = v5;

  if (v4 == 0xD000000000000013 && 0x80000001900C1810 == v6)
  {
  }

  else
  {
    v8 = sub_1900B19A0();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = OBJC_IVAR___TUISmartActionGenerator_enabled;
      result = swift_beginAccess();
      *(v1 + v9) = 0;
      return result;
    }
  }

  v11 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  result = swift_beginAccess();
  *(v1 + v11) = 1;
  return result;
}

id SmartActionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18FFEA338()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD379A8);
  __swift_project_value_buffer(v0, qword_1EAD379A8);
  return sub_1900B0E70();
}

void *variable initialization expression of TUITextComposerClientWrapper.taskCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E30, &unk_1900BFC90);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[15] = sub_18FFEB380(MEMORY[0x1E69E7CC0]);
  v0[16] = v1;
  v0[14] = 8;
  return v0;
}

uint64_t variable initialization expression of DefaultKeyboardSettingsProvider.localizedDetail()
{
  v0 = sub_1900B0BD0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1900B15D0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1900B15C0();
  sub_1900B0B90();
  return sub_1900B1620();
}

uint64_t sub_18FFEA564(uint64_t a1, id *a2)
{
  result = sub_1900B15F0();
  *a2 = 0;
  return result;
}

uint64_t sub_18FFEA5DC(uint64_t a1, id *a2)
{
  v3 = sub_1900B1600();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18FFEA65C@<X0>(uint64_t *a2@<X8>)
{
  sub_1900B1610();
  v3 = sub_1900B15E0();

  *a2 = v3;
  return result;
}

uint64_t sub_18FFEA6A8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x193AE72C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_18FFEA6FC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x193AE72D0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_18FFEA77C(uint64_t a1)
{
  sub_18FFEBAD8(&qword_1EAD34F78, type metadata accessor for IAPayloadKey, &unk_1900BFB94);
  sub_18FFEBAD8(&qword_1EAD34F80, type metadata accessor for IAPayloadKey, &unk_1900BF990);

  return sub_1900B1980();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18FFEA870@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1900B15E0();

  *a2 = v3;
  return result;
}

uint64_t sub_18FFEA8B8(uint64_t a1)
{
  sub_18FFEBAD8(&qword_1EAD34F68, type metadata accessor for IAPayloadValue, &unk_1900BFB04);
  sub_18FFEBAD8(&qword_1EAD34F70, type metadata accessor for IAPayloadValue, &unk_1900BFAA4);

  return sub_1900B1980();
}

_DWORD *sub_18FFEA974@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_18FFEA984@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_18FFEA990(uint64_t a1)
{
  sub_18FFEBAD8(&qword_1EAD34F88, type metadata accessor for UILayoutPriority, &unk_1900BF888);
  sub_18FFEBAD8(&qword_1EAD34F90, type metadata accessor for UILayoutPriority, &unk_1900BF828);
  return sub_1900B1980();
}

uint64_t sub_18FFEAA4C()
{
  v0 = sub_1900B1610();
  v1 = MEMORY[0x193AE7210](v0);

  return v1;
}

uint64_t sub_18FFEAA88(uint64_t a1)
{
  sub_1900B1610();
  sub_1900B1650();
}

uint64_t sub_18FFEAADC(uint64_t a1)
{
  sub_1900B1610();
  sub_1900B1A00();
  sub_1900B1650();
  v1 = sub_1900B1A20();

  return v1;
}

uint64_t sub_18FFEABB0(void *a1, uint64_t *a2)
{
  v2 = sub_1900B1610();
  v4 = v3;
  if (v2 == sub_1900B1610() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1900B19A0();
  }

  return v7 & 1;
}

uint64_t sub_18FFEAC4C(uint64_t a1)
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
  v11[1] = sub_18FFEBD88;

  return sub_18FFE8D64(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_18FFEAD38(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v71 - v7;
  v9 = swift_allocObject();
  *v9->internalTextComposerClient = a3;
  _Block_copy(a3);
  if (([a1 keyboardSuggestionOptions] & 1) == 0)
  {
    v10 = [a1 keyboardState];
    v11 = [v10 inputContextHistory];
    if (v11)
    {
      v12 = v11;
      v13 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
      swift_beginAccess();
      v14 = *&a2[v13];
      if (v14)
      {
        v15 = objc_allocWithZone(MEMORY[0x1E69D9328]);
        v16 = v14;
        v17 = [v15 initWithTIInputContextHistory_];
        if (v17)
        {
          v18 = v17;
          v19 = sub_1900B1700();
          (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
          v20 = swift_allocObject();
          *v20->internalTextComposerClient = 0;
          *v20->externalTextComposerClient = 0;
          v20[1].super.isa = v16;
          *v20[1].taskCache = a1;
          *v20[1].internalTextComposerClient = v18;
          *v20[1].externalTextComposerClient = sub_18FFEB604;
          v20[2].super.isa = v9;
          *v20[2].taskCache = a2;
          v21 = v16;
          v22 = a1;
          v23 = v18;

          v24 = a2;
          v25 = sub_18FFE9BE8(0, 0, v8, &unk_1900BF6C8, v20);
          v9, v26, v27, v28, v29, v30, v31, v32;

          v25, v33, v34, v35, v36, v37, v38, v39;
          return;
        }

        if (qword_1EAD34CB0 != -1)
        {
          swift_once();
        }

        v60 = sub_1900B0E80();
        __swift_project_value_buffer(v60, qword_1EAD379A8);
        v61 = sub_1900B0E60();
        v62 = sub_1900B1790();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_18FFDC000, v61, v62, "Failed to create valid TCInputContextHistory.", v63, 2u);
          MEMORY[0x193AE9010](v63, -1, -1);
        }

        v52 = [objc_opt_self() forSourceType_];
        (a3)[2](a3, v52);
        v9, v64, v65, v66, v67, v68, v69, v70;

        goto LABEL_15;
      }
    }

    v52 = [objc_opt_self() forSourceType_];
    (a3)[2](a3, v52);
    v9, v53, v54, v55, v56, v57, v58, v59;

LABEL_15:
    return;
  }

  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v40 = sub_1900B0E80();
  __swift_project_value_buffer(v40, qword_1EAD379A8);
  v41 = sub_1900B0E60();
  v42 = sub_1900B1790();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_18FFDC000, v41, v42, "UITextInputTraits.keyboardSuggestionOptions contains pollsDisabled, will not generate smart action.", v43, 2u);
    MEMORY[0x193AE9010](v43, -1, -1);
  }

  v71 = [objc_opt_self() forSourceType_];
  (a3)[2](a3, v71);
  v9, v44, v45, v46, v47, v48, v49, v50;
  v51 = v71;
}

unint64_t sub_18FFEB250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F18, &qword_1900BF6F8);
    v3 = sub_1900B1970();
    v4 = a1 + 32;

    while (1)
    {
      sub_18FFEB918(v4, &v20, &qword_1EAD34EE8, &unk_1900BF6E0);
      v5 = v20;
      v6 = v21;
      result = sub_18FFF6638(v20, v21);
      if (v8)
      {
        break;
      }

      *(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      v9 = (*v3[1].internalTextComposerClient + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18FFEB980(&v22, (*v3[1].externalTextComposerClient + 32 * result));
      v17 = *v3->internalTextComposerClient;
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *v3->internalTextComposerClient = v19;
      v4 += 48;
      if (!--v1)
      {
        v3, v10, v11, v12, v13, v14, v15, v16;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18FFEB380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8, &qword_1900BF6D0);
    v3 = sub_1900B1970();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_18FFEB8C0(v7);
      result = sub_18FFF6638(v5, v6);
      if (v9)
      {
        break;
      }

      *(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      v16 = (*v3[1].internalTextComposerClient + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      *(*v3[1].externalTextComposerClient + 8 * result) = v7;
      v17 = *v3->internalTextComposerClient;
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *v3->internalTextComposerClient = v19;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18FFEB484()
{
  result = qword_1EAD34E38;
  if (!qword_1EAD34E38)
  {
    sub_1900B1080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34E38);
  }

  return result;
}

unint64_t sub_18FFEB50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0, &qword_1900BF6C0);
    v3 = sub_1900B1970();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_18FFF66B0(v6);
      if (v9)
      {
        break;
      }

      *(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(&v3[2].super.isa + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << result));
      *(*v3[1].internalTextComposerClient + 8 * result) = v6;
      *(*v3[1].externalTextComposerClient + 8 * result) = v7;
      v16 = *v3->internalTextComposerClient;
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *v3->internalTextComposerClient = v18;
      if (!--v1)
      {
        v3, v9, v10, v11, v12, v13, v14, v15;
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18FFEB678(uint64_t a1)
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
  v11[1] = sub_18FFEB764;

  return sub_18FFE8D64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18FFEB764()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18FFEB858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18FFEB8C0(uint64_t a1)
{
  if (a1 < 0)
  {
    return (a1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t sub_18FFEB8D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_18FFEB918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_18FFEB980(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_18FFEBA44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_18FFEBAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18FFEBD90()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD379E8);
  __swift_project_value_buffer(v0, qword_1EAD379E8);
  return sub_1900B0E70();
}

char *sub_18FFEBE90()
{
  v53 = sub_1900B17F0();
  v1 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1900B17E0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1900B1560();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_monitor;
  sub_1900B0F80();
  swift_allocObject();
  *(v0 + v5) = sub_1900B0F70();
  v50 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue;
  v49[0] = sub_18FFEE834();
  v49[4] = "e_>,N,&,Vdelegate";
  sub_1900B1550();
  v55 = MEMORY[0x1E69E7CC0];
  v49[3] = sub_18FFEE880(&qword_1ED76D568, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v49[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF0, &qword_1900BFC50);
  sub_18FFEE8C8(&qword_1ED76D570, &qword_1EAD34FF0, &qword_1900BFC50);
  sub_1900B1870();
  v6 = *MEMORY[0x1E69E8090];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v49[1] = v7;
  v9 = v52;
  v8(v52, v6, v53);
  v10 = sub_1900B1810();
  v11 = v51;
  *&v51[v50] = v10;
  v50 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_callbackQueue;
  sub_1900B1550();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1900B1870();
  v8(v9, v6, v53);
  *&v11[v50] = sub_1900B1810();
  v12 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  v13 = sub_1900B0FA0();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate] = 0;
  v14 = type metadata accessor for TUINetworkObserver(0);
  v54.receiver = v11;
  v54.super_class = v14;
  v15 = objc_msgSendSuper2(&v54, sel_init);
  v16 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_monitor;
  v17 = *&v15[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_monitor];
  v18 = swift_allocObject();
  *v18->internalTextComposerClient = v15;
  v19 = v15;

  sub_18FFE84DC(sub_18FFEE91C, v18);
  sub_1900B0F50();
  v17, v20, v21, v22, v23, v24, v25, v26;
  v18, v27, v28, v29, v30, v31, v32, v33;
  v34 = *&v15[v16];
  v35 = *&v19[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];

  v36 = v35;
  sub_1900B0F60();
  v34, v37, v38, v39, v40, v41, v42, v43;

  if (qword_1EAD34D90 != -1)
  {
    swift_once();
  }

  v44 = sub_1900B0E80();
  __swift_project_value_buffer(v44, qword_1EAD379E8);
  v45 = sub_1900B0E60();
  v46 = sub_1900B17D0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_18FFDC000, v45, v46, "Begin network observation", v47, 2u);
    MEMORY[0x193AE9010](v47, -1, -1);
  }

  return v19;
}

void sub_18FFEC3EC(void (*a1)(void), objc_class *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v36 = 2;
  v7 = *&v3[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];
  v8 = swift_allocObject();
  *v8->internalTextComposerClient = v3;
  *v8->externalTextComposerClient = a1;
  v8[1].super.isa = a2;
  *v8[1].taskCache = &v36;
  *v8[1].internalTextComposerClient = ObjectType;
  v9 = swift_allocObject();
  *v9->internalTextComposerClient = sub_18FFEE7B4;
  *v9->externalTextComposerClient = v8;
  aBlock[4] = sub_18FFEE7C4;
  v35 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18FFECB80;
  aBlock[3] = &block_descriptor_28;
  v10 = _Block_copy(aBlock);
  v11 = v35;
  v12 = v3;

  v11, v13, v14, v15, v16, v17, v18, v19;
  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();
  v9, v20, v21, v22, v23, v24, v25, v26;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v36 != 2)
    {
      a1(v36 & 1);
    }

    v8, v27, v28, v29, v30, v31, v32, v33;
  }
}

uint64_t sub_18FFEC594(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v5 = sub_1900B0FA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FB8, &qword_1900BFC28);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0, &qword_1900BFC30);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  swift_beginAccess();
  sub_18FFEE514(a1 + v18, v17);
  v19 = *(v6 + 48);
  v20 = v19(v17, 1, v5);
  sub_18FFEE584(v17, &qword_1EAD34FC0, &qword_1900BFC30);
  if (v20 != 1)
  {
    (*(v6 + 104))(v15, *MEMORY[0x1E6977D40], v5);
    (*(v6 + 56))(v15, 0, 1, v5);
    v34 = *(v43 + 48);
    sub_18FFEE514(a1 + v18, v9);
    sub_18FFEE514(v15, &v9[v34]);
    v35 = v9;
    if (v19(v9, 1, v5) == 1)
    {
      sub_18FFEE584(v15, &qword_1EAD34FC0, &qword_1900BFC30);
      if (v19(&v9[v34], 1, v5) == 1)
      {
        result = sub_18FFEE584(v9, &qword_1EAD34FC0, &qword_1900BFC30);
        v36 = 1;
LABEL_18:
        *v46 = v36 & 1;
        return result;
      }
    }

    else
    {
      v37 = v9;
      v38 = v42;
      sub_18FFEE514(v37, v42);
      if (v19((v35 + v34), 1, v5) != 1)
      {
        v39 = v41;
        (*(v6 + 32))(v41, v35 + v34, v5);
        sub_18FFEE880(&qword_1ED76D578, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
        v36 = sub_1900B15B0();
        v40 = *(v6 + 8);
        v40(v39, v5);
        sub_18FFEE584(v15, &qword_1EAD34FC0, &qword_1900BFC30);
        v40(v38, v5);
        result = sub_18FFEE584(v35, &qword_1EAD34FC0, &qword_1900BFC30);
        goto LABEL_18;
      }

      sub_18FFEE584(v15, &qword_1EAD34FC0, &qword_1900BFC30);
      (*(v6 + 8))(v38, v5);
    }

    result = sub_18FFEE584(v35, &qword_1EAD34FB8, &qword_1900BFC28);
    v36 = 0;
    goto LABEL_18;
  }

  if (qword_1EAD34D90 != -1)
  {
    swift_once();
  }

  v21 = sub_1900B0E80();
  __swift_project_value_buffer(v21, qword_1EAD379E8);
  v22 = sub_1900B0E60();
  v23 = sub_1900B17D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_18FFDC000, v22, v23, "network availability requested but still initializing, adding pending completions", v24, 2u);
    MEMORY[0x193AE9010](v24, -1, -1);
  }

  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = v44;
  *(v25 + 24) = v26;
  v27 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions;
  swift_beginAccess();
  v28 = *(a1 + v27);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_18FFEE2B8(0, v28[2] + 1, 1, v28);
    *(a1 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_18FFEE2B8((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v32 = &v28[2 * v31];
  v32[4] = sub_18FFEE7EC;
  v32[5] = v25;
  *(a1 + v27) = v28;
  return swift_endAccess();
}

uint64_t sub_18FFECC34(uint64_t a1)
{
  v141 = a1;
  v136 = sub_1900B1540();
  v127 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v137 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1900B1560();
  v126 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v139 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FB8, &qword_1900BFC28);
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v116 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0, &qword_1900BFC30);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v116 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v10);
  *&v142 = &v116 - v13;
  v130 = sub_1900B0FA0();
  v124 = *(v130 - 8);
  v14 = MEMORY[0x1EEE9AC00](v130);
  v120 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v116 - v16;
  v140 = sub_1900B0FC0();
  v17 = *(v140 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v140);
  v134 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v116 - v20;
  v22 = sub_1900B1570();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *&v1[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x1E69E8020], v22);
  v27 = v26;
  v28 = sub_1900B1580();
  (*(v23 + 8))(v25, v22);
  if (v28)
  {
    v125 = v1;
    if (qword_1EAD34D90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = sub_1900B0E80();
  v30 = __swift_project_value_buffer(v29, qword_1EAD379E8);
  v31 = v21;
  v32 = v140;
  v131 = *(v17 + 16);
  v131(v21, v141, v140);
  v121 = v30;
  v33 = sub_1900B0E60();
  v34 = sub_1900B17D0();
  v35 = os_log_type_enabled(v33, v34);
  v138 = v17;
  v133 = v18;
  v132 = v17 + 16;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v119 = v12;
    v37 = v36;
    *v36 = 67109120;
    v38 = v123;
    v117 = v34;
    sub_1900B0FB0();
    v39 = *MEMORY[0x1E6977D40];
    v40 = v124;
    v41 = *(v124 + 104);
    v116 = v31;
    v42 = v120;
    v43 = v130;
    v41(v120, v39, v130);
    v44 = sub_1900B0F90();
    v45 = *(v40 + 8);
    v45(v42, v43);
    v45(v38, v43);
    (*(v17 + 8))(v116, v140);
    *(v37 + 1) = v44 & 1;
    _os_log_impl(&dword_18FFDC000, v33, v117, "Network observer observed availability update: %{BOOL}d", v37, 8u);
    v46 = v37;
    v12 = v119;
    MEMORY[0x193AE9010](v46, -1, -1);
    v47 = v142;
  }

  else
  {
    (*(v17 + 8))(v21, v32);
    v47 = v142;
    v40 = v124;
    v43 = v130;
  }

  v48 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  v49 = v125;
  swift_beginAccess();
  v124 = v48;
  sub_18FFEE514(&v49[v48], v47);
  sub_1900B0FB0();
  v50 = v142;
  v51 = *(v40 + 56);
  v120 = (v40 + 56);
  v119 = v51;
  (v51)(v12, 0, 1, v43);
  v52 = *(v128 + 12);
  v53 = v129;
  sub_18FFEE514(v50, v129);
  sub_18FFEE514(v12, v53 + v52);
  v54 = *(v40 + 48);
  if (v54(v53, 1, v43) == 1)
  {
    sub_18FFEE584(v12, &qword_1EAD34FC0, &qword_1900BFC30);
    v55 = v130;
    sub_18FFEE584(v50, &qword_1EAD34FC0, &qword_1900BFC30);
    v56 = v54(v53 + v52, 1, v55);
    v57 = v125;
    v58 = v137;
    if (v56 == 1)
    {
      sub_18FFEE584(v53, &qword_1EAD34FC0, &qword_1900BFC30);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v55 = v43;
  v59 = v118;
  sub_18FFEE514(v53, v118);
  if (v54(v53 + v52, 1, v43) == 1)
  {
    sub_18FFEE584(v12, &qword_1EAD34FC0, &qword_1900BFC30);
    sub_18FFEE584(v142, &qword_1EAD34FC0, &qword_1900BFC30);
    (*(v40 + 8))(v59, v43);
    v57 = v125;
    v58 = v137;
LABEL_11:
    sub_18FFEE584(v53, &qword_1EAD34FB8, &qword_1900BFC28);
    v60 = v136;
LABEL_12:
    v61 = v122;
    v62 = v141;
    sub_1900B0FB0();
    (v119)(v61, 0, 1, v55);
    v63 = v124;
    swift_beginAccess();
    sub_18FFEE5E4(v61, &v57[v63]);
    swift_endAccess();
    v64 = v134;
    v65 = v140;
    v131(v134, v62, v140);
    v66 = v138;
    v67 = (*(v138 + 80) + 24) & ~*(v138 + 80);
    v68 = swift_allocObject();
    *v68->internalTextComposerClient = v57;
    (*(v66 + 32))(v68 + v67, v64, v65);
    v149 = sub_18FFEE654;
    v150 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v146 = 1107296256;
    v147 = sub_18FFEDDC8;
    v148 = &block_descriptor;
    v69 = _Block_copy(&aBlock);
    v70 = v57;
    v71 = v139;
    sub_1900B1550();
    v144 = MEMORY[0x1E69E7CC0];
    sub_18FFEE880(&qword_1EAD34FC8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FD0, &qword_1900BFC38);
    sub_18FFEE8C8(&qword_1EAD34FD8, &qword_1EAD34FD0, &qword_1900BFC38);
    sub_1900B1870();
    MEMORY[0x193AE7390](0, v71, v58, v69);
    _Block_release(v69);
    v127[1](v58, v60);
    v126[1](v71, v135);
    v150, v72, v73, v74, v75, v76, v77, v78;
    goto LABEL_13;
  }

  v111 = v53 + v52;
  v112 = v123;
  (*(v40 + 32))(v123, v111, v43);
  sub_18FFEE880(&qword_1ED76D578, MEMORY[0x1E6977D48], MEMORY[0x1E6977D50]);
  v113 = v59;
  v114 = sub_1900B15B0();
  v115 = *(v40 + 8);
  v115(v112, v43);
  sub_18FFEE584(v12, &qword_1EAD34FC0, &qword_1900BFC30);
  sub_18FFEE584(v142, &qword_1EAD34FC0, &qword_1900BFC30);
  v115(v113, v43);
  sub_18FFEE584(v53, &qword_1EAD34FC0, &qword_1900BFC30);
  v57 = v125;
  v60 = v136;
  v58 = v137;
  if ((v114 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v79 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions;
  result = swift_beginAccess();
  if (*(*&v57[v79] + 16))
  {
    v81 = sub_1900B0E60();
    v82 = sub_1900B17D0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_18FFDC000, v81, v82, "Network observer done initializing, invoking pending completions", v83, 2u);
      MEMORY[0x193AE9010](v83, -1, -1);
    }

    v84 = *&v57[v79];
    v85 = *(v84 + 16);
    if (v85)
    {
      v124 = v79;
      v130 = *&v57[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_callbackQueue];
      v129 = v138 + 32;
      v128 = &v147;
      ++v127;
      ++v126;

      v86 = 32;
      do
      {
        v87 = swift_allocObject();
        v142 = *(v84 + v86);
        *(v87 + 16) = v142;
        v88 = v134;
        v89 = v140;
        v131(v134, v141, v140);
        v90 = v138;
        v91 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v92 = swift_allocObject();
        *v92->internalTextComposerClient = sub_18FFEE718;
        *v92->externalTextComposerClient = v87;
        (*(v90 + 32))(v92 + v91, v88, v89);
        v149 = sub_18FFEE750;
        v150 = v92;
        aBlock = MEMORY[0x1E69E9820];
        v146 = 1107296256;
        v147 = sub_18FFEDDC8;
        v148 = &block_descriptor_19;
        v93 = _Block_copy(&aBlock);

        sub_1900B1550();
        v143 = MEMORY[0x1E69E7CC0];
        sub_18FFEE880(&qword_1EAD34FC8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FD0, &qword_1900BFC38);
        sub_18FFEE8C8(&qword_1EAD34FD8, &qword_1EAD34FD0, &qword_1900BFC38);
        v94 = v137;
        v95 = v136;
        v96 = v139;
        sub_1900B1870();
        MEMORY[0x193AE7390](0, v96, v94, v93);
        _Block_release(v93);
        v87, v97, v98, v99, v100, v101, v102, v103;
        (*v127)(v94, v95);
        (*v126)(v96, v135);
        v150, v104, v105, v106, v107, v108, v109, v110;
        v86 += 16;
        --v85;
      }

      while (v85);

      v57 = v125;
      v79 = v124;
    }

    *&v57[v79] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_18FFEDC50(uint64_t a1)
{
  v2 = sub_1900B0FA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate);
  if (v10)
  {
    swift_unknownObjectRetain();
    sub_1900B0FB0();
    (*(v3 + 104))(v6, *MEMORY[0x1E6977D40], v2);
    v11 = sub_1900B0F90();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v9, v2);
    [v10 didObserveNetworkAvailabilityChange_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_18FFEDDC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_18FFEDE0C(uint64_t (*a1)(void))
{
  v2 = sub_1900B0FA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1900B0FB0();
  (*(v3 + 104))(v6, *MEMORY[0x1E6977D40], v2);
  v9 = sub_1900B0F90();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  return a1(v9 & 1);
}

id sub_18FFEDF64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUINetworkObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TUINetworkObserver(uint64_t a1)
{
  result = qword_1ED76D5D8;
  if (!qword_1ED76D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18FFEE08C(uint64_t a1)
{
  sub_18FFEE154(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18FFEE154(uint64_t a1)
{
  if (!qword_1EAD34FB0)
  {
    sub_1900B0FA0();
    v1 = sub_1900B1840();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD34FB0);
    }
  }
}

char *sub_18FFEE1AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF8, &qword_1900BFC58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18FFEE2B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FE0, &qword_1900BFC40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FE8, &qword_1900BFC48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18FFEE3EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35000, &qword_1900BFC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18FFEE514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0, &qword_1900BFC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFEE584(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18FFEE5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0, &qword_1900BFC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFEE654()
{
  sub_1900B0FC0();
  v1 = *(v0 + 16);

  return sub_18FFEDC50(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_18FFEE718(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_18FFEE750()
{
  sub_1900B0FC0();
  v1 = *(v0 + 16);

  return sub_18FFEDE0C(v1);
}

unint64_t sub_18FFEE834()
{
  result = qword_1ED76D5D0;
  if (!qword_1ED76D5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED76D5D0);
  }

  return result;
}

uint64_t sub_18FFEE880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18FFEE8C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id TUITextComposerClientWrapper.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_taskCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E30, &unk_1900BFC90);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC0];
  v3[15] = sub_18FFEB380(MEMORY[0x1E69E7CC0]);
  v3[16] = v4;
  v3[14] = 8;
  *&v1[v2] = v3;
  sub_1900B0CB0();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_internalTextComposerClient] = sub_1900B0CA0();
  sub_1900B0C60();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_externalTextComposerClient] = sub_1900B0C50();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TUITextComposerClientWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18FFEEA5C()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD37990);
  __swift_project_value_buffer(v0, qword_1EAD37990);
  return sub_1900B0E70();
}

Swift::UInt __swiftcall TUITextComposerClientWrapper.generateRequestToken()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v1 = [v0 nextToken];

  return v1;
}

uint64_t sub_18FFEEB7C()
{
  result = sub_18FFEEBA0();
  qword_1EAD37980 = result;
  qword_1EAD37988 = v1;
  return result;
}

uint64_t sub_18FFEEBA0()
{
  v0 = sub_1900B15E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_18FFEE584(&v8, qword_1EAD35078, &unk_1900BFE40);
    return 0;
  }

  v2 = v1;
  v3 = sub_1900B15E0();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18FFEED14()
{
  result = sub_18FFEED38();
  byte_1EAD37978 = result & 1;
  return result;
}

uint64_t sub_18FFEED38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35070, &qword_1900BFE38);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v41 - v1;
  if (qword_1EAD34BB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD37988;
  if (!qword_1EAD37988)
  {
    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v23 = sub_1900B0E80();
    __swift_project_value_buffer(v23, qword_1EAD37990);
    v24 = sub_1900B0E60();
    v25 = sub_1900B17B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_18FFDC000, v24, v25, "Unable to find GM bundle version", v26, 2u);
      MEMORY[0x193AE9010](v26, -1, -1);
    }

    return 0;
  }

  v4 = qword_1EAD37980;
  v42[0] = qword_1EAD37980;
  v42[1] = qword_1EAD37988;
  v41[0] = 825112889;
  v41[1] = 0xE400000000000000;
  v5 = sub_1900B0BD0();
  v6 = (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_18FFF9154(v6, v7, v8);
  v9 = sub_1900B1850();
  sub_18FFEE584(v2, &qword_1EAD35070, &qword_1900BFE38);
  if (v9 >= 2)
  {
    if (v9 != -1)
    {
      type metadata accessor for ComparisonResult(0);
      v42[0] = v9;
      result = sub_1900B19B0();
      __break(1u);
      return result;
    }

    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v28 = sub_1900B0E80();
    __swift_project_value_buffer(v28, qword_1EAD37990);

    v29 = sub_1900B0E60();
    v30 = sub_1900B17D0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315138;
      v33 = sub_18FFF6090(v4, v3, v42);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_18FFDC000, v29, v30, "GM version %s does NOT support Availability API", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32, v34, v35, v36, v37, v38, v39, v40);
      MEMORY[0x193AE9010](v32, -1, -1);
      MEMORY[0x193AE9010](v31, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v10 = sub_1900B0E80();
  __swift_project_value_buffer(v10, qword_1EAD37990);

  v11 = sub_1900B0E60();
  v12 = sub_1900B17D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42[0] = v14;
    *v13 = 136315138;
    v15 = sub_18FFF6090(v4, v3, v42);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_18FFDC000, v11, v12, "GM version %s supports Availability API", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14, v16, v17, v18, v19, v20, v21, v22);
    MEMORY[0x193AE9010](v14, -1, -1);
    MEMORY[0x193AE9010](v13, -1, -1);
  }

  else
  {
  }

  return 1;
}

void TUITextComposerClientWrapper.requestSmartRepliesWithContext(_:inputContextHistory:conversationType:smartReplyType:candidateString:options:completion:)(char *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(void), void (*a9)(void))
{
  v161 = a7;
  v160 = a6;
  v159 = a5;
  v172 = a4;
  v173 = a1;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v157 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35020, &qword_1900BFCA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v157 - v16;
  v18 = sub_1900B0CE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v168 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v157 - v22;
  v23 = [a2 tiInputContextHistory];
  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 threadIdentifier];

  v167 = v14;
  v164 = a2;
  if (v25)
  {
    v169 = sub_1900B1610();
    v170 = v26;
  }

  else
  {
    v169 = 0;
    v170 = 0xE000000000000000;
  }

  v27 = [v173 keyboardState];
  v28 = [v27 clientIdentifier];

  if (!v28)
  {
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_10;
  }

  v29 = sub_1900B1610();
  v31 = v30;

  if (v29 != 0xD000000000000013 || 0x80000001900C1810 != v31)
  {
LABEL_10:
    if (sub_1900B19A0())
    {
LABEL_11:
      v32 = 1;
      goto LABEL_16;
    }

    v33 = 0xD000000000000014;
    if (v29 == 0xD000000000000014 && 0x80000001900C1B60 == v31)
    {
      v32 = 1;
    }

    else
    {
      if (sub_1900B19A0())
      {
        goto LABEL_11;
      }

      v33 = 0x6C7070612E6D6F63;
      if (v29 != 0x6C7070612E6D6F63 || v31 != 0xEE006C69616D2E65)
      {
        v32 = sub_1900B19A0();
        goto LABEL_16;
      }

      v32 = 1;
      v31 = 0xEE006C69616D2E65;
    }

    v29 = v33;
    goto LABEL_16;
  }

  v32 = 1;
  v29 = 0xD000000000000013;
LABEL_16:
  v171 = a9;
  if (!a3)
  {
    v163 = a8;
    sub_1900B0CD0();
LABEL_20:
    (*(v19 + 56))(v17, 0, 1, v18);
    v34 = *(v19 + 32);
    v34(v174, v17, v18);
    v162 = v19;
    if (v172 == 1)
    {

      if (v32)
      {
        v89 = sub_1900B1700();
        (*(*(v89 - 8) + 56))(v167, 1, 1, v89);
        (*(v19 + 16))(v168, v174, v18);
        v90 = v18;
        v91 = (*(v19 + 80) + 48) & ~*(v19 + 80);
        v92 = (v20 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
        v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF8;
        v173 = ((v93 + 23) & 0xFFFFFFFFFFFFFFF8);
        v94 = (v173 + 15) & 0xFFFFFFFFFFFFFFF8;
        v172 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
        v95 = swift_allocObject();
        *v95->internalTextComposerClient = 0;
        *v95->externalTextComposerClient = 0;
        v96 = v166;
        v97 = v164;
        v95[1].super.isa = v166;
        *v95[1].taskCache = v97;
        v34(v95 + v91, v168, v90);
        v98 = (v95 + v92);
        v99 = v160;
        *v98 = v159;
        v98[1] = v99;
        v100 = (v95 + v93);
        v101 = v170;
        *v100 = v169;
        v100[1] = v101;
        *&v173[v95] = 1;
        v102 = (v95 + v94);
        v103 = v171;
        *v102 = v163;
        v102[1] = v103;
        *(&v95->super.isa + v172) = ObjectType;
        v104 = v96;
        v105 = v97;

        v106 = sub_18FFF0BDC(0, 0, v167, &unk_1900BFCB0, v95);
        v106, v107, v108, v109, v110, v111, v112, v113;
        (*(v162 + 8))(v174, v90);
        return;
      }
    }

    else
    {
      if (!v172)
      {
        if (v32)
        {

          v35 = sub_1900B1700();
          (*(*(v35 - 8) + 56))(v167, 1, 1, v35);
          (*(v19 + 16))(v168, v174, v18);
          v36 = (*(v19 + 80) + 56) & ~*(v19 + 80);
          v37 = (v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
          v172 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
          v38 = (v172 + 15) & 0xFFFFFFFFFFFFFFF8;
          v160 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v160 + 15) & 0xFFFFFFFFFFFFFFF8;
          v39 = swift_allocObject();
          *v39->internalTextComposerClient = 0;
          *v39->externalTextComposerClient = 0;
          v40 = v166;
          v41 = v173;
          v39[1].super.isa = v166;
          *v39[1].taskCache = v41;
          v42 = v164;
          *v39[1].internalTextComposerClient = v164;
          v34(v39 + v36, v168, v18);
          v43 = (v39 + v37);
          v44 = v170;
          *v43 = v169;
          v43[1] = v44;
          *(&v39->super.isa + v172) = v161;
          v45 = (v39 + v38);
          v46 = v171;
          *v45 = v163;
          v45[1] = v46;
          *(&v39->super.isa + v160) = 0;
          *(&v39->super.isa + v159) = ObjectType;
          v47 = v40;
          v48 = v41;
          v49 = v42;

          v50 = sub_18FFF0BDC(0, 0, v167, &unk_1900BFCD0, v39);
          v50, v51, v52, v53, v54, v55, v56, v57;
          (*(v162 + 8))(v174, v18);
          return;
        }

        v133 = sub_1900B1700();
        (*(*(v133 - 8) + 56))(v167, 1, 1, v133);
        (*(v19 + 16))(v168, v174, v18);
        v134 = *(v19 + 80);
        v172 = v18;
        v135 = (v134 + 72) & ~v134;
        v160 = (v20 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
        v136 = (v160 + 15) & 0xFFFFFFFFFFFFFFF8;
        v159 = (v136 + 23) & 0xFFFFFFFFFFFFFFF8;
        v137 = (v159 + 15) & 0xFFFFFFFFFFFFFFF8;
        v158 = (v137 + 23) & 0xFFFFFFFFFFFFFFF8;
        v138 = swift_allocObject();
        *v138->internalTextComposerClient = 0;
        *v138->externalTextComposerClient = 0;
        v139 = v166;
        v140 = v173;
        v138[1].super.isa = v166;
        *v138[1].taskCache = v140;
        *v138[1].internalTextComposerClient = v29;
        *v138[1].externalTextComposerClient = v31;
        v141 = v164;
        v138[2].super.isa = v164;
        v34(v138 + v135, v168, v172);
        *(&v138->super.isa + v160) = v161;
        v142 = (v138 + v136);
        v143 = v170;
        *v142 = v169;
        v142[1] = v143;
        *(&v138->super.isa + v159) = 0;
        v144 = (v138 + v137);
        v145 = v171;
        *v144 = v163;
        v144[1] = v145;
        *(&v138->super.isa + v158) = ObjectType;
        v146 = v139;
        v147 = v140;
        v148 = v141;

        v149 = sub_18FFF0BDC(0, 0, v167, &unk_1900BFCC0, v138);
        v149, v150, v151, v152, v153, v154, v155, v156;
        goto LABEL_42;
      }
    }

    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v172 = v18;
    v114 = sub_1900B0E80();
    __swift_project_value_buffer(v114, qword_1EAD37990);
    v115 = sub_1900B0E60();
    v116 = sub_1900B17B0();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&dword_18FFDC000, v115, v116, "Unsupported SR request for client", v117, 2u);
      MEMORY[0x193AE9010](v117, -1, -1);
    }

    v118 = type metadata accessor for TUISmartReplyResponse();
    v119 = objc_allocWithZone(v118);
    v120 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v121 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v122 = &v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v122 = 0;
    *(v122 + 1) = 0;
    v123 = &v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v123 = 0;
    *(v123 + 1) = 0;
    v124 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v125 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v126 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v119[v120] = 0;
    swift_beginAccess();
    *&v119[v121] = 0;
    v127 = &v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    v128 = v170;
    *v127 = v169;
    v127[1] = v128;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = 1;
    *&v119[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v122 = 0;
    *(v122 + 1) = 0;

    swift_beginAccess();
    *v123 = 0;
    *(v123 + 1) = 0;

    swift_beginAccess();
    v129 = *&v119[v124];
    *&v119[v124] = 0;

    swift_beginAccess();
    v130 = *&v119[v125];
    *&v119[v125] = 0;

    swift_beginAccess();
    v131 = *&v119[v126];
    *&v119[v126] = 0;

    v175.receiver = v119;
    v175.super_class = v118;
    v132 = objc_msgSendSuper2(&v175, sel_init);
    v163();

LABEL_42:
    (*(v162 + 8))(v174, v172);
    return;
  }

  if (a3 == 1)
  {
    v163 = a8;
    sub_1900B0CC0();
    goto LABEL_20;
  }

  (*(v19 + 56))(v17, 1, 1, v18);
  sub_18FFEE584(v17, &qword_1EAD35020, &qword_1900BFCA0);
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v58 = a8;
  v59 = sub_1900B0E80();
  __swift_project_value_buffer(v59, qword_1EAD37990);
  v60 = sub_1900B0E60();
  v61 = sub_1900B17B0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v178 = v63;
    *v62 = 136315138;
    v177 = a3;
    type metadata accessor for TUISmartReplyConversationType(0);
    v64 = sub_1900B1630();
    v66 = sub_18FFF6090(v64, v65, &v178);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_18FFDC000, v60, v61, "Unsupported smart reply conversation type %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63, v67, v68, v69, v70, v71, v72, v73);
    MEMORY[0x193AE9010](v63, -1, -1);
    MEMORY[0x193AE9010](v62, -1, -1);
  }

  v74 = type metadata accessor for TUISmartReplyResponse();
  v75 = objc_allocWithZone(v74);
  v76 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v77 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v78 = &v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v78 = 0;
  *(v78 + 1) = 0;
  v79 = &v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v79 = 0;
  *(v79 + 1) = 0;
  v80 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v81 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v82 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v75[v76] = 0;
  swift_beginAccess();
  *&v75[v77] = 0;
  v83 = &v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  v84 = v170;
  *v83 = v169;
  v83[1] = v84;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v172;
  *&v75[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v78 = 0;
  *(v78 + 1) = 0;

  swift_beginAccess();
  *v79 = 0;
  *(v79 + 1) = 0;

  swift_beginAccess();
  v85 = *&v75[v80];
  *&v75[v80] = 0;

  swift_beginAccess();
  v86 = *&v75[v81];
  *&v75[v81] = 0;

  swift_beginAccess();
  v87 = *&v75[v82];
  *&v75[v82] = 0;

  v176.receiver = v75;
  v176.super_class = v74;
  v88 = objc_msgSendSuper2(&v176, sel_init);
  v58();
}

uint64_t TUISmartReplyConversationType.documentFormatEquivalent.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    sub_1900B0CD0();
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_1900B0CC0();
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 1;
LABEL_7:
  v4 = sub_1900B0CE0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_18FFF0390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v19;
  *(v8 + 400) = v18;
  *(v8 + 384) = a8;
  *(v8 + 392) = v16;
  v13 = swift_task_alloc();
  *(v8 + 424) = v13;
  *v13 = v8;
  v13[1] = sub_18FFF0480;

  return sub_18FFF2818(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_18FFF0480(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = sub_18FFF082C;
  }

  else
  {
    *(v4 + 440) = a1;
    v5 = sub_18FFF05A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF05A8()
{
  v1 = *(v0 + 440);
  v2 = *&v1[OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply];
  v3 = v2;

  if (v2)
  {
    (*(v0 + 400))(v3);
  }

  else
  {
    v4 = *(v0 + 392);
    v22 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = *(v0 + 416);
    v21 = type metadata accessor for TUISmartReplyResponse();
    v5 = objc_allocWithZone(v21);
    v6 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v7 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v8 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v8 = 0;
    *(v8 + 1) = 0;
    v9 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v9 = 0;
    *(v9 + 1) = 0;
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v11 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v5[v6] = 0;
    swift_beginAccess();
    *&v5[v7] = 0;
    v13 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v13 = v19;
    *(v13 + 1) = v4;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v20;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v8 = 0;
    *(v8 + 1) = 0;

    swift_beginAccess();
    *v9 = 0;
    *(v9 + 1) = 0;

    swift_beginAccess();
    v14 = *&v5[v10];
    *&v5[v10] = 0;

    swift_beginAccess();
    v15 = *&v5[v11];
    *&v5[v11] = 0;

    swift_beginAccess();
    v16 = *&v5[v12];
    *&v5[v12] = 0;

    *(v0 + 368) = v5;
    *(v0 + 376) = v21;
    v3 = objc_msgSendSuper2((v0 + 368), sel_init);
    v22(v3);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_18FFF082C()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  receiver = v0[27].receiver;
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = receiver;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27].receiver;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught short form generation error: %@ for internal client.", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060, &unk_1900BFDF8);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = v0[27].receiver;
  v33 = v0[25].receiver;
  super_class = v0[24].super_class;
  v30 = v0[26].receiver;
  v28 = v0[24].receiver;

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  *(v20 + 1) = super_class;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  v0[22].receiver = v12;
  v0[22].super_class = v31;
  v25 = objc_msgSendSuper2(v0 + 22, sel_init);

  v33(v25);
  v26 = v0->super_class;

  return v26();
}

uint64_t sub_18FFF0BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC11TextInputUI28TUITextComposerClientWrapper *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v46 - v10;
  sub_18FFF8FD0(a3, v46 - v10);
  v12 = sub_1900B1700();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_18FFEE584(v11, &qword_1EAD34E28, &qword_1900BF5F0);
  }

  else
  {
    sub_1900B16F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *a5->internalTextComposerClient;
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (v15)
  {
    swift_getObjectType();
    v23 = sub_1900B16B0();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1900B1640();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;

      if (v25 | v23)
      {
        v47[0] = 0;
        v47[1] = 0;
        v28 = v47;
        v47[2] = v23;
        v47[3] = v25;
      }

      else
      {
        v28 = 0;
      }

      v46[1] = 7;
      v46[2] = v28;
      v46[3] = v26 + 1;
      v30 = swift_task_create();
      v26, v31, v32, v33, v34, v35, v36, v37;
      sub_18FFEE584(a3, &qword_1EAD34E28, &qword_1900BF5F0);

      a5, v38, v39, v40, v41, v42, v43, v44;
      return v30;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEE584(a3, &qword_1EAD34E28, &qword_1900BF5F0);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  if (v25 | v23)
  {
    v47[4] = 0;
    v47[5] = 0;
    v47[6] = v23;
    v47[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_18FFF0ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 600) = v18;
  *(v8 + 584) = v17;
  *(v8 + 568) = v16;
  v12 = swift_task_alloc();
  *(v8 + 608) = v12;
  *v12 = v8;
  v12[1] = sub_18FFF0FB0;

  return sub_18FFF8794(a6, a7, a8, v15);
}

uint64_t sub_18FFF0FB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[77] = a1;
  v4[78] = a2;
  v4[79] = v2;

  if (v2)
  {
    v5 = sub_18FFF15C8;
  }

  else
  {
    v5 = sub_18FFF10CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF10CC()
{
  v1 = *(v0 + 616);
  if (v1)
  {
    v2 = *(v0 + 624);
    v54 = *(v0 + 592);
    v42 = *(v0 + 584);
    v39 = *(v0 + 568);
    v40 = *(v0 + 576);
    v41 = sub_18FFFFED4(v2);
    v3 = sub_18FFF91B0(v2);
    v43 = v4;
    v44 = v3;
    v5 = sub_18FFF94D8(v2);
    v45 = v6;
    v46 = v5;
    v47 = sub_18FFF958C(v2);
    v48 = sub_18FFF9658(v2);
    v52 = sub_18FFF9664(v2);

    v50 = type metadata accessor for TUISmartReplyResponse();
    v7 = objc_allocWithZone(v50);
    v8 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v10 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v10 = 0;
    v10[1] = 0;
    v11 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v11 = 0;
    v11[1] = 0;
    v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v7[v8] = v1;
    swift_beginAccess();
    *&v7[v9] = 0;
    v15 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v15 = v39;
    *(v15 + 1) = v40;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v42;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v41;
    swift_beginAccess();
    *v10 = v44;
    v10[1] = v43;

    v16 = v1;

    swift_beginAccess();
    *v11 = v46;
    v11[1] = v45;

    swift_beginAccess();
    v17 = *&v7[v12];
    *&v7[v12] = v47;
    v18 = v47;

    swift_beginAccess();
    v19 = *&v7[v13];
    *&v7[v13] = v48;
    v20 = v48;

    swift_beginAccess();
    v21 = *&v7[v14];
    *&v7[v14] = v52;
    v22 = v52;

    *(v0 + 552) = v7;
    *(v0 + 560) = v50;
    v23 = objc_msgSendSuper2((v0 + 552), sel_init);

    v54(v23);
  }

  else
  {
    v55 = *(v0 + 592);
    v24 = *(v0 + 576);
    v49 = *(v0 + 568);
    v51 = *(v0 + 584);
    v53 = type metadata accessor for TUISmartReplyResponse();
    v25 = objc_allocWithZone(v53);
    v26 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v27 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v28 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v29 = 0;
    *(v29 + 1) = 0;
    v30 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v31 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v32 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v25[v26] = 0;
    swift_beginAccess();
    *&v25[v27] = 0;
    v33 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v33 = v49;
    *(v33 + 1) = v24;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v51;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v28 = 0;
    *(v28 + 1) = 0;

    swift_beginAccess();
    *v29 = 0;
    *(v29 + 1) = 0;

    swift_beginAccess();
    v34 = *&v25[v30];
    *&v25[v30] = 0;

    swift_beginAccess();
    v35 = *&v25[v31];
    *&v25[v31] = 0;

    swift_beginAccess();
    v36 = *&v25[v32];
    *&v25[v32] = 0;

    *(v0 + 536) = v25;
    *(v0 + 544) = v53;
    v16 = objc_msgSendSuper2((v0 + 536), sel_init);
    v55();
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_18FFF15C8()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 632);
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = v1;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 632);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught short form generation error: %@ for internal client.", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060, &unk_1900BFDF8);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = *(v0 + 632);
  v33 = *(v0 + 592);
  v29 = *(v0 + 576);
  v30 = *(v0 + 584);
  v28 = *(v0 + 568);

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  *(v20 + 1) = v29;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  *(v0 + 520) = v12;
  *(v0 + 528) = v31;
  v25 = objc_msgSendSuper2((v0 + 520), sel_init);

  v33(v25);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_18FFF1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 456) = v12;
  *(v8 + 440) = v11;
  *(v8 + 424) = v10;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 384) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18FFF19CC, 0, 0);
}

uint64_t sub_18FFF19CC()
{
  v7 = (*MEMORY[0x1E69D92D8] + MEMORY[0x1E69D92D8]);
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_18FFF1A8C;
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];

  return v7(v5, v4, v2, v3, 0);
}

uint64_t sub_18FFF1A8C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v7 = sub_18FFF1EBC;
  }

  else
  {
    *(v6 + 480) = a2;
    *(v6 + 488) = a1;
    v7 = sub_18FFF1BC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18FFF1BC0()
{
  receiver = v0[30].receiver;
  super_class = v0[30].super_class;
  v38 = v0[28].receiver;
  v29 = v0[27].super_class;
  v26 = v0[26].super_class;
  v27 = v0[27].receiver;
  v28 = sub_18FFFFED4(receiver);
  v3 = sub_18FFF91B0(receiver);
  v30 = v4;
  v31 = v3;
  v5 = sub_18FFF94D8(receiver);
  v32 = v6;
  v33 = v5;
  v34 = sub_18FFF958C(receiver);
  v35 = sub_18FFF9658(receiver);
  v37 = sub_18FFF9664(receiver);

  v36 = type metadata accessor for TUISmartReplyResponse();
  v7 = objc_allocWithZone(v36);
  v8 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v10 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v7[v8] = super_class;
  swift_beginAccess();
  *&v7[v9] = 0;
  v15 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v15 = v26;
  v15[1] = v27;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v29;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v28;
  swift_beginAccess();
  *v10 = v31;
  v10[1] = v30;
  v16 = super_class;

  swift_beginAccess();
  *v11 = v33;
  v11[1] = v32;

  swift_beginAccess();
  v17 = *&v7[v12];
  *&v7[v12] = v34;
  v18 = v34;

  swift_beginAccess();
  v19 = *&v7[v13];
  *&v7[v13] = v35;
  v20 = v35;

  swift_beginAccess();
  v21 = *&v7[v14];
  *&v7[v14] = v37;
  v22 = v37;

  v0[23].receiver = v7;
  v0[23].super_class = v36;
  v23 = objc_msgSendSuper2(v0 + 23, sel_init);

  v38(v23);
  v24 = v0->super_class;

  return v24();
}

uint64_t sub_18FFF1EBC()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  super_class = v0[29].super_class;
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = super_class;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29].super_class;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught long form generation error: %@", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060, &unk_1900BFDF8);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = v0[29].super_class;
  receiver = v0[28].receiver;
  v29 = v0[27].receiver;
  v30 = v0[27].super_class;
  v28 = v0[26].super_class;

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  v20[1] = v29;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  v0[22].receiver = v12;
  v0[22].super_class = v31;
  v25 = objc_msgSendSuper2(v0 + 22, sel_init);

  receiver(v25);
  v26 = v0->super_class;

  return v26();
}

uint64_t TUITextComposerClientWrapper.requestShortFormSmartResponseGeneration(context:inputContextHistory:documentFormat:threadIdentifier:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18FFF2484;

  return sub_18FFF2818(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18FFF2484(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

Swift::Void __swiftcall TUITextComposerClientWrapper.cancelRequest(token:forClient:)(Swift::UInt token, Swift::String forClient)
{
  object = forClient._object;
  countAndFlagsBits = forClient._countAndFlagsBits;
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v5 = sub_1900B0E80();
  __swift_project_value_buffer(v5, qword_1EAD37990);
  v6 = sub_1900B0E60();
  v7 = sub_1900B17D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = token;
    _os_log_impl(&dword_18FFDC000, v6, v7, "Cancelling request: %lu", v8, 0xCu);
    MEMORY[0x193AE9010](v8, -1, -1);
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x80000001900C1810 == object || (sub_1900B19A0() & 1) != 0 || countAndFlagsBits == 0xD000000000000014 && 0x80000001900C1B60 == object || (sub_1900B19A0() & 1) != 0 || countAndFlagsBits == 0x6C7070612E6D6F63 && object == 0xEE006C69616D2E65 || (sub_1900B19A0() & 1) != 0)
  {
    sub_1900B0C90();
  }

  else if ((token & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1900B0C40();
  }
}

uint64_t sub_18FFF2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = swift_getObjectType();
  v8 = sub_1900B0CE0();
  v7[19] = v8;
  v9 = *(v8 - 8);
  v7[20] = v9;
  v7[21] = *(v9 + 64);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFF2930, 0, 0);
}

uint64_t sub_18FFF2930()
{
  v20 = v0;
  v1 = [*(v0 + 88) requestToken];
  v2 = [v1 shortIdentifier];

  v3 = sub_1900B1610();
  v5 = v4;

  *(v0 + 192) = v3;
  *(v0 + 200) = v5;
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1900B0E80();
  *(v0 + 208) = __swift_project_value_buffer(v6, qword_1EAD37990);

  v7 = sub_1900B0E60();
  v8 = sub_1900B17D0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_18FFF6090(v3, v5, &v19);
    _os_log_impl(&dword_18FFDC000, v7, v8, ">>>> performShortFormSmartResponseGeneration_async called for id: [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10, v11, v12, v13, v14, v15, v16, v17);
    MEMORY[0x193AE9010](v10, -1, -1);
    MEMORY[0x193AE9010](v9, -1, -1);
  }

  *(v0 + 216) = *(*(v0 + 136) + OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_taskCache);

  return MEMORY[0x1EEE6DFA0](sub_18FFF2B18);
}

uint64_t sub_18FFF2B18()
{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = v0[24];
    v3 = v0[25];

    v5 = sub_18FFF6638(v4, v3);
    if (v6)
    {
      v8 = v0[24];
      v7 = v0[25];
      v9 = *(*(v2 + 56) + 8 * v5);
      v0[28] = v9;
      sub_18FFEB8C0(v9);

      sub_18FFF5D50(v8, v7);
      v10 = sub_18FFF2C08;
      goto LABEL_6;
    }
  }

  v10 = sub_18FFF2FC8;
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18FFF2C08()
{
  v1 = v0[28];

  v2 = v0[28];
  if (v1 < 0)
  {
    v10 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = sub_1900B0E60();
    v12 = sub_1900B17D0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[28];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18FFDC000, v11, v12, ">>>> found payload in cache and complete", v15, 2u);
      MEMORY[0x193AE9010](v15, -1, -1);
    }

    sub_18FFF8770(v14, v16, v17, v18, v19, v20, v21, v22);

    v23 = v0[1];

    return v23(v10);
  }

  else
  {
    v3 = sub_1900B0E60();
    v4 = sub_1900B17D0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> found in-progress in cache. awaiting value.", v5, 2u);
      MEMORY[0x193AE9010](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    v0[29] = v6;
    v7 = type metadata accessor for ShortFormSmartActionResponse();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35058, &qword_1900BFDF0);
    *v6 = v0;
    v6[1] = sub_18FFF2E38;
    v9 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 10, v2, v7, v8, v9);
  }
}

uint64_t sub_18FFF2E38()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_18FFF39BC;
  }

  else
  {
    v2 = sub_18FFF2F4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18FFF2F4C(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  sub_18FFF8770(*(v8 + 224), a2, a3, a4, a5, a6, a7, a8);
  v9 = *(v8 + 80);

  v10 = *(v8 + 8);

  return v10(v9);
}

uint64_t sub_18FFF2FC8()
{
  v57 = v0;

  v1 = sub_1900B0E60();
  v2 = sub_1900B17D0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v55 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_18FFF6090(v4, v3, &v55);
    _os_log_impl(&dword_18FFDC000, v1, v2, ">>>> did not find cached value for id: [%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6, v7, v8, v9, v10, v11, v12, v13);
    MEMORY[0x193AE9010](v6, -1, -1);
    MEMORY[0x193AE9010](v5, -1, -1);
  }

  v14 = [*(v0 + 88) keyboardState];
  v15 = [v14 documentState];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = [v15 contextBeforeInput];
  if (!v16)
  {

LABEL_7:
    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_1900B1610();
  v20 = v19;

LABEL_8:
  if ([*(v0 + 88) usesCandidateSelection] && (v21 = objc_msgSend(*(v0 + 88), sel_keyboardState), v22 = objc_msgSend(v21, sel_inputForMarkedText), v21, v22))
  {
    v23 = sub_1900B1610();
    v25 = v24;

    v55 = v18;
    v56 = v20;
    MEMORY[0x193AE71F0](v23, v25);

    v53 = v56;
    v54 = v55;
  }

  else
  {
    v53 = v20;
    v54 = v18;
  }

  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v51 = v27;
  v52 = *(v0 + 216);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v45 = v30;
  v46 = v26;
  v31 = *(v0 + 136);
  v49 = *(v0 + 128);
  v50 = *(v0 + 144);
  v47 = *(v0 + 112);
  v48 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = sub_1900B1700();
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  (*(v28 + 16))(v26, v33, v30);
  v35 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v36 = (v29 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *v39->internalTextComposerClient = 0;
  *v39->externalTextComposerClient = 0;
  v39[1].super.isa = v31;
  *v39[1].taskCache = v32;
  (*(v28 + 32))(v39 + v35, v46, v45);
  v40 = (v39 + v36);
  *v40 = v54;
  v40[1] = v53;
  v41 = (&v39->super.isa + v37);
  *v41 = v47;
  v41[1] = v48;
  *(&v39->super.isa + v38) = v49;
  *(&v39->super.isa + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;

  v42 = v31;
  v43 = v32;

  *(v0 + 248) = sub_18FFE9E64(0, 0, v51, &unk_1900BFDE8, v39);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3378, v52, 0);
}

uint64_t sub_18FFF33A4()
{
  v23 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_1900B0E60();
  v4 = sub_1900B17D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_18FFF6090(v7, v6, &v22);
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> %@ adding in-progress task with id:[%s] to cache. cache size before addition is: %ld", v9, 0x20u);
    sub_18FFEE584(v10, &qword_1EAD35060, &unk_1900BFDF8);
    MEMORY[0x193AE9010](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11, v13, v14, v15, v16, v17, v18, v19);
    MEMORY[0x193AE9010](v11, -1, -1);
    MEMORY[0x193AE9010](v9, -1, -1);
  }

  v20 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_18FFF3570, v20, 0);
}

uint64_t sub_18FFF3570()
{
  v1 = v0[31];
  sub_18FFF5908(v0[24], v0[25], v1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x1EEE6DFA0](sub_18FFF35EC, 0, 0);
}

uint64_t sub_18FFF35EC(uint64_t a1)
{
  v2 = sub_1900B0E60();
  v3 = sub_1900B17D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, ">>>> awaiting payload value.", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 264) = v5;
  v6 = type metadata accessor for ShortFormSmartActionResponse();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35058, &qword_1900BFDF0);
  *v5 = v1;
  v5[1] = sub_18FFF372C;
  v8 = *(v1 + 248);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 64, v8, v6, v7, v9);
}

uint64_t sub_18FFF372C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_18FFF3A30;
  }

  else
  {
    v2 = sub_18FFF3840;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18FFF3840()
{
  v1 = v0[27];
  v2 = v0[8];
  v0[35] = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_18FFF38B4, v1, 0);
}

uint64_t sub_18FFF38B4()
{
  v1 = v0[35];
  sub_18FFF5908(v0[24], v0[25], v1 | 0x8000000000000000);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3940, 0, 0);
}

uint64_t sub_18FFF3940(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 280);

  v10 = *(v8 + 8);

  return v10(v9);
}

uint64_t sub_18FFF39BC(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  sub_18FFF8770(*(v8 + 224), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_18FFF3A30()
{
  v20 = v0;
  v1 = *(v0 + 272);
  v2 = v1;
  v3 = sub_1900B0E60();
  v4 = sub_1900B17D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1900B19D0();
    v9 = sub_18FFF6090(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> error thrown. %s, removing requestTokenID from from taskCache.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6, v10, v11, v12, v13, v14, v15, v16);
    MEMORY[0x193AE9010](v6, -1, -1);
    MEMORY[0x193AE9010](v5, -1, -1);
  }

  v17 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3B9C, v17, 0);
}

uint64_t sub_18FFF3B9C()
{
  sub_18FFF5BB8(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x1EEE6DFA0](sub_18FFF3C14, 0, 0);
}

uint64_t sub_18FFF3C14()
{
  v1 = *(v0 + 248);
  swift_willThrow();
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_18FFF3C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  v9 = sub_1900B0D00();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFF3D78, 0, 0);
}

uint64_t sub_18FFF3D78()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_1EAD37990);
  v2 = sub_1900B0E60();
  v3 = sub_1900B17D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "performShortFormSmartResponseGeneration", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  if (qword_1EAD34B50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD37960;
  v6 = [*(v0 + 48) tiInputContextHistory];
  sub_190000634(v5, v6, 0);

  sub_1900B0CF0();
  v15 = (*MEMORY[0x1E69D92F0] + MEMORY[0x1E69D92F0]);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_18FFF3F78;
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);

  return v15(v13, 0, 0xE000000000000000, v12, v8, v10, v11, v9);
}

uint64_t sub_18FFF3F78(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = v2;

  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[13];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);

    return MEMORY[0x1EEE6DFA0](sub_18FFF42F0, 0, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v5[21] = v10;
    *v10 = v6;
    v10[1] = sub_18FFF4170;
    v11 = v5[12];
    v12 = v5[8];
    v13 = v5[9];
    v14 = v5[6];
    v15 = v5[7];

    return sub_18FFF474C(a1, v14, v15, v12, v13, v11);
  }
}

uint64_t sub_18FFF4170(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_18FFF46E0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[24] = v4;
    *v4 = v3;
    v4[1] = sub_18FFF4354;
    v5 = v3[19];
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[18];

    return sub_18FFF8BEC(v8, v5, v6, v7, 0);
  }
}

uint64_t sub_18FFF42F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF4354(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    v5 = sub_18FFF466C;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_18FFF4484;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF4484()
{
  receiver = v0[13].receiver;
  v2 = v0[11].receiver;
  v3 = v0[9].receiver;
  super_class = v0[9].super_class;
  v5 = [v0[3].receiver tiInputContextHistory];
  sub_1900008BC(v5, v3);

  v6 = type metadata accessor for ShortFormSmartActionResponse();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply] = receiver;
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll] = v2;
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_outputOptions] = super_class;
  v0[1].receiver = v7;
  v0[1].super_class = v6;
  v8 = receiver;
  v9 = v2;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);

  v11 = v10;
  v12 = sub_1900B0E60();
  v13 = sub_1900B17D0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_18FFDC000, v12, v13, "Created payload: %@", v14, 0xCu);
    sub_18FFEE584(v15, &qword_1EAD35060, &unk_1900BFDF8);
    MEMORY[0x193AE9010](v15, -1, -1);
    MEMORY[0x193AE9010](v14, -1, -1);
  }

  v17 = v0[2].receiver;

  *v17 = v11;

  v18 = v0->super_class;

  return v18();
}

uint64_t sub_18FFF466C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18FFF46E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18FFF47E8, 0, 0);
}

id sub_18FFF47E8()
{
  v2 = [(objc_class *)v0[2].super_class actionsResponse];
  if (!v2)
  {
    goto LABEL_38;
  }

  v3 = v2;
  v4 = [v2 responses];

  sub_18FFF85A8();
  v5 = sub_1900B16A0();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!sub_1900B1940())
  {
    goto LABEL_37;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x193AE7440](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_15;
    }

    v6 = *(v5 + 32);
  }

  v1 = v6;
  v0[6].receiver = v6;

  v7 = [v1 actionType];
  v8 = sub_1900B1610();
  v10 = v9;
  if (v8 == sub_1900B1610() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1900B19A0();

    if ((v13 & 1) == 0)
    {

LABEL_38:
      if (qword_1EAD34CB0 != -1)
      {
        swift_once();
      }

      v68 = sub_1900B0E80();
      __swift_project_value_buffer(v68, qword_1EAD379A8);
      v69 = sub_1900B0E60();
      v70 = sub_1900B1790();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_18FFDC000, v69, v70, "Did not create a polls action, no valid object found.", v71, 2u);
        MEMORY[0x193AE9010](v71, -1, -1);
      }

      goto LABEL_43;
    }
  }

  if (qword_1EAD34D98 != -1)
  {
    goto LABEL_49;
  }

LABEL_15:
  v14 = qword_1EAD37A10;
  v15 = [v0[3].receiver tiInputContextHistory];
  sub_190000634(v14, v15, 0);

  if (([v1 requiresFollowUp] & 1) == 0)
  {
    v0[2].receiver = 0;
    v16 = [v1 extractFinalResult_];
    receiver = v0[2].receiver;
    if (v16)
    {
      v18 = v16;
      v19 = receiver;
      v20 = [v18 followUp];
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v23 = sub_18FFEB50C(MEMORY[0x1E69E7CC0]);
        if (qword_1EAD34DA8 != -1)
        {
          swift_once();
        }

        v24 = qword_1EAD37A20;
        result = [v22 actionText];
        if (result)
        {
          v26 = result;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_18FFF7230(v26, v24, isUniquelyReferenced_nonNull_native);

          if (qword_1EAD34DB0 != -1)
          {
            swift_once();
          }

          v28 = qword_1EAD37A28;
          result = [v22 pollOptions];
          if (result)
          {
            v29 = result;
            v30 = swift_isUniquelyReferenced_nonNull_native();
            sub_18FFF7230(v29, v28, v30);

            if (qword_1EAD34DA0 != -1)
            {
              swift_once();
            }

            v31 = v0[6].receiver;
            v32 = qword_1EAD37A18;
            v33 = [v0[3].receiver tiInputContextHistory];
            sub_190000634(v32, v33, v23);
            v23, v34, v35, v36, v37, v38, v39, v40;

            v41 = [v22 actionText];
            v42 = sub_1900B1610();
            v44 = v43;

            v45 = [v22 pollOptions];
            v46 = sub_1900B16A0();

            v47 = type metadata accessor for SmartActionPollResponse();
            v48 = objc_allocWithZone(v47);
            v49 = &v48[OBJC_IVAR___TUISmartActionPollResponse_title];
            *v49 = v42;
            v49[1] = v44;
            *&v48[OBJC_IVAR___TUISmartActionPollResponse_options] = v46;
            v0[1].receiver = v48;
            v0[1].super_class = v47;
            v50 = objc_msgSendSuper2(v0 + 1, sel_init);

            swift_unknownObjectRelease();
            v51 = v50;
            goto LABEL_44;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }

      swift_unknownObjectRelease();
      if (qword_1EAD34CB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1900B0E80();
      __swift_project_value_buffer(v62, qword_1EAD379A8);
      v63 = sub_1900B0E60();
      v64 = sub_1900B17B0();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v0[6].receiver;
      if (v65)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_18FFDC000, v63, v64, "Could not create smart action poll payload due to lack of TCSmartActionFollowUpPoll", v67, 2u);
        MEMORY[0x193AE9010](v67, -1, -1);
      }

LABEL_43:
      v51 = 0;
LABEL_44:
      super_class = v0->super_class;

      return super_class(v51);
    }

    v52 = receiver;
    v53 = sub_1900B0B60();

    swift_willThrow();
  }

  v54 = MEMORY[0x1E69D92E8];
  v55 = *MEMORY[0x1E69D92E8];
  v56 = swift_task_alloc();
  v0[6].super_class = v56;
  *v56 = v0;
  *(v56 + 1) = sub_18FFF4F90;
  v57 = v0[4].super_class;
  v58 = v0[5].receiver;
  v59 = v0[3].super_class;
  v60 = v0[4].receiver;
  v61 = v0[3].receiver;

  return ((v55 + v54))(v1, v61, 0, 0xE000000000000000, v59, v60, v57, v58);
}

uint64_t sub_18FFF4F90(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v6 = sub_18FFF54F0;
  }

  else
  {

    *(v5 + 120) = a1;
    v6 = sub_18FFF50F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

id sub_18FFF50F4()
{
  super_class = v0[7].super_class;
  v2 = [(objc_class *)super_class followUp];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    if (qword_1EAD34CB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1900B0E80();
    __swift_project_value_buffer(v33, qword_1EAD379A8);
    v34 = sub_1900B0E60();
    v35 = sub_1900B17B0();
    v36 = os_log_type_enabled(v34, v35);
    receiver = v0[6].receiver;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_18FFDC000, v34, v35, "Could not create smart action poll payload due to lack of TCSmartActionFollowUpPoll", v38, 2u);
      MEMORY[0x193AE9010](v38, -1, -1);
    }

    v32 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_18FFEB50C(MEMORY[0x1E69E7CC0]);
  if (qword_1EAD34DA8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD37A20;
  result = [v4 actionText];
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18FFF7230(v8, v6, isUniquelyReferenced_nonNull_native);

  if (qword_1EAD34DB0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAD37A28;
  result = [v4 pollOptions];
  if (!result)
  {
    goto LABEL_20;
  }

  v11 = result;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_18FFF7230(v11, v10, v12);

  if (qword_1EAD34DA0 != -1)
  {
    swift_once();
  }

  v13 = v0[6].receiver;
  v14 = qword_1EAD37A18;
  v15 = [v0[3].receiver tiInputContextHistory];
  sub_190000634(v14, v15, v5);
  v5, v16, v17, v18, v19, v20, v21, v22;

  v23 = [v4 actionText];
  v24 = sub_1900B1610();
  v26 = v25;

  v27 = [v4 pollOptions];
  v28 = sub_1900B16A0();

  v29 = type metadata accessor for SmartActionPollResponse();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR___TUISmartActionPollResponse_title];
  *v31 = v24;
  v31[1] = v26;
  *&v30[OBJC_IVAR___TUISmartActionPollResponse_options] = v28;
  v0[1].receiver = v30;
  v0[1].super_class = v29;
  v32 = objc_msgSendSuper2(v0 + 1, sel_init);

  swift_unknownObjectRelease();
LABEL_16:
  v39 = v0->super_class;

  return v39(v32);
}

uint64_t sub_18FFF54F0()
{
  v1 = *(v0 + 8);

  return v1();
}

void *ShortFormSmartActionResponse.smartReply.getter()
{
  v1 = *(v0 + OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply);
  v2 = v1;
  return v1;
}

void *ShortFormSmartActionResponse.smartPoll.getter()
{
  v1 = *(v0 + OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll);
  v2 = v1;
  return v1;
}

id SmartActionPollResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_18FFF5880(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18FFF5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  if (*(*(v3 + 120) + 16))
  {

    sub_18FFF6638(a1, a2);
    v9 = v8;

    if (v9)
    {
      swift_beginAccess();

      sub_18FFEB8C0(a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v3 + 120);
      *(v3 + 120) = 0x8000000000000000;
      sub_18FFF70B4(a3, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v3 + 120) = v29;
      swift_endAccess();
      return sub_18FFF5D50(a1, a2);
    }

    if (*(*(v3 + 120) + 16) >= 8uLL)
    {
      result = swift_beginAccess();
      v12 = *(v3 + 128);
      if (!v12[2])
      {
        __break(1u);
        return result;
      }

      v13 = v12[4];
      v14 = v12[5];

      sub_18FFF773C(0, 1);
      swift_endAccess();
      swift_beginAccess();
      v15 = sub_18FFF6900(v13, v14);
      swift_endAccess();
      sub_18FFF8780(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  swift_beginAccess();

  sub_18FFEB8C0(a3);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  sub_18FFF70B4(a3, a1, a2, v23);

  *(v4 + 120) = v30;
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v4 + 128);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 128) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_18FFEE1AC(0, *(v24 + 2) + 1, 1, v24);
    *(v4 + 128) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_18FFEE1AC((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = a1;
  *(v28 + 5) = a2;
  *(v4 + 128) = v24;
  return swift_endAccess();
}

uint64_t sub_18FFF5BB8(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 128);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    for (i = (v6 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = sub_1900B19A0();
      if (result)
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    swift_beginAccess();
    v11 = sub_18FFF6900(a1, a2);
    swift_endAccess();
    sub_18FFF8780(v11, v12, v13, v14, v15, v16, v17, v18);
    swift_beginAccess();
    sub_18FFF5CC4(v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18FFF5CC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18FFF7668(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18FFF5D50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 128);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    for (i = (v7 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = sub_1900B19A0();
      if (result)
      {
        break;
      }

      if (v8 == ++v9)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_18FFF5CC4(v9);

    v12 = *(v3 + 128);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 128) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_18FFEE1AC(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 128) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_18FFEE1AC((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = a1;
    *(v16 + 5) = a2;
    *(v3 + 128) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_18FFF5EA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18FFF5F98;

  return v6(a1);
}

uint64_t sub_18FFF5F98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_18FFF6090(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18FFF615C(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;

  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18FFF90F8(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v18, v7, v8, v9, v10, v11, v12, v13);
  return v14;
}

unint64_t sub_18FFF615C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18FFF6268(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1900B18C0();
    a6 = v11;
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

void *sub_18FFF6268(uint64_t a1, unint64_t a2)
{
  v3 = sub_18FFF62B4(a1, a2);
  sub_18FFF63E4(&unk_1F03B9088);
  return v3;
}

void *sub_18FFF62B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18FFF64D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1900B18C0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1900B1670();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18FFF64D0(v10, 0);
        result = sub_1900B1890();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18FFF63E4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18FFF6544(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18FFF64D0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35068, &qword_1900BFE30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18FFF6544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35068, &qword_1900BFE30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_18FFF6638(uint64_t a1, uint64_t a2)
{
  sub_1900B1A00();
  sub_1900B1650();
  v4 = sub_1900B1A20();

  return sub_18FFF6744(a1, a2, v4);
}

unint64_t sub_18FFF66B0(uint64_t a1)
{
  sub_1900B1610();
  sub_1900B1A00();
  sub_1900B1650();
  v2 = sub_1900B1A20();

  return sub_18FFF67FC(a1, v2);
}

unint64_t sub_18FFF6744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1900B19A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18FFF67FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1900B1610();
      v8 = v7;
      if (v6 == sub_1900B1610() && v8 == v9)
      {
        break;
      }

      v11 = sub_1900B19A0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_18FFF6900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_18FFF6638(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18FFF7398();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_18FFF6F04(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_18FFF6998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8, &qword_1900BF6D0);
  v42 = v4;
  v6 = sub_1900B1960();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(*(v5 + 56) + 8 * v27);
      if ((v42 & 1) == 0)
      {

        sub_18FFEB8C0(v31);
      }

      sub_1900B1A00();
      sub_1900B1650();
      v32 = sub_1900B1A20();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v29;
      v23[1] = v30;
      *(*(v14 + 56) + 8 * v22) = v31;
      ++*(v14 + 16);
      v5 = v41;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

void sub_18FFF6C40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0, &qword_1900BF6C0);
  v43 = v4;
  v6 = sub_1900B1960();
  v14 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v15 = 0;
    v16 = (v5 + 64);
    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v6 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v44 = (v19 - 1) & v19;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v5 + 56);
      v28 = *(*(v5 + 48) + 8 * v26);
      v29 = *(v27 + 8 * v26);
      if ((v43 & 1) == 0)
      {
        v30 = v28;
        v31 = v29;
      }

      sub_1900B1610();
      sub_1900B1A00();
      sub_1900B1650();
      v32 = sub_1900B1A20();

      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v14 + 48) + 8 * v22) = v28;
      *(*(v14 + 56) + 8 * v22) = v29;
      ++*(v14 + 16);
      v5 = v42;
      v19 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v44 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
LABEL_33:
  *v3 = v14;
}

uint64_t sub_18FFF6F04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1900B1880() + 1) & ~v5;
    do
    {
      sub_1900B1A00();

      sub_1900B1650();
      v9 = sub_1900B1A20();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18FFF70B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18FFF6638(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v12 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v12;
  v24 = *(v10 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_18FFF6998(v22, a4 & 1);
      v11 = sub_18FFF6638(a2, a3);
      if ((v23 & 1) != (v12 & 1))
      {
LABEL_18:
        sub_1900B19C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v11;
      sub_18FFF7398();
      v11 = v25;
    }
  }

  v26 = *v5;
  if (v23)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v11);
    *(v27 + 8 * v11) = a1;

    sub_18FFF8770(v28, v12, v13, v14, v15, v16, v17, v18);
    return;
  }

  v26[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v26[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v11) = a1;
  v30 = v26[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

id sub_18FFF7230(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_18FFF66B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_18FFF6C40(v13, a3 & 1);
      v8 = sub_18FFF66B0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for IAPayloadKey(0);
        v8 = sub_1900B19C0();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_18FFF7508();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_18FFF7398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8, &qword_1900BF6D0);
  v2 = *v0;
  v3 = sub_1900B1950();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = (*(v2 + 48) + 16 * v24);
        v26 = v25[1];
        v27 = *(*(v2 + 56) + 8 * v24);
        v28 = (*(v11 + 48) + 16 * v24);
        *v28 = *v25;
        v28[1] = v26;
        *(*(v11 + 56) + 8 * v24) = v27;

        sub_18FFEB8C0(v27);
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_18FFF7508()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0, &qword_1900BF6C0);
  v2 = *v0;
  v3 = sub_1900B1950();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 64 + 8 * v13)
    {
      memmove(v12, (v2 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v2 + 48) + 8 * v24);
        v26 = *(*(v2 + 56) + 8 * v24);
        *(*(v11 + 48) + 8 * v24) = v25;
        *(*(v11 + 56) + 8 * v24) = v26;
        v27 = v25;
        v28 = v26;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

unint64_t sub_18FFF767C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18FFF773C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_18FFEE1AC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_18FFF767C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t _s11TextInputUI28TUITextComposerClientWrapperC13isGMAvailable7useCaseSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_1900B0DF0();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1900B0D80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v29 = sub_1900B0DD0();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1900B0DB0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD34BB0 != -1)
  {
    v27 = v18;
    v28 = v17;
    swift_once();
    v18 = v27;
    v17 = v28;
  }

  if (byte_1EAD37978 == 1)
  {
    v27 = v18;
    v28 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF8, &qword_1900BFC58);
    v21 = swift_allocObject();
    v26 = v3;
    *(v21 + 16) = xmmword_1900BF5E0;
    *(v21 + 32) = a1;
    v22 = v29;
    *(v21 + 40) = v30;
    (*(v13 + 104))(v15, *MEMORY[0x1E69A12B8], v22);

    sub_1900B0DA0();
    sub_1900B0DE0();
    sub_1900B0DC0();
    (*(v31 + 8))(v5, v26);
    (*(v7 + 104))(v10, *MEMORY[0x1E69A11A0], v6);
    v23 = sub_1900B0D70();
    v24 = *(v7 + 8);
    v24(v10, v6);
    v24(v12, v6);
    (*(v27 + 8))(v20, v28);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_18FFF7BEC(uint64_t a1)
{
  v25[1] = a1;
  v1 = sub_1900B0DF0();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1900B0D80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - v9;
  v11 = sub_1900B0DD0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1900B0DB0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD34BB0 != -1)
  {
    v25[0] = v17;
    swift_once();
    v17 = v25[0];
  }

  if (byte_1EAD37978 == 1)
  {
    v20 = *MEMORY[0x1E69A12B8];
    v21 = *(v12 + 104);
    v25[0] = v17;
    v21(v14, v20, v11);
    sub_1900B0DA0();
    sub_1900B0DE0();
    sub_1900B0DC0();
    (*(v26 + 8))(v3, v27);
    (*(v5 + 104))(v8, *MEMORY[0x1E69A11A0], v4);
    v22 = sub_1900B0D70();
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v10, v4);
    (*(v16 + 8))(v19, v25[0]);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void __swift_destroy_boxed_opaque_existential_0(uint64_t a1, uint64_t a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  v8 = *(*(a1 + 24) - 8);
  if ((*(v8 + 82) & 2) != 0)
  {
    *a1, *(a1 + 24), a3, a4, a5, a6, a7, a8;
  }

  else
  {
    (*(v8 + 8))();
  }
}

uint64_t sub_18FFF7FB0(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[5];
  v11 = v1[4];
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v5[1];
  v9 = *v5;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18FFEBD88;

  return sub_18FFF1984(a1, v13, v12, v11, v10, v1 + v4, v9, v6);
}

uint64_t sub_18FFF8140(uint64_t a1)
{
  sub_1900B0CE0();
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v6 = v1[7];
  v7 = v1[6];
  v3 = v1[8];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18FFEB764;

  return sub_18FFF0ECC(a1, v11, v10, v9, v8, v7, v6, v3);
}

uint64_t sub_18FFF82D8(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[5];
  v10 = v1[4];
  v8 = v1[6];
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18FFEBD88;

  return sub_18FFF0390(a1, v12, v11, v10, v9, v8, v1 + v4, v5);
}

uint64_t sub_18FFF84C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18FFF8524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18FFF85A8()
{
  result = qword_1EAD35050;
  if (!qword_1EAD35050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD35050);
  }

  return result;
}

uint64_t sub_18FFF85F4(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v5 = v1[5];
  v11 = v1[4];
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18FFEB764;

  return sub_18FFF3C9C(a1, v13, v12, v11, v5, v1 + v4, v7, v8);
}

void sub_18FFF8770(_TtC11TextInputUI28TUITextComposerClientWrapper *a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_18FFF8780(_TtC11TextInputUI28TUITextComposerClientWrapper *a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_18FFF8770(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_18FFF8794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18FFF87BC, 0, 0);
}

uint64_t sub_18FFF87BC()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  __swift_project_value_buffer(v1, qword_1EAD37990);
  v2 = sub_1900B0E60();
  v3 = sub_1900B17A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "Determining if internal or external...", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  if (v6 == 0xD000000000000013 && 0x80000001900C1810 == v5 || (sub_1900B19A0() & 1) != 0 || v0[2] == 0xD000000000000014 && 0x80000001900C1B60 == v5 || (sub_1900B19A0() & 1) != 0 || v0[2] == 0x6C7070612E6D6F63 && v0[3] == 0xEE006C69616D2E65 || (sub_1900B19A0() & 1) != 0)
  {
    v7 = v0[1];

    return v7(0, 0);
  }

  else
  {
    v9 = sub_1900B0E60();
    v10 = sub_1900B17A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18FFDC000, v9, v10, "performShortFormGeneration for external client", v11, 2u);
      MEMORY[0x193AE9010](v11, -1, -1);
    }

    v15 = (*MEMORY[0x1E69D9290] + MEMORY[0x1E69D9290]);
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = sub_18FFF8AA8;
    v14 = v0[4];
    v13 = v0[5];

    return v15(v14, v13, 0);
  }
}

uint64_t sub_18FFF8AA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_18FFF8BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18FFF8C14, 0, 0);
}

uint64_t sub_18FFF8C14()
{
  v1 = [*(v0 + 200) repliesResponse];
  if (v1)
  {
    v2 = v1;
    v36 = *(v0 + 232);
    v33 = *(v0 + 224);
    v3 = *(v0 + 208);
    v31 = *(v0 + 216);
    v32 = sub_18FFFFED4(v3);
    v4 = sub_18FFF91B0(v3);
    v34 = v5;
    v35 = v4;
    v6 = sub_18FFF94D8(v3);
    v37 = v7;
    v38 = v6;
    v39 = sub_18FFF958C(v3);
    v40 = sub_18FFF9658(v3);
    v41 = sub_18FFF9664(v3);
    v42 = type metadata accessor for TUISmartReplyResponse();
    v8 = objc_allocWithZone(v42);
    v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v11 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v11 = 0;
    v11[1] = 0;
    v12 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v12 = 0;
    v12[1] = 0;
    v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v15 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v8[v9] = v2;
    swift_beginAccess();
    *&v8[v10] = 0;
    v16 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v16 = v31;
    *(v16 + 1) = v33;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v36;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v32;
    swift_beginAccess();
    *v11 = v35;
    v11[1] = v34;
    swift_beginAccess();
    *v12 = v38;
    v12[1] = v37;
    v17 = v2;

    swift_beginAccess();
    v18 = *&v8[v13];
    *&v8[v13] = v39;
    v19 = v39;

    swift_beginAccess();
    v20 = *&v8[v14];
    *&v8[v14] = v40;
    v21 = v40;

    swift_beginAccess();
    v22 = *&v8[v15];
    *&v8[v15] = v41;
    v23 = v41;

    *(v0 + 184) = v8;
    *(v0 + 192) = v42;
    v24 = objc_msgSendSuper2((v0 + 184), sel_init);
  }

  else
  {
    if (qword_1EAD34CB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1900B0E80();
    __swift_project_value_buffer(v25, qword_1EAD379A8);
    v26 = sub_1900B0E60();
    v27 = sub_1900B1790();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_18FFDC000, v26, v27, "Did not create a smart reply action, no valid object found.", v28, 2u);
      MEMORY[0x193AE9010](v28, -1, -1);
    }

    v24 = 0;
  }

  v29 = *(v0 + 8);

  return v29(v24);
}

uint64_t sub_18FFF8FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28, &qword_1900BF5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFF9040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18FFEBD88;

  return sub_18FFF5EA0(a1, v4);
}

uint64_t sub_18FFF90F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18FFF9154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAD34B70;
  if (!qword_1EAD34B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34B70);
  }

  return result;
}

uint64_t sub_18FFF91B0(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_18FFF6638(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v4, v29), !swift_dynamicCast()))
  {
LABEL_6:
    v28 = 0;
    v7 = sub_1900B1610();
    if (*(a1 + 16))
    {
      v9 = sub_18FFF6638(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v9, v29), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        MEMORY[0x193AE71F0](58, 0xE100000000000000);
        v12 = sub_1900B1610();
        if (*(a1 + 16))
        {
          v14 = sub_18FFF6638(v12, v13);
          v16 = v15;

          if ((v16 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v14, v29), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            MEMORY[0x193AE71F0](124, 0xE100000000000000);
            v17 = sub_1900B1610();
            if (*(a1 + 16))
            {
              v19 = sub_18FFF6638(v17, v18);
              v21 = v20;

              if ((v21 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v19, v29), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                MEMORY[0x193AE71F0](58, 0xE100000000000000);
                v22 = sub_1900B1610();
                if (*(a1 + 16))
                {
                  v24 = sub_18FFF6638(v22, v23);
                  v26 = v25;

                  if ((v26 & 1) == 0)
                  {
                    return v28;
                  }

                  sub_18FFF90F8(*(a1 + 56) + 32 * v24, v29);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v28;
                  }

                  MEMORY[0x193AE71F0]();
                }

                return v28;
              }

              MEMORY[0x193AE71F0]();
            }

            goto LABEL_21;
          }

          MEMORY[0x193AE71F0]();
        }

        goto LABEL_16;
      }

      MEMORY[0x193AE71F0]();
    }

    goto LABEL_11;
  }

  return v28;
}

uint64_t sub_18FFF94D8(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (*(a1 + 16))
  {
    v4 = sub_18FFF6638(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_18FFF958C(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (*(a1 + 16))
  {
    v4 = sub_18FFF6638(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_18FFF9670(uint64_t a1, void *a2)
{
  v3 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v5 = sub_18FFF6638(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v5, v10);
  sub_18FFF9720();
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18FFF9720()
{
  result = qword_1EAD34B40;
  if (!qword_1EAD34B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD34B40);
  }

  return result;
}

uint64_t sub_18FFF976C(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_18FFF6638(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18FFF98AC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_18FFF98DC()
{
  sub_18FFF98AC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18FFF9978()
{
  v0 = sub_1900B0B40();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1900B0B00();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18[-v7];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-v10];
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_1900B15E0();
  v15 = [v13 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B0B30();
  sub_1900B0B10();
  sub_1900B0AE0();
  sub_1900B0AF0();
  v16 = *(v2 + 8);
  v16(v5, v1);
  v16(v8, v1);
  sub_18FFF9C1C(v8);
  sub_1900B0AF0();
  v16(v8, v1);
  v16(v11, v1);
  return sub_1900B1350();
}

uint64_t sub_18FFF9C1C@<X0>(uint64_t a1@<X8>)
{
  v37[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35138, &qword_1900C0110);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v39 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35140, &qword_1900C0118);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35148, &qword_1900C0120);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35150, &qword_1900C0128);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35158, &qword_1900C0130);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - v14;
  v16 = sub_1900B1330();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1900B0B40();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_1900B15E0();
  v24 = [v22 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B0B30();
  sub_1900B0B10();
  v41 = sub_1900B13E0();
  sub_18FFFC1B4(v41, v25, v26);
  sub_1900B0B20();
  sub_1900B12A0();
  v27 = sub_1900B12D0();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  sub_1900B12E0();
  v28 = sub_1900B12F0();
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
  sub_1900B1300();
  v29 = sub_1900B1310();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  v30 = v38;
  sub_1900B12A0();
  v31 = sub_1900B12B0();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_1900B13D0();
  sub_1900B1320();
  v32 = v39;
  (*(v17 + 16))(v39, v19, v16);
  (*(v17 + 56))(v32, 0, 1, v16);
  v33 = sub_18FFFC208(v32, v40);
  sub_18FFFC278(v33, v34, v35);
  sub_1900B0B20();
  sub_18FFEE584(v32, &qword_1EAD35138, &qword_1900C0110);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_18FFFA1CC()
{
  v0 = sub_1900B15E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return MEMORY[0x1EEDE43C0](0x696A6F6D6E6547, 0xE700000000000000, v1);
}

uint64_t sub_18FFFA264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35128, &qword_1900C0100);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_1900B0F20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35130, &qword_1900C0108);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1900B0F30();
  v12 = MEMORY[0x1E6982B20];
  MEMORY[0x193AE6A80](v7, v4, MEMORY[0x1E6982B20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AE6AA0](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1900B0F00();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_18FFFA508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v6 = sub_18FFFBF8C(a1, a3, a4);
  result = MEMORY[0x193AE6A30](a1, v6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_18FFFA548(char a1)
{
  *(v1 + 16) = a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BF0();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  if ((*(v1 + 16) & 1) == 0)
  {
    v10 = swift_getKeyPath();
    sub_1900B0BF0();
    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = *(v1 + 24);
    if (v18)
    {
      v19 = *(v1 + 32);

      v18(v20);
      sub_18FFFC3E4(v18, v19, v21, v22, v23, v24, v25, v26);
    }
  }
}

uint64_t sub_18FFFA654()
{
  KeyPath = swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BF0();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 16);
}

void sub_18FFFA6F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BF0();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 16);
}

void sub_18FFFA79C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    v10 = a1 & 1;

    sub_18FFFA548(v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
    sub_1900B0BE0();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_18FFFA8D0()
{
  KeyPath = swift_getKeyPath();
  v11 = v0;
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BF0();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 24);
  sub_18FFE84DC(v9, *(v11 + 32));
  return v9;
}

uint64_t sub_18FFFA984@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BF0();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = sub_18FFEE7C4;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  return sub_18FFE84DC(v12, v13);
}

void sub_18FFFAA70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *v4->internalTextComposerClient = v2;
    *v4->externalTextComposerClient = v3;
    v5 = sub_18FFFC440;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_18FFE84DC(v2, v3);
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);
  sub_1900B0BE0();
  sub_18FFFC3E4(v5, v4, v7, v8, v9, v10, v11, v12);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_18FFFABCC(uint64_t a1, uint64_t a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  sub_18FFFC3E4(*(v8 + 24), *(v8 + 32), a3, a4, a5, a6, a7, a8);
  v9 = OBJC_IVAR____TtCV11TextInputUIP33_C90572265959E209E1BF186B5F2EDED57TipView9ViewModel___observationRegistrar;
  v10 = sub_1900B0C30();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = *(*v8 + 48);
  v12 = *(*v8 + 52);

  return MEMORY[0x1EEE6BDC0](v8, v11, v12);
}

uint64_t type metadata accessor for TipView.ViewModel(uint64_t a1)
{
  result = qword_1EAD34B90;
  if (!qword_1EAD34B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18FFFACC4(uint64_t a1)
{
  result = sub_1900B0C30();
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

uint64_t sub_18FFFAD78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E40, &qword_1900BF618);
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v89 - v6;
  v106 = 0;
  v107 = 1;
  v102 = a1;
  v103 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35110, &qword_1900C00B0);
  sub_1900B1450();
  v99, v8, v9, v10, v11, v12, v13, v14;
  v104 = &type metadata for GenmojiTip;
  v105 = sub_18FFFBF8C(v15, v16, v17);
  v97 = a1;
  v98 = a2;
  sub_1900B1470();
  v18 = v99;
  v19 = v100;
  v20 = v101;
  KeyPath = swift_getKeyPath();
  v99 = v18;
  v100 = v19;
  v101 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35118, &qword_1900C00E0);
  sub_1900B14C0();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = v97;
  v30 = v98;
  v20, v31, v32, v33, v34, v35, v36, v37;
  v19, v38, v39, v40, v41, v42, v43, v44;
  v18, v45, v46, v47, v48, v49, v50, v51;
  v52 = sub_1900B1190();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = (&v89 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v55 = sub_1900B1490();
  (*(v53 + 104))(v55, *MEMORY[0x1E697C8C0], v52);
  v93 = v7;
  sub_1900B1360();
  v30, v56, v57, v58, v59, v60, v61, v62;
  v29, v63, v64, v65, v66, v67, v68, v69;
  (*(v53 + 8))(v55, v52);
  sub_18FFEE584(&v102, &qword_1EAD35120, &qword_1900C00E8);
  sub_1900B16D0();

  v70 = sub_1900B16C0();
  v71 = swift_allocObject();
  v72 = MEMORY[0x1E69E85E0];
  v71[2] = v70;
  v71[3] = v72;
  v71[4] = a1;
  v71[5] = a2;
  v73 = sub_1900B1700();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v89 - v76;
  sub_1900B16E0();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v91 = sub_1900B1080();
    v92 = &v89;
    v90 = *(v91 - 8);
    MEMORY[0x1EEE9AC00](v91);
    v79 = &v89 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1900B18A0();

    v102 = 0xD000000000000030;
    v103 = 0x80000001900C1FE0;
    v99 = 79;
    v80 = sub_1900B1990();
    MEMORY[0x193AE71F0](v80);

    MEMORY[0x1EEE9AC00](v81);
    (*(v74 + 16))(&v89 - v76, v77, v73);
    sub_1900B1070();
    (*(v74 + 8))(v77, v73);
    v82 = v96;
    (*(v94 + 32))(v96, v93, v95);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E48, &qword_1900BF620);
    return (*(v90 + 32))(v82 + *(v83 + 36), v79, v91);
  }

  else
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E50, &qword_1900BF628);
    v86 = v96;
    v87 = (v96 + *(v85 + 36));
    v88 = sub_1900B1060();
    (*(v74 + 32))(&v87[*(v88 + 20)], &v89 - v76, v73);
    *v87 = &unk_1900C00F8;
    *(v87 + 1) = v71;
    return (*(v94 + 32))(v86, v93, v95);
  }
}

uint64_t sub_18FFFB390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1900B16D0();
  v4[7] = sub_1900B16C0();
  v6 = sub_1900B16B0();

  return MEMORY[0x1EEE6DFA0](sub_18FFFB428, v6, v5);
}

uint64_t sub_18FFFB428(uint64_t a1, const char *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  sub_1900B0F40();
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  *(v8 + 16) = v10;
  *(v8 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35110, &qword_1900C00B0);
  sub_1900B1450();
  *(v8 + 32), v11, v12, v13, v14, v15, v16, v17;
  sub_18FFFBF8C(v18, v19, v20);
  sub_1900B0EC0();
  *(v8 + 16) = v10;
  *(v8 + 24) = v9;
  sub_1900B1450();
  *(v8 + 32), v21, v22, v23, v24, v25, v26, v27;
  sub_1900B0EB0();
  v28 = *(v8 + 8);

  return v28();
}

void sub_18FFFB5BC(uint64_t a1, _TtC11TextInputUI28TUITextComposerClientWrapper *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1900B1240();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OBJC_IVAR___TUIGenmojiTipView_viewModel;
  type metadata accessor for TipView.ViewModel(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *&v2[v5] = v6;
  KeyPath = swift_getKeyPath();
  v77 = v6;
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel, &unk_1900C0094);

  sub_1900B0BE0();
  v8 = v6;
  v9 = a2;
  v8, v10, v11, v12, v13, v14, v15, v16;
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  a2, v24, v25, v26, v27, v28, v29, v30;
  v76 = *&v2[v5];

  sub_1900B1440();
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35160, &qword_1900C0160));
  v32 = sub_1900B1170();
  *&v2[OBJC_IVAR___TUIGenmojiTipView_hostingController] = v32;
  v75.receiver = v2;
  v75.super_class = ObjectType;
  v33 = v32;
  v34 = objc_msgSendSuper2(&v75, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v35 = [v33 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_10;
  }

  v36 = v35;
  v37 = [objc_opt_self() clearColor];
  [v36 setBackgroundColor_];

  v38 = [v33 view];
  if (!v38)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35168, &unk_1900C0790);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1900BF5E0;
  v41 = v33;
  sub_1900B1230();
  v77 = v40;
  sub_18FFFC2EC(&qword_1EAD34C28, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35170, &qword_1900C0168);
  sub_18FFFC334();
  sub_1900B1870();
  sub_1900B1150();

  v42 = v34;
  v43 = [v41 view];
  if (!v43)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v44 = v43;
  [v42 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EF8, &qword_1900C07A0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1900BFEF0;
  v46 = [v41 view];
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v47 = v46;
  v48 = [v46 topAnchor];

  v49 = [v42 topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v45 + 32) = v50;
  v51 = [v41 view];
  if (!v51)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v52 = v51;
  v53 = [v51 bottomAnchor];

  v54 = [v42 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v45 + 40) = v55;
  v56 = [v41 view];
  if (!v56)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v57 = v56;
  v58 = [v56 leadingAnchor];

  v59 = [v42 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v45 + 48) = v60;
  v61 = [v41 view];

  if (v61)
  {
    v62 = [v61 trailingAnchor];

    v63 = [v42 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    *(v45 + 56) = v64;
    v65 = objc_opt_self();
    sub_18FFFC398();
    v66 = sub_1900B1690();

    [v65 activateConstraints_];

    v9, v67, v68, v69, v70, v71, v72, v73;
    return;
  }

LABEL_15:
  __break(1u);
}

id sub_18FFFBDB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18FFFBE68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18FFFBEB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18FFFBF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAD34BC8;
  if (!qword_1EAD34BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BC8);
  }

  return result;
}

unint64_t sub_18FFFBF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAD34BD0;
  if (!qword_1EAD34BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BD0);
  }

  return result;
}

uint64_t sub_18FFFBFE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18FFEB764;

  return sub_18FFFB390(v2, v3, v5, v4);
}

uint64_t sub_18FFFC090()
{
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1900B15E0();
  v3 = [v1 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B1180();
  v4 = sub_1900B1340();

  return v4;
}

unint64_t sub_18FFFC1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAD34BD8;
  if (!qword_1EAD34BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BD8);
  }

  return result;
}

uint64_t sub_18FFFC208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35138, &qword_1900C0110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18FFFC278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAD34BE0;
  if (!qword_1EAD34BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BE0);
  }

  return result;
}

uint64_t sub_18FFFC2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18FFFC334()
{
  result = qword_1EAD34C08;
  if (!qword_1EAD34C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35170, &qword_1900C0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C08);
  }

  return result;
}

unint64_t sub_18FFFC398()
{
  result = qword_1EAD34BF0;
  if (!qword_1EAD34BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD34BF0);
  }

  return result;
}

void sub_18FFFC3E4(uint64_t a1, _TtC11TextInputUI28TUITextComposerClientWrapper *a2, void *a3, void *a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  if (a1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_18FFFC3F4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_18FFE84DC(v1, v3);
  sub_18FFFC3E4(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DefaultKeyboardSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.getter()
{
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  v9 = *(v0 + 32);

  return v9;
}

uint64_t sub_18FFFC5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v12;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1900B19A0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
    sub_1900B0BE0();
    KeyPath, v8, v9, v10, v11, v12, v13, v14;
  }
}

uint64_t sub_18FFFC7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t (*DefaultKeyboardSettingsProvider.localizedTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1900B0C10();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_18FFFC9AC;
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.getter()
{
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  v9 = *(v0 + 48);

  return v9;
}

uint64_t sub_18FFFCA7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  v12 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v12;
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_1900B19A0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BE0();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_18FFFCCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t (*DefaultKeyboardSettingsProvider.localizedDetail.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1900B0C10();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_18FFFCE6C;
}

void sub_18FFFCE78(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  KeyPath = swift_getKeyPath();
  sub_1900B0C00();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  free(v3);
}

id sub_18FFFCEFC()
{
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 72);

  return v9;
}

id sub_18FFFCFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 72);
  *a2 = v12;

  return v12;
}

void sub_18FFFD064(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_18FFEB8D0(0, &qword_1EAD35188, 0x1E69C5748);
  v5 = v4;
  v6 = sub_1900B1830();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
    sub_1900B0BE0();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t DefaultKeyboardSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  return v0;
}

void DefaultKeyboardSettingsProvider.init()()
{
  v1 = sub_1900B0BD0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1900B15D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v0[2] = 0xD000000000000023;
  v0[3] = 0x80000001900C1830;
  sub_1900B15C0();
  sub_1900B0B90();
  v0[6] = sub_1900B1620();
  v0[7] = v3;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  v4 = [objc_allocWithZone(MEMORY[0x1E69C5710]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C5748]) init];
  [v4 setSpecifier_];

  v6 = [v4 specifier];
  if (!v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_1900B15E0();
  [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5918]];

  v9 = sub_1900B15E0();
  v10 = v4;
  v11 = TextInputUIBundle();
  v12 = [v10 loadSpecifiersFromPlistName:v9 target:v10 bundle:v11];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (![v12 firstObject])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1900B1860();
  swift_unknownObjectRelease();
  sub_18FFEB980(&v24, v26);
  sub_18FFEB8D0(0, &qword_1EAD35188, 0x1E69C5748);
  swift_dynamicCast();
  v13 = [v22 target];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v0[8] = v13;
  v14 = [v22 name];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = sub_1900B1610();
  v18 = v17;

  v0[4] = v16;
  v0[5] = v18;
  if ([v22 performGetter])
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {

    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v22;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_18FFEE584(v26, qword_1EAD35078, &unk_1900BFE40);
    v20 = 0;
    v21 = 0;
  }

  v0[6] = v20;
  v0[7] = v21;
  v0[9] = v22;
}

uint64_t DefaultKeyboardSettingsProvider.content.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35190, &qword_1900C01E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v21 - v3);
  KeyPath = swift_getKeyPath();
  v22 = v0;
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(v0 + 72);
  v14 = *(type metadata accessor for DefaultKeyboards(0) + 20);
  *(v4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35198, &qword_1900C0240);
  swift_storeEnumTagMultiPayload();
  *v4 = v13;
  v15 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351A0, &qword_1900C0248) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_18FFFDF30;
  v15[3] = v1;
  v16 = v13;

  v17 = sub_1900B10B0();
  v18 = sub_1900B1260();
  v19 = v4 + *(v2 + 36);
  *v19 = v17;
  v19[8] = v18;
  sub_1900B0FF0();
  sub_18FFFDF38();
  sub_18FFFE080(&qword_1EAD351C0, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
  sub_1900B13C0();
  return sub_18FFEE584(v4, &qword_1EAD35190, &qword_1900C01E0);
}

uint64_t sub_18FFFD858(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18FFFD890(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  *&v19[0] = a1;
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  if ([*(a1 + 72) performGetter])
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v10 = swift_dynamicCast();
    v11 = v10 == 0;
    if (v10)
    {
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }
  }

  else
  {
    sub_18FFEE584(v19, qword_1EAD35078, &unk_1900BFE40);
    v12 = 0;
    v13 = 0;
  }

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v12, v13);
}

uint64_t DefaultKeyboardSettingsProvider.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DefaultKeyboardSettingsProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_18FFFDB28()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_18FFFDB60()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  swift_beginAccess();
  v10 = *(v1 + 32);

  return v10;
}

uint64_t sub_18FFFDC24()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider, &protocol conformance descriptor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  swift_beginAccess();
  v10 = *(v1 + 48);

  return v10;
}

void sub_18FFFDD10(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  *a1 = v2;
}

uint64_t sub_18FFFDD54@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_18FFFDD64()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (swift_getObjCClassMetadata(), sub_18FFEB8D0(0, &qword_1EAD35218, 0x1E69C5710), swift_dynamicCastMetatype()))
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setSpecifier_];
    return v2;
  }

  else
  {
    result = [v1 propertyForKey_];
    if (result)
    {
      sub_1900B1860();
      swift_unknownObjectRelease();
      sub_18FFEB980(&v5, &v6);
      sub_18FFEB8D0(0, &qword_1EAD35218, 0x1E69C5710);
      swift_dynamicCast();
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18FFFDE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35200, &qword_1900C03A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18FFEB918(a1, &v5 - v3, &qword_1EAD35200, &qword_1900C03A8);
  return sub_1900B10F0();
}

unint64_t sub_18FFFDF38()
{
  result = qword_1EAD351A8;
  if (!qword_1EAD351A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35190, &qword_1900C01E0);
    sub_18FFFDFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD351A8);
  }

  return result;
}

unint64_t sub_18FFFDFC4()
{
  result = qword_1EAD351B0;
  if (!qword_1EAD351B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD351A0, &qword_1900C0248);
    sub_18FFFE080(&qword_1EAD351B8, type metadata accessor for DefaultKeyboards, &unk_1900C0428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD351B0);
  }

  return result;
}

uint64_t sub_18FFFE080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18FFFE134(uint64_t a1)
{
  result = sub_1900B0C30();
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

void sub_18FFFE214(uint64_t a1)
{
  sub_18FFEB8D0(319, &qword_1EAD35188, 0x1E69C5748);
  if (v1 <= 0x3F)
  {
    sub_18FFFE2A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18FFFE2A8(uint64_t a1)
{
  if (!qword_1EAD351F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35200, &qword_1900C03A8);
    v1 = sub_1900B1020();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD351F8);
    }
  }
}

uint64_t sub_18FFFE354(void *a1)
{
  v36 = a1;
  v1 = sub_1900B14E0();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1900B1130();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35198, &qword_1900C0240);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v32 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35200, &qword_1900C03A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35210, &qword_1900C0478);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for DefaultKeyboards(0);
  sub_18FFEB918(v37 + *(v17 + 20), v9, &qword_1EAD35198, &qword_1900C0240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18FFFE918(v9, v12, &qword_1EAD35200, &qword_1900C03A8);
  }

  else
  {
    v18 = *v9;
    sub_1900B17C0();
    v19 = sub_1900B1250();
    sub_1900B0E50();

    sub_1900B1120();
    swift_getAtKeyPath();
    v18, v20, v21, v22, v23, v24, v25, v26;
    (*(v32 + 8))(v6, v33);
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v27 = &qword_1EAD35200;
    v28 = &qword_1900C03A8;
    v29 = v12;
  }

  else
  {
    sub_18FFFE918(v12, v16, &qword_1EAD35210, &qword_1900C0478);
    MEMORY[0x193AE7040](v13);
    v30 = sub_1900B14D0();
    (*(v34 + 8))(v3, v35);
    [v36 setEditing:v30 & 1 animated:1];
    v29 = v16;
    v27 = &qword_1EAD35210;
    v28 = &qword_1900C0478;
  }

  return sub_18FFEE584(v29, v27, v28);
}

uint64_t sub_18FFFE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards, &unk_1900C03B0);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_18FFFE82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards, &unk_1900C03B0);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_18FFFE8C0(uint64_t a1)
{
  sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards, &unk_1900C03B0);
  sub_1900B1200();
  __break(1u);
}

uint64_t sub_18FFFE918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_18FFFE980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

void *TUISmartReplyResponse.srResponse.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.srResponse.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.error.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TUISmartReplyResponse.threadIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TUISmartReplyResponse.threadIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t TUISmartReplyResponse.type.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TUISmartReplyResponse.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TUISmartReplyResponse.contentWarning.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TUISmartReplyResponse.contentWarning.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_18FFFF22C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1900B15E0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_18FFFF2C0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_18FFFF320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1900B1610();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_18FFFF3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void *TUISmartReplyResponse.responseFromCache.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.responseFromCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.modelPromptTokenCount.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.modelPromptTokenCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.modelOutputTokenCount.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18FFFF7C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void TUISmartReplyResponse.modelOutputTokenCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_18FFFF9EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08, &qword_1900BF6F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1900BF5E0;
    v5 = v3;
    sub_1900B18A0();
    MEMORY[0x193AE71F0](0xD000000000000021, 0x80000001900C2540);
    v6 = [v5 description];
    v7 = sub_1900B1610();
    v9 = v8;

    MEMORY[0x193AE71F0](v7, v9);

    MEMORY[0x193AE71F0](0xD000000000000012, 0x80000001900C2570);
    swift_beginAccess();
    type metadata accessor for TUISmartReplyContentWarningType(0);
    sub_1900B1920();
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1900B19E0();
  }

  else
  {
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    swift_beginAccess();
    v11 = *(v1 + v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08, &qword_1900BF6F0);
    if (v11)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1900BF5E0;
      v13 = v11;
      sub_1900B18A0();

      v14 = [v13 description];
      v15 = sub_1900B1610();
      v17 = v16;

      MEMORY[0x193AE71F0](v15, v17);

      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 32) = 0xD00000000000001ELL;
      *(v12 + 40) = 0x80000001900C2520;
      sub_1900B19E0();
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1900BF5E0;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 32) = 0xD00000000000001BLL;
      *(v18 + 40) = 0x80000001900C2500;
      sub_1900B19E0();
    }
  }
}

id TUISmartReplyResponse.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TUISmartReplyResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18FFFFED4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_18FFF6638(0x57746E65746E6F43, 0xEE00676E696E7261);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v2, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v5 >= 3)
  {
    return -1;
  }

  return v5;
}

id sub_18FFFFF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  v16 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v18 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v21 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v22 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v13[v16] = a1;
  swift_beginAccess();
  *&v13[v17] = a6;
  v23 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = a4;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = a5;
  swift_beginAccess();
  *v18 = a7;
  *(v18 + 1) = a8;
  swift_beginAccess();
  *v19 = a9;
  *(v19 + 1) = a10;
  v24 = a1;
  v25 = a6;

  swift_beginAccess();
  v26 = *&v13[v20];
  *&v13[v20] = a11;
  v27 = a11;

  swift_beginAccess();
  v28 = *&v13[v21];
  *&v13[v21] = a12;
  v29 = a12;

  swift_beginAccess();
  v30 = *&v13[v22];
  *&v13[v22] = a13;
  v31 = a13;

  v39.receiver = v13;
  v39.super_class = type metadata accessor for TUISmartReplyResponse();
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_19000019C()
{
  result = sub_1900B15E0();
  qword_1EAD37960 = result;
  return result;
}

uint64_t sub_1900001D4()
{
  result = sub_1900B15E0();
  qword_1EAD37968 = result;
  return result;
}

uint64_t sub_19000020C()
{
  result = sub_1900B15E0();
  qword_1EAD37A10 = result;
  return result;
}

uint64_t sub_190000244()
{
  result = sub_1900B15E0();
  qword_1EAD37A18 = result;
  return result;
}

uint64_t sub_19000027C()
{
  result = sub_1900B15E0();
  qword_1EAD37958 = result;
  return result;
}

uint64_t sub_1900002B4()
{
  result = sub_1900B15E0();
  qword_1EAD37970 = result;
  return result;
}

uint64_t sub_1900002E8()
{
  result = sub_1900B15E0();
  qword_1EAD37A20 = result;
  return result;
}

uint64_t sub_190000328()
{
  result = sub_1900B15E0();
  qword_1EAD37A28 = result;
  return result;
}

uint64_t sub_190000360()
{
  result = sub_1900B15E0();
  qword_1EAD37A30 = result;
  return result;
}

uint64_t sub_1900003A0()
{
  result = sub_1900B15E0();
  qword_1EAD37A38 = result;
  return result;
}

uint64_t sub_1900003D8()
{
  result = sub_1900B15E0();
  qword_1EAD37A40 = result;
  return result;
}

uint64_t sub_190000410()
{
  result = sub_1900B15E0();
  qword_1EAD37A48 = result;
  return result;
}

uint64_t sub_190000450()
{
  result = sub_1900B15E0();
  qword_1EAD37A50 = result;
  return result;
}

uint64_t sub_19000048C()
{
  result = sub_1900B15E0();
  qword_1EAD37A58 = result;
  return result;
}

uint64_t sub_1900004CC()
{
  result = sub_1900B15E0();
  qword_1EAD37A60 = result;
  return result;
}

uint64_t sub_190000504()
{
  result = sub_1900B15E0();
  qword_1EAD37A68 = result;
  return result;
}

uint64_t sub_19000053C()
{
  result = sub_1900B15E0();
  qword_1EAD37A70 = result;
  return result;
}

uint64_t sub_190000574()
{
  result = sub_1900B15E0();
  qword_1EAD37A78 = result;
  return result;
}

uint64_t sub_1900005B4()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD37A80);
  __swift_project_value_buffer(v0, qword_1EAD37A80);
  return sub_1900B0E70();
}

void sub_190000634(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    if (qword_1EAD34E08 != -1)
    {
      swift_once();
    }

    v13 = sub_1900B0E80();
    __swift_project_value_buffer(v13, qword_1EAD37A80);
    v16 = sub_1900B0E60();
    v14 = sub_1900B17B0();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18FFDC000, v16, v14, "tiInputContextHistory was nil", v15, 2u);
      MEMORY[0x193AE9010](v15, -1, -1);
    }

    goto LABEL_13;
  }

  v16 = a2;
  v5 = [v16 threadIdentifier];
  v6 = [v16 recipientIdentifiers];
  if (v6)
  {

    v7 = [v16 recipientIdentifiers];
    if (!v7)
    {

      __break(1u);
      return;
    }

    v8 = v7;
    v9 = sub_1900B1770();

    v10 = *(v9 + 16);

    if (v10 > 1)
    {
      v11 = *MEMORY[0x1E69A8C40];
      if (a3)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_18FFEB8D0(0, &qword_1EAD35270, 0x1E69E58C0);
        sub_190000864();
        a3 = sub_1900B1590();
      }

      [objc_opt_self() sendSignal:a1 toChannel:v11 withNullableUniqueStringID:v5 withPayload:a3];

LABEL_13:
      v12 = v16;
      goto LABEL_14;
    }
  }

  v12 = v5;
LABEL_14:
}

unint64_t sub_190000864()
{
  result = qword_1EAD34F78;
  if (!qword_1EAD34F78)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34F78);
  }

  return result;
}

void sub_1900008BC(void *a1, id a2)
{
  v4 = [a2 actionsResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 responses];

    sub_18FFEB8D0(0, &qword_1EAD35050, 0x1E69D9338);
    v7 = sub_1900B16A0();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }

LABEL_98:
    v8 = sub_1900B1940();
    v101 = a2;
    v102 = a1;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_99:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35278, &qword_1900C04A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1900BF5E0;
    if (qword_1EAD34B68 != -1)
    {
      swift_once();
    }

    v70 = qword_1EAD37970;
    *(inited + 32) = qword_1EAD37970;
    type metadata accessor for IAPayloadValue(0);
    v71 = v70;
    *(inited + 40) = sub_1900B1690();
    v72 = sub_18FFEB50C(inited);
    swift_setDeallocating();
    sub_190001624(inited + 32);
    v73 = [v101 actionsResponse];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 options];

      v76 = sub_1900B15A0();
      v77 = *MEMORY[0x1E69A8C58];
      sub_18FFF91B0(v76);
      v78 = sub_1900B15E0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v78, v77, isUniquelyReferenced_nonNull_native);

      v80 = v72;
      v81 = *MEMORY[0x1E69A8C80];
      sub_18FFF94D8(v76);
      v82 = sub_1900B15E0();

      v83 = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v82, v81, v83);

      v84 = *MEMORY[0x1E69A8C78];
      v85 = sub_18FFF958C(v76);
      if (!v85)
      {
        sub_18FFEB8D0(0, &qword_1EAD34B40, 0x1E696AD98);
        v85 = sub_1900B1820();
      }

      v86 = v85;

      v87 = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v86, v84, v87);

      v72 = v80;
      sub_18FFF976C(v76);
      if (v88)
      {
        v89 = *MEMORY[0x1E69A8C60];
        v90 = sub_1900B15E0();

        v91 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v90, v89, v91);
      }

      v92 = v102;
      v93 = sub_18FFF9658(v76);
      if (v93)
      {
        v94 = v93;
        v95 = *MEMORY[0x1E69A8C68];
        v96 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v94, v95, v96);
      }

      v97 = sub_18FFF9664(v76);

      if (v97)
      {
        v98 = *MEMORY[0x1E69A8C88];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v97, v98, v99);
      }
    }

    else
    {

      v92 = v102;
    }

    if (qword_1EAD34B58 != -1)
    {
      swift_once();
    }

    sub_190000634(qword_1EAD37968, v92, v72);

    return;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_98;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v101 = a2;
  v102 = a1;
  if (!v8)
  {
    goto LABEL_99;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v103 = v7;
    v100 = *MEMORY[0x1E69D93D8];
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x193AE7440](v9, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v12 actionType];
      v15 = sub_1900B1610();
      v17 = v16;
      if (v15 == sub_1900B1610() && v17 == v18)
      {
      }

      else
      {
        v20 = v8;
        v21 = v10;
        v22 = sub_1900B19A0();

        if ((v22 & 1) == 0)
        {
          v24 = sub_1900B1610();
          v26 = v25;
          if (v24 == sub_1900B1610() && v26 == v27)
          {

            goto LABEL_25;
          }

          v28 = sub_1900B19A0();

          if (v28)
          {

LABEL_25:
            v10 = v21;
            if (qword_1EAD34DC8 != -1)
            {
              swift_once();
            }

            v29 = qword_1EAD37A40;
            goto LABEL_28;
          }

          v33 = sub_1900B1610();
          v35 = v34;
          if (v33 == sub_1900B1610() && v35 == v36)
          {
          }

          else
          {
            v37 = sub_1900B19A0();

            if ((v37 & 1) == 0)
            {
              v38 = sub_1900B1610();
              v40 = v39;
              if (v38 == sub_1900B1610() && v40 == v41)
              {
              }

              else
              {
                v42 = sub_1900B19A0();

                if ((v42 & 1) == 0)
                {
                  v43 = sub_1900B1610();
                  v45 = v44;
                  if (v43 == sub_1900B1610() && v45 == v46)
                  {
                  }

                  else
                  {
                    v47 = sub_1900B19A0();

                    if ((v47 & 1) == 0)
                    {
                      v48 = sub_1900B1610();
                      v50 = v49;
                      if (v48 == sub_1900B1610() && v50 == v51)
                      {
                      }

                      else
                      {
                        v52 = sub_1900B19A0();

                        if ((v52 & 1) == 0)
                        {
                          v53 = sub_1900B1610();
                          v55 = v54;
                          if (v53 == sub_1900B1610() && v55 == v56)
                          {
                          }

                          else
                          {
                            v57 = sub_1900B19A0();

                            if ((v57 & 1) == 0)
                            {
                              v58 = sub_1900B1610();
                              v60 = v59;
                              if (v58 == sub_1900B1610() && v60 == v61)
                              {
                              }

                              else
                              {
                                v62 = sub_1900B19A0();

                                if ((v62 & 1) == 0)
                                {
                                  v63 = sub_1900B1610();
                                  v65 = v64;
                                  if (v63 == sub_1900B1610() && v65 == v66)
                                  {

                                    v10 = v21;
                                  }

                                  else
                                  {
                                    v67 = sub_1900B19A0();

                                    v10 = v21;
                                    if ((v67 & 1) == 0)
                                    {
                                      if (qword_1EAD34DB8 != -1)
                                      {
                                        swift_once();
                                      }

                                      v23 = qword_1EAD37A30;
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
                                      }

                                      v31 = v11[2];
                                      v68 = v11[3];
                                      v32 = v31 + 1;
                                      if (v31 >= v68 >> 1)
                                      {
                                        v11 = sub_18FFEE3EC((v68 > 1), v31 + 1, 1, v11);
                                      }

                                      v10 = v21;
                                      v8 = v20;
                                      v7 = v103;
                                      goto LABEL_33;
                                    }
                                  }

                                  if (qword_1EAD34E00 != -1)
                                  {
                                    swift_once();
                                  }

                                  v29 = qword_1EAD37A78;
                                  goto LABEL_28;
                                }
                              }

                              v10 = v21;
                              if (qword_1EAD34DF8 != -1)
                              {
                                swift_once();
                              }

                              v29 = qword_1EAD37A70;
LABEL_28:
                              v23 = v29;
                              v8 = v20;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
                              }

                              v7 = v103;
                              goto LABEL_31;
                            }
                          }

                          v10 = v21;
                          if (qword_1EAD34DF0 != -1)
                          {
                            swift_once();
                          }

                          v29 = qword_1EAD37A68;
                          goto LABEL_28;
                        }
                      }

                      v10 = v21;
                      if (qword_1EAD34DE8 != -1)
                      {
                        swift_once();
                      }

                      v29 = qword_1EAD37A60;
                      goto LABEL_28;
                    }
                  }

                  v10 = v21;
                  if (qword_1EAD34DE0 != -1)
                  {
                    swift_once();
                  }

                  v29 = qword_1EAD37A58;
                  goto LABEL_28;
                }
              }

              v10 = v21;
              if (qword_1EAD34DD8 != -1)
              {
                swift_once();
              }

              v29 = qword_1EAD37A50;
              goto LABEL_28;
            }
          }

          v10 = v21;
          if (qword_1EAD34DD0 != -1)
          {
            swift_once();
          }

          v29 = qword_1EAD37A48;
          goto LABEL_28;
        }

        v10 = v21;
        v8 = v20;
        v7 = v103;
      }

      if (qword_1EAD34DC0 != -1)
      {
        swift_once();
      }

      v23 = qword_1EAD37A38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
      }

LABEL_31:
      v31 = v11[2];
      v30 = v11[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v11 = sub_18FFEE3EC((v30 > 1), v31 + 1, 1, v11);
      }

LABEL_33:
      ++v9;

      v11[2] = v32;
      v11[v31 + 4] = v23;
      if (v8 == v9)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
}