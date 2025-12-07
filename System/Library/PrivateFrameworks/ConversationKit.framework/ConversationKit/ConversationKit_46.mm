uint64_t AppLaunchNotice.title.getter(uint64_t a1)
{
  AppLaunchNotice.noticeContent.getter();
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t AppLaunchNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  AppLaunchNotice.noticeContent.getter();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_208();
  return AttributedString.init(_:attributes:)();
}

void SystemUpdateNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (v0[2])
  {
    if (!*v0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v8._countAndFlagsBits = 543519573;
      v8._object = 0xE400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      v9._countAndFlagsBits = OUTLINED_FUNCTION_7_8();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);
      OUTLINED_FUNCTION_100_3();
      v11 = v10 + 17;
      v13 = v12 | 0x8000000000000000;
LABEL_16:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
      String.LocalizationValue.init(stringInterpolation:)();
      AttributedString.init(cnkLocalized:)();
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if (*v0 == 1)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v5 = 0x64656D2065766F4DLL;
      v6 = 0xEE00206F74206169;
LABEL_15:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v5);
      v25._countAndFlagsBits = OUTLINED_FUNCTION_7_8();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);
      OUTLINED_FUNCTION_11();
      v11 = OUTLINED_FUNCTION_193_0();
      goto LABEL_16;
    }

    _s15ConversationKit11ParticipantVSgWOcTm_0((v0 + 3), v26, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    if (v27)
    {
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v14 = OUTLINED_FUNCTION_7_26();
      v16 = v15(v14);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v18)
      {
LABEL_14:
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 0x9C80E22079616C50;
        v23._object = 0xA800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        v24._countAndFlagsBits = v16;
        v24._object = v18;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

        v5 = 0x206E6F209D80E2;
        v6 = 0xA700000000000000;
        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of IDView<AvatarStackView, [UUID]>(v26, &_s15ConversationKit8Activity_pSgMd);
    }

    v19 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    v16 = OUTLINED_FUNCTION_48_1(0xD000000000000016, 0x80000001BC5099F0, v20, v21);
    v18 = v22;

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_30_0();

  AttributedString.init(stringLiteral:)();
}

uint64_t SystemUpdateNotice.title.getter()
{
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = *(v0 + 1);
    v3 = *v0;
    v4 = objc_opt_self();

    v5 = [v4 conversationKit];
    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_251_0();
        v18.super.isa = v5;
        OUTLINED_FUNCTION_17_0(v16 | 8, v17 | 0x8000000000000000, v19, v20, v18);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BC4BAA20;
        _s15ConversationKit11ParticipantVSgWOcTm_0((v0 + 24), v36, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
        v22 = v37;
        if (v37)
        {
          v23 = v38;
          __swift_project_boxed_opaque_existential_1(v36, v37);
          v22 = (*(v23 + 48))(v22, v23);
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_1(v36);
        }

        else
        {
          outlined destroy of IDView<AvatarStackView, [UUID]>(v36, &_s15ConversationKit8Activity_pSgMd);
          v25 = 0;
        }

        v26 = MEMORY[0x1E69E6158];
        *(v21 + 56) = MEMORY[0x1E69E6158];
        v27 = lazy protocol witness table accessor for type String and conformance String();
        *(v21 + 64) = v27;
        if (!v25)
        {
          v28 = [v4 conversationKit];
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_5_5();
          v29.super.isa = v28;
          v22 = OUTLINED_FUNCTION_17_0(v30, v31, v32, v33, v29);
          v25 = v34;
        }

        *(v21 + 32) = v22;
        *(v21 + 40) = v25;
        *(v21 + 96) = v26;
        *(v21 + 104) = v27;
        *(v21 + 72) = v2;
        *(v21 + 80) = v1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_251_0();
      OUTLINED_FUNCTION_5_5();
      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000015;
    }

    else
    {
      OUTLINED_FUNCTION_5_5();
      v10 = v11 + 3;
      v9 = v12 | 0x8000000000000000;
    }

    v13.super.isa = v5;
    OUTLINED_FUNCTION_17_0(v10, v9, v6, v7, v13);
    OUTLINED_FUNCTION_18_8();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = OUTLINED_FUNCTION_13_12(v14);
    *(v15 + 16) = xmmword_1BC4BA940;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v2;
    *(v15 + 40) = v1;
    OUTLINED_FUNCTION_15_14();
LABEL_14:
    String.init(format:_:)();
    OUTLINED_FUNCTION_305();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t SystemUpdateNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AttributeContainer();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (*(v0 + 16))
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(0xD000000000000013, 0x80000001BC50D730, v4, v5);
    OUTLINED_FUNCTION_187();
  }

  AttributeContainer.init()();
  OUTLINED_FUNCTION_1_5();
  return AttributedString.init(_:attributes:)();
}

uint64_t FaceIDUnavailableNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v3 = OUTLINED_FUNCTION_261_1();
  v4.super.isa = v2;
  OUTLINED_FUNCTION_17_0(v3, v5, v6, v7, v4);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

uint64_t FaceIDUnavailableNotice.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v1 = OUTLINED_FUNCTION_261_1();
  v2.super.isa = v0;
  OUTLINED_FUNCTION_17_0(v1, v3, v4, v5, v2);
  OUTLINED_FUNCTION_18_8();

  return OUTLINED_FUNCTION_15_14();
}

uint64_t FaceIDUnavailableNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_30();
  v0 = type metadata accessor for AttributeContainer();
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v3.super.isa = v2;
  OUTLINED_FUNCTION_17_0(v4, 0xE900000000000043, v5, v6, v3);
  OUTLINED_FUNCTION_98_3();

  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  return AttributedString.init(_:attributes:)();
}

uint64_t *AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor()
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39(&one-time initialization token for bundleIDToItemType);
  }

  return &static AppLaunchNotice.bundleIDToItemType;
}

uint64_t _s10Foundation16AttributedStringV15ConversationKitE29conversationControlsLocalized9includingACSSAAE17LocalizationValueV_s7KeyPathCyAA15AttributeScopesOxmGtcAA0N5ScopeRzlufCAlDE0dE10AttributesV_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v10);
  v14[2] = "ConversationKit-SystemAperture";
  v14[1] = [objc_opt_self() conversationKit];
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A], &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();
  AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  return (*(v9 + 8))(v15, v8);
}

uint64_t default argument 6 of AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1016))();
}

void AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t *a31)
{
  OUTLINED_FUNCTION_141_0();
  v57 = v33;
  v55 = v34;
  v56 = v35;
  v37 = v36;
  v39 = v38;
  OUTLINED_FUNCTION_0_91();
  v41 = v40;
  v43 = *v42;
  v45 = *v44;
  v46 = *a30;
  v47 = *a31;
  v54 = a31[1];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v48 = OUTLINED_FUNCTION_244_1();
  v49(v48);
  v50 = type metadata accessor for AppLaunchNotice(0);
  *(v41 + v50[5]) = v32;
  *(v41 + v50[6]) = v43;
  *(v41 + v50[7]) = v39;
  *(v41 + v50[8]) = v37;
  *(v41 + v50[9]) = v55;
  *(v41 + v50[10]) = v31;
  *(v41 + v50[11]) = v45;
  *(v41 + v50[12]) = v56;
  v51 = (v41 + v50[13]);
  *v51 = v57;
  v51[1] = a27;
  v52 = (v41 + v50[14]);
  *v52 = a28;
  v52[1] = a29;
  *(v41 + v50[15]) = v46;
  v53 = (v41 + v50[16]);
  *v53 = v47;
  v53[1] = v54;
  OUTLINED_FUNCTION_140_2();
}

void AccountUpdateNotice.init(type:participants:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30)
{
  OUTLINED_FUNCTION_141_0();
  v56 = v30;
  v55 = v31;
  v54 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v43 = *v42;
  v44 = *a30;
  v45 = a30[1];
  *v39 = *v41;
  *(v39 + 8) = v46;
  updated = type metadata accessor for AccountUpdateNotice(0);
  v48 = updated[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v49 + 32))(v40 + v48, v36);
  *(v40 + updated[7]) = v38;
  *(v40 + updated[8]) = v43;
  v50 = (v40 + updated[9]);
  *v50 = v34;
  v50[1] = v54;
  *(v40 + updated[10]) = v55;
  v51 = (v40 + updated[11]);
  *v51 = v56;
  v51[1] = a27;
  v52 = (v40 + updated[12]);
  *v52 = a28;
  v52[1] = a29;
  v53 = (v40 + updated[13]);
  *v53 = v44;
  v53[1] = v45;
  OUTLINED_FUNCTION_140_2();
}

uint64_t default argument 1 of SessionActivationRequestNotice.init(expirationCheck:dismissalDuration:uuid:timeSinceReferenceDate:priority:style:shouldTransitionToHUD:noticeAccessory:actionHandler:dismissHandler:bundleIdentifier:activity:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1008))();
}

uint64_t ParticipantReaction.init(participant:reaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_39_1(a1, a2);
  v8 = MEMORY[0x1BFB209B0](v7);
  v9.value = VideoReaction.init(rawValue:)(v8).value;
  if (v9.value == ConversationKit_VideoReaction_unknownDefault)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = OUTLINED_FUNCTION_13_12(v11);
    *(v12 + 16) = xmmword_1BC4BA940;
    v25 = a2;
    v26 = a3;
    v13 = MEMORY[0x1E69E6158];
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v12 + 56) = v13;
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("invalid reaction %@", 19, 2, &dword_1BBC58000, v10, v17, v12, v25, v26);

    OUTLINED_FUNCTION_5_103();
    _s15ConversationKit11ParticipantVWOhTm_12();
    type metadata accessor for ParticipantReaction(0);
    v18 = OUTLINED_FUNCTION_57_11();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    value = v9.value;

    OUTLINED_FUNCTION_3_119();
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v24 = type metadata accessor for ParticipantReaction(0);
    *(a4 + *(v24 + 20)) = value;

    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v24);
  }
}

uint64_t default argument 8 of ReactionNotice.init(reactions:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:dismissalDuration:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1096))();
}

double default argument 9 of ReactionNotice.init(reactions:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:dismissalDuration:noticeAccessory:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BC4BB7D0;
  return result;
}

void SessionActionNotice.init(type:participant:conversation:activity:triggeredLocally:deviceFamily:uuid:timeSinceReferenceDate:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_218_1();
  v61 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  OUTLINED_FUNCTION_238_1();
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  v54 = type metadata accessor for SessionActionNotice(0);
  outlined init with take of Participant?(v47, v51 + v54[5], &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  outlined init with take of TapInteractionHandler(v45, v51 + v54[6]);
  outlined init with take of TapInteractionHandler(v43, v51 + v54[7]);
  *(v51 + v54[8]) = v41;
  v55 = v51 + v54[9];
  *v55 = v39;
  v55[8] = v37 & 1;
  v56 = v54[10];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v57 + 32))(v51 + v56, v61);
  *(v51 + v54[11]) = v49;
  v58 = (v51 + v54[12]);
  *v58 = a29;
  v58[1] = a30;
  *(v51 + v54[13]) = a31;
  v59 = (v51 + v54[14]);
  *v59 = a10;
  v59[1] = a11;
  v60 = (v51 + v54[15]);
  *v60 = a34;
  v60[1] = a35;
  OUTLINED_FUNCTION_217_1();
}

void SessionActionNotice.NoticeType.init(notice:)(void *a1@<X0>, void *a2@<X8>)
{
  switch([a1 sessionEventType])
  {
    case 1uLL:

      v6 = 0;
      v7 = xmmword_1BC4D6810;
      goto LABEL_30;
    case 2uLL:

      v6 = 0;
      v7 = xmmword_1BC4B6480;
      goto LABEL_30;
    case 3uLL:

      v6 = 0;
      v7 = xmmword_1BC4D6800;
      goto LABEL_30;
    case 4uLL:

      v6 = 0;
      v7 = xmmword_1BC4D67F0;
      goto LABEL_30;
    case 7uLL:
      outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
      OUTLINED_FUNCTION_216_0();
      v6 = 0;
      if (v3)
      {
        v17 = v2;
      }

      else
      {
        v17 = 0;
      }

      v18 = 0xE000000000000000;
      if (v3)
      {
        v18 = v3;
      }

      *a2 = v17;
      a2[1] = v18;
      v14 = 0x8000000000000000;
      break;
    case 8uLL:
      v8 = [a1 queueItemType];
      if (v8 == 2)
      {
        v11 = 0x4000000000000001;
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        if (v3)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0;
        }

        if (v3)
        {
          v10 = v3;
        }

        else
        {
          v10 = 0xE000000000000000;
        }
      }

      else if (v8 == 1)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        if (v3)
        {
          v9 = v2;
        }

        else
        {
          v9 = 0;
        }

        if (v3)
        {
          v10 = v3;
        }

        else
        {
          v10 = 0xE000000000000000;
        }

        v11 = 0x4000000000000000;
      }

      else
      {

        v9 = 0;
        v10 = 0;
        v11 = 0x4000000000000002;
      }

      v6 = 0;
      *a2 = v9;
      a2[1] = v10;
      a2[2] = v11;
      goto LABEL_33;
    case 0xAuLL:
      v12 = [a1 queueItemType];
      if (v12 == 2)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_260_2();
        if (v16)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = v3;
        }

        v14 = 1;
      }

      else if (v12 == 1)
      {
        outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_260_2();
        v15 = 0xE000000000000000;
        if (!v16)
        {
          v15 = v3;
        }
      }

      else
      {

        v13 = 0;
        v15 = 0;
        v14 = 2;
      }

      *a2 = v13;
      a2[1] = v15;
      v6 = 1;
      break;
    case 0xBuLL:

      v6 = 0;
      v7 = xmmword_1BC4D67E0;
      goto LABEL_30;
    case 0xCuLL:

      v6 = 0;
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_31;
    case 0xDuLL:

      v6 = 0;
      v7 = xmmword_1BC4C9460;
      goto LABEL_30;
    case 0xEuLL:

      v6 = 0;
      v7 = xmmword_1BC4D67B0;
      goto LABEL_30;
    case 0xFuLL:

      v6 = 0;
      v7 = xmmword_1BC4D2F60;
LABEL_30:
      *a2 = v7;
LABEL_31:
      v14 = 0xC000000000000000;
      break;
    default:

      v6 = 0;
      *a2 = 0;
      a2[1] = 0;
      v14 = 0x3FFFFFFFCLL;
      break;
  }

  a2[2] = v14;
LABEL_33:
  a2[3] = v6;
}

uint64_t SessionActionNotice.NoticeType.isSessionChange.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v22[0] = *v0;
  v22[1] = v2;
  v22[2] = v3;
  v22[3] = v4;
  v22[4] = 0;
  v22[5] = 0;
  v23 = xmmword_1BC4CB170;
  switch(v3 >> 62)
  {
    case 2uLL:
      v17 = xmmword_1BC4CB170;

      goto LABEL_4;
    case 3uLL:
      OUTLINED_FUNCTION_124();
      if (v15 && !(v2 | v1 | v4))
      {
        v16 = v22;
LABEL_16:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v16, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
        return 1;
      }

      v17 = v14;
      if (v1 == 1 && !v2)
      {
        OUTLINED_FUNCTION_124();
        if (v15)
        {
          if (!v4)
          {
            outlined destroy of IDView<AvatarStackView, [UUID]>(v22, &_s15ConversationKit19SessionActionNoticeV0E4TypeO_AEtMd);
            v18 = xmmword_1BC4C9460;
            v19 = v17;
            v20 = xmmword_1BC4C9460;
            v21 = v17;
            v16 = &v18;
            goto LABEL_16;
          }
        }
      }

      if (v1 != 2 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
      {
        if (v1 != 3 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
        {
          if (v1 != 4 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
          {
            if (v1 != 5 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
            {
              if (v1 != 6 || v2 || (OUTLINED_FUNCTION_124(), !v15) || v4)
              {
                if (v1 == 7 && !v2)
                {
                  OUTLINED_FUNCTION_124();
                }
              }
            }
          }
        }
      }

LABEL_4:
      OUTLINED_FUNCTION_93_1();
      outlined destroy of IDView<AvatarStackView, [UUID]>(v7, v8);
      *&v18 = v1;
      *(&v18 + 1) = v2;
      *&v19 = v3;
      *(&v19 + 1) = v4;
      v20 = xmmword_1BC4C9460;
      v21 = v17;
      v9 = OUTLINED_FUNCTION_76();
      outlined copy of SessionActionNotice.NoticeType(v9, v10, v3);
      OUTLINED_FUNCTION_93_1();
      outlined destroy of IDView<AvatarStackView, [UUID]>(v11, v12);
      return 0;
    default:
      v17 = xmmword_1BC4CB170;
      v5 = OUTLINED_FUNCTION_76();
      outlined copy of CallScreening.EndingAction(v5, v6, v3);
      goto LABEL_4;
  }
}

void SystemUpdateNotice.init(type:activity:uuid:timeSinceReferenceDate:priority:bundleIdentifier:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t *a35)
{
  OUTLINED_FUNCTION_218_1();
  v61 = v35;
  v62 = v36;
  v60 = v37;
  v39 = v38;
  v41 = v40;
  *(v40 + 24) = *v42;
  OUTLINED_FUNCTION_238_1();
  v44 = *v43;
  v45 = *a34;
  v46 = *a35;
  v47 = a35[1];
  *v41 = v48;
  *(v41 + 8) = v49;
  *(v41 + 16) = v50;
  *(v41 + 40) = v51;
  *(v41 + 56) = *(v52 + 32);
  updated = type metadata accessor for SystemUpdateNotice(0);
  v54 = updated[6];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v55 + 32))(v41 + v54, v60);
  *(v41 + updated[7]) = v39;
  *(v41 + updated[8]) = v44;
  v56 = (v41 + updated[9]);
  *v56 = v61;
  v56[1] = v62;
  *(v41 + updated[10]) = a29;
  v57 = (v41 + updated[11]);
  *v57 = a30;
  v57[1] = a31;
  v58 = (v41 + updated[12]);
  *v58 = a10;
  v58[1] = a11;
  *(v41 + updated[13]) = v45;
  v59 = (v41 + updated[14]);
  *v59 = v46;
  v59[1] = v47;
  OUTLINED_FUNCTION_217_1();
}

ConversationKit::NoticePriority_optional __swiftcall NoticePriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NoticePriority@<X0>(uint64_t *a1@<X8>)
{
  result = NoticePriority.rawValue.getter();
  *a1 = result;
  return result;
}

ConversationKit::ConversationNoticeStyle_optional __swiftcall ConversationNoticeStyle.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationNoticeStyle.init(rawValue:), v4);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ConversationNoticeStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6765746E696E6F6ELL;
  }

  else
  {
    return 0x7461726765746E69;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationNoticeStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationNoticeStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationNoticeSubtitleStyle@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationNoticeSubtitleStyle.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL specialized Notice.isExpired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + *(type metadata accessor for SessionActionNotice(0) + 44));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7 - v8 > (*(*static Defaults.shared + 1032))();
}

{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = *(v1 + *(type metadata accessor for AppLaunchNotice(0) + 20));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return v7 - v8 > (*(*static Defaults.shared + 1032))();
}

BOOL specialized Notice.isExpired.getter(uint64_t (*a1)(void))
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v3 = OUTLINED_FUNCTION_208();
  v4(v3);
  a1(0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v3 = OUTLINED_FUNCTION_208();
  v4(v3);
  a1(0);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

BOOL Notice.isExpired.getter()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = OUTLINED_FUNCTION_209();
  v2(v1);
  v3 = OUTLINED_FUNCTION_1_5();
  v4(v3);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 1032))();
  return OUTLINED_FUNCTION_154_0(v6);
}

uint64_t Notice.dismissalDuration.getter()
{
  return Notice.dismissalDuration.getter();
}

{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1024))();
}

uint64_t specialized Notice.dismissalDuration.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static Defaults.shared + 1024))();
}

void specialized Notice.subtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v1();
  AttributedString.characters.getter();
  v4 = OUTLINED_FUNCTION_7_8();
  v5(v4);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v6, v7, MEMORY[0x1E6968688]);
  OUTLINED_FUNCTION_45_1();
  String.init<A>(_:)();
  OUTLINED_FUNCTION_49();
}

uint64_t specialized Notice.subtitle.getter(double a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for SessionActionNotice(0) + 32)) == 1)
  {
    SessionActionNotice.attributionDescription.getter();
  }

  else
  {
    SessionActionNotice.actionDescription.getter();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.characters.getter();
  (*(v5 + 8))(v7, v4);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return String.init<A>(_:)();
}

{
  v1 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppLaunchNotice.noticeContent.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.characters.getter();
  (*(v4 + 8))(v6, v3);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return String.init<A>(_:)();
}

{
  v1 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FaceIDUnavailableNotice.attributedSubtitle.getter();
  AttributedString.characters.getter();
  (*(v3 + 8))(v5, v2);
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  return String.init<A>(_:)();
}

void Notice.subtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  (*(v1 + 96))(v3, v1);
  AttributedString.characters.getter();
  v6 = OUTLINED_FUNCTION_157();
  v7(v6);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v8, v9, MEMORY[0x1E6968688]);
  OUTLINED_FUNCTION_45_1();
  String.init<A>(_:)();
  OUTLINED_FUNCTION_49();
}

void Notice.subtitleStyle.getter(_BYTE *a1@<X8>)
{
  Notice.subtitleStyle.getter(a1);
}

{
  OUTLINED_FUNCTION_27_0(a1);
}

BOOL specialized Notice.shouldReplace(notice:)(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for ReactionNotice(0) + 28));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 56))(&v7, v4, v5);
  return v7 >= v3;
}

BOOL specialized Notice.shouldReplace(notice:)()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v3 = *(v0 + *(v2(v1) + 32));
  OUTLINED_FUNCTION_32_21();
  v4 = OUTLINED_FUNCTION_2_14();
  v5(v4);
  return v7 >= v3;
}

BOOL Notice.shouldReplace(notice:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v3(v2);
  OUTLINED_FUNCTION_32_21();
  v4 = OUTLINED_FUNCTION_2_14();
  v5(v4);
  return v7 >= v8;
}

uint64_t key path getter for SessionActivationRequestNotice.expirationCheck : SessionActivationRequestNotice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  a2[1] = v5;
}

uint64_t key path setter for SessionActivationRequestNotice.expirationCheck : SessionActivationRequestNotice(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out Bool);
  a2[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.expirationCheck.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.uuid.getter()
{
  return SessionActivationRequestNotice.uuid.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v1(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_97_6();

  return v3(v2);
}

uint64_t SessionActivationRequestNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SessionActivationRequestNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t SessionActivationRequestNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActivationRequestNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 32));
}

uint64_t SessionActivationRequestNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for SessionActivationRequestNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActivationRequestNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 36));
}

uint64_t SessionActivationRequestNotice.style.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t SessionActivationRequestNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t SessionActivationRequestNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

double SessionActivationRequestNotice.noticeAccessory.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  v2 = OUTLINED_FUNCTION_153_0(*(v1 + 44));

  return outlined copy of NoticeAccessory(v2, v3);
}

void SessionActivationRequestNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v4 = type metadata accessor for SessionActivationRequestNotice(v3);
  v5 = OUTLINED_FUNCTION_115_2(*(v4 + 44));
  outlined consume of NoticeAccessory(v5, v6);
  *v1 = v0;
  v1[1] = v2;
}

uint64_t SessionActivationRequestNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActivationRequestNotice.actionHandler : SessionActivationRequestNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActivationRequestNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SessionActivationRequestNotice.actionHandler : SessionActivationRequestNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SessionActivationRequestNotice(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.actionHandler.getter()
{
  return SessionActivationRequestNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 48));
}

uint64_t SessionActivationRequestNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActivationRequestNotice.dismissHandler : SessionActivationRequestNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActivationRequestNotice(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SessionActivationRequestNotice.dismissHandler : SessionActivationRequestNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SessionActivationRequestNotice(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.dismissHandler.getter()
{
  return SessionActivationRequestNotice.dismissHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 52));
}

uint64_t SessionActivationRequestNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.getter()
{
  type metadata accessor for SessionActivationRequestNotice(0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  type metadata accessor for SessionActivationRequestNotice(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActivationRequestNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActivationRequestNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t SessionActivationRequestNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v1 = type metadata accessor for SessionActivationRequestNotice(0);
  OUTLINED_FUNCTION_63_1((v0 + *(v1 + 60)));
  v2 = OUTLINED_FUNCTION_4_38();
  v4 = v3(v2);
  MEMORY[0x1BFB20B10](v4);

  return 0xD000000000000020;
}

uint64_t SessionActivationRequestNotice.activity.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActivationRequestNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 60));
  return outlined init with copy of Activity();
}

void SessionActivationRequestNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30SessionActivationRequestNoticeVSgMd, &_s15ConversationKit30SessionActivationRequestNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_96();
  type metadata accessor for SessionActivationRequestNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 60)), *(v0 + *(v2 + 60) + 24));
    v11 = OUTLINED_FUNCTION_0_95();
    v13 = v12(v11);
    v15 = v14;
    __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 60)), *(v1 + *(v2 + 60) + 24));
    v16 = OUTLINED_FUNCTION_2_14();
    if (v13 != v17(v16) || v15 != v18)
    {
      OUTLINED_FUNCTION_157();
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit30SessionActivationRequestNoticeVSgMd);
  }

  OUTLINED_FUNCTION_49();
}

ConversationKit::AccountUpdateNotice::NoticeType_optional __swiftcall AccountUpdateNotice.NoticeType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AccountUpdateNotice.NoticeType.init(rawValue:), v4);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t AccountUpdateNotice.NoticeType.rawValue.getter()
{
  OUTLINED_FUNCTION_223_1();
  v2 = 1952867692;
  if (!v3)
  {
    v2 = 0x6E456172656D6163;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AccountUpdateNotice.NoticeType@<X0>(uint64_t *a1@<X8>)
{
  result = AccountUpdateNotice.NoticeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t AccountUpdateNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_223_1();
  v4 = 1952867692;
  if (!v5)
  {
    v4 = 0x6E456172656D6163;
    v3 = 0xED000064656C6261;
  }

  if (v0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (v0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x1BFB20B10](v6, v7);

  return 0xD000000000000015;
}

uint64_t SessionActivationRequestNotice.uuid.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = *(v3(v2) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t AccountUpdateNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AccountUpdateNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t AccountUpdateNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AccountUpdateNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for AccountUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 32));
}

uint64_t AccountUpdateNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AccountUpdateNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t AccountUpdateNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.bundleIdentifier.getter()
{
  return AccountUpdateNotice.bundleIdentifier.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v1(v0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t AccountUpdateNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  updated = type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_207(updated);
}

uint64_t AccountUpdateNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AccountUpdateNotice.actionHandler : AccountUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountUpdateNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for AccountUpdateNotice.actionHandler : AccountUpdateNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AccountUpdateNotice(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AccountUpdateNotice.actionHandler.getter()
{
  return AccountUpdateNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 44));
}

uint64_t AccountUpdateNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AccountUpdateNotice.dismissHandler : AccountUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountUpdateNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for AccountUpdateNotice.dismissHandler : AccountUpdateNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AccountUpdateNotice(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.actionHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 48));
}

uint64_t AccountUpdateNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.coalesce(with:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AccountUpdateNoticeVSgMd, &_s15ConversationKit19AccountUpdateNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for AccountUpdateNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (!OUTLINED_FUNCTION_147(v7))
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19AccountUpdateNoticeVSgMd);
    return 0;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_45_1();
  _s15ConversationKit11ParticipantVWObTm_4();
  if ((specialized == infix<A>(_:_:)(*v1, *v0) & 1) == 0)
  {
    if (AccountUpdateNotice.hasSameParticipants(as:)(v0))
    {
      v14 = *v0;
      OUTLINED_FUNCTION_19_37();
      _s15ConversationKit11ParticipantVWOhTm_12();
      *v1 = v14;
      return 1;
    }

    OUTLINED_FUNCTION_19_37();
    _s15ConversationKit11ParticipantVWOhTm_12();
    return 0;
  }

  specialized Array.append<A>(contentsOf:)(v12);
  OUTLINED_FUNCTION_19_37();
  _s15ConversationKit11ParticipantVWOhTm_12();
  return 1;
}

uint64_t AccountUpdateNotice.hasSameParticipants(as:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(*(v1 + 8) + 16) != *(v2 + 16))
  {
    return 0;
  }

  v6 = *(v1 + 8);

  specialized MutableCollection<>.sort(by:)(&v6);
  v6 = v2;

  specialized MutableCollection<>.sort(by:)(&v6);
  OUTLINED_FUNCTION_38_2();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5();
  v4 = v3;

  return v4 & 1;
}

BOOL closure #1 in AccountUpdateNotice.title.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Participant(0);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t _sSTsE5count5whereSiSb7ElementQzqd__YKXE_tqd__YKs5ErrorRd__lFSay15ConversationKit11ParticipantVG_s5NeverOTg5(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return v7;
    }

    v10 = *(type metadata accessor for Participant(0) - 8);
    result = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v4)
    {
      break;
    }

    v4 = 0;
    ++v8;
    v12 = __OFADD__(v7, result & 1);
    v7 += result & 1;
    if (v12)
    {
      __break(1u);
      return v7;
    }
  }

  __break(1u);
  return result;
}

double AccountUpdateNotice.noticeAccessory.getter()
{
  return AccountUpdateNotice.noticeAccessory.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_153_0(*(v2 + 52));

  return outlined copy of NoticeAccessory(v3, v4);
}

uint64_t AccountUpdateNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AccountUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AccountUpdateNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19AccountUpdateNoticeVSgMd, &_s15ConversationKit19AccountUpdateNoticeVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for AccountUpdateNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = 0;
    if (specialized == infix<A>(_:_:)(*v1, *v2))
    {
      v12 = AccountUpdateNotice.hasSameParticipants(as:)(v2);
    }

    OUTLINED_FUNCTION_19_37();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit19AccountUpdateNoticeVSgMd);
    v12 = 0;
  }

  return v12 & 1;
}

void SessionActionNotice.QueueItemType.init(notice:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 queueItemType];
  if (v5 == 2)
  {
    outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_260_2();
    if (v9)
    {
      v8 = 0xE000000000000000;
    }

    else
    {
      v8 = v2;
    }

    v7 = 1;
  }

  else if (v5 == 1)
  {
    outlined bridged method (pb) of @objc TUConversationNotice.item.getter(a1);
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_260_2();
    v8 = 0xE000000000000000;
    if (!v9)
    {
      v8 = v2;
    }
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v7 = 2;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
}

uint64_t static SessionActionNotice.QueueItemType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v19 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = OUTLINED_FUNCTION_1_5();
      outlined copy of CallScreening.EndingAction(v21, v22, 0);
      v23 = OUTLINED_FUNCTION_38_2();
      outlined copy of CallScreening.EndingAction(v23, v24, 0);
      v25 = OUTLINED_FUNCTION_38_2();
      outlined consume of CallScreening.EndingAction(v25, v26, 0);
      v16 = OUTLINED_FUNCTION_1_5();
      v18 = 0;
      goto LABEL_15;
    }

    outlined copy of CallScreening.EndingAction(v19, v2, 0);
    v51 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v51, v52, 0);
    v53 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v53, v54, 0);
    v40 = OUTLINED_FUNCTION_38_2();
    v42 = 0;
LABEL_24:
    outlined consume of CallScreening.EndingAction(v40, v41, v42);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v38 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v38, v39, 2u);
    v40 = 0;
    v41 = 0;
    v42 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v29 = OUTLINED_FUNCTION_1_5();
    outlined copy of CallScreening.EndingAction(v29, v30, v7);
    v31 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v31, v32, v4);
    v33 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v33, v34, v4);
    v35 = OUTLINED_FUNCTION_1_5();
    outlined consume of CallScreening.EndingAction(v35, v36, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_67_8();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = OUTLINED_FUNCTION_1_5();
    outlined copy of CallScreening.EndingAction(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_38_2();
    outlined copy of CallScreening.EndingAction(v12, v13, 1u);
    v14 = OUTLINED_FUNCTION_38_2();
    outlined consume of CallScreening.EndingAction(v14, v15, 1u);
    v16 = OUTLINED_FUNCTION_1_5();
    v18 = 1;
LABEL_15:
    outlined consume of CallScreening.EndingAction(v16, v17, v18);
    return v9 & 1;
  }

  v37 = 1;
  v43 = OUTLINED_FUNCTION_38_2();
  outlined copy of CallScreening.EndingAction(v43, v44, 1u);
  v45 = OUTLINED_FUNCTION_38_2();
  outlined copy of CallScreening.EndingAction(v45, v46, 1u);
  v47 = OUTLINED_FUNCTION_38_2();
  outlined consume of CallScreening.EndingAction(v47, v48, 1u);
  v49 = OUTLINED_FUNCTION_38_2();
  outlined consume of CallScreening.EndingAction(v49, v50, 1u);
  return v37;
}

uint64_t SessionActionNotice.QueueItemType.description.getter()
{
  if (!*(v0 + 16))
  {
    OUTLINED_FUNCTION_111_4();
    v1 = OUTLINED_FUNCTION_152_0();
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_51_17();
LABEL_5:
    MEMORY[0x1BFB20B10](v1);
    return v3;
  }

  return OUTLINED_FUNCTION_150_0();
}

double SessionActionNotice.type.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of SessionActionNotice.NoticeType(v2, v3, v4);
}

__n128 SessionActionNotice.type.setter(uint64_t a1)
{
  outlined consume of SessionActionNotice.NoticeType(*v1, *(v1 + 8), *(v1 + 16));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

uint64_t SessionActionNotice.participant.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  v2 = OUTLINED_FUNCTION_3_20(*(v1 + 20));
  return _s15ConversationKit11ParticipantVSgWOcTm_0(v2, v3, v4, v5);
}

uint64_t SessionActionNotice.participant.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for SessionActionNotice(v2);
  return _s15ConversationKit11ParticipantVSgWOdTm_0(v0, v1 + *(v3 + 20), &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
}

uint64_t SessionActionNotice.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.conversation.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 24));
  return outlined init with copy of Activity();
}

uint64_t SessionActionNotice.conversation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 24);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return outlined init with take of TapInteractionHandler(v0, v1 + v3);
}

uint64_t SessionActionNotice.conversation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.activity.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for SessionActionNotice(v0);
  OUTLINED_FUNCTION_3_20(*(v1 + 28));
  return outlined init with copy of Activity();
}

uint64_t SessionActionNotice.activity.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return outlined init with take of TapInteractionHandler(v0, v1 + v3);
}

uint64_t SessionActionNotice.activity.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.triggeredLocally.setter(char a1)
{
  result = OUTLINED_FUNCTION_46_17();
  *(v1 + v4) = a1;
  return result;
}

uint64_t SessionActionNotice.deviceFamily.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SessionActionNotice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SessionActionNotice.deviceFamily.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.uuid.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for SessionActionNotice(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_97_6();

  return v2(v1);
}

uint64_t SessionActionNotice.uuid.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for SessionActionNotice(v2) + 40);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t SessionActionNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SessionActionNotice(v2);
  *(v0 + *(result + 44)) = v1;
  return result;
}

uint64_t SessionActionNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.bundleIdentifier.getter()
{
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActionNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  type metadata accessor for SessionActionNotice(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SessionActionNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SessionActionNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t SessionActionNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActionNotice.actionHandler : SessionActionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActionNotice(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SessionActionNotice.actionHandler : SessionActionNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SessionActionNotice(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActionNotice.actionHandler.getter()
{
  return SessionActionNotice.actionHandler.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_14_50(*(v2 + 56));
}

uint64_t SessionActionNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SessionActionNotice.dismissHandler : SessionActionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SessionActionNotice(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SessionActionNotice.dismissHandler : SessionActionNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SessionActionNotice(0) + 60));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActionNotice.dismissHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v1 = type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_52_13(*(v1 + 60));
}

uint64_t SessionActionNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SessionActionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SessionActionNotice.style.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_28_6();
  v8 = type metadata accessor for Collaboration(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  if (static Platform.current.getter() == 1)
  {
    v11 = *v0;
    v10 = v0[1];
    v12 = v0[3];
    if (v0[2] >> 62 == 3 && ((OUTLINED_FUNCTION_81_3(), !v13) || v10 | v11 | v12) && (v11 != 1 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 2 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 3 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 4 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 5 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 6 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 7 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 8 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 9 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12))
    {
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_161_0();
      __swift_project_boxed_opaque_existential_1((v0 + v21), *(v0 + v21 + 24));
      v22 = OUTLINED_FUNCTION_0_95();
      v23(v22);
      OUTLINED_FUNCTION_115(v1, 1, v8);
      if (v13)
      {
        outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit13CollaborationVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_117_1();
        OUTLINED_FUNCTION_62_0();
        _s15ConversationKit11ParticipantVWObTm_4();
        v24 = *(v2 + 16);
        OUTLINED_FUNCTION_45_18();
        if (v24 != 2)
        {
          v20 = 1;
          goto LABEL_53;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_239_0();
      outlined copy of SessionActionNotice.NoticeType(v14, v15, v16);
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_239_0();
      outlined consume of SessionActionNotice.NoticeType(v17, v18, v19);
      OUTLINED_FUNCTION_49_17();
    }
  }

  v20 = 0;
LABEL_53:
  *v4 = v20;
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActionNotice.dismissalDuration.getter()
{
  v1 = v0[2];
  if (v1 >> 62 != 3)
  {
    goto LABEL_36;
  }

  v2 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  v5 = v1 == 0xC000000000000000 && (v2 | *v0 | v3) == 0;
  if (v5)
  {
LABEL_33:
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v13 + 1008))();
  }

  if (v2 || ((OUTLINED_FUNCTION_230_1(), v5) ? (v6 = v4 == 1) : (v6 = 0), v6 ? (v7 = v3 == 0) : (v7 = 0), !v7))
  {
    if (v2 || ((OUTLINED_FUNCTION_230_1(), v5) ? (v8 = v4 == 7) : (v8 = 0), v8 ? (v9 = v3 == 0) : (v9 = 0), !v9))
    {
      if (!v2)
      {
        v12 = v1 == 0xC000000000000000 && v4 == 10;
        if (v12 && !v3)
        {
          goto LABEL_33;
        }
      }

LABEL_36:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_0_1();
      return (*(v14 + 1024))();
    }
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v10 + 1016))();
}

void SessionActionNotice.coalesce(with:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd, &_s15ConversationKit19SessionActionNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (!OUTLINED_FUNCTION_149_1(v7))
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19SessionActionNoticeVSgMd);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_29();
  _s15ConversationKit11ParticipantVWObTm_4();
  v13 = *v1;
  v12 = v1[1];
  v15 = v1[2];
  v14 = v1[3];
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  if (v15 >> 62)
  {
    if (v15 >> 62 == 3 && (v15 == 0xC000000000000000 && !(v12 | v13 | v14) || v13 == 1 && !v12 && v15 == 0xC000000000000000 && !v14 || v13 == 7 && !v12 && v15 == 0xC000000000000000 && !v14))
    {
      v18 = OUTLINED_FUNCTION_25_37();
      outlined copy of SessionActionNotice.NoticeType(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_24_37();
      outlined copy of SessionActionNotice.NoticeType(v21, v22, v23);
      v24 = OUTLINED_FUNCTION_25_37();
      outlined consume of SessionActionNotice.NoticeType(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_24_37();
      outlined consume of SessionActionNotice.NoticeType(v27, v28, v29);
      OUTLINED_FUNCTION_9_74();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_22:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v30 = OUTLINED_FUNCTION_25_37();
    outlined copy of SessionActionNotice.NoticeType(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_24_37();
    outlined copy of SessionActionNotice.NoticeType(v33, v34, v35);
    goto LABEL_20;
  }

  v36 = OUTLINED_FUNCTION_25_37();
  outlined copy of SessionActionNotice.NoticeType(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_24_37();
  outlined copy of SessionActionNotice.NoticeType(v39, v40, v41);
  if (v17 >> 62 || (v42 = OUTLINED_FUNCTION_25_37(), outlined copy of SessionActionNotice.NoticeType(v42, v43, v44), v45 = OUTLINED_FUNCTION_24_37(), outlined copy of SessionActionNotice.NoticeType(v45, v46, v47), v48 = OUTLINED_FUNCTION_25_37(), outlined consume of SessionActionNotice.NoticeType(v48, v49, v50), v51 = OUTLINED_FUNCTION_24_37(), outlined consume of SessionActionNotice.NoticeType(v51, v52, v53), v15))
  {
LABEL_20:
    v54 = OUTLINED_FUNCTION_25_37();
    outlined consume of SessionActionNotice.NoticeType(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_24_37();
LABEL_21:
    outlined consume of SessionActionNotice.NoticeType(v57, v58, v59);
    OUTLINED_FUNCTION_46();
    outlined assign with take of SessionActionNotice();
    goto LABEL_22;
  }

  v60 = OUTLINED_FUNCTION_24_37();
  outlined consume of SessionActionNotice.NoticeType(v60, v61, v62);
  if (v17)
  {
    v57 = OUTLINED_FUNCTION_25_37();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_9_74();
  _s15ConversationKit11ParticipantVWOhTm_12();
  if (!__OFADD__(v14, v16))
  {
    outlined consume of SessionActionNotice.NoticeType(*v1, v1[1], v1[2]);
    *v1 = v13;
    v1[1] = v12;
    v1[2] = 0;
    v1[3] = v14 + v16;
    goto LABEL_22;
  }

  __break(1u);
}

void SessionActionNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd, &_s15ConversationKit19SessionActionNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if ((OUTLINED_FUNCTION_149_1(v7) & 1) == 0)
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit19SessionActionNoticeVSgMd);
    v14 = v0[2];
LABEL_102:
    if (v14 >> 62 == 3)
    {
      OUTLINED_FUNCTION_262_1();
      if (!v19 || v54 | v55 | v53)
      {
        if (v54 || ((OUTLINED_FUNCTION_262_1(), v19) ? (v58 = v57 == 1) : (v58 = 0), !v58 || v56))
        {
          if (!v54)
          {
            OUTLINED_FUNCTION_262_1();
          }
        }
      }
    }

    OUTLINED_FUNCTION_32_21();
    v59 = OUTLINED_FUNCTION_2_14();
    v60(v59);
    goto LABEL_120;
  }

  v8 = 1;
  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_31_29();
  _s15ConversationKit11ParticipantVWObTm_4();
  v13 = *v0;
  v14 = v0[2];
  v15 = v14 >> 62;
  if (v14 >> 62 == 3)
  {
    OUTLINED_FUNCTION_124();
    if (v19 && !(v17 | v13 | v16) || !v17 && ((OUTLINED_FUNCTION_124(), v19) ? (v19 = v13 == 1) : (v19 = 0), v19 && !v18) || !v17 && ((OUTLINED_FUNCTION_124(), v19) ? (v21 = v13 == 7) : (v21 = 0), v21 && !v20) || (v22 = 0, !v17) && ((OUTLINED_FUNCTION_262_1(), v19) ? (v24 = v13 == 10) : (v24 = 0), v24 && !v23))
    {
      v8 = 0;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v70 = v13;
  v25 = *v2;
  v26 = v2[2];
  v27 = v26 >> 62;
  if (v26 >> 62 != 3 || ((v28 = v2[3], v29 = v2[1], v26 == 0xC000000000000000) ? (v30 = (v28 | v25 | v29) == 0) : (v30 = 0), !v30 && (!v28 ? (v31 = v26 == 0xC000000000000000) : (v31 = 0), v31 ? (v32 = v25 == 1) : (v32 = 0), v32 ? (v33 = v29 == 0) : (v33 = 0), !v33 && (!v28 ? (v34 = v26 == 0xC000000000000000) : (v34 = 0), v34 ? (v35 = v25 == 7) : (v35 = 0), v35 ? (v36 = v29 == 0) : (v36 = 0), !v36 && (!v28 ? (v37 = v26 == 0xC000000000000000) : (v37 = 0), v37 ? (v38 = v25 == 10) : (v38 = 0), v38 ? (v39 = v29 == 0) : (v39 = 0), !v39)))))
  {
    if (v8)
    {
      v40 = v15;
      v29 = v2[1];
      v28 = v2[3];
      goto LABEL_70;
    }

    goto LABEL_101;
  }

  if ((v22 & 1) == 0)
  {
LABEL_101:
    OUTLINED_FUNCTION_9_74();
    _s15ConversationKit11ParticipantVWOhTm_12();
    goto LABEL_102;
  }

  v40 = v15;
LABEL_70:
  v41 = OUTLINED_FUNCTION_256_1();
  outlined copy of SessionActionNotice.NoticeType(v41, v42, v43);
  OUTLINED_FUNCTION_9_74();
  _s15ConversationKit11ParticipantVWOhTm_12();
  if (!v27)
  {
    if (!v40)
    {
      v61 = OUTLINED_FUNCTION_209();
      outlined copy of CallScreening.EndingAction(v61, v62, v14);
LABEL_119:
      v65 = OUTLINED_FUNCTION_256_1();
      outlined consume of SessionActionNotice.NoticeType(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_209();
      outlined consume of SessionActionNotice.NoticeType(v68, v69, v14);
      goto LABEL_120;
    }

LABEL_118:
    v63 = OUTLINED_FUNCTION_209();
    outlined copy of SessionActionNotice.NoticeType(v63, v64, v14);
    goto LABEL_119;
  }

  if (v27 != 3 || v40 < 3 || v28 != 0 || v26 != 0xC000000000000000 || v25 != 5 || v29 != 0 || v0[3] != 0 || v14 != 0xC000000000000000 || v70 != 4 || v0[1] != 0)
  {
    goto LABEL_118;
  }

  outlined consume of SessionActionNotice.NoticeType(5, 0, 0xC000000000000000);
  outlined consume of SessionActionNotice.NoticeType(4, 0, 0xC000000000000000);
LABEL_120:
  OUTLINED_FUNCTION_30_0();
}

uint64_t SessionActionNotice.shouldPerformActionHandlerOnNoticeTap.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v4 >> 62 != 3 || (v4 == 0xC000000000000000 ? (v5 = (v1 | v2 | v3) == 0) : (v5 = 0), v5 || (v2 == 1 ? (v6 = v1 == 0) : (v6 = 0), v6 ? (v7 = v4 == 0xC000000000000000) : (v7 = 0), v7 ? (v8 = v3 == 0) : (v8 = 0), v8 || v2 == 2 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 3 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 4 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 5 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 6 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 7 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 8 && !v1 && v4 == 0xC000000000000000 && !v3 || v2 == 9 && !v1 && v4 == 0xC000000000000000 && !v3)))
  {
    OUTLINED_FUNCTION_67_8();
    outlined copy of SessionActionNotice.NoticeType(v9, v10, v11);
    OUTLINED_FUNCTION_67_8();
    outlined copy of SessionActionNotice.NoticeType(v12, v13, v14);
    OUTLINED_FUNCTION_67_8();
    outlined consume of SessionActionNotice.NoticeType(v15, v16, v17);
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_67_8();
    outlined consume of SessionActionNotice.NoticeType(v18, v19, v20);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    return 0;
  }
}

uint64_t SessionActionNotice.isSharePlayActivitySupported.getter()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_63_1((v0 + v1));
  v2 = OUTLINED_FUNCTION_4_38();
  v4 = v3(v2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = [v4 activity];

  v7 = [v6 isSupported];
  return v7;
}

uint64_t SessionActionNotice.actionDescription.getter()
{
  v2 = v0;
  v4 = *v0;
  v3 = v0[1];
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  switch(v6 >> 62)
  {
    case 1uLL:
      if (!*(v2 + 16))
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        if (v55)
        {
          v57 = v56 - 13;
        }

        else
        {
          v57 = v56 + 1;
        }

        if (v55)
        {
          v58 = "t Queued Next Song";
        }

        else
        {
          v58 = "You Updated Queue";
        }

        v50 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_5_5();
        v59.super.isa = v50;
        OUTLINED_FUNCTION_17_0(v57, v58 | 0x8000000000000000, v60, v61, v59);
        OUTLINED_FUNCTION_213_1();
        goto LABEL_91;
      }

      return OUTLINED_FUNCTION_46();
    case 2uLL:
      OUTLINED_FUNCTION_136_1();
      OUTLINED_FUNCTION_201_0();
      if (v33)
      {
        v20 = v21;
      }

      if (v20)
      {
        type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_107_2();
        v22 = objc_opt_self();
        v23 = OUTLINED_FUNCTION_199();
        v16 = [v22 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_249_0();
        v26.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v27, v28, v29, v30, v26);
        goto LABEL_15;
      }

      type metadata accessor for SessionActionNotice(0);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_189();
      v50 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_249_0();
      goto LABEL_90;
    case 3uLL:
      v33 = v6 == 0xC000000000000000 && (v3 | v4 | v5) == 0;
      if (v33)
      {
        v40 = (v2 + *(type metadata accessor for SessionActionNotice(0) + 28));
        v41 = OUTLINED_FUNCTION_258_0();
        __swift_project_boxed_opaque_existential_1(v41, v42);
        v43 = OUTLINED_FUNCTION_7_26();
        v45 = v44(v43);
        if (v45)
        {
          v46 = v45;
          v47 = [v45 activity];
          v48 = [v47 isScreenSharingActivity];

          if (v48)
          {
            OUTLINED_FUNCTION_236_1();
            if (v49 != 1)
            {
              v101 = OUTLINED_FUNCTION_212_1();
              String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v101, v103, 0xD000000000000028, v102 | 0x8000000000000000);
            }

            goto LABEL_106;
          }
        }

        OUTLINED_FUNCTION_236_1();
        if (v62)
        {
          v63 = 0xD000000000000015;
        }

        else
        {
          v63 = 0xD000000000000023;
        }

        if (v62)
        {
          v64 = "AccountUpdateNotice: ";
        }

        else
        {
          v64 = "You Ended Screen Sharing";
        }

LABEL_83:
        v87 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_48_1(v63, v64 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
        OUTLINED_FUNCTION_16_6();

        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v89 = OUTLINED_FUNCTION_13_12(v88);
        *(v89 + 16) = xmmword_1BC4BA940;
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v90 = OUTLINED_FUNCTION_0_95();
        v92 = v91(v90);
        v94 = v93;
        *(v89 + 56) = MEMORY[0x1E69E6158];
        *(v89 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v89 + 32) = v92;
        *(v89 + 40) = v94;
        goto LABEL_84;
      }

      if (v4 == 1 && v3 == 0 && v6 == 0xC000000000000000 && v5 == 0)
      {
        v40 = (v2 + *(type metadata accessor for SessionActionNotice(0) + 28));
        v77 = OUTLINED_FUNCTION_258_0();
        __swift_project_boxed_opaque_existential_1(v77, v78);
        v79 = OUTLINED_FUNCTION_7_26();
        v81 = v80(v79);
        if (v81)
        {
          v82 = v81;
          v83 = [v81 activity];
          v84 = [v83 isScreenSharingActivity];

          if (v84)
          {
            OUTLINED_FUNCTION_236_1();
            if (v85 != 1)
            {
              v112 = OUTLINED_FUNCTION_212_1();
              String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v112, v114, 0xD000000000000026, v113 | 0x8000000000000000);
            }

LABEL_106:
            v115 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_29_3();
            OUTLINED_FUNCTION_67_8();
            v116.super.isa = v115;
            OUTLINED_FUNCTION_17_0(v117, v118, v119, v120, v116);
            OUTLINED_FUNCTION_18_8();

            goto LABEL_107;
          }
        }

        OUTLINED_FUNCTION_236_1();
        if (v86)
        {
          v63 = 0xD000000000000013;
        }

        else
        {
          v63 = 0xD000000000000021;
        }

        if (v86)
        {
          v64 = "t Ended Quoted_%@";
        }

        else
        {
          v64 = "t Resumed Playback";
        }

        goto LABEL_83;
      }

      v39 = v4 == 2 && v3 == 0 && v6 == 0xC000000000000000 && v5 == 0;
      if (v39 || v4 == 3 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
LABEL_89:
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_189();
        v50 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v51 = OUTLINED_FUNCTION_46();
LABEL_90:
        v99.super.isa = v50;
        OUTLINED_FUNCTION_17_0(v51, v52, v53, v54, v99);
        OUTLINED_FUNCTION_213_1();
LABEL_91:

        OUTLINED_FUNCTION_29_6();
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_92;
      }

      if (v4 == 4 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v33)
        {
          v106 = v105;
        }

        else
        {
          v106 = v104;
        }

LABEL_103:
        v107 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v110 = v106 | 0x8000000000000000;
        v111 = v2;
LABEL_104:
        OUTLINED_FUNCTION_48_1(v111, v110, v108, v109);
        OUTLINED_FUNCTION_16_6();

LABEL_107:
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_92;
      }

      if (v4 == 5 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        v121 = type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_107_2();
        OUTLINED_FUNCTION_175_1();
        v124 = v123 - 12;
        v125 = v123 | 2;
        if (v122)
        {
          v126 = v124;
        }

        else
        {
          v126 = v125;
        }

        if (v122)
        {
          v1 = "t Skipped Quoted_%@";
        }

        else
        {
          v1 = "You Added Quoted_%@";
        }

        v127 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v128.super.isa = v127;
        OUTLINED_FUNCTION_17_0(v126, v1 | 0x8000000000000000, v129, v130, v128);
        OUTLINED_FUNCTION_187();

        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v132 = OUTLINED_FUNCTION_13_12(v131);
        *(v132 + 16) = xmmword_1BC4BA940;
        v133 = v121[7];
        goto LABEL_119;
      }

      if (v4 == 6 && !v3 && v6 == 0xC000000000000000 && !v5)
      {
        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v33)
        {
          v106 = v137;
        }

        else
        {
          v106 = v136;
        }

        goto LABEL_103;
      }

      if (v4 != 7 || v3 || v6 != 0xC000000000000000 || v5)
      {
        if (v4 == 8 && !v3 && v6 == 0xC000000000000000 && !v5)
        {
          OUTLINED_FUNCTION_161_0();
          OUTLINED_FUNCTION_63_1((v2 + v142));
          v143 = OUTLINED_FUNCTION_4_38();
          v144(v143);
          OUTLINED_FUNCTION_183_0();
          MEMORY[0x1BFB20B10]();

          MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
          return OUTLINED_FUNCTION_46();
        }

        OUTLINED_FUNCTION_136_1();
        if (v4 == 9 && !v3 && v6 == v145 && !v5)
        {
          OUTLINED_FUNCTION_33_28();
          v107 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_249_0();
          goto LABEL_104;
        }

        v146 = type metadata accessor for SessionActionNotice(0);
        v147 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_251_0();
        OUTLINED_FUNCTION_249_0();
        v148.super.isa = v147;
        OUTLINED_FUNCTION_17_0(v149, v150, v151, v152, v148);

        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v154 = OUTLINED_FUNCTION_13_12(v153);
        *(v154 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_208_1(*(v146 + 28));
        v155 = OUTLINED_FUNCTION_28_0();
        v156(v155, v1);
        OUTLINED_FUNCTION_305();
        *(v154 + 56) = MEMORY[0x1E69E6158];
        *(v154 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v154 + 32) = v2;
        *(v154 + 40) = v146;
LABEL_84:
        OUTLINED_FUNCTION_41();
        static String.localizedStringWithFormat(_:_:)();
        OUTLINED_FUNCTION_305();
        goto LABEL_85;
      }

      v121 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v138, 0x80000001BC50D7C0, v139, v140);
      OUTLINED_FUNCTION_187();

      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v132 = OUTLINED_FUNCTION_13_12(v141);
      *(v132 + 16) = xmmword_1BC4BA940;
      OUTLINED_FUNCTION_161_0();
LABEL_119:
      OUTLINED_FUNCTION_208_1(v133);
      v134 = OUTLINED_FUNCTION_28_0();
      v135(v134, v1);
      OUTLINED_FUNCTION_305();
      *(v132 + 56) = MEMORY[0x1E69E6158];
      *(v132 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v132 + 32) = v2;
      *(v132 + 40) = v121;
LABEL_88:
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_305();

LABEL_92:

      return OUTLINED_FUNCTION_46();
    default:
      if (*(v2 + 16))
      {
        if (*(v2 + 16) != 1)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_201_0();
        if (v33)
        {
          v7 = v8;
        }

        if (!v7)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v33)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        v12 = objc_opt_self();
        v13 = OUTLINED_FUNCTION_199();
        v16 = [v12 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v17.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v2, v11 | 0x8000000000000000, v18, v19, v17);
      }

      else
      {
        if (v5 != 1)
        {
          if (v5 < 2)
          {
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_175_1();
          String.localizedConversationControls.getter();
          OUTLINED_FUNCTION_16_6();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v96 = OUTLINED_FUNCTION_13_12(v95);
          v97 = MEMORY[0x1E69E6530];
          *(v96 + 16) = xmmword_1BC4BA940;
          v98 = MEMORY[0x1E69E65A8];
          *(v96 + 56) = v97;
          *(v96 + 64) = v98;
          *(v96 + 32) = v5;
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_201_0();
        if (v33)
        {
          v65 = v66;
        }

        if (!v65)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_33_28();
        OUTLINED_FUNCTION_175_1();
        OUTLINED_FUNCTION_157_0();
        if (v33)
        {
          v69 = v68;
        }

        else
        {
          v69 = v67;
        }

        v70 = objc_opt_self();
        v71 = OUTLINED_FUNCTION_199();
        v16 = [v70 conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v74.super.isa = v16;
        OUTLINED_FUNCTION_17_0(v2, v69 | 0x8000000000000000, v75, v76, v74);
      }

LABEL_15:

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v32 = OUTLINED_FUNCTION_13_12(v31);
      *(v32 + 16) = xmmword_1BC4BA940;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v32 + 32) = v4;
      *(v32 + 40) = v3;
      OUTLINED_FUNCTION_76();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_305();
LABEL_85:

      goto LABEL_92;
  }
}

uint64_t SessionActionNotice.attributionDescription.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_96();
  v6 = type metadata accessor for Participant(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  v8 = v0[2];
  if (v8 >> 62 == 3)
  {
    v9 = v0[3];
    v11 = *v0;
    v10 = v0[1];
    if (!v9)
    {
      OUTLINED_FUNCTION_230_1();
      v12 = v12 && v11 == 7;
      if (v12 && !v10)
      {
        v13 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
LABEL_10:
        v18.super.isa = v13;
        OUTLINED_FUNCTION_17_0(v14, v15, v16, v17, v18);
        OUTLINED_FUNCTION_18_8();

        return OUTLINED_FUNCTION_15_14();
      }
    }

    if (!v9)
    {
      OUTLINED_FUNCTION_230_1();
      v20 = v12 && v11 == 8;
      if (v20 && !v10)
      {
        v21 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_11_3();
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_48_1(v22, 0xE700000000000000, v23, v24);
        OUTLINED_FUNCTION_187();

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v26 = OUTLINED_FUNCTION_13_12(v25);
        *(v26 + 16) = xmmword_1BC4BA940;
        v27 = type metadata accessor for SessionActionNotice(0);
        OUTLINED_FUNCTION_208_1(*(v27 + 24));
        v28 = OUTLINED_FUNCTION_28_0();
        v29(v28, v1);
        OUTLINED_FUNCTION_305();
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v26 + 32) = v0;
        *(v26 + 40) = v0;
        goto LABEL_33;
      }
    }

    if (!v9)
    {
      v30 = v8 == 0xC000000000000000 && v11 == 10;
      if (v30 && !v10)
      {
        OUTLINED_FUNCTION_33_28();
        if (v31 != 1)
        {
          v13 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_40_0();
          v15 = 0x80000001BC50DB80;
          v14 = 0xD000000000000014;
          v16 = 0x61737265766E6F43;
          v17 = 0xEF74694B6E6F6974;
          goto LABEL_10;
        }

        v32 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        v33.super.isa = v32;
        OUTLINED_FUNCTION_17_0(0x402520726F46, 0xE600000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v33);

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v35 = OUTLINED_FUNCTION_13_12(v34);
        *(v35 + 16) = xmmword_1BC4BA940;
        v36 = OUTLINED_FUNCTION_177_1();
        v37 = OUTLINED_FUNCTION_29_6();
        v38(v37);
        OUTLINED_FUNCTION_305();
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v35 + 32) = v2;
        *(v35 + 40) = v36;
        goto LABEL_33;
      }
    }
  }

  v39 = type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_107_2();
  if ((v40 & 1) == 0)
  {
    _s15ConversationKit11ParticipantVSgWOcTm_0(v0 + *(v39 + 20), v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_115(v0, 1, v6);
    if (!v12)
    {
      OUTLINED_FUNCTION_3_119();
      OUTLINED_FUNCTION_15_14();
      _s15ConversationKit11ParticipantVWObTm_4();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        OUTLINED_FUNCTION_177_1();
        v50 = OUTLINED_FUNCTION_29_6();
        v51(v50);
        OUTLINED_FUNCTION_305();
      }

      else
      {
        Participant.contactDetails.getter();

        OUTLINED_FUNCTION_29_6();
        Participant.name(_:)();
        OUTLINED_FUNCTION_305();
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      return OUTLINED_FUNCTION_46();
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit11ParticipantVSgMd);
  }

  v41 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v42, 0xE600000000000000, v43, v44);

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v46 = OUTLINED_FUNCTION_13_12(v45);
  *(v46 + 16) = xmmword_1BC4BA940;
  v47 = OUTLINED_FUNCTION_177_1();
  v48 = OUTLINED_FUNCTION_29_6();
  v49(v48);
  OUTLINED_FUNCTION_305();
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v46 + 32) = v2;
  *(v46 + 40) = v47;
  OUTLINED_FUNCTION_206();
LABEL_33:
  String.init(format:_:)();
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t SessionActionNotice.fullSentence(for:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v81 = a2;
  v95 = a3;
  v7 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.InterpolationOptions();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v87 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = v79 - v14;
  v84 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributedString();
  v96 = *(v20 - 8);
  v97 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v86 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = v79 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v94 = v79 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v79 - v27;
  v29 = *(a1 + 8);
  v91._countAndFlagsBits = *a1;
  v91._object = v29;
  v93 = *(a1 + 16);
  v30 = type metadata accessor for SessionActionNotice(0);
  v31 = (v5 + v30[6]);
  v32 = v31[3];
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v33 + 224))(v32, v33);
  if (one-time initialization token for subjectContainer != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v16, static AttributedStrings.Notices.subjectContainer);
  v35 = *(v17 + 16);
  v35(v19, v34, v16);
  AttributedString.init(_:attributes:)();
  v36 = *(v5 + v30[8]);
  if (v36)
  {
    goto LABEL_6;
  }

  v80 = v28;
  v37 = v85;
  _s15ConversationKit11ParticipantVSgWOcTm_0(v5 + v30[5], v85, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v37, 1, v84) == 1)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v37, &_s15ConversationKit11ParticipantVSgMd);
    v28 = v80;
LABEL_6:
    v39 = v96;
    v38 = v97;
    v40 = v94;
    (*(v96 + 16))(v94, v28, v97);
    goto LABEL_8;
  }

  _s15ConversationKit11ParticipantVWObTm_4();
  v85 = v5;
  v84 = v30;
  Participant.contactDetails.getter();
  v41 = v98;
  v79[1] = v99;

  Participant.name(_:)();

  v35(v19, v34, v16);
  v40 = v94;
  v30 = v84;
  v5 = v85;
  AttributedString.init(_:attributes:)();
  _s15ConversationKit11ParticipantVWOhTm_12();
  v39 = v96;
  v38 = v97;
  v28 = v80;
LABEL_8:
  if (v93)
  {
    if (v93 == 1)
    {
      v42 = (v91._object >> 56) & 0xF;
      if ((v91._object & 0x2000000000000000) == 0)
      {
        v42 = v91._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        v84 = v30;
        v85 = v5;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        if (v36)
        {
          v43._countAndFlagsBits = 0x80E2206465646441;
          v43._object = 0xA90000000000009CLL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
          v44 = (v85 + v84[7]);
          v45 = v44[3];
          v46 = v44[4];
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v47._countAndFlagsBits = (*(v46 + 80))(v45, v46);
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v47);

          v48._countAndFlagsBits = 0x20726F66209D80E2;
          v48._object = 0xA800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
          v98 = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          v49 = v87;
          v50 = v89;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
          (*(v88 + 8))(v49, v50);
          v51 = 0;
          v52 = 0xE000000000000000;
        }

        else
        {
          v63._countAndFlagsBits = 0;
          v63._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
          v98 = MEMORY[0x1E69E7CC0];
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
          lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
          v64 = v87;
          v65 = v89;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
          (*(v88 + 8))(v64, v65);
          v66._countAndFlagsBits = 0xE220646564646120;
          v66._object = 0xAA00000000009C80;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v66);
          v67 = (v85 + v84[7]);
          v68 = v67[3];
          v69 = v67[4];
          __swift_project_boxed_opaque_existential_1(v67, v68);
          v70._countAndFlagsBits = (*(v69 + 80))(v68, v69);
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v70);

          v51 = 10322146;
          v52 = 0xA300000000000000;
        }

        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v51);
        String.LocalizationValue.init(stringInterpolation:)();
        v62 = v82;
LABEL_29:
        AttributedString.init(cnkLocalized:)();
        v71 = *(v39 + 8);
        v71(v40, v38);
        v71(v28, v38);
        return (*(v39 + 32))(v95, v62, v38);
      }
    }

LABEL_23:
    if (v36)
    {
      String.LocalizationValue.init(stringLiteral:)();
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
      v98 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
      lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
      v59 = v87;
      v60 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
      (*(v88 + 8))(v59, v60);
      v61._countAndFlagsBits = 0x646564646120;
      v61._object = 0xE600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
      String.LocalizationValue.init(stringInterpolation:)();
    }

    v62 = v86;
    goto LABEL_29;
  }

  v53 = (v91._object >> 56) & 0xF;
  if ((v91._object & 0x2000000000000000) == 0)
  {
    v53 = v91._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
    goto LABEL_23;
  }

  v54 = v81;
  if (v81 > 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v36;
  }

  if (v55 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v56._countAndFlagsBits = 0x206465646441;
    v56._object = 0xE600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
    v98 = v54;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v57._countAndFlagsBits = 0x73676E6F7320;
    v57._object = 0xE600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
    String.LocalizationValue.init(stringInterpolation:)();
    AttributedString.init(conversationControlsLocalized:comment:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
    v98 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions, MEMORY[0x1E69686F0], MEMORY[0x1E69686F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd, &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMR);
    lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](&lazy protocol witness table cache variable for type [AttributedString.InterpolationOptions] and conformance [A], &_sSay10Foundation16AttributedStringV20InterpolationOptionsVGMd);
    v74 = v87;
    v75 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
    (*(v88 + 8))(v74, v75);
    v76._countAndFlagsBits = 0xE220646564646120;
    v76._object = 0xAA00000000009C80;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v76);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v91);
    v77._countAndFlagsBits = 10322146;
    v77._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v77);
    String.LocalizationValue.init(stringInterpolation:)();
    AttributedString.init(cnkLocalized:)();
  }

  v78 = *(v39 + 8);
  v78(v40, v38);
  return (v78)(v28, v38);
}

unint64_t SessionActionNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v42 = 0xD000000000000013;
  v43 = v1;
  v2 = type metadata accessor for SessionActionNotice(0);
  if (*(v0 + *(v2 + 32)))
  {
    v3 = 0x296C61636F4C28;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + *(v2 + 32)))
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1BFB20B10](v3, v4);

  v5 = *v0;
  v6 = v0[1];
  v7 = v0[3];
  switch(v0[2] >> 62)
  {
    case 1:
      OUTLINED_FUNCTION_189();
      v41[0] = 0xD000000000000012;
      v41[1] = v18;
      if (!v17)
      {
        OUTLINED_FUNCTION_111_4();
        v19 = OUTLINED_FUNCTION_152_0();
        goto LABEL_30;
      }

      if (v17 == 1)
      {
        OUTLINED_FUNCTION_51_17();
LABEL_30:
        MEMORY[0x1BFB20B10](v19);
        v24 = v39;
        v25 = v40;
        goto LABEL_44;
      }

      v24 = OUTLINED_FUNCTION_150_0();
      v25 = 0xE700000000000000;
      goto LABEL_44;
    case 2:
      strcpy(v41, "[react - ");
      WORD1(v41[1]) = 0;
      HIDWORD(v41[1]) = -385875968;
      MEMORY[0x1BFB20B10](v5, v6);
      goto LABEL_46;
    case 3:
      OUTLINED_FUNCTION_79_8();
      if (v13 && !(v12 | v11 | v7))
      {
        v14 = 0x74726174735BLL;
LABEL_16:
        v15 = v14 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
        v16 = 0xE900000000000020;
        goto LABEL_41;
      }

      if (v11 == 1 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v20 = 1869902683;
LABEL_26:
            v21 = v20 & 0xFFFF0000FFFFFFFFLL | 0x207000000000;
LABEL_40:
            v15 = v21 & 0xFFFFFFFFFFFFLL | 0x202D000000000000;
            v16 = 0xE800000000000000;
LABEL_41:
            v41[0] = v15;
            v41[1] = v16;
            OUTLINED_FUNCTION_63_1((v0 + *(v2 + 28)));
            v27 = OUTLINED_FUNCTION_4_38();
            v28(v27);
            if (v29)
            {
              v24 = String.init<A>(reflecting:)();
              v25 = v30;
            }

            else
            {
              v24 = 7104878;
              v25 = 0xE300000000000000;
            }

            goto LABEL_44;
          }
        }
      }

      if (v11 == 2 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v21 = 0x2079616C705BLL;
            goto LABEL_40;
          }
        }
      }

      if (v11 == 3 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v14 = 0x65737561705BLL;
            goto LABEL_16;
          }
        }
      }

      if (v11 == 4 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v21 = 0x206B6565735BLL;
            goto LABEL_40;
          }
        }
      }

      if (v11 == 5 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            v20 = 1768649563;
            goto LABEL_26;
          }
        }
      }

      if (v11 == 6 && !v12)
      {
        OUTLINED_FUNCTION_79_8();
        if (v13)
        {
          if (!v7)
          {
            MEMORY[0x1BFB20B10](0x646574616470755BLL, 0xEE005D6575657551);
            return v42;
          }
        }
      }

      v32 = 7104878;
      if (v11 != 7 || v12 || (OUTLINED_FUNCTION_79_8(), !v13) || v7)
      {
        if (v11 == 8 && !v12)
        {
          OUTLINED_FUNCTION_79_8();
          if (v13)
          {
            if (!v7)
            {
              strcpy(v41, "[reminder - ");
              BYTE5(v41[1]) = 0;
              HIWORD(v41[1]) = -5120;
              goto LABEL_93;
            }
          }
        }

        if (v11 == 9 && !v12)
        {
          OUTLINED_FUNCTION_79_8();
          if (v13)
          {
            if (!v7)
            {
              OUTLINED_FUNCTION_24_7();
              v41[0] = 0xD000000000000013;
              goto LABEL_92;
            }
          }
        }

        OUTLINED_FUNCTION_24_7();
        v34 = 0xD000000000000017;
      }

      else
      {
        OUTLINED_FUNCTION_24_7();
        v34 = 0xD000000000000011;
      }

      v41[0] = v34;
LABEL_92:
      v41[1] = v33;
LABEL_93:
      OUTLINED_FUNCTION_63_1((v0 + *(v2 + 28)));
      v35 = OUTLINED_FUNCTION_4_38();
      v36(v35);
      if (v37)
      {
        v32 = String.init<A>(reflecting:)();
        v25 = v38;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v24 = v32;
LABEL_44:
      v26 = v25;
      goto LABEL_45;
    default:
      OUTLINED_FUNCTION_189();
      v41[0] = 0xD000000000000015;
      v41[1] = v9;
      if (!v8)
      {
        OUTLINED_FUNCTION_111_4();
        v10 = OUTLINED_FUNCTION_152_0();
        goto LABEL_28;
      }

      if (v8 == 1)
      {
        OUTLINED_FUNCTION_51_17();
LABEL_28:
        MEMORY[0x1BFB20B10](v10);
        v22 = v39;
        v23 = v40;
        goto LABEL_32;
      }

      v22 = OUTLINED_FUNCTION_150_0();
      v23 = 0xE700000000000000;
LABEL_32:
      MEMORY[0x1BFB20B10](v22, v23);

      MEMORY[0x1BFB20B10](0x3A746E756F63202CLL, 0xE800000000000000);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_183_0();
LABEL_45:
      MEMORY[0x1BFB20B10](v24, v26);

LABEL_46:
      MEMORY[0x1BFB20B10](93, 0xE100000000000000);
      MEMORY[0x1BFB20B10](v41[0], v41[1]);

      return v42;
  }
}

void SessionActionNotice.noticeAccessory.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  v8 = type metadata accessor for Collaboration(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v11 = *v0;
  v10 = v0[1];
  v12 = *(v3 + 24);
  if (*(v3 + 16) >> 62 == 3 && ((OUTLINED_FUNCTION_81_3(), !v13) || v10 | v11 | v12) && (v11 != 1 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 2 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 3 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 4 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 5 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 6 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 7 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 8 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12) && (v11 != 9 || v10 || (OUTLINED_FUNCTION_81_3(), !v13) || v12))
  {
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_49_17();
    OUTLINED_FUNCTION_161_0();
    __swift_project_boxed_opaque_existential_1((v3 + v20), *(v3 + v20 + 24));
    v21 = OUTLINED_FUNCTION_7_26();
    v22(v21);
    OUTLINED_FUNCTION_115(v2, 1, v8);
    if (v13)
    {
      outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit13CollaborationVSgMd);
    }

    else
    {
      OUTLINED_FUNCTION_117_1();
      _s15ConversationKit11ParticipantVWObTm_4();
      if (*(v1 + 16) != 2 && (*(v1 + *(v8 + 48)) & 1) == 0)
      {
        v23 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v24.super.isa = v23;
        OUTLINED_FUNCTION_17_0(1852141647, 0xE400000000000000, v25, v26, v24);
        OUTLINED_FUNCTION_18_8();

        OUTLINED_FUNCTION_45_18();
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_45_18();
    }
  }

  else
  {
    OUTLINED_FUNCTION_239_0();
    outlined copy of SessionActionNotice.NoticeType(v14, v15, v16);
    OUTLINED_FUNCTION_239_0();
    outlined consume of SessionActionNotice.NoticeType(v17, v18, v19);
    OUTLINED_FUNCTION_49_17();
  }

  v10 = 0;
  v3 = *(v3 + *(type metadata accessor for SessionActionNotice(0) + 56)) != 0;
LABEL_52:
  *v5 = v10;
  v5[1] = v3;
  OUTLINED_FUNCTION_30_0();
}

void SessionActionNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19SessionActionNoticeVSgMd, &_s15ConversationKit19SessionActionNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for SessionActionNotice(v5);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_149_1(v7))
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_31_29();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = v1[1];
    v13 = v1[2];
    v14 = v1[3];
    v31[0] = *v1;
    v31[1] = v12;
    v31[2] = v13;
    v31[3] = v14;
    v15 = v0[1];
    v16 = v0[2];
    v17 = v0[3];
    v28.i64[0] = *v0;
    v28.i64[1] = v15;
    v29 = v16;
    v30 = v17;
    v18 = OUTLINED_FUNCTION_62_0();
    outlined copy of SessionActionNotice.NoticeType(v18, v19, v13);
    OUTLINED_FUNCTION_240_1();
    outlined copy of SessionActionNotice.NoticeType(v20, v21, v22);
    static SessionActionNotice.NoticeType.== infix(_:_:)(v31, &v28);
    OUTLINED_FUNCTION_240_1();
    outlined consume of SessionActionNotice.NoticeType(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_62_0();
    outlined consume of SessionActionNotice.NoticeType(v26, v27, v13);
    OUTLINED_FUNCTION_9_74();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit19SessionActionNoticeVSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t AppLaunchNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t AppLaunchNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AppLaunchNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 24));
}

uint64_t AppLaunchNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t AppLaunchNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

id AppLaunchNotice.app.getter()
{
  OUTLINED_FUNCTION_214_1();
  v2 = *(v0 + v1);

  return v2;
}

void AppLaunchNotice.app.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for AppLaunchNotice(v2) + 28);

  *(v1 + v3) = v0;
}

uint64_t AppLaunchNotice.app.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void *AppLaunchNotice.conversation.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppLaunchNotice(0) + 32));
  v2 = v1;
  return v1;
}

void AppLaunchNotice.conversation.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for AppLaunchNotice(v2) + 32);

  *(v1 + v3) = v0;
}

uint64_t AppLaunchNotice.conversation.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.supportsCollaboration.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t AppLaunchNotice.supportsCollaboration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v0 + *(result + 40)) = v1;
  return result;
}

uint64_t AppLaunchNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t AppLaunchNotice.description.getter()
{
  OUTLINED_FUNCTION_24_7();
  v1 = OUTLINED_FUNCTION_214_1();
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + v2)) + 0x68))(v1);
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  MEMORY[0x1BFB20B10](93, 0xE100000000000000);
  return 0xD000000000000010;
}

void AppLaunchNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 44));
}

uint64_t AppLaunchNotice.style.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t AppLaunchNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.shouldTransitionToHUD.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t AppLaunchNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AppLaunchNotice.actionHandler : AppLaunchNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppLaunchNotice(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for AppLaunchNotice.actionHandler : AppLaunchNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AppLaunchNotice(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActivationRequestNotice.dismissHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 52));
}

uint64_t AppLaunchNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for AppLaunchNotice.dismissHandler : AppLaunchNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppLaunchNotice(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for AppLaunchNotice.dismissHandler : AppLaunchNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AppLaunchNotice(0) + 56));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SessionActionNotice.actionHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 56));
}

uint64_t AppLaunchNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void AppLaunchNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15AppLaunchNoticeVSgMd, "rp\b");
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for AppLaunchNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_85_3(v8))
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v6 + 24);
    v14 = *(v0 + v13);
    v15 = *(v2 + v13);
    OUTLINED_FUNCTION_118_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v14 == v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit15AppLaunchNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v19 = OUTLINED_FUNCTION_2_14();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

uint64_t one-time initialization function for bundleIDToItemType()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static AppLaunchNotice.bundleIDToItemType = result;
  return result;
}

double static AppLaunchNotice.bundleIDToItemType.getter()
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39(&one-time initialization token for bundleIDToItemType);
  }

  swift_beginAccess();

  return result;
}

double static AppLaunchNotice.bundleIDToItemType.setter(uint64_t a1)
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39(&one-time initialization token for bundleIDToItemType);
  }

  swift_beginAccess();
  static AppLaunchNotice.bundleIDToItemType = a1;

  return result;
}

uint64_t (*static AppLaunchNotice.bundleIDToItemType.modify())(uint64_t a1)
{
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39(&one-time initialization token for bundleIDToItemType);
  }

  OUTLINED_FUNCTION_38_2();
  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

double key path getter for static AppLaunchNotice.bundleIDToItemType : AppLaunchNotice.Type@<D0>(void *a1@<X8>)
{
  AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static AppLaunchNotice.bundleIDToItemType;

  return result;
}

double key path setter for static AppLaunchNotice.bundleIDToItemType : AppLaunchNotice.Type(uint64_t *a1)
{
  v1 = *a1;

  AppLaunchNotice.bundleIDToItemType.unsafeMutableAddressor();
  swift_beginAccess();
  static AppLaunchNotice.bundleIDToItemType = v1;

  return result;
}

uint64_t AppLaunchNotice.appItemTypeString.getter()
{
  OUTLINED_FUNCTION_214_1();
  if (one-time initialization token for bundleIDToItemType != -1)
  {
    OUTLINED_FUNCTION_21_39(&one-time initialization token for bundleIDToItemType);
  }

  swift_beginAccess();
  if (*(static AppLaunchNotice.bundleIDToItemType + 16) && (v0 = OUTLINED_FUNCTION_44_0(), specialized __RawDictionaryStorage.find<A>(_:)(v0, v1), (v2 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return OUTLINED_FUNCTION_38_2();
}

uint64_t AppLaunchNotice.noticeContent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppLaunchNotice(0);
  v3 = *(v0 + *(v2 + 28));
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x68))();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  v5 = MEMORY[0x1BFB20B10](10322146, 0xA300000000000000);
  v6 = *(v3 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type);
  v7 = (*((*v4 & *v3) + 0x70))(v5);
  v8 = *(v1 + *(v2 + 36));
  v9 = static Platform.current.getter();
  if (!v6)
  {
    if (v9 == 2)
    {
      v10 = "COLLABORATE_ON_ITEM";
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_251_0();
      v14 = v15 + 16;
      goto LABEL_11;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_229_1();
      v25 = v26 + 25;
    }

    else
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_143_2();
      OUTLINED_FUNCTION_229_1();
      v25 = v33 + 26;
    }

LABEL_32:
    OUTLINED_FUNCTION_17_0(v25, 0xA300000000000000, v22, v23, v24);
    String.splitForTitleAndSubtitle()();

    return OUTLINED_FUNCTION_45_1();
  }

  if (v6 == 1)
  {
    if (v9 == 2)
    {
      v10 = "Y_TITLE_LINEBREAK";
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_29_3();
      v14 = 0xD00000000000002ALL;
LABEL_11:
      OUTLINED_FUNCTION_17_0(v14, v10 | 0x8000000000000000, v11, v12, v13);
      OUTLINED_FUNCTION_175_0();
      return OUTLINED_FUNCTION_45_1();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_229_1();
      v25 = 0xD000000000000031;
    }

    else
    {
      OUTLINED_FUNCTION_227_1();
      if (!v21)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_229_1();
      v25 = 0xD000000000000034;
    }

    goto LABEL_32;
  }

  if (v8)
  {
    if (v9 == 2)
    {
      _StringGuts.grow(_:)(30);

      v16 = AppLaunchNotice.appItemTypeString.getter();
      MEMORY[0x1BFB20B10](v16);

      OUTLINED_FUNCTION_11();
      MEMORY[0x1BFB20B10](0xD000000000000015);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_165_1();
      v17 = OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v39);
      OUTLINED_FUNCTION_175_0();
    }

    else
    {

      _StringGuts.grow(_:)(40);

      AppLaunchNotice.appItemTypeString.getter();
      OUTLINED_FUNCTION_183_0();
      MEMORY[0x1BFB20B10]();

      MEMORY[0x1BFB20B10](0xD00000000000001FLL, 0x80000001BC50DF00);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_7_12(&one-time initialization token for conversationKit);
      }

      OUTLINED_FUNCTION_165_1();
      v35 = OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_17_0(v35, v36, v37, v38, v40);
      OUTLINED_FUNCTION_175_0();

      OUTLINED_FUNCTION_208();
      String.splitForTitleAndSubtitle()();
    }
  }

  else
  {
    v27 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v28.super.isa = v27;
    OUTLINED_FUNCTION_17_0(v29, v30, v31, v32, v28);
    OUTLINED_FUNCTION_175_0();
  }

  return OUTLINED_FUNCTION_45_1();
}

uint64_t AppLaunchNotice.attributedCollaborationTitle()()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);
  _StringGuts.grow(_:)(30);

  v1 = AppLaunchNotice.appItemTypeString.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC50DF20);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v5._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x5F45534F4F4843;
  v2._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v3, v5);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

void AppLaunchNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 60));
}

uint64_t AppLaunchNotice.subtitleStyle.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for AppLaunchNotice(v2);
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t AppLaunchNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

double AppLaunchNotice.noticeAccessory.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for AppLaunchNotice(v0);
  v2 = OUTLINED_FUNCTION_153_0(*(v1 + 64));

  return outlined copy of NoticeAccessory(v2, v3);
}

void AppLaunchNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v4 = type metadata accessor for AppLaunchNotice(v3);
  v5 = OUTLINED_FUNCTION_115_2(*(v4 + 64));
  outlined consume of NoticeAccessory(v5, v6);
  *v1 = v0;
  v1[1] = v2;
}

uint64_t AppLaunchNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for AppLaunchNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t AppLaunchNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15AppLaunchNoticeVSgMd, "rp\b");
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for AppLaunchNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_147(v8))
  {
    v9 = 1;
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit11ParticipantVWObTm_4();
    v14 = *(v3 + 28);
    v15 = (*(v1 + v14) + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    v16 = (*(v0 + v14) + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    if (*v15 != *v16 || v15[1] != v16[1])
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    OUTLINED_FUNCTION_118_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit15AppLaunchNoticeVSgMd);
    v9 = 0;
  }

  return v9 & 1;
}

double protocol witness for Notice.noticeAccessory.getter in conformance AppLaunchNotice@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of NoticeAccessory(v4, v5);
}

uint64_t protocol witness for Notice.actionHandler.getter in conformance AppLaunchNotice(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t protocol witness for Notice.actionHandler.setter in conformance AppLaunchNotice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for Notice.dismissHandler.getter in conformance AppLaunchNotice(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t protocol witness for Notice.dismissHandler.setter in conformance AppLaunchNotice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

void static PushToTalkNotice.NoticeType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v134 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_40();
  v127 = v3;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v129 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v126 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v126 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v132 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v128 = v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v130 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v126 - v21;
  v22 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for PushToTalkNotice.NoticeType(v22);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v126 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeV0F4TypeO_AEtMd, &_s15ConversationKit16PushToTalkNoticeV0F4TypeO_AEtMR);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v126 - v32;
  v35 = (&v126 + *(v34 + 56) - v32);
  outlined init with copy of ParticipantReaction();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_76();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_110();
    OUTLINED_FUNCTION_29_6();
    outlined init with copy of ParticipantReaction();
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd, &_sSb7enabled_10Foundation3URLVSg5imagetMR) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v26;
      v38 = *v35;
      OUTLINED_FUNCTION_289();
      outlined init with take of Participant?(v39, v40, v41, v42);
      OUTLINED_FUNCTION_289();
      outlined init with take of Participant?(v43, v44, v45, v46);
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v47, v48);
        OUTLINED_FUNCTION_30_20();
LABEL_34:
        outlined destroy of IDView<AvatarStackView, [UUID]>(v49, v50);
        goto LABEL_35;
      }

      v72 = *(v133 + 48);
      v73 = v129;
      OUTLINED_FUNCTION_289();
      _s15ConversationKit11ParticipantVSgWOcTm_0(v74, v75, v76, v77);
      OUTLINED_FUNCTION_289();
      _s15ConversationKit11ParticipantVSgWOcTm_0(v78, v79, v80, v81);
      v82 = v134;
      OUTLINED_FUNCTION_115(v73, 1, v134);
      if (v65)
      {
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v83, v84);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v85, v86);
        OUTLINED_FUNCTION_115(v73 + v72, 1, v82);
        if (v65)
        {
          v50 = &_s10Foundation3URLVSgMd;
          v49 = v73;
          goto LABEL_34;
        }
      }

      else
      {
        v99 = v126;
        _s15ConversationKit11ParticipantVSgWOcTm_0(v73, v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        OUTLINED_FUNCTION_115(v73 + v72, 1, v82);
        if (!v100)
        {
          (*(v1 + 32))(v127, v73 + v72, v82);
          OUTLINED_FUNCTION_129_0();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v116, v117, MEMORY[0x1E6968FC8]);
          OUTLINED_FUNCTION_206();
          dispatch thunk of static Equatable.== infix(_:_:)();
          v118 = *(v1 + 8);
          v119 = OUTLINED_FUNCTION_244_1();
          v118(v119);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v120, v121);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v122, v123);
          (v118)(v99, v82);
          OUTLINED_FUNCTION_41();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v124, v125);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v101, v102);
        OUTLINED_FUNCTION_30_20();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v103, v104);
        v105 = OUTLINED_FUNCTION_258_0();
        v106(v105);
      }

      v50 = &_s10Foundation3URLVSg_ADtMd;
      v49 = v73;
      goto LABEL_34;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(&v26[v36], &_s10Foundation3URLVSgMd);
  }

  else
  {
    v132 = v1;
    OUTLINED_FUNCTION_4_110();
    outlined init with copy of ParticipantReaction();
    v52 = *v29;
    v51 = v29[1];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd, &_sSS7speaker_10Foundation3URLVSg5imagetMR) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v55 = *v35;
      v54 = v35[1];
      OUTLINED_FUNCTION_240_1();
      outlined init with take of Participant?(v56, v57, v58, v59);
      v60 = v130;
      OUTLINED_FUNCTION_240_1();
      outlined init with take of Participant?(v61, v62, v63, v64);
      v65 = v52 == v55 && v51 == v54;
      if (v65)
      {

        v67 = v134;
        v69 = v131;
        v68 = v132;
      }

      else
      {
        OUTLINED_FUNCTION_93_1();
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v67 = v134;
        v69 = v131;
        v68 = v132;
        if ((v66 & 1) == 0)
        {
          OUTLINED_FUNCTION_134();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v70, v71);
          OUTLINED_FUNCTION_134();
          goto LABEL_34;
        }
      }

      v87 = *(v133 + 48);
      _s15ConversationKit11ParticipantVSgWOcTm_0(v135, v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s15ConversationKit11ParticipantVSgWOcTm_0(v60, v69 + v87, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_115(v69, 1, v67);
      if (v65)
      {
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v88, v89);
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v90, v91);
        OUTLINED_FUNCTION_115(v69 + v87, 1, v67);
        if (v65)
        {
          v50 = &_s10Foundation3URLVSgMd;
          v49 = v69;
          goto LABEL_34;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantVSgWOcTm_0(v69, v128, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        OUTLINED_FUNCTION_115(v69 + v87, 1, v67);
        if (!v92)
        {
          v107 = v127;
          (*(v68 + 32))(v127, v69 + v87, v67);
          OUTLINED_FUNCTION_129_0();
          lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v108, v109, MEMORY[0x1E6968FC8]);
          LODWORD(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
          v110 = *(v68 + 8);
          v110(v107, v67);
          v111 = OUTLINED_FUNCTION_208();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v111, v112);
          v113 = OUTLINED_FUNCTION_11_36();
          outlined destroy of IDView<AvatarStackView, [UUID]>(v113, v114);
          v115 = OUTLINED_FUNCTION_173_1();
          (v110)(v115);
          outlined destroy of IDView<AvatarStackView, [UUID]>(v69, &_s10Foundation3URLVSgMd);
LABEL_35:
          OUTLINED_FUNCTION_139_2();
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v93, v94);
        OUTLINED_FUNCTION_134();
        outlined destroy of IDView<AvatarStackView, [UUID]>(v95, v96);
        v97 = OUTLINED_FUNCTION_173_1();
        v98(v97);
      }

      v50 = &_s10Foundation3URLVSg_ADtMd;
      v49 = v69;
      goto LABEL_34;
    }

    outlined destroy of IDView<AvatarStackView, [UUID]>(v29 + v53, &_s10Foundation3URLVSgMd);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v33, &_s15ConversationKit16PushToTalkNoticeV0F4TypeO_AEtMd);
LABEL_36:
  OUTLINED_FUNCTION_30_0();
}

uint64_t AppLaunchNotice.uuid.getter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t AppLaunchNotice.uuid.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t PushToTalkNotice.type.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_3_20(v1);
  return outlined init with copy of ParticipantReaction();
}

uint64_t PushToTalkNotice.type.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return outlined assign with take of SessionActionNotice();
}

uint64_t PushToTalkNotice.type.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t PushToTalkNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void PushToTalkNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t PushToTalkNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t PushToTalkNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.bundleIdentifier.getter()
{
  return PushToTalkNotice.bundleIdentifier.getter();
}

{
  v0 = OUTLINED_FUNCTION_186();
  v1(v0);
  OUTLINED_FUNCTION_116_2();

  return OUTLINED_FUNCTION_46();
}

uint64_t PushToTalkNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

unint64_t PushToTalkNotice.description.getter()
{
  v1 = 0xD000000000000025;
  type metadata accessor for PushToTalkNotice.NoticeType(0);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd, &_sSb7enabled_10Foundation3URLVSg5imagetMR);
    v1 = 0xD000000000000026;
  }

  else
  {

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd, &_sSS7speaker_10Foundation3URLVSg5imagetMR);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v0 + *(v3 + 48), &_s10Foundation3URLVSgMd);
  return v1;
}

uint64_t PushToTalkNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for PushToTalkNotice(v2);
  *(v0 + *(result + 36)) = v1;
  return result;
}

uint64_t PushToTalkNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t PushToTalkNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for PushToTalkNotice.actionHandler : PushToTalkNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PushToTalkNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for PushToTalkNotice.actionHandler : PushToTalkNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for PushToTalkNotice(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AccountUpdateNotice.actionHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_52_13(*(v2 + 44));
}

uint64_t PushToTalkNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for PushToTalkNotice.dismissHandler : PushToTalkNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PushToTalkNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for PushToTalkNotice.dismissHandler : PushToTalkNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for PushToTalkNotice(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t PushToTalkNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.title.getter()
{
  type metadata accessor for PushToTalkNotice.NoticeType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  OUTLINED_FUNCTION_3_20(v2);
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_44_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd, &_sSb7enabled_10Foundation3URLVSg5imagetMR) + 48);
    v4 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v5.super.isa = v4;
    OUTLINED_FUNCTION_17_0(0xD00000000000002BLL, 0x80000001BC50DCC0, v6, v7, v5);
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd, &_sSS7speaker_10Foundation3URLVSg5imagetMR) + 48);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v0 + v3, &_s10Foundation3URLVSgMd);
  return OUTLINED_FUNCTION_15_14();
}

void PushToTalkNotice.attributedSubtitle.getter()
{
  OUTLINED_FUNCTION_50_2();
  v2 = type metadata accessor for AttributeContainer();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_82();
  type metadata accessor for PushToTalkNotice.NoticeType(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_244_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v1;
    v7 = [objc_opt_self() conversationKit];
    v8 = "ESSORIES_BUTTON_EVENT_TITLE";
    if (v6)
    {
      v8 = "ESSORIES_DISABLED";
      v9 = 0xD000000000000020;
    }

    else
    {
      v9 = 0xD000000000000021;
    }

    OUTLINED_FUNCTION_48_1(v9, v8 | 0x8000000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    OUTLINED_FUNCTION_98_3();

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd, &_sSb7enabled_10Foundation3URLVSg5imagetMR) + 48);
  }

  else
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd, &_sSS7speaker_10Foundation3URLVSg5imagetMR) + 48);
    v11 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_48_1(0x676E696B61657053, 0xE800000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);
    OUTLINED_FUNCTION_98_3();
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(&v1[v10], &_s10Foundation3URLVSgMd);
  AttributeContainer.init()();
  OUTLINED_FUNCTION_40_2();
  AttributedString.init(_:attributes:)();
  OUTLINED_FUNCTION_49();
}

void PushToTalkNotice.fullSentence.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v24 = v2;
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  v23 = v3;
  OUTLINED_FUNCTION_4_24();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for AttributedString.CharacterView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_49_3();
  v7 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = PushToTalkNotice.title.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  PushToTalkNotice.attributedSubtitle.getter();
  AttributedString.characters.getter();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_34_29();
  lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(v16, v17, MEMORY[0x1E6968688]);
  v18._countAndFlagsBits = String.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = OUTLINED_FUNCTION_5_2();
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  String.LocalizationValue.init(stringInterpolation:)();
  AttributedString.init(cnkLocalized:)();
  if (one-time initialization token for foregroundContainer != -1)
  {
    OUTLINED_FUNCTION_22_39(&one-time initialization token for foregroundContainer);
  }

  v20 = type metadata accessor for AttributeContainer();
  __swift_project_value_buffer(v20, static AttributedStrings.Notices.foregroundContainer);
  (*(v24 + 104))(v23, *MEMORY[0x1E69686E0], v25);
  OUTLINED_FUNCTION_29_6();
  AttributedString.mergeAttributes(_:mergePolicy:)();
  v21 = OUTLINED_FUNCTION_1_5();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
}

uint64_t PushToTalkNotice.image.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for PushToTalkNotice.NoticeType(v2);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_4_110();
  outlined init with copy of ParticipantReaction();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &_sSb7enabled_10Foundation3URLVSg5imagetMd;
    v5 = &_sSb7enabled_10Foundation3URLVSg5imagetMR;
  }

  else
  {

    v4 = &_sSS7speaker_10Foundation3URLVSg5imagetMd;
    v5 = &_sSS7speaker_10Foundation3URLVSg5imagetMR;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  return outlined init with take of Participant?(v1 + *(v6 + 48), v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

void PushToTalkNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 52));
}

uint64_t PushToTalkNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t PushToTalkNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

double PushToTalkNotice.noticeAccessory.getter()
{
  return PushToTalkNotice.noticeAccessory.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_153_0(*(v2 + 56));

  return outlined copy of NoticeAccessory(v3, v4);
}

uint64_t PushToTalkNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for PushToTalkNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void PushToTalkNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeVSgMd, &_s15ConversationKit16PushToTalkNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for PushToTalkNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_85_3(v8))
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_128_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v6 + 28);
    v14 = *(v0 + v13);
    v15 = *(v2 + v13);
    OUTLINED_FUNCTION_35_20();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v14 == v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit16PushToTalkNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v19 = OUTLINED_FUNCTION_2_14();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

uint64_t PushToTalkNotice.equalTo(notice:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeVSgMd, &_s15ConversationKit16PushToTalkNoticeVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for PushToTalkNotice(v4);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_215_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (!OUTLINED_FUNCTION_147(v6))
  {
    OUTLINED_FUNCTION_77_9();
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit16PushToTalkNoticeVSgMd);
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  OUTLINED_FUNCTION_40_18();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_45_1();
  _s15ConversationKit11ParticipantVWObTm_4();
  static PushToTalkNotice.NoticeType.== infix(_:_:)();
  if ((v11 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_20();
    _s15ConversationKit11ParticipantVWOhTm_12();
    goto LABEL_10;
  }

  PushToTalkNotice.title.getter();
  OUTLINED_FUNCTION_187();
  if (v1 == PushToTalkNotice.title.getter() && v0 == v12)
  {
    v14 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  OUTLINED_FUNCTION_35_20();
  _s15ConversationKit11ParticipantVWOhTm_12();
  return v14 & 1;
}

void static SystemUpdateNotice.NoticeType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_2();
  v6 = v5;
  if (!v2 || !v5)
  {
    goto LABEL_34;
  }

  v7 = v4;
  v8 = v2;
  v9 = v1;
  v10 = 1852403562;
  v11 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v12 = 1702260589;
    }

    else
    {
      v12 = 0x50646E416E696F6ALL;
    }

    if (v11 == 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    v12 = 1852403562;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v10 = 1702260589;
    }

    else
    {
      v10 = 0x50646E416E696F6ALL;
    }

    if (v3 == 1)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  if (v12 == v10 && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_34:
      OUTLINED_FUNCTION_49();
      return;
    }
  }

  if (v9 == v7 && v8 == v6)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_23_40();
  OUTLINED_FUNCTION_49();

  _stringCompareWithSmolCheck(_:_:expecting:)();
}

ConversationKit::SystemUpdateNotice::HandoffType_optional __swiftcall SystemUpdateNotice.HandoffType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_3_104();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SystemUpdateNotice.HandoffType.init(rawValue:), v3);
  OUTLINED_FUNCTION_28_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t SystemUpdateNotice.HandoffType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1852403562;
  }

  if (a1 == 1)
  {
    return 1702260589;
  }

  return 0x50646E416E696F6ALL;
}

ConversationKit::SystemUpdateNotice::HandoffType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SystemUpdateNotice.HandoffType@<W0>(Swift::String *a1@<X0>, ConversationKit::SystemUpdateNotice::HandoffType_optional *a2@<X8>)
{
  result.value = SystemUpdateNotice.HandoffType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SystemUpdateNotice.HandoffType@<X0>(uint64_t *a1@<X8>)
{
  result = SystemUpdateNotice.HandoffType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void SystemUpdateNotice.type.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

unint64_t SystemUpdateNotice.description.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*(v0 + 2))
  {
    v2 = *v0;
    _StringGuts.grow(_:)(23);

    OUTLINED_FUNCTION_24_7();
    v3 = 0xE400000000000000;
    v4 = 1702260589;
    if (v2 != 1)
    {
      v4 = 0x50646E416E696F6ALL;
      v3 = 0xEB0000000079616CLL;
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1852403562;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v5, v6);

    v7 = OUTLINED_FUNCTION_152_0();
    MEMORY[0x1BFB20B10](v7);
    return 0xD000000000000024;
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return v1;
}

uint64_t SystemUpdateNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for SystemUpdateNotice(v2);
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t SystemUpdateNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 32));
}

uint64_t SystemUpdateNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for SystemUpdateNotice(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t SystemUpdateNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.dismissalDuration.getter()
{
  if (*(v0 + 16))
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v1 + 976))();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v3 + 1024))();
  }
}

uint64_t AccountUpdateNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  v4(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SystemUpdateNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t SystemUpdateNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_207(updated);
}

uint64_t SystemUpdateNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SystemUpdateNotice.actionHandler : SystemUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SystemUpdateNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SystemUpdateNotice.actionHandler : SystemUpdateNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SystemUpdateNotice(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SystemUpdateNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for SystemUpdateNotice.dismissHandler : SystemUpdateNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SystemUpdateNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for SystemUpdateNotice.dismissHandler : SystemUpdateNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for SystemUpdateNotice(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t SystemUpdateNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  OUTLINED_FUNCTION_106_3(*(updated + 52));
}

uint64_t SystemUpdateNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  updated = type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_241_0(updated);
}

uint64_t SystemUpdateNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void PushToTalkNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_115_2(*(v5 + 56));
  outlined consume of NoticeAccessory(v6, v7);
  *v1 = v0;
  v1[1] = v2;
}

uint64_t SystemUpdateNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for SystemUpdateNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void SystemUpdateNotice.equalTo(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd, &_s15ConversationKit18SystemUpdateNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  updated = type metadata accessor for SystemUpdateNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_10();
  outlined init with copy of Activity();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_85_3(v8))
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v1 + 16);
    v14 = *(v0 + 16);
    if (v13)
    {
      if (v14)
      {
        v15 = *(v1 + 8);
        v16 = *(v0 + 8);
        if (specialized == infix<A>(_:_:)())
        {
          v17 = v15 == v16 && v13 == v14;
          if (v17 || (OUTLINED_FUNCTION_7_8(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
LABEL_10:
            v18 = *(updated + 36);
            v19 = (v1 + v18);
            v20 = *(v1 + v18 + 8);
            v21 = (v0 + v18);
            v22 = v21[1];
            if (v20 && v22 && (*v19 != *v21 || v20 != v22))
            {
              _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_138_1();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, updated);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v2, &_s15ConversationKit18SystemUpdateNoticeVSgMd);
LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t protocol witness for Notice.uuid.getter in conformance SystemUpdateNotice()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t protocol witness for Notice.uuid.setter in conformance SystemUpdateNotice(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Notice.bundleIdentifier.getter in conformance SystemUpdateNotice(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t ReactionNotice.description.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit19ParticipantReactionVGMd, &_sSay15ConversationKit19ParticipantReactionVGMR);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_183_0();
  MEMORY[0x1BFB20B10]();

  return 0x6E6F697463616552;
}

uint64_t ReactionNotice.uuid.getter()
{
  return ReactionNotice.uuid.getter();
}

{
  v0 = OUTLINED_FUNCTION_30();
  v1(v0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_97_6();

  return v3(v2);
}

uint64_t ReactionNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t ReactionNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void ReactionNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for ReactionNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t ReactionNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t ReactionNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t PushToTalkNotice.bundleIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_38_22();
  v4(v3);
  result = OUTLINED_FUNCTION_269_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ReactionNotice.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t ReactionNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for ReactionNotice.actionHandler : ReactionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReactionNotice(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ReactionNotice.actionHandler : ReactionNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ReactionNotice(0) + 40));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ReactionNotice.actionHandler.setter()
{
  v0 = OUTLINED_FUNCTION_38_22();
  v1 = type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_52_13(*(v1 + 40));
}

uint64_t ReactionNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for ReactionNotice.dismissHandler : ReactionNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReactionNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ReactionNotice.dismissHandler : ReactionNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ReactionNotice(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t ReactionNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for ReactionNotice(v2);
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t ReactionNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.coalesce(with:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd, &_s15ConversationKit14ReactionNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  v6 = type metadata accessor for ReactionNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  OUTLINED_FUNCTION_148_0();
  v8 = swift_dynamicCast();
  if (v8)
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v6 + 24);
    v14 = *(v2 + v13);
    v15 = *(v1 + v13);
    if (v15 < v14)
    {
      *(v1 + v13) = v14;
    }

    specialized Sequence.forEach(_:)(*v2, v15 < v14, v1);
    OUTLINED_FUNCTION_125();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit14ReactionNoticeVSgMd);
  }

  return v8;
}

id ReactionNotice.reactionSymbols.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18AttributeContainerV7BuilderVy_AA0B6ScopesO5UIKitE0F10AttributesV010AttachmentB0OGMd, &_s10Foundation18AttributeContainerV7BuilderVy_AA0B6ScopesO5UIKitE0F10AttributesV010AttachmentB0OGMR);
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v32 - v5;
  v46 = type metadata accessor for AttributeContainer();
  v7 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v32 - v10;
  v41 = type metadata accessor for AttributedString();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  AttributedString.init()();
  ReactionNotice.uniqueReactions.getter();
  v15 = v14;
  v40 = *(v14 + 16);
  if (v40)
  {
    v33 = v2;
    v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v2 = 0;
    v38 = (v7 + 8);
    v39 = v16;
    v36 = (v11 + 8);
    v37 = (v4 + 8);
    while (1)
    {
      if (v2 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_11;
      }

      v17 = v15;
      v18 = *(v15 + v2 + 32);
      v47 = 12369903;
      v7 = static String._uncheckedFromUTF8(_:)();
      v19 = v44;
      AttributeContainer.init()();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v32 - 2) = v21;
      swift_getKeyPath();
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute();
      AttributeContainer.subscript.getter();
      (*v38)(v19, v46);
      v22 = **(&unk_1E7FE5B38 + v18);
      v23 = AVCaptureReactionSystemImageNameForType(v22);

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v6;
      v27 = v26;

      result = @nonobjc UIImage.__allocating_init(systemName:)(v24, v27);
      if (!result)
      {
        break;
      }

      v29 = result;
      ++v2;

      v30 = [objc_opt_self() textAttachmentWithImage_];

      v47 = v30;
      v31 = v43;
      AttributeContainer.Builder.callAsFunction(_:)();

      (*v37)(v25, v31);
      AttributedString.init(_:attributes:)();
      lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v4 = v41;
      AttributedString.append<A>(_:)();
      (*v36)(v13, v4);
      v15 = v17;
      v6 = v25;
      if (v40 == v2)
      {

        v2 = v33;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_8:
    v7 = v34;
    v4 = v35;
    if (one-time initialization token for subjectContainer != -1)
    {
LABEL_11:
      swift_once();
    }

    __swift_project_value_buffer(v46, static AttributedStrings.Notices.subjectContainer);
    (*(v4 + 104))(v7, *MEMORY[0x1E69686E0], v2);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    return (*(v4 + 8))(v7, v2);
  }

  return result;
}

void AccountUpdateNotice.noticeAccessory.setter()
{
  v3 = OUTLINED_FUNCTION_247_1();
  v5 = v4(v3);
  v6 = OUTLINED_FUNCTION_115_2(*(v5 + 52));
  outlined consume of NoticeAccessory(v6, v7);
  *v1 = v0;
  v1[1] = v2;
}

uint64_t ReactionNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ReactionNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ReactionNotice.equalTo(notice:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd, &_s15ConversationKit14ReactionNoticeVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ReactionNotice(v6);
  OUTLINED_FUNCTION_17_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_40_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit11ParticipantVWObTm_4();
    v12 = 0;
    if (*(*v1 + 16) == *(*v2 + 16))
    {
      _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit19ParticipantReactionV_Tt1g5();
      v12 = v13;
    }

    OUTLINED_FUNCTION_125();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit14ReactionNoticeVSgMd);
    v12 = 0;
  }

  return v12 & 1;
}

void ReactionNotice.uniqueReactions.getter()
{
  v1 = 0;
  v13 = MEMORY[0x1E69E7CD0];
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {

      return;
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = type metadata accessor for ParticipantReaction(0);
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v7 = *(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v1++ + *(v5 + 20));
    if (specialized Set._Variant.insert(_:)(&v12, v7))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        v4 = v10;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1, v4);
        v4 = v11;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v7;
      v1 = v6;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void key path getter for AttributeDynamicLookup.subscript<A>(dynamicMember:) : AttributeDynamicLookupAttributeScopes.UIKitAttributes.AttachmentAttribute(uint64_t a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t ParticipantReaction.init(participant:videoReaction:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_119();
  _s15ConversationKit11ParticipantVWObTm_4();
  result = OUTLINED_FUNCTION_271_1();
  *(a2 + v5) = a1;
  return result;
}

uint64_t ParticipantReaction.description.getter()
{
  Participant.contactDetails.getter();

  OUTLINED_FUNCTION_15_14();
  Participant.name(_:)();

  v0 = OUTLINED_FUNCTION_40_2();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](8250, 0xE200000000000000);
  OUTLINED_FUNCTION_271_1();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t static ParticipantReaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for Participant(v2);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_271_1();

  return specialized == infix<A>(_:_:)();
}

void FaceIDUnavailableNotice.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_55();

  *v1 = v2;
  v1[1] = v0;
}

uint64_t ReactionNotice.uuid.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = *(v3(v2) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t FaceIDUnavailableNotice.uuid.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.timeSinceReferenceDate.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t FaceIDUnavailableNotice.timeSinceReferenceDate.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.priority.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 28));
}

uint64_t FaceIDUnavailableNotice.priority.setter()
{
  v2 = OUTLINED_FUNCTION_105_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t FaceIDUnavailableNotice.priority.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.dismissalDuration.setter()
{
  v2 = OUTLINED_FUNCTION_113_2();
  result = type metadata accessor for FaceIDUnavailableNotice(v2);
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t FaceIDUnavailableNotice.dismissalDuration.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.style.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 36));
}

uint64_t FaceIDUnavailableNotice.style.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_242_0(v1);
}

uint64_t FaceIDUnavailableNotice.style.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.shouldTransitionToHUD.setter()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_207(v1);
}

uint64_t FaceIDUnavailableNotice.shouldTransitionToHUD.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for FaceIDUnavailableNotice.actionHandler : FaceIDUnavailableNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for FaceIDUnavailableNotice.actionHandler : FaceIDUnavailableNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FaceIDUnavailableNotice.actionHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t key path getter for FaceIDUnavailableNotice.dismissHandler : FaceIDUnavailableNotice@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for FaceIDUnavailableNotice.dismissHandler : FaceIDUnavailableNotice(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FaceIDUnavailableNotice(0) + 48));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FaceIDUnavailableNotice.dismissHandler.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

void FaceIDUnavailableNotice.shouldReplace(notice:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23FaceIDUnavailableNoticeVSgMd, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for FaceIDUnavailableNotice(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  outlined init with copy of Activity();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  if (OUTLINED_FUNCTION_85_3(v8))
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit11ParticipantVWObTm_4();
    v13 = *(v6 + 28);
    v14 = *(v0 + v13);
    v15 = *(v2 + v13);
    OUTLINED_FUNCTION_122_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v14 == v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v1, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
  }

  OUTLINED_FUNCTION_32_21();
  v19 = OUTLINED_FUNCTION_2_14();
  v20(v19);
LABEL_6:
  OUTLINED_FUNCTION_49();
}

void FaceIDUnavailableNotice.subtitleStyle.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  OUTLINED_FUNCTION_106_3(*(v1 + 52));
}

uint64_t FaceIDUnavailableNotice.subtitleStyle.setter()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_241_0(v1);
}

uint64_t FaceIDUnavailableNotice.subtitleStyle.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.noticeAccessory.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for FaceIDUnavailableNotice(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t FaceIDUnavailableNotice.equalTo(notice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23FaceIDUnavailableNoticeVSgMd, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_8_9();
  v4 = type metadata accessor for FaceIDUnavailableNotice(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_215_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
  OUTLINED_FUNCTION_148_0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_8();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWObTm_4();
    v10 = static UUID.== infix(_:_:)();
    OUTLINED_FUNCTION_122_0();
    _s15ConversationKit11ParticipantVWOhTm_12();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_57_11();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
    outlined destroy of IDView<AvatarStackView, [UUID]>(v0, &_s15ConversationKit23FaceIDUnavailableNoticeVSgMd);
    v10 = 0;
  }

  return v10 & 1;
}

void FaceIDUnavailableNotice.init()()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_57();
  v2 = type metadata accessor for FaceIDUnavailableNotice(0);
  *v0 = 0;
  v0[1] = 0;
  UUID.init()();
  v3 = v2[6];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_208();
  v7(v6);
  *(v0 + v3) = v5;
  *(v0 + v2[7]) = 0;
  v8 = v2[8];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  *(v0 + v8) = (*(v9 + 1024))();
  *(v0 + v2[9]) = 1;
  *(v0 + v2[10]) = 1;
  v10 = (v0 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + v2[12]);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + v2[13]) = 0;
  v12 = (v0 + v2[14]);
  *v12 = 0;
  v12[1] = 0;
}

double default argument 1 of AppLaunchNotice.init(uuid:timeSinceReferenceDate:priority:app:conversation:supportsCollaboration:dismissalDuration:style:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13_57();
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  return v2;
}

uint64_t default argument 5 of PushToTalkNotice.init(uuid:type:timeSinceReferenceDate:priority:bundleIdentifier:dismissalDuration:shouldTransitionToHUD:actionHandler:dismissHandler:subtitleStyle:noticeAccessory:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 1024))();
}

uint64_t protocol witness for Notice.uuid.getter in conformance FaceIDUnavailableNotice()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_97_6();

  return v1(v0);
}

uint64_t protocol witness for Notice.uuid.setter in conformance FaceIDUnavailableNotice(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double protocol witness for Notice.noticeAccessory.getter in conformance PushToTalkNotice@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return outlined copy of NoticeAccessory(v4, v5);
}

uint64_t specialized closure #1 in Array<A>.sorted()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = [v6 value];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v5 = *(v4 + 28);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = *(a2 + v5);
  if (v11)
  {
    v12 = [v11 value];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == v8 && v15 == v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t outlined init with copy of ParticipantReaction()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (**a1)(uint64_t a1), uint64_t a2, uint64_t (**a3)(uint64_t a1), uint64_t a4)
{
  v147 = a1;
  v6 = type metadata accessor for Participant(0);
  v154 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v150 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v161 = &v141 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v158 = &v141 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v156 = &v141 - v18;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v155 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v26 = *v147;
    if (!*v147)
    {
      goto LABEL_167;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_126;
    }

    goto LABEL_161;
  }

  v144 = v22;
  v145 = &v141 - v21;
  v143 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v162 = v6;
  v163 = v12;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v153 = v23;
      v28 = *v155;
      v29 = *(v154 + 72);
      v30 = v24;
      v31 = *v155 + v29 * v27;
      v160 = type metadata accessor for Participant;
      v32 = v145;
      outlined init with copy of ParticipantReaction();
      v159 = v28;
      v33 = v144;
      outlined init with copy of ParticipantReaction();
      v34 = v157;
      LODWORD(v152) = specialized closure #1 in Array<A>.sorted()(v32, v33);
      v157 = v34;
      if (v34)
      {
        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_136:

        return;
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
      v146 = v30;
      v35 = v30 + 2;
      v36 = v159 + v29 * (v30 + 2);
      v37 = v29;
      v160 = v29;
      v38 = v153;
      while (1)
      {
        v39 = v35;
        if (v27 + 1 >= v38)
        {
          break;
        }

        v159 = v27;
        v40 = v156;
        outlined init with copy of ParticipantReaction();
        outlined init with copy of ParticipantReaction();
        v41 = *(v6 + 28);
        v42 = *&v40[v41];
        if (v42)
        {
          v43 = [v42 value];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v41 = *(v6 + 28);
        }

        else
        {
          v44 = 0;
          v46 = 0xE000000000000000;
        }

        v47 = *&v158[v41];
        if (v47)
        {
          v48 = [v47 value];
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        if (v49 == v44 && v51 == v46)
        {
          v53 = 0;
        }

        else
        {
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v6 = v162;
        v12 = v163;

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        v54 = v152 ^ v53;
        v37 = v160;
        v36 += v160;
        v31 += v160;
        v27 = v159 + 1;
        v35 = v39 + 1;
        v38 = v153;
        if (v54)
        {
          goto LABEL_22;
        }
      }

      v27 = v38;
LABEL_22:
      if ((v152 & 1) == 0)
      {
        goto LABEL_42;
      }

      v26 = v146;
      if (v27 < v146)
      {
        goto LABEL_160;
      }

      if (v146 < v27)
      {
        v142 = v25;
        if (v38 >= v39)
        {
          v55 = v39;
        }

        else
        {
          v55 = v38;
        }

        v56 = v146;
        v57 = v37 * (v55 - 1);
        v58 = v37 * v55;
        v59 = v146 * v37;
        v60 = v27;
        do
        {
          if (v56 != --v60)
          {
            v61 = *v155;
            if (!*v155)
            {
              goto LABEL_165;
            }

            _s15ConversationKit11ParticipantVWObTm_4();
            v62 = v59 < v57 || v61 + v59 >= v61 + v58;
            if (v62)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_4();
            v6 = v162;
            v37 = v160;
          }

          ++v56;
          v57 -= v37;
          v58 -= v37;
          v59 += v37;
        }

        while (v56 < v60);
        v25 = v142;
LABEL_42:
        v26 = v146;
      }
    }

    v63 = v155[1];
    if (v27 < v63)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_157;
      }

      if (v27 - v26 < v143)
      {
        break;
      }
    }

LABEL_71:
    if (v27 < v26)
    {
      goto LABEL_156;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      v25 = v131;
    }

    v88 = *(v25 + 2);
    v87 = *(v25 + 3);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v25);
      v25 = v132;
    }

    *(v25 + 2) = v89;
    v90 = v25 + 32;
    v91 = &v25[16 * v88 + 32];
    v92 = v159;
    *v91 = v26;
    v91[1] = v92;
    v160 = *v147;
    if (!v160)
    {
      goto LABEL_166;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v25[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v25 + 4);
          v97 = *(v25 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_91:
          if (v99)
          {
            goto LABEL_143;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_146;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_149;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_151;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        if (v89 < 2)
        {
          goto LABEL_145;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_106:
        if (v114)
        {
          goto LABEL_148;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_150;
        }

        if (v121 < v113)
        {
          goto LABEL_120;
        }

LABEL_113:
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
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
          goto LABEL_159;
        }

        if (!*v155)
        {
          goto LABEL_163;
        }

        v26 = v25;
        v125 = &v90[16 * v93 - 16];
        v25 = *v125;
        v126 = &v90[16 * v93];
        v127 = *(v126 + 1);
        v128 = v157;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v155 + *(v154 + 72) * *v125, *v155 + *(v154 + 72) * *v126, *v155 + *(v154 + 72) * v127, v160);
        v157 = v128;
        if (v128)
        {
          goto LABEL_136;
        }

        if (v127 < v25)
        {
          goto LABEL_138;
        }

        v129 = *(v26 + 16);
        if (v93 > v129)
        {
          goto LABEL_139;
        }

        *v125 = v25;
        *(v125 + 1) = v127;
        if (v93 >= v129)
        {
          goto LABEL_140;
        }

        v89 = v129 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v126 + 16, v129 - 1 - v93, &v90[16 * v93]);
        v25 = v26;
        *(v26 + 16) = v129 - 1;
        v130 = v129 > 2;
        v6 = v162;
        v12 = v163;
        if (!v130)
        {
          goto LABEL_120;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_141;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_142;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_144;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_147;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_155;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_91;
    }

LABEL_120:
    v23 = v155[1];
    v24 = v159;
    if (v159 >= v23)
    {
      goto LABEL_124;
    }
  }

  v64 = (v26 + v143);
  if (__OFADD__(v26, v143))
  {
    goto LABEL_158;
  }

  if (v64 >= v63)
  {
    v64 = v155[1];
  }

  if (v64 < v26)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
LABEL_126:
    v133 = v25 + 16;
    v134 = *(v25 + 2);
    while (v134 >= 2)
    {
      if (!*v155)
      {
        goto LABEL_164;
      }

      v135 = v25;
      v25 += 16 * v134;
      v136 = *v25;
      v137 = &v133[2 * v134];
      v138 = *(v137 + 1);
      v139 = v157;
      specialized _merge<A>(low:mid:high:buffer:by:)(*v155 + *(v154 + 72) * *v25, *v155 + *(v154 + 72) * *v137, *v155 + *(v154 + 72) * v138, v26);
      v157 = v139;
      if (v139)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_152;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_153;
      }

      *v25 = v136;
      *(v25 + 1) = v138;
      v140 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_154;
      }

      v134 = *v133 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v137 + 16, v140, v137);
      *v133 = v134;
      v25 = v135;
    }

    goto LABEL_136;
  }

  if (v27 == v64)
  {
    goto LABEL_71;
  }

  v142 = v25;
  v65 = *v155;
  v66 = *(v154 + 72);
  v67 = *v155 + v66 * (v27 - 1);
  v68 = -v66;
  v146 = v26;
  v69 = v26 - v27;
  v160 = v65;
  v148 = v66;
  v149 = v64;
  v70 = v65 + v27 * v66;
LABEL_52:
  v159 = v27;
  v151 = v70;
  v152 = v69;
  v153 = v67;
  v71 = v67;
  while (1)
  {
    v72 = v164;
    outlined init with copy of ParticipantReaction();
    outlined init with copy of ParticipantReaction();
    v73 = *(v6 + 28);
    v74 = *&v72[v73];
    if (v74)
    {
      v75 = [v74 value];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v73 = *(v6 + 28);
    }

    else
    {
      v76 = 0;
      v78 = 0xE000000000000000;
    }

    v79 = *&v12[v73];
    if (v79)
    {
      v80 = [v79 value];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v6 = v162;
    }

    else
    {
      v81 = 0;
      v83 = 0xE000000000000000;
    }

    if (v81 == v76 && v83 == v78)
    {

      v12 = v163;
      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_69:
      v27 = v159 + 1;
      v67 = v153 + v148;
      v69 = v152 - 1;
      v70 = v151 + v148;
      if ((v159 + 1) == v149)
      {
        v27 = v149;
        v25 = v142;
        v26 = v146;
        goto LABEL_71;
      }

      goto LABEL_52;
    }

    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v163;
    _s15ConversationKit11ParticipantVWOhTm_12();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if ((v85 & 1) == 0)
    {
      goto LABEL_69;
    }

    if (!v160)
    {
      break;
    }

    _s15ConversationKit11ParticipantVWObTm_4();
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_4();
    v71 += v68;
    v70 += v68;
    v62 = __CFADD__(v69++, 1);
    if (v62)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc TUConversationNotice.item.getter(void *a1)
{
  v1 = [a1 item];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

double outlined copy of NoticeAccessory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t outlined init with copy of Activity()
{
  OUTLINED_FUNCTION_3_104();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  (**(v2 - 8))(v0);
  return v0;
}

uint64_t outlined init with take of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_20_3();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

uint64_t _s15ConversationKit11ParticipantVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_20_3();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

uint64_t outlined assign with take of SessionActionNotice()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_20_3();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return v4;
}

unint64_t lazy protocol witness table accessor for type NoticePriority and conformance NoticePriority()
{
  result = lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority;
  if (!lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority;
  if (!lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePriority and conformance NoticePriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationNoticeStyle and conformance ConversationNoticeStyle()
{
  result = lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle;
  if (!lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationNoticeStyle and conformance ConversationNoticeStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle()
{
  result = lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle;
  if (!lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationNoticeSubtitleStyle and conformance ConversationNoticeSubtitleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType()
{
  result = lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType;
  if (!lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccountUpdateNotice.NoticeType and conformance AccountUpdateNotice.NoticeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType()
{
  result = lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType;
  if (!lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemUpdateNotice.HandoffType and conformance SystemUpdateNotice.HandoffType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NoticePriority(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationNoticeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit15NoticeAccessoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for NoticeAccessory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NoticeAccessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for SessionActivationRequestNotice(uint64_t a1)
{
  type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for String?();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Activity(319, &lazy cache variable for type metadata for Activity, &protocol descriptor for Activity);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata completion function for AccountUpdateNotice(uint64_t a1)
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for [Participant], type metadata accessor for Participant, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SessionActionNotice(uint64_t a1)
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for Participant?, type metadata accessor for Participant, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Activity(319, &lazy cache variable for type metadata for Conversation, &protocol descriptor for Conversation);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Activity(319, &lazy cache variable for type metadata for Activity, &protocol descriptor for Activity);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Participant](319, &lazy cache variable for type metadata for TUScreenShareDeviceFamily?, type metadata accessor for TUScreenShareDeviceFamily, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UUID();
          if (v5 <= 0x3F)
          {
            type metadata accessor for String?();
            if (v6 <= 0x3F)
            {
              type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
              if (v7 <= 0x3F)
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

void type metadata accessor for [Participant](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for Activity(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19SessionActionNoticeV13QueueItemTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit19SessionActionNoticeV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for SessionActionNotice.NoticeType(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionActionNotice.NoticeType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SessionActionNotice.NoticeType(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = xmmword_1BC4D59F0;
    *(result + 24) = 0;
  }

  return result;
}

void type metadata completion function for AppLaunchNotice(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForegroundApp();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TUConversation?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for TUConversation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TUConversation?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TUConversation?);
    }
  }
}

void type metadata completion function for PushToTalkNotice(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PushToTalkNotice.NoticeType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for PushToTalkNotice.NoticeType(uint64_t a1)
{
  type metadata accessor for (speaker: String, image: URL?)(319, &lazy cache variable for type metadata for (speaker: String, image: URL?));
  if (v1 <= 0x3F)
  {
    type metadata accessor for (speaker: String, image: URL?)(319, &lazy cache variable for type metadata for (enabled: Bool, image: URL?));
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (speaker: String, image: URL?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_1_5();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata completion function for SystemUpdateNotice(uint64_t a1)
{
  type metadata accessor for (())?(319, &lazy cache variable for type metadata for Activity?, &_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SystemUpdateNotice.NoticeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemUpdateNotice.NoticeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SystemUpdateNotice.NoticeType(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for SystemUpdateNotice.NoticeType(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationNoticeSubtitleStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ReactionNotice(uint64_t a1)
{
  type metadata accessor for [Participant](319, &lazy cache variable for type metadata for [ParticipantReaction], type metadata accessor for ParticipantReaction, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for ParticipantReaction(uint64_t a1)
{
  result = type metadata accessor for Participant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for FaceIDUnavailableNotice(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [AttributedString.InterpolationOptions] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.AttachmentAttribute and conformance AttributeScopes.UIKitAttributes.AttachmentAttribute);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.InterpolationOptions and conformance AttributedString.InterpolationOptions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_131_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return _s15ConversationKit11ParticipantVWOhTm_12();
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return _s15ConversationKit11ParticipantVWOhTm_12();
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return String.LocalizationValue.init(stringInterpolation:)();
}

void OUTLINED_FUNCTION_180_2()
{
  v1 = 0x20646E6120;
  v2 = 0xE500000000000000;

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t OUTLINED_FUNCTION_215_0()
{

  return outlined init with copy of Activity();
}

uint64_t OUTLINED_FUNCTION_219_0()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

void OUTLINED_FUNCTION_225_0(Swift::String a1)
{

  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_264_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

void OUTLINED_FUNCTION_265_0()
{

  AttributedString.init(conversationControlsLocalized:comment:)();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t OUTLINED_FUNCTION_270_1()
{

  return String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

void specialized GameControllerEvent.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GameControllerPressAction(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v8, v6);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

double GameControllerEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameControllerPressAction(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6_1();
  v8 = (*(a3 + 16))(a2, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    do
    {
      outlined init with copy of GameControllerPressAction(v10, v3);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
      dispatch thunk of Hashable.hash(into:)();
      outlined destroy of GameControllerPressAction(v3);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t GameControllerFocusEvent.init(focusAction:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit25GameControllerPressActionVGMR);
  v4 = (type metadata accessor for GameControllerPressAction(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  static GCButtonElementName.x.getter();
  v7 = (v6 + v5 + v4[7]);
  *v7 = a1;
  v7[1] = a2;
  return v6;
}

Swift::Int GameControllerFocusEvent.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerFocusEvent(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized GameControllerEvent.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for GameControllerFocusEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GameControllerFocusEvent and conformance GameControllerFocusEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GameControllerFocusEvent and conformance GameControllerFocusEvent()
{
  result = lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent;
  if (!lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent;
  if (!lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerFocusEvent and conformance GameControllerFocusEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GameControllerIncomingCallEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GameControllerIncomingCallEvent and conformance GameControllerIncomingCallEvent();
  *(a1 + 8) = result;
  return result;
}

uint64_t SystemApertureElement.init(leadingView:trailingView:minimalView:detachedMinimalView:maximumLayoutMode:alertingStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t SystemApertureElement.AlertingStyle.debugDescription.getter(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return 0x676E697472656C61;
  }

  if (a1 >> 6 != 1)
  {
    return 6583656;
  }

  _StringGuts.grow(_:)(20);

  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t static SystemApertureElement.AlertingStyle.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) != 0x40)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (a2 == 128)
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 >= 0x40u)
  {
    goto LABEL_9;
  }

LABEL_6:
  v2 = a2 ^ a1 ^ 1;
  return v2 & 1;
}

double SystemApertureElement.copyWithoutViews()@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemApertureElement(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemApertureElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemApertureElement.AlertingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SystemApertureElement.AlertingStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for SystemApertureElement.AlertingStyle(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}